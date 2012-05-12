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

string contains(string[string] src, string elem)
{
  foreach( key, str; src)
    if ( str == elem )
      return key;

  return null;
}

public struct Funct
{
	bool ctor;	/// when true this method was found to be a constructor
	string type;
	string typeWrap;
	string name;
	string convName;		/// name after convertion
	// TODO parms need to be a struct
	string[] parmsType;
	string[] parmsWrap;		/// this is the parameter wrapped type
	string[] parms;
	string[] parmsDesc;
	bool[] parmConst;
	bool[] parmPointer;
	string typeDesc;
	string strctVar;
	string strctPointer;
	
	
	/**
	 * Gets the type, name and parameters of the function
	 * Params:
	 *    	text = 	The Gtk API description of the function call
	 */
	void init(string text, ConvParms* convParms)
	{
		strctVar = null;
		getStrctVar(convParms);
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
			typeWrap = getWrappedType(type[0 .. $-1], convParms) ~ "[]";

			if ( typeWrap == "string" || typeWrap == "gstring" )
				typeWrap = "string";
		}
		else
		{
			typeWrap = getWrappedType(type, convParms);
		}

		GtkDClass.skip(p, text,'(');
		int countBrace = 0;
		string currParmType;
		string currParm;
		debug(parm)writef("%s:", name);
		while ( countBrace==0 && p<text.length && text[p]!=')' )
		{
			currParmType.length = 0;
			currParm.length = 0;
			
			GtkDClass.skipBlank(p, text);
			currParmType = GtkDClass.untilBlank(p, text, ",)");
			GtkDClass.skipBlank(p, text);
			debug(parm)writef("currParmType = %s", currParmType);
			if ( std.string.indexOf(" const volatile G_CONST_RETURN ", currParmType) > 0 )
			{
				currParmType = GtkDClass.untilBlank(p, text, ",)");
				GtkDClass.skipBlank(p, text);
			}
			if ( "struct"==currParmType )
			{
				currParmType = GtkDClass.untilBlank(p, text, ",)");
				GtkDClass.skipBlank(p, text);
				currParmType = "void";
			}
			else
			{
				GtkDClass.fixType(currParmType, p, text);
			}
			debug(parm)writefln(" -> %s", currParmType);
			if ( currParmType != "..." )
			{
				currParm = GtkDClass.until(p, text, "),");

				if ( currParm == "*ref" )
					currParm = "*doref";
			}
			else
			{
				currParm = "";
			}

			GtkDClass.adjustTypeName(currParmType, currParm);
			parmsType ~= currParmType;

			if ( !getArrayType(currParm, currParmType,  convParms) && !getOutOrRefType(currParm, currParmType,  convParms) )
				parmsWrap ~= getWrappedType(currParmType, convParms);

			parms ~= currParm;
			
			if ( p<text.length && text[p]==',') ++p;
		}

		GtkDClass.skip(p, text, ';');
	}

	bool getOutOrRefType(string currParm, string currParmType, ConvParms* convParms)
	{
		if ( name in convParms.outParms && convParms.outParms[name].contains(currParm) )
		{
			parmsWrap ~= "out "~ getWrappedType(currParmType[0 .. $-1], convParms);
			return true;
		}
		if ( name in convParms.inoutParms && convParms.inoutParms[name].contains(currParm) )
		{
			parmsWrap ~= "ref "~ getWrappedType(currParmType[0 .. $-1], convParms);
			return true;
		}

		return false;
	}

	bool getArrayType(string currParm, string currParmType, ConvParms* convParms)
	{
		if ( name in convParms.array && currParm in convParms.array[name])
		{
			if ( name in convParms.outParms && convParms.outParms[name].contains(currParm) )
			{
				parmsWrap ~= "out "~ getWrappedType(currParmType[0 .. $-2], convParms) ~"[]";
				return true;
			}
			else if ( name in convParms.inoutParms && convParms.inoutParms[name].contains(currParm) )
			{
				parmsWrap ~= "ref "~ getWrappedType(currParmType[0 .. $-2], convParms) ~"[]";
				return true;
			}
			else
			{
				parmsWrap ~= getWrappedType(currParmType[0 .. $-1], convParms) ~ "[]";
				return true;
			}
		}

		return false;
	}

	string getStrctVar(ConvParms* convParms)
	{
		if ( strctVar.length == 0 )
		{
			if ( convParms.strct.length > 0 )
			{
				strctVar = GtkDClass.toVar(convParms.strct);
			}
			else
			{
				strctVar = "";
			}
		}
		return strctVar;
	}
	
	/**
	 * Checks the type against the strcutWrap table
	 * Returns: 
	 */
	string getWrappedType(string currType, ConvParms* convParms)
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
	 * Gets the gtk from the GtkD class to be used on the Gtk function call
	 * Params:
	 *    	currType = 	
	 *    	convParms = 	
	 * Returns: 
	 */
	string getUnwrappedType(string currType, ConvParms* convParms)
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
	string getExternal(ConvParms* convParms, string[string] aliases)
	{
		
		string ext = type 
					~ " function(" 
					~ getParameters(convParms, aliases)
					~ ")" 
					~ name
					;
		
		return ext;
	}
	
	string getParameters(ConvParms* convParms, string[string] aliases)
	{
		string parameters;
		
		int i=0;
		while ( i<parmsType.length && i< parms.length )
		{
			
			if ( i>0 ) parameters ~= ", ";
			if ( i>=0 
				&& (parmsType[i]!="void" || parms[i].length>0)
				)
			{
				parameters ~= parmsType[i] ~" "~GtkDClass.idsToGtkD(parms[i], convParms, aliases);
			}
			++i;
		}

		return parameters;
	}

	/**
	 * Gets the parameters for the call back functions.
	 * These are all but the first parameter and the last parameter will be the class.
	 * I'm not sure ths is valid for all callbacks.
	 * Params:
	 *    	convParms = 	
	 *    	aliases = 	
	 * Returns: 
	 */
	string getCallbackParameters(int firstParameter, ConvParms* convParms, string[string] aliases)
	{
		string parameters;

		debug(callback)writefln("getCallbackParameters "~convParms.clss);
		debug(callback)writefln("\t %s", getExternal(convParms, aliases));
		
		int i=firstParameter;
		while ( i<parmsType.length && i< parms.length )
		{
			
			if ( i>firstParameter ) parameters ~= ", ";
			if ( i == parms.length-1 )
			{
				if(convParms.templ.length > 0)
					parameters ~= convParms.interf~" "~GtkDClass.getClassVar(convParms);
				else
					parameters ~= convParms.clss~" "~GtkDClass.getClassVar(convParms);
			}
			else if ( i>=firstParameter
				&& (parmsType[i]!="void" || parms[i].length>0)
				)
			{
				if ( i == 0 && GtkDClass.endsWith(parmsType[i], '*') )
				{
					parameters ~= parmsType[i] ~" "~GtkDClass.idsToGtkD(parms[i], convParms, aliases)~"Struct";
				}
				else
				{
					parameters ~= parmsType[i] ~" "~GtkDClass.idsToGtkD(parms[i], convParms, aliases);
				}
			}
			++i;
		}

		return parameters.tr("-", "_");
	}
	
	/**
	 * Gets the actual parameters for the call back functions.
	 * These are all but the first parameter and the last parameter will be the class.
	 * I'm not sure ths is valid for all callbacks.
	 * Params:
	 *    	convParms = 	
	 *    	aliases = 	
	 * Returns: 
	 */
	string getCallbackVars(ConvParms* convParms, string[string] aliases)
	{
		string parameters;

		debug(callback)writefln("getCallbackVars "~convParms.clss);
		debug(callback)writefln("\t %s", getExternal(convParms, aliases));
		
		int i=1;
		while ( i<parmsType.length && i< parms.length )
		{
			
			if ( i>1 ) parameters ~= ", ";
			if ( i == parms.length-1 )
			{
				parameters ~= GtkDClass.getClassVar(convParms);
			}
			else if ( i>=1 
				&& (parmsType[i]!="void" || parms[i].length>0)
				)
			{
				//if ( parmsType[i]=="GtkWidget*" )
				//{
				//	parameters ~= "new Widget("~GtkDClass.idsToGtkD(parameterToGtkD(i, convParms, aliases), convParms, aliases)~")";
				//}
				//else
				{
					//parameters ~= GtkDClass.idsToGtkD(parameterToGtkD(i, convParms, aliases), convParms, aliases);
					parameters ~= parameterToGtkD(i, convParms, aliases);
				}
			}
			++i;
		}

		return parameters.tr("-", "_");
	}

	string getDelegateDeclaration(ConvParms* convParms, int firstParameter = 0)
	{
		if ( GtkDClass.endsWith(typeWrap,"user_function") )
		{
			typeWrap = typeWrap[0..typeWrap.length-13];
		}

		if ( typeWrap == "gboolean" )
		{
			typeWrap = "bool";
		}

		string decl = typeWrap ~ " delegate(";
		
		int pCount = 0;
		foreach(int count, string parm ; parmsWrap )
		{
			if ( count >= firstParameter )
			{
				if ( pCount > 0 )
				{
					decl ~= ", ";
				}
				if ( count == parmsWrap.length-1 )
				{
					//If we are generating an interface or template
					//use the interface name in the delegate.
					if(convParms.isInterface || convParms.templ.length > 0)
					{
						decl ~= convParms.interf;
					}
					else
					{
						decl ~= convParms.clss;
					}
				}
				else
				{
					decl ~= parm;
				}
				++pCount;
			}
		}
		decl ~= ")";
		return decl;
	}
	

	/**
	 * Gets the method header.
	 * If the type is a pointer to the main strcut and the name starts with "new"
	 * then the method is a constructor
	 * Params:
	 *    	strct = 	
	 * Returns: 
	 */
	string declaration(ConvParms* convParms, string[string] aliases)
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
			{
				convName ~= convParms.outFile;
			}
			string overr;
			if (convParms.needsOverride(convName) && !convParms.isInterface )
			{
				overr = "override ";
			}
			if ( convParms.strct.length>0 
				&& parmsType.length > 0 
				&& (parmsType[0] == strctPointer )
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
		int i=0;
		int parmCount = 0;
		while ( i<parmsType.length && i< parms.length )
		{
			if ( i == 0 )
			{
				debug(mainStrct)writefln("1st Parm %s ?= %s",parmsType[i], convParms.strct);
				if ( !ctor && parmsType[i] == strctPointer )
				{
					debug(mainStrct)writefln("\tSAME <<<<<<------");
					--parmCount;
				}
			}

			if ( GtkDClass.startsWith(parmsWrap[i], "GError**") && convParms.strct != "GError" )
			{
				++i;
				continue;
			}

			if ( name in convParms.array && convParms.array[name].contains(parms[i]) )
			{
				++i;
				continue;
			}

			if ( parmCount>0 ) dec ~= ", ";
			if ( parmCount>=0 
				&& (parmsType[i]!="void" || parms[i].length>0)
				)
			{
				if ( indexOf(parmsWrap[i], "string") > -1 )
					dec ~= parmsWrap[i];
				else
					dec ~= GtkDClass.stringToGtkD(parmsWrap[i], convParms, aliases);

				dec ~= " "~GtkDClass.idsToGtkD(parms[i], convParms, aliases);
			}
			++i;
			++parmCount;
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
	string parameterToGtk(int i, ConvParms* convParms, string[string] aliases)
	{
		string parmToGtk;

		if ( parmsType[i] != parmsWrap[i] )
		{
			if ( parmsWrap[i] == "string" )
			{
				if ( name in convParms.array && 
					parms[i] in convParms.array[name] &&
					convParms.array[name][parms[i]] != "" )
				{
					parmToGtk = GtkDClass.idsToGtkD(parms[i], convParms, aliases) ~".ptr";
				}
				else
				{
					parmToGtk = "Str.toStringz("
								~ GtkDClass.idsToGtkD(parms[i], convParms, aliases)
								~")";
				}
			}
			else if ( parmsWrap[i] == "string[]" )
			{
				parmToGtk = "Str.toStringzArray("
							~ GtkDClass.idsToGtkD(parms[i], convParms, aliases)
							~")";
			}
			else if ( GtkDClass.startsWith(parmsWrap[i], "out") ||
				GtkDClass.startsWith(parmsWrap[i], "ref") )
			{
				string id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);
				if ( parmsType[i][0 .. $-1] == split(parmsWrap[i])[1] )
					parmToGtk = "&" ~ id;
				else
					parmToGtk = "&out" ~ id;
			}
			else if ( GtkDClass.endsWith(parmsWrap[i], "[]") )
			{
				string id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);

				parmToGtk = id ~".ptr";
			}
			else
			{
				string id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);
				if(GtkDClass.endsWith(parmsWrap[i], "IF"))
					parmToGtk = "("~id~" is null) ? null : "~id~ ".get"~ parmsWrap[i][0..$-2] ~ "T" ~"Struct()";
				else
					parmToGtk = "("~id~" is null) ? null : "~id~ ".get"~ parmsWrap[i] ~"Struct()";
			}
		}
		else
		{
			if ( name in convParms.array && convParms.array[name].contains(parms[i]) )
			{
				if ( name in convParms.outParms && convParms.outParms[name].contains(convParms.array[name].contains(parms[i])) )
				{
					string id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);
					if ( GtkDClass.endsWith(parmsType[i], "*") )
						parmToGtk = "&"~ id;
					else
						parmToGtk ~= id;
				}
				else if ( name in convParms.inoutParms && convParms.inoutParms[name].contains(convParms.array[name].contains(parms[i])) )
				{
					string id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);
					if ( GtkDClass.endsWith(parmsType[i], "*") )
						parmToGtk = "&"~ id;
					else
						parmToGtk ~= id;
				}
				else
				{
					string id = GtkDClass.idsToGtkD(convParms.array[name].contains(parms[i]), convParms, aliases);
					parmToGtk = "cast(int) "~ id ~".length";
				}
			}
			else
			{
				parmToGtk = GtkDClass.idsToGtkD(parms[i], convParms, aliases);
			}
		}
		return parmToGtk;
	}
	
	string parameterToGtkD(int i, ConvParms* convParms, string[string] aliases)
	{
		string parmToGtkD;
		if ( parmsType[i] != parmsWrap[i] )
		{
			if ( parmsWrap[i] == "string" )
			{
				parmToGtkD = "Str.toString("
							~ GtkDClass.idsToGtkD(parms[i], convParms, aliases)
							~")";
			}
			else if (GtkDClass.endsWith(parmsWrap[i], "IF"))
			{
				parmToGtkD = "new "~parmsWrap[i][0..$-2]~"("~GtkDClass.idsToGtkD(parms[i], convParms, aliases)~")";
			}
			else
			{
				parmToGtkD = "new "~parmsWrap[i]~"("~GtkDClass.idsToGtkD(parms[i], convParms, aliases)~")";
			}
		}
		else
		{
			parmToGtkD = GtkDClass.idsToGtkD(parms[i], convParms, aliases);
		}
		return parmToGtkD;
	}

	string getWrapParametersType()
	{
		string pw;
		foreach ( int count, string typeW ; parmsWrap )
		{
			if ( count > 0 )
			{
				pw ~= ",";
			}
			pw ~= typeW;
		}
		return pw;
	}
	
	/**
	 * Gets the body of the GtkD method.
	 * This include the call to the Gtk function.
	 * If the first parameter is a pointer to the struct make it implicit and use the internal struct
	 * Returns: The text of the body of the function NOT including the braces
	 */
	string[] bod(ConvParms* convParms, string[string] aliases)
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

		/* 1st: construct the actual GTK+ call. */
		gtkCall ~= name ~ "("; //gtk_function(

		for(int i = 0; (i < parmsType.length) && (i < parms.length); ++i)
		{
			debug(parm) writefln("\t(%s -> %s) %s",parmsType[i], parmsWrap[i], parms[i]);

			if ( i > 0 )
				gtkCall ~= ", ";

			if ( !ctor && i == 0 && parmsType[0] == strctPointer )
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
			else if ( parmsWrap[i] == "GError**" && convParms.strct != "GError")
			{
				bd ~= "GError* err = null;";

				gtkCall ~= "&err";

				wrapError = true;
			}
			else if ( parmsWrap[i] == "out string" || parmsWrap[i] == "ref string" )
			{
				string id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);

				if ( parmsWrap[i] == "out string" )
					bd ~= "char* out"~ id ~" = null;";
				else
					bd ~= "char* out"~ id ~" = Str.toStringz("~ id ~");";

				gtkCall ~= "&out"~ id;
				end ~= id ~" = Str.toString(out"~ id ~");";
			}
			else if ( parmsWrap[i] == "out string[]" || parmsWrap[i] == "ref string[]" )
			{
				string id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);
				string lenid = GtkDClass.idsToGtkD(convParms.array[name][parms[i]], convParms, aliases);

				if ( parmsWrap[i] == "out string[]" )
					bd ~= "char** out"~ id ~" = null;";
				else
					bd ~= "char** out"~ id ~" = Str.toStringzArray("~ id ~");";

				if ( convParms.array[name][parms[i]] != "" )
					if ( parmsWrap[i] == "out string[]" )
						bd ~= "int "~ GtkDClass.idsToGtkD(convParms.array[name][parms[i]], convParms, aliases) ~";";
					else
						bd ~= "int "~ GtkDClass.idsToGtkD(convParms.array[name][parms[i]], convParms, aliases) ~" = cast(int) "~ id ~".length;";

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
			else if ( (GtkDClass.startsWith(parmsWrap[i], "out") ||
				GtkDClass.startsWith(parmsWrap[i], "ref")) &&
				GtkDClass.endsWith(parmsWrap[i], "[]") )
			{
				string id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);
				string lenid = GtkDClass.idsToGtkD(convParms.array[name][parms[i]], convParms, aliases);

				if ( parmsType[i][0 .. $-2] == split(parmsWrap[i])[1][0 .. $-2] )
				{
					if (GtkDClass.startsWith(parmsWrap[i], "out") )
						bd ~= parmsType[i].removechars("*") ~"* out"~ id ~ " = null;";
					else
						bd ~= parmsType[i].removechars("*") ~"* out"~ id ~ " = "~ id ~".ptr;";
				
					gtkCall ~= "&out" ~ id;

					bool areMultipleArrays()
					{
						foreach ( parm; parms[i+1 .. $] )
						{
							if ( parm in convParms.array[name] && convParms.array[name][parms[i]] == convParms.array[name][parm] )
								return true;
						}
						return false;
					}

					if ( !areMultipleArrays && parms.contains(convParms.array[name][parms[i]]) )
					{
						if (GtkDClass.startsWith(parmsWrap[i], "out") )
							bd ~= "int "~ lenid ~";";
						else
							bd ~= "int "~ lenid ~" = cast(int) "~ id ~".length;";
					}

					if ( convParms.array[name][parms[i]] == "Return" )
						lenid = "p";

					end ~= id ~" = out"~ id ~"[0 .. " ~ lenid ~"];";
				}
				else
				{
					if (GtkDClass.startsWith(parmsWrap[i], "out") )
					{
						bd ~= parmsType[i].removechars("*") ~"** out"~ id ~ " = null;";
					}
					else
					{
						bd ~= "";
						bd ~= parmsType[i].removechars("*") ~ "*[] inout"~ id ~" = new "~ parmsType[i].removechars("*") ~"*["~ id ~".length];";
						bd ~= "for ( int i = 0; i < "~ id ~".length ; i++ )";
						bd ~= "{";
						bd ~= "\tinout"~ id ~"[i] = "~ id~ "[i].get"~ split(parmsWrap[i])[1][0 .. $-2] ~"Struct();";
						bd ~= "}";
						bd ~= "";
						bd ~= parmsType[i].removechars("*") ~ "** out"~ id ~" = inout"~ id ~".ptr;";
					}

					gtkCall ~= "&out" ~ id;

					if ( parms.contains(convParms.array[name][parms[i]]) )
					{
						if (GtkDClass.startsWith(parmsWrap[i], "out") )
							bd ~= "int "~ lenid ~";";
						else
							bd ~= "int "~ lenid ~" = cast(int) "~ id ~".length;";
					}

					if ( convParms.array[name][parms[i]] == "Return" )
						lenid = "p";

					end ~= "";
					end ~= id ~" = new "~ split(parmsWrap[i])[1][0 .. $-2] ~"["~ lenid ~"];";
					end ~= "for(int i = 0; i < "~ lenid ~"; i++)";
					end ~= "{";
					end ~= "\t"~ id ~"[i] = new " ~ split(parmsWrap[i])[1][0 .. $-2] ~ "(cast(" ~ parmsType[i].removechars("*") ~ "*) out"~ id ~"[i]);";
					end ~= "}";
				}
			}
			else if ( (GtkDClass.startsWith(parmsWrap[i], "out") ||
				GtkDClass.startsWith(parmsWrap[i], "ref")) &&
				parmsType[i][0 .. $-1] != split(parmsWrap[i])[1] )
			{
				string id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);

				if (GtkDClass.startsWith(parmsWrap[i], "out") )
				{
					bd ~= parmsType[i].removechars("*") ~"* out"~ id ~ " = null;";
				}
				else
				{
					bd ~= parmsType[i].removechars("*") ~"* out"~ id ~ " = ("~id~" is null) ? null : "~id~ ".get"~ split(parmsWrap[i])[1] ~"Struct();";
				}

				gtkCall ~= "&out" ~ id;

				if( GtkDClass.endsWith(parmsWrap[i], "IF") )
					end ~= id ~" = new "~ split(parmsWrap[i])[1][0 .. $-2] ~"(out"~ id ~");";
				else
					end ~= id ~" = new "~ split(parmsWrap[i])[1] ~"(out"~ id ~");";
			}
			else if ( GtkDClass.endsWith(parmsWrap[i], "[]") && parmsType[i][0 .. $-1] != parmsWrap[i][0 .. $-2] &&
				 !GtkDClass.endsWith(parmsType[i], "[]") && parmsWrap[i] != "string[]" )
			{
				string id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);

				bd ~= "";
				bd ~= parmsType[i].removechars("*") ~ "*[] "~ id ~"Array = new "~ parmsType[i].removechars("*") ~"*["~ id ~".length];";
				bd ~= "for ( int i = 0; i < "~ id ~".length ; i++ )";
				bd ~= "{";
				bd ~= "\t"~ id ~"Array[i] = "~ id~ "[i].get"~ parmsWrap[i][0 .. $-2] ~"Struct();";
				bd ~= "}";
				bd ~= "";

				gtkCall ~= id ~"Array.ptr";
			}
			else if ( name in convParms.array && "Return" == convParms.array[name].contains(parms[i]) )
			{
				string id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);

				bd ~= GtkDClass.tokenToGtkD(parmsType[i].chomp("*"), convParms, aliases) ~" "~ id ~";";
				gtkCall ~= "&"~ id;
			}
			else if ( parmsWrap[i] == "FILE*" ) //Phobos Workaround
			{
				gtkCall ~= "cast(void*)"~ GtkDClass.idsToGtkD(parms[i], convParms, aliases);
			}
			else
			{
				if ( parms[i].length > 0 )
				{
					gtkCall ~= parameterToGtk(i, convParms, aliases);
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

						string[] check = [	"if(p is null)",
								  			"{",
										  	"	return null;",
											"}"	];

						if ( !(GtkDClass.endsWith(typeWrap, "[]") && type.chomp("*") == typeWrap.chomp("[]")) )
							bd ~= check;

						if ( GtkDClass.endsWith(typeWrap, "[]") )
						{
							string id = GtkDClass.idsToGtkD(convParms.array[name]["Return"], convParms, aliases);

							if (type[0 .. $-1] == typeWrap[0 .. $-2])
							{
								bd ~= "return p[0 .. "~ id ~"];";
							}
							else
							{
								bd ~= "";
								bd ~= typeWrap ~" arr = new "~ typeWrap[0 .. $-2] ~"["~ id ~"];";
								bd ~= "for(int i = 0; i < "~ id ~"; i++)";
								bd ~= "{";
								bd ~= "\tarr[i] = new " ~ typeWrap[0 .. $-2] ~ "(cast(" ~ type.chomp("*") ~ ") p[i]);";
								bd ~= "}";
								bd ~= "";
								bd ~= "return arr;";
							}
						}
						/* What's with all the casting? */
						/* A; Casting is needed because some GTK+
						 *    functions can return void pointers. */
						else if( GtkDClass.endsWith(typeWrap, "IF") )
							bd ~= "return new " ~ typeWrap[0..$-2] ~ "(cast(" ~ type ~ ") p);";
						else
							bd ~= "return new " ~ typeWrap ~ "(cast(" ~ type ~ ") p);";

						return bd;
					}
				}
			}
		}

		/* We should never reach here. */
		assert(0, "A strange function body was requested.");
	}	
}
