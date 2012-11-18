/*
 * This file is part of gtkD.
 * 
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 * 
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

module utils.funct;

//debug = Funct;
//debug = wrapType;
//debug = unwrapType;
//debug = mainStrct;
//debug = declaration;
//debug = ctor;
//debug = type;
//debug = name;
//debug = parm;
//debug = externalDec
//debug = callback;

private import std.string;
private import std.stdio;

private import utils.convparms;
private import utils.GtkDClass;

bool contains(string[] src, string elem)
{
  foreach( str; src)
    if ( str == elem )
      return true;

  return false;
}

bool contains(Param[] params, string elem)
{
  foreach( param; params)
    if ( param.name == elem )
      return true;

  return false;
}

string contains(string[string] src, string elem)
{
  foreach( key, str; src)
    if ( str == elem )
      return key;

  return null;
}

struct Param
{
	string type;
	string typeWrap;
	string name;
	string convName;

	bool constParam;
	bool outParam;
	bool refParam;
	bool arrayParam;

	string lengthParamName;
}

public struct Funct
{
	bool ctor;	/// when true this method was found to be a constructor
	string type;
	string typeWrap;
	string name;
	string convName;		/// name after convertion

	Param[] params;

	string strctVar;
	string strctPointer;

	ConvParms* convParms;
	string[string] aliases;

	@disable this();

	/**
	 * Gets the type, name and parameters of the function
	 * Params:
	 *    	text = 	The Gtk API description of the function call
	 */
	this(string text, ConvParms* convParms, string[string] aliases)
	{
		this.convParms = convParms;
		this.aliases = aliases;

		strctVar = getStrctVar();
		strctPointer = convParms.strct ~ "*";

		debug(Funct) writefln("init text=%s", text);

		int p = 0;
		GtkDClass.skipBlank(p,text);
		type = GtkDClass.untilBlank(p, text);

		debug(type)writef("type = %s", type);

		GtkDClass.fixType(type, p, text);

		debug(type)writefln(" -> %s", type);

		GtkDClass.skipBlank(p, text);
		name = GtkDClass.until(p, text, '(');

		GtkDClass.adjustTypeName(type, name);

		if ( type == "gchar**" || type == "char**" )
		{
			typeWrap = "string[]";
		}
		else if ( name in convParms.array && "Return" in convParms.array[name] )
		{
			if ( type == "gpointer" || type == "gconstpointer" )
				type = "void*";
				
			typeWrap = getWrappedType(type[0 .. $-1]) ~ "[]";

			if ( typeWrap == "char[]" || typeWrap == "gchar[]" )
				typeWrap = "string";
		}
		else
		{
			typeWrap = getWrappedType(type);
		}

		GtkDClass.skip(p, text,'(');
		int countBrace = 0;
		while ( countBrace==0 && p<text.length && text[p]!=')' )
		{
			Param param;

			GtkDClass.skipBlank(p, text);
			param.type = GtkDClass.untilBlank(p, text, ",)");

			debug(parm)writef("currParmType = %s", currParmType);

			if ( param.type == "const")
			{
				param.constParam = true;

				GtkDClass.skipBlank(p, text);
				param.type = GtkDClass.untilBlank(p, text, ",)");
			}
			else if ( std.string.indexOf(" volatile G_CONST_RETURN ", param.type) > 0 )
			{
				GtkDClass.skipBlank(p, text);
				param.type = GtkDClass.untilBlank(p, text, ",)");
			}

			if ( param.type == "struct" )
			{
				GtkDClass.skipBlank(p, text);
				GtkDClass.untilBlank(p, text, ",)");
				param.type = "void";
			}
			else if ( param.type == "gpointer" )
			{
				param.type = "void*";
			}
			else if ( param.type == "gconstpointer" )
			{
				param.type = "void*";
				param.constParam = true;		
			}
			else
			{
				GtkDClass.fixType(param.type, p, text);
			}

			debug(parm)writefln(" -> %s", currParmType);

			GtkDClass.skipBlank(p, text);
			if ( param.type != "..." )
			{
				param.name = GtkDClass.until(p, text, "),");

				if ( param.name == "*ref" )
					param.name = "*doref";
			}
			else
			{
				param.name = "";
			}

			GtkDClass.adjustTypeName(param.type, param.name);
			param.convName = GtkDClass.idsToGtkD(param.name, convParms, aliases);

			param.outParam = isOutParam(param.name);
			param.refParam = isRefParam(param.name);
			param.arrayParam = isArrayParam(param.name);

			if ( param.arrayParam )
				param.lengthParamName = convParms.array[name][param.name];

			param.typeWrap = getWrappedType(param);

			if ( param.typeWrap == "string" )
				param.arrayParam = false;

			params ~= param;

			if ( p<text.length && text[p]==',') ++p;
		}

		GtkDClass.skip(p, text, ';');
	}

	private bool isOutParam(string currParam)
	{
		if ( name in convParms.outParms && convParms.outParms[name].contains(currParam) )
			return true;

		return false;
	}

	private bool isRefParam(string currParam)
	{
		if ( name in convParms.inoutParms && convParms.inoutParms[name].contains(currParam) )
			return true;

		return false;
	}

	private bool isArrayParam(string currParam)
	{
		if ( name in convParms.array && currParam in convParms.array[name] )
			return true;

		return false;
	}

	private bool isLengthParam(string currParam)
	{
		if ( name in convParms.array && convParms.array[name].contains(currParam) )
			return true;

		return false;
	}

	string getStrctVar()
	{
		if ( strctVar.length == 0 )
			return strctVar;

		if ( convParms.strct.length > 0 )
			return GtkDClass.toVar(convParms.strct);

		return "";
	}
	
	/**
	 * Checks the type against the strcutWrap table
	 * Returns: 
	 */
	string getWrappedType(string currType)
	{
		string wType;
		if ( currType == "gchar*" || currType == "char*" )
		{
			wType = "string";
		}
		else if ( convParms.structWrap.length == 0 )
		{
			// this should be the common case
			wType = currType;
		}
		else if ( currType in convParms.structWrap )
		{
			wType = convParms.structWrap[currType];
			debug(wrapType) writefln("WrappedType %s -> %s", currType, wType);
		}
		else
		{
			wType = currType;
		}
		
		debug(wrapType)writefln("\t wrapType: %s -> %s", currType, wType);
		return wType;
	}

	/**
	 * Ditto, but for parameters, also checks for out, ref, array and const.
	 */
	string getWrappedType(Param param)
	{
		string wType;

		if ( param.arrayParam )
		{
			if ( param.outParam )
				wType ~= "out "~ getWrappedType(param.type[0 .. $-2]) ~"[]";
			else if ( param.refParam )
				wType ~= "ref "~ getWrappedType(param.type[0 .. $-2]) ~"[]";
			else
				wType ~= getWrappedType(param.type[0 .. $-1]) ~"[]";
		}
		else if ( param.outParam )
		{
			wType ~= "out "~ getWrappedType(param.type[0 .. $-1]);
		}
		else if ( param.refParam )
		{
			wType ~= "ref "~ getWrappedType(param.type[0 .. $-1]);
		}
		else
		{
			wType ~= getWrappedType(param.type);
		}

		if ( (wType == "char[]" || wType == "gchar[]") && param.constParam )
			wType = "string";

		return wType;
	}
	
	/**
	 * Gets the gtk from the GtkD class to be used on the Gtk function call
	 * Params:
	 *    	currType = 	
	 *    	convParms = 	
	 * Returns: 
	 */
	string getUnwrappedType(string currType)
	{
		// TODO
		return currType;
	}

	/**
	 * Gets the external declaration
	 * Params:
	 *    	 = 	
	 *    	aliases = 	
	 * Returns: 
	 */
	string getExternal()
	{
		
		string ext = (( type == "Window" ) ? "gulong" : type) ~ " function(" 
					~ getParameters()
					~ ")" 
					~ name
					;
		
		return ext;
	}
	
	string getParameters()
	{
		string parameters;

		foreach( i, param; params )
		{
			if ( i>0 ) parameters ~= ", ";

			if ( param.type != "void" || param.name.length > 0 )
			{
				//Workaround for GtkPlug/GtkSocket.
				if ( param.type == "Window" )
					parameters ~= "gulong "~ param.convName;
				else
					parameters ~= param.type ~" "~ param.convName;
			}
		}

		return parameters;
	}

	/**
	 * Gets the parameters for the call back functions.
	 * These are all but the first parameter and the last parameter will be the class.
	 * I'm not sure ths is valid for all callbacks.
	 * Params:
	 *    	firstParameter = ?	
	 * Returns: 
	 */
	string getCallbackParameters(int firstParameter = 0)
	{
		string parameters;

		debug(callback)writefln("getCallbackParameters "~convParms.clss);
		debug(callback)writefln("\t %s", getExternal());

		foreach ( i, param; params[firstParameter .. $-1] )
		{
			if ( i == 0 && GtkDClass.endsWith(param.type, '*') )
				parameters ~= param.type ~" "~ param.convName ~"Struct";
			else
				parameters ~= param.type ~" "~ param.convName;

			parameters ~= ", ";
		}

		if(convParms.templ.length > 0)
			parameters ~= convParms.interf~" _"~GtkDClass.idsToGtkD(GtkDClass.getClassVar(convParms), convParms, aliases);
		else
			parameters ~= convParms.clss~" _"~GtkDClass.idsToGtkD(GtkDClass.getClassVar(convParms), convParms, aliases);

		return parameters.tr("-", "_");
	}
	
	/**
	 * Gets the actual parameters for the call back functions.
	 * These are all but the first parameter and the last parameter will be the class.
	 * I'm not sure ths is valid for all callbacks.
	 */
	string getCallbackVars()
	{
		string parameters;

		debug(callback)writefln("getCallbackVars "~convParms.clss);
		debug(callback)writefln("\t %s", getExternal(convParms, aliases));

		foreach ( i, param; params[1 .. $-1] )
		{
			parameters ~= parameterToGtkD(param) ~", ";
		}

		parameters ~= "_"~GtkDClass.idsToGtkD(GtkDClass.getClassVar(convParms), convParms, aliases);

		return parameters.tr("-", "_");
	}

	string getDelegateDeclaration(int firstParameter = 0)
	{
		if ( GtkDClass.endsWith(typeWrap,"user_function") )
			typeWrap = typeWrap[0..typeWrap.length-13];

		if ( typeWrap == "gboolean" )
			typeWrap = "bool";

		string decl = typeWrap ~ " delegate(";
		
		foreach ( param; params[firstParameter .. $-1] )
		{
			decl ~= param.typeWrap ~", ";
		}

		//If we are generating an interface or template
		//use the interface name in the delegate.
		if(convParms.isInterface || convParms.templ.length > 0)
			decl ~= convParms.interf;
		else
			decl ~= convParms.clss;

		decl ~= ")";
		return decl;
	}
	

	/**
	 * Gets the method header.
	 * If the type is a pointer to the main strcut and the name starts with "new"
	 * then the method is a constructor
	 * Returns: 
	 */
	string declaration()
	{
		string dec;
		string returnType;

		if ( indexOf(typeWrap, "string") > -1 )
			returnType = typeWrap;
		else
			returnType = GtkDClass.stringToGtkD(typeWrap, convParms, aliases);

		debug(ctor)writefln("declaration ctor strct = %s",convParms.strct);
		debug(ctor)writefln("declaration ctor realStrct = %s",convParms.realStrct);
		debug(ctor)writefln("declaration ctor type = %s",type);
		debug(ctor)writefln("declaration ctor name = %s",name);

		convName = GtkDClass.idsToGtkD(name, convParms, aliases);
		
		if( convName == "ref" )
			convName = "doref";

		convName = GtkDClass.stringToGtkD(convName, convParms, aliases);

		debug(declaration)writefln("name=%s convName=%s", name, convName);

		if ( convParms.strct.length>0 
			&& GtkDClass.startsWith(convName, "new")
			&& ( (type == strctPointer 
					|| type == convParms.ctorStrct~"*")
				|| /* special GObject case */
					(type == "gpointer" && convParms.strct == "GObject")
				|| /* special Gtk... that return a GtkWidget pointer */
					(type == "GtkWidget*")
				|| /* special Gtk... that return a GtkWidget pointer */
					(type == "GtkObject*" && convParms.strct == "GtkAdjustment")
				) 
			)
		{
			dec = "public this (";
			ctor = true;
			convName = "this";
		}
		else
		{
			if ( convName == "new" )
				convName ~= convParms.outFile;

			string overr;
			if (convParms.needsOverride(convName) && !convParms.isInterface )
				overr = "override ";

			if ( convParms.strct.length>0 
				&& params.length > 0 
				&& params[0].type == strctPointer
				&& !params[0].arrayParam
				)
			{
				dec = "public "~overr~returnType~" "~convName~"(";
			}
			else
			{
				dec = "public static "~overr~returnType~" "~convName~"(";
			}
			ctor = false;
		}

		foreach ( i, param; params )
		{
			if ( i == 0 )
			{
				debug(mainStrct)writefln("1st Parm %s ?= %s",parmsType[i], convParms.strct);

				if ( !ctor && param.type == strctPointer && !param.arrayParam )
				{
					debug(mainStrct)writefln("\tSAME <<<<<<------");
					continue;
				}
			}

			if ( GtkDClass.startsWith(param.typeWrap, "GError**") && convParms.strct != "GError" )
				continue;

			if ( isLengthParam(param.name) )
				continue;

			if ( dec[$-1] != '(' )
				dec ~= ", ";

			if ( param.type != "void" || param.name.length > 0)
			{
				if ( indexOf(param.typeWrap, "string") > -1 )
					dec ~= param.typeWrap;
				else
					dec ~= GtkDClass.stringToGtkD(param.typeWrap, convParms, aliases);

				dec ~= " "~ param.convName;
			}
		}
		dec ~= ')';

		debug(declaration)writefln("declaration=%s", dec);
		
		return dec;
	}

	/**
	 * Wraps the parameters if necessary
	 * Params:
	 *    	i = 	
	 * Returns: 
	 */
	string parameterToGtk(Param param)
	{
		string parmToGtk;

		if ( param.type != param.typeWrap )
		{
			if ( param.typeWrap == "string" )
			{
				if ( param.lengthParamName != "" && param.constParam )
				{
					parmToGtk = "cast(char*)"~ param.convName ~".ptr";
				}
				else
				{
					parmToGtk = "Str.toStringz("~ param.convName ~")";
				}
			}
			else if ( param.typeWrap == "string[]" )
			{
				parmToGtk = "Str.toStringzArray("~ param.convName ~")";
			}
			else if ( param.outParam || param.refParam )
			{
				//Is this a plian old data type.
				if ( param.type[0 .. $-1] == split(param.typeWrap)[1] )
					parmToGtk = "&" ~ param.convName;
				else
					parmToGtk = "&out" ~ param.convName;
			}
			else if ( param.arrayParam )
			{
				parmToGtk = param.convName ~".ptr";
			}
			else
			{
				if(GtkDClass.endsWith(param.typeWrap, "IF"))
					parmToGtk = "("~param.convName~" is null) ? null : "~param.convName~ ".get"~ param.typeWrap[0..$-2] ~ "T" ~"Struct()";
				else if ( param.typeWrap == "Application" &&  param.type == "GtkApplication*" )
					parmToGtk = "("~param.convName~" is null) ? null : "~param.convName~ ".getGtk"~ param.typeWrap ~"Struct()";
				else
					parmToGtk = "("~param.convName~" is null) ? null : "~param.convName~ ".get"~ param.typeWrap ~"Struct()";
			}
		}
		else
		{
			if ( name in convParms.array && convParms.array[name].contains(param.name) )
			{
				if ( name in convParms.outParms && convParms.outParms[name].contains(convParms.array[name].contains(param.name)) )
				{
					if ( GtkDClass.endsWith(param.type, "*") )
						parmToGtk = "&"~ param.convName;
					else
						parmToGtk ~= param.convName;
				}
				else if ( name in convParms.inoutParms && convParms.inoutParms[name].contains(convParms.array[name].contains(param.name)) )
				{
					if ( GtkDClass.endsWith(param.type, "*") )
						parmToGtk = "&"~ param.convName;
					else
						parmToGtk ~= param.convName;
				}
				else
				{
					string id = GtkDClass.idsToGtkD(convParms.array[name].contains(param.name), convParms, aliases);
					parmToGtk = "cast(int) "~ id ~".length";
				}
			}
			else
			{
				parmToGtk = param.convName;
			}
		}
		return parmToGtk;
	}
	
	string parameterToGtkD(Param param)
	{
		string parmToGtkD;

		if ( param.type != param.typeWrap )
		{
			if ( param.typeWrap == "string" )
			{
				parmToGtkD = "Str.toString("~ param.convName ~")";
			}
			else if (GtkDClass.endsWith(param.typeWrap, "IF"))
			{
				parmToGtkD = "ObjectG.getDObject!("~param.typeWrap[0..$-2]~")("~ param.convName ~")";
			}
			else
			{
				parmToGtkD = "ObjectG.getDObject!("~param.typeWrap~")("~ param.convName ~")";
			}
		}
		else
		{
			parmToGtkD = param.convName;
		}

		return parmToGtkD;
	}

	string getWrapParametersType()
	{
		string pw;
		foreach ( param; params )
		{
			if ( pw !is null )
				pw ~= ",";

			pw ~= param.typeWrap;
		}
		return pw;
	}
	
	/**
	 * Gets the body of the GtkD method.
	 * This include the call to the Gtk function.
	 * If the first parameter is a pointer to the struct make it implicit and use the internal struct
	 * Returns: The text of the body of the function NOT including the braces
	 */
	string[] bod()
	{
		string[] bd; /* Return variable. */
		string gtkCall;
		string[] end; //Code to be added to the end of the function to wrap ref/out parameters. 
		bool wrapError = false;

		void checkError()
		{
			if ( wrapError )
			{
				bd ~= "";
				bd ~= "if (err !is null)";
				bd ~= "{";
				bd ~= "\tthrow new GException( new ErrorG(err) );";
				bd ~= "}";
				if ( end.length == 0 )
					bd ~= "";
			}
		}
		
		string construct(string type)
		{
			if ( convParms.outPack == "cairo" || convParms.outPack == "glib" || convParms.outPack == "gthread" )
				return "new "~ type;
			else
				return "ObjectG.getDObject!("~ type ~")";
		}

		/* 1st: construct the actual GTK+ call. */
		gtkCall ~= name ~ "("; //gtk_function(

		foreach( i, param; params )
		{
			debug(parm) writefln("\t(%s -> %s) %s",param.type, param.typeWrap, param.name);

			if ( i > 0 )
				gtkCall ~= ", ";

			if ( !ctor && i == 0 && params[0].type == strctPointer && !(name in convParms.array && params[0].name in convParms.array[name]) )
			{
				
				if ( convParms.templ.length == 0 )
				{
					gtkCall ~= GtkDClass.toVar(convParms.strct);
				}
				else
				{
					gtkCall ~= "get"~convParms.clss~"Struct()";
				}
			}
			else if ( param.typeWrap == "GError**" && convParms.strct != "GError")
			{
				bd ~= "GError* err = null;";

				gtkCall ~= "&err";

				wrapError = true;
			}
			else if ( param.typeWrap == "out string" || param.typeWrap == "ref string" )
			{
				string id = param.convName;

				if ( param.typeWrap == "out string" )
					bd ~= "char* out"~ id ~" = null;";
				else
					bd ~= "char* out"~ id ~" = Str.toStringz("~ id ~");";

				gtkCall ~= "&out"~ id;
				end ~= id ~" = Str.toString(out"~ id ~");";
			}
			else if ( param.typeWrap == "out string[]" || param.typeWrap == "ref string[]" )
			{
				string id = param.convName;
				string lenid = GtkDClass.idsToGtkD(convParms.array[name][param.name], convParms, aliases);

				if ( param.typeWrap == "out string[]" )
					bd ~= "char** out"~ id ~" = null;";
				else
					bd ~= "char** out"~ id ~" = Str.toStringzArray("~ id ~");";

				if ( convParms.array[name][param.name] != "" )
					if ( param.typeWrap == "out string[]" )
						bd ~= "int "~ GtkDClass.idsToGtkD(convParms.array[name][param.name], convParms, aliases) ~";";
					else
						bd ~= "int "~ GtkDClass.idsToGtkD(convParms.array[name][param.name], convParms, aliases) ~" = cast(int) "~ id ~".length;";

				gtkCall ~= "&out"~ id;

				if ( lenid.length > 0 )
				{
					end ~= id ~" = null;";
					end ~= "foreach ( cstr; out"~ id ~"[0 .. "~ lenid ~"] )";
					end ~= "{";
					end ~= "	"~ id ~" ~= Str.toString(cstr);";
					end ~= "}";
				}
				else
				{
					end ~= id ~" = Str.toStringArray(out"~ id ~");";
				}
			}
			else if ( (param.outParam || param.refParam) && param.arrayParam )
			{
				string id = param.convName;
				string lenid = GtkDClass.idsToGtkD(convParms.array[name][param.name], convParms, aliases);

				if ( param.type[0 .. $-2] == split(param.typeWrap)[1][0 .. $-2] )
				{
					if ( param.outParam )
						bd ~= split(param.typeWrap)[1][0 .. $-2] ~"* out"~ id ~ " = null;";
					else
						bd ~= split(param.typeWrap)[1][0 .. $-2] ~"* out"~ id ~ " = "~ id ~".ptr;";
				
					gtkCall ~= "&out" ~ id;

					bool areMultipleArrays()
					{
						foreach ( parm; params[i+1 .. $] )
						{
							if ( parm.name in convParms.array[name] && convParms.array[name][param.name] == convParms.array[name][parm.name] )
								return true;
						}
						return false;
					}

					if ( !areMultipleArrays && params.contains(convParms.array[name][param.name]) )
					{
						if (GtkDClass.startsWith(param.typeWrap, "out") )
							bd ~= "int "~ lenid ~";";
						else
							bd ~= "int "~ lenid ~" = cast(int) "~ id ~".length;";
					}

					if ( convParms.array[name][param.name] == "Return" )
						lenid = "p";

					end ~= id ~" = out"~ id ~"[0 .. " ~ lenid ~"];";
				}
				else
				{
					if ( param.outParam )
					{
						bd ~= param.type.removechars("*") ~"** out"~ id ~ " = null;";
					}
					else
					{
						bd ~= "";
						bd ~= param.type.removechars("*") ~ "*[] inout"~ id ~" = new "~ param.type.removechars("*") ~"*["~ id ~".length];";
						bd ~= "for ( int i = 0; i < "~ id ~".length ; i++ )";
						bd ~= "{";
						bd ~= "\tinout"~ id ~"[i] = "~ id~ "[i].get"~ split(param.typeWrap)[1][0 .. $-2] ~"Struct();";
						bd ~= "}";
						bd ~= "";
						bd ~= param.type.removechars("*") ~ "** out"~ id ~" = inout"~ id ~".ptr;";
					}

					gtkCall ~= "&out" ~ id;

					if ( params.contains(convParms.array[name][param.name]) )
					{
						if ( param.outParam )
							bd ~= "int "~ lenid ~";";
						else
							bd ~= "int "~ lenid ~" = cast(int) "~ id ~".length;";
					}

					if ( convParms.array[name][param.name] == "Return" )
						lenid = "p";

					end ~= "";
					end ~= id ~" = new "~ split(param.typeWrap)[1][0 .. $-2] ~"["~ lenid ~"];";
					end ~= "for(int i = 0; i < "~ lenid ~"; i++)";
					end ~= "{";
					end ~= "\t"~ id ~"[i] = " ~ construct(split(param.typeWrap)[1][0 .. $-2]) ~ "(cast(" ~ param.type.removechars("*") ~ "*) out"~ id ~"[i]);";
					end ~= "}";
				}
			}
			else if ( (param.outParam || param.refParam) &&
				param.type[0 .. $-1] != split(param.typeWrap)[1] )
			{
				string id = param.convName;

				if ( param.outParam )
				{
					bd ~= param.type.removechars("*") ~"* out"~ id ~ " = null;";
				}
				else
				{
					bd ~= param.type.removechars("*") ~"* out"~ id ~ " = ("~id~" is null) ? null : "~id~ ".get"~ split(param.typeWrap)[1] ~"Struct();";
				}

				gtkCall ~= "&out" ~ id;
				
				if( GtkDClass.endsWith(param.typeWrap, "IF") )
					end ~= id ~" = "~ construct(split(param.typeWrap)[1][0 .. $-2]) ~"(out"~ id ~");";
				else
					end ~= id ~" = "~ construct(split(param.typeWrap)[1]) ~"(out"~ id ~");";
			}
			else if ( param.arrayParam && param.type[0 .. $-1] != param.typeWrap[0 .. $-2] &&
				 !GtkDClass.endsWith(param.type, "[]") && param.typeWrap != "string[]" )
			{
				string id = param.convName;

				bd ~= "";
				bd ~= param.type.removechars("*") ~ "*[] "~ id ~"Array = new "~ param.type.removechars("*") ~"*["~ id ~".length];";
				bd ~= "for ( int i = 0; i < "~ id ~".length ; i++ )";
				bd ~= "{";
				bd ~= "\t"~ id ~"Array[i] = "~ id~ "[i].get"~ param.typeWrap[0 .. $-2] ~"Struct();";
				bd ~= "}";
				bd ~= "";

				gtkCall ~= id ~"Array.ptr";
			}
			else if ( name in convParms.array && "Return" == convParms.array[name].contains(param.name) )
			{
				string id = param.convName;

				bd ~= GtkDClass.tokenToGtkD(param.type.chomp("*"), convParms, aliases) ~" "~ id ~";";
				gtkCall ~= "&"~ id;
			}
			else if ( param.typeWrap == "FILE*" ) //Phobos Workaround
			{
				gtkCall ~= "cast(void*)"~ GtkDClass.idsToGtkD(param.name, convParms, aliases);
			}
			else
			{
				if ( param.name.length > 0 )
				{
					gtkCall ~= parameterToGtk(param);
				}
			}
		}

		gtkCall ~= ")"; //gtk_function(arg1...argN)

		if ( end.length > 0 || wrapError )
		{
			bd ~= "";
			if ( end.length > 0 )
				end = [""] ~ end;
		}

		/* 2nd: construct the rest of the body according to the type
		 * of the function. */
		if (type == "void")
		{
			/* If it's a void, we just need to make the call and be done
			 * with it. */
			gtkCall ~= ";";
			bd ~= gtkCall;
			checkError();

			if ( end.length > 0 )
				bd ~= end;

			return bd;
		}
		else if (type == "FILE*") //Phobos Workaround.
		{
			return bd ~= "return cast(FILE*)" ~ gtkCall ~ ";";
		}
		else
		{
			/* If the call constructs an object, call the GTK+ constructor
			 * and pass the object to the wrapper's constructor. */
			if(ctor)
			{
				/*string prepend = "this(cast(";
				if(convParms.realStrct.length > 0)
					prepend ~= convParms.realStrct ~ "*)";
				else
					prepend ~= convParms.strct ~ "*)";
				gtkCall = prepend ~ gtkCall*/
				string strct = (convParms.realStrct.length > 0) ? convParms.realStrct : convParms.strct;
				/* Do we need a cast? */
				bd ~= "auto p = " ~ gtkCall ~ ";"; //GtkStruct* p = gtk_function(arg1...argN);
				
				checkError();

				string[] check = [	"if(p is null)",
								  	"{",
								  	"	throw new ConstructionException(\"null returned by " ~ gtkCall ~ "\");",
									"}"	];
				bd ~= check;

				if ( end.length > 0 )
					bd ~= end;

				/* What's with all the casting? */
				/* A; Casting is needed because some GTK+
				 *    functions can return void pointers. */
				bd ~= "this(cast(" ~ strct ~ "*) p);";
				//bd ~= "this(p);";				

				/* The body is constructed, return. */
				return bd;
			}
			else
			{
				/* Non-void call. */
				if(type == typeWrap )
				{
					/* We return an object of the same type as the GTK+ function. */
					//return gtk_function(arg1...argN);
					if ( !wrapError && end.length == 0)
						bd ~= "return " ~ gtkCall ~ ";";
					else
					{
						bd ~= "auto p = " ~ gtkCall ~ ";";
						checkError();

						if ( end.length > 0 )
							bd ~= end;

						if ( !(name in convParms.array && "Return" in convParms.array[name]) )
							bd ~= "return p;";
					}

					return bd;
				}
				else
				{
					/* We return an object of a different type, we need to wrap it
					 * accordingly. */
					if(typeWrap == "string")
					{
						/* Returned strings get special care. */
						//return Str.toString(gtk_function(arg1...argN)).dup;
						if ( !wrapError && !(name in convParms.array && "Return" in convParms.array[name]) )
							bd ~= "return Str.toString(" ~ gtkCall ~ ");";
						else
						{
							bd ~= "auto p = " ~ gtkCall ~ ";";
							checkError();

							if ( end.length > 0 )
								bd ~= end;

							if (name in convParms.array && "Return" in convParms.array[name])
							{
								string lenid = GtkDClass.idsToGtkD(convParms.array[name]["Return"], convParms, aliases);

								bd ~= "return Str.toString(p, "~ lenid ~");";
							}
							else
								bd ~= "return Str.toString(p);";
						}

						return bd;
					}
					else if(typeWrap == "string[]")
					{
						/* Returned strings get special care. */
						//return Str.toString(gtk_function(arg1...argN)).dup;
						if ( !wrapError && !(name in convParms.array && "Return" in convParms.array[name]) )
							bd ~= "return Str.toStringArray(" ~ gtkCall ~ ");";
						else
						{
							bd ~= "\nauto p = " ~ gtkCall ~ ";";
							checkError();

							if ( end.length > 0 )
								bd ~= end;

							if (name in convParms.array && "Return" in convParms.array[name])
							{
								string lenid = GtkDClass.idsToGtkD(convParms.array[name]["Return"], convParms, aliases);

								bd ~= "";
								bd ~= "string[] strArray = null;"; 
								bd ~= "foreach ( cstr; p[0 .. "~ lenid ~"] )"; 
								bd ~= "{"; 
								bd ~= "    strArray ~= Str.toString(cstr);"; 
								bd ~= "}"; 
								bd ~= "";
								bd ~= "return strArray;";
							}
							else
								bd ~= "return Str.toStringArray(p);";
						}

						return bd;
					}
					else
					{
						/* All other objects are wrapped in their container. */
						/* Why do we need a cast? */
						//GtkType p = gtk_function(arg1...argN);
						bd ~= "auto p = " ~ gtkCall ~ ";";

						checkError();

						if ( end.length > 0 )
							bd ~= end;

						bd ~=  [ "",
								 "if(p is null)",
								 "{",
								 "	return null;",
								 "}",
								 "" ];

						if ( GtkDClass.endsWith(typeWrap, "[]") )
						{
							string id = GtkDClass.idsToGtkD(convParms.array[name]["Return"], convParms, aliases);

							if (type[0 .. $-1] == typeWrap[0 .. $-2])
							{
								bd ~= "return p[0 .. "~ id ~"];";
							}
							else
							{
								bd ~= typeWrap ~" arr = new "~ typeWrap[0 .. $-2] ~"["~ id ~"];";
								bd ~= "for(int i = 0; i < "~ id ~"; i++)";
								bd ~= "{";
								bd ~= "\tarr[i] = "~ construct(typeWrap[0 .. $-2]) ~"(cast("~ type.chomp("*") ~") p[i]);";
								bd ~= "}";
								bd ~= "";
								bd ~= "return arr;";
							}
						}
						/* What's with all the casting? */
						/* A; Casting is needed because some GTK+
						 *    functions can return void pointers. */
						else if( GtkDClass.endsWith(typeWrap, "IF") )
							bd ~= "return " ~ construct(typeWrap[0..$-2]) ~ "(cast(" ~ type ~ ") p);";
						else
							bd ~= "return " ~ construct(typeWrap) ~ "(cast(" ~ type ~ ") p);";
						
						return bd;
					}
				}
			}
		}

		/* We should never reach here. */
		assert(0, "A strange function body was requested.");
	}	
}
