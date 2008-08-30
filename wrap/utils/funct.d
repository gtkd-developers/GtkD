/*
 * This file is part of gtkD.
 * 
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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

public struct Funct
{
	bool ctor;	/// when true this method was found to be a constructor
	char[] type;
	char[] typeWrap;
	char[] name;
	char[] convName;		/// name after convertion
	// TODO parms need to be a struct
	char[][] parmsType;
	char[][] parmsWrap;		/// this is the parameter wrapped type
	char[][] parms;
	char[][] parmsDesc;
	bool[] parmConst;
	bool[] parmPointer;
	char[] typeDesc;
	char[] strctVar;
	char[] strctPointer;
	
	
	/**
	 * Gets the type, name and parameters of the function
	 * Params:
	 *    	text = 	The Gtk API description of the function call
	 */
	void init(char[] text, ConvParms* convParms)
	{
		strctVar = null;
		getStrctVar(convParms);
		strctPointer = convParms.strct.dup ~ '*';

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

		typeWrap = getWrappedType(type.dup, convParms);
		
		GtkDClass.skip(p, text,'(');
		int countBrace = 0;
		char[] currParmType;
		char[] currParm;
		debug(parm)writef("%s:", name);
		while ( countBrace==0 && p<text.length && text[p]!=')' )
		{
			currParmType.length = 0;
			currParm.length = 0;
			
			GtkDClass.skipBlank(p, text);
			currParmType = GtkDClass.untilBlank(p, text, ",)");
			GtkDClass.skipBlank(p, text);
			debug(parm)writef("currParmType = %s", currParmType);
			if ( std.string.find(" const volatile G_CONST_RETURN ", currParmType) > 0 )
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
			}
			else
			{
				currParm = "";
			}

			GtkDClass.adjustTypeName(currParmType, currParm);
			parmsType ~= currParmType.dup;

			if ( !getOutOrRefType(currParm, currParmType,  convParms) && !getArrayType(currParm, currParmType,  convParms))
				parmsWrap ~= getWrappedType(currParmType.dup, convParms);

			parms ~= currParm.dup;
			
			if ( p<text.length && text[p]==',') ++p;
		}

		GtkDClass.skip(p, text, ';');
	}

	bool getOutOrRefType(char[] currParm, char[] currParmType, ConvParms* convParms)
	{
		if ( name in convParms.outParms && convParms.outParms[name].contains(currParm) )
		{
			parmsWrap ~= "out "~ getWrappedType(currParmType[0 .. $-1].dup, convParms);
			return true;
		}
		if ( name in convParms.inoutParms && convParms.inoutParms[name].contains(currParm) )
		{
			parmsWrap ~= "inout "~ getWrappedType(currParmType[0 .. $-1].dup, convParms);
			return true;
		}

		return false;
	}

	bool getArrayType(char[] currParm, char[] currParmType, ConvParms* convParms)
	{
		if ( name in convParms.array && currParm in convParms.array[name])
		{
			if ( name in convParms.outParms && convParms.outParms[name].contains(currParm) )
			{
				parmsWrap ~= "out "~ getWrappedType(currParmType[0 .. $-2].dup, convParms) ~"[]";
				return true;
			}
			else if ( name in convParms.inoutParms && convParms.inoutParms[name].contains(currParm) )
			{
				parmsWrap ~= "inout "~ getWrappedType(currParmType[0 .. $-2].dup, convParms) ~"[]";
				return true;
			}
			else
			{
				parmsWrap ~= getWrappedType(currParmType[0 .. $-1].dup, convParms) ~ "[]";
				return true;
			}
		}

		return false;
	}

	bool contains(char[][] src, char[] elem)
	{
		foreach( str; src)
			if ( str == elem )
				return true;

		return false;
	}

	char[] contains(char[][char[]] src, char[] elem)
	{
		foreach( key, str; src)
			if ( str == elem )
				return key;

		return null;
	}

	char[] getStrctVar(ConvParms* convParms)
	{
		if ( strctVar.length == 0 )
		{
			if ( convParms.strct.length > 0 )
			{
				strctVar = GtkDClass.toVar(convParms.strct.dup);
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
	char[] getWrappedType(char[] currType, ConvParms* convParms)
	{
		char[] wType;
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
	char[] getUnwrappedType(char[] currType, ConvParms* convParms)
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
	char[] getExternal(ConvParms* convParms, char[][char[]] aliases)
	{
		
		char[] ext = type 
					~ " function(" 
					~ getParameters(convParms, aliases)
					~ ")" 
					~ name
					;
		
		return ext;
	}
	
	char[] getParameters(ConvParms* convParms, char[][char[]] aliases)
	{
		char[] parameters;
		
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
	char[] getCallbackParameters(int firstParameter, ConvParms* convParms, char[][char[]] aliases)
	{
		char[] parameters;

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

		return parameters;
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
	char[] getCallbackVars(ConvParms* convParms, char[][char[]] aliases)
	{
		char[] parameters;

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

		return parameters;
	}

	char[] getDelegateDeclaration(ConvParms* convParms, int firstParameter = 0)
	{
		if ( GtkDClass.endsWith(typeWrap,"user_function") )
		{
			typeWrap = typeWrap[0..typeWrap.length-13];
		}
		char[] decl = typeWrap ~ " delegate(";
		
		int pCount = 0;
		foreach(int count, char[] parm ; parmsWrap )
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
	char[] declaration(ConvParms* convParms, char[][char[]] aliases)
	{
		char[] dec;
		debug(ctor)writefln("declaration ctor strct = %s",convParms.strct);
		debug(ctor)writefln("declaration ctor realStrct = %s",convParms.realStrct);
		debug(ctor)writefln("declaration ctor type = %s",type);
		debug(ctor)writefln("declaration ctor name = %s",name);
		convName = GtkDClass.idsToGtkD(name, convParms, aliases);
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
			char[] overr;
			if (convParms.needsOverride(convName))
			{
				overr = "override ";
			}
			if ( convParms.strct.length>0 
				&& parmsType.length > 0 
				&& (parmsType[0] == strctPointer )
				)
			{
				dec = "public "~overr~typeWrap~" "~convName~"(";
			}
			else
			{
				dec = "public static "~overr~typeWrap~" "~convName~"(";
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
				if ( parmsType[i] == strctPointer )
				{
					debug(mainStrct)writefln("\tSAME <<<<<<------");
					--parmCount;
				}
			}

			if ( GtkDClass.startsWith(parmsType[i], "GError**") && convParms.strct != "GError" )
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
				dec ~= parmsWrap[i]~" "~GtkDClass.idsToGtkD(parms[i], convParms, aliases);
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
	char[] parameterToGtk(int i, ConvParms* convParms, char[][char[]] aliases)
	{
		char[] parmToGtk;

		if ( parmsType[i] != parmsWrap[i] )
		{
			if ( parmsWrap[i] == "string" )
			{
				parmToGtk = "Str.toStringz("
							~ GtkDClass.idsToGtkD(parms[i], convParms, aliases)
							~")";
			}
			else if ( GtkDClass.startsWith(parmsWrap[i], "out") ||
				GtkDClass.startsWith(parmsWrap[i], "inout") )
			{
				char[] id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);
				if ( parmsWrap[i] == "out string" )
					parmToGtk = "&out" ~ id;
				else if ( parmsType[i][0 .. $-1] == split(parmsWrap[i])[1] )
					parmToGtk = "&" ~ id;
				else
					parmToGtk = "&" ~ parmsType[i].removechars("*").tolower();
			}
			else if ( GtkDClass.endsWith(parmsWrap[i], "[]") )
			{
				char[] id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);

				parmToGtk = id ~".ptr";
			}
			else
			{
				char[] id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);
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
				char[] id = GtkDClass.idsToGtkD(convParms.array[name].contains(parms[i]), convParms, aliases);

				parmToGtk = id ~".length";
			}
			else
			{
				parmToGtk = GtkDClass.idsToGtkD(parms[i], convParms, aliases);
			}
		}
		return parmToGtk;
	}
	
	char[] parameterToGtkD(int i, ConvParms* convParms, char[][char[]] aliases)
	{
		char[] parmToGtkD;
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

	char[] getWrapParametersType()
	{
		char[] pw;
		foreach ( int count, char[] typeW ; parmsWrap )
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
	char[][] bod(ConvParms* convParms, char[][char[]] aliases)
	{
		char[][] bd; /* Return variable. */
		char[] gtkCall;
		char[][] end; //Code to be added to the end of the function to wrap ref/out parameters. 
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

			if ( i == 0 && parmsType[0] == strctPointer )
			{
				
				if ( convParms.templ.length == 0 )
				{
					gtkCall ~= GtkDClass.toVar(convParms.strct.dup);
				}
				else
				{
					gtkCall ~= "get"~convParms.clss~"Struct()";
				}
			}
			else if ( parmsType[i] == "GError**" && convParms.strct != "GError")
			{
				bd ~= "GError* err = null;";

				gtkCall ~= "&err";

				wrapError = true;
			}
			else if ( parmsWrap[i] == "out string" )
			{
				char[] id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);

				bd ~= "char* out"~ id ~" = null;";
				gtkCall ~= "&out"~ id;
				end ~= id ~" = Str.toString(out"~ id ~");";
			}
			else if ( (GtkDClass.startsWith(parmsWrap[i], "out") ||
				GtkDClass.startsWith(parmsWrap[i], "inout")) &&
				parmsType[i][0 .. $-1] != split(parmsWrap[i])[1] )
			{
				char[] id = GtkDClass.idsToGtkD(parms[i], convParms, aliases);

				if (GtkDClass.startsWith(parmsWrap[i], "out") )
				{
					bd ~= parmsType[i].removechars("*") ~"* "~ parmsType[i].removechars("*").tolower() ~ " = null;";
				}
				else
				{
					bd ~= parmsType[i].removechars("*") ~"* "~ parmsType[i].removechars("*").tolower() ~ " = ("~id~" is null) ? null : "~id~ ".get"~ split(parmsWrap[i])[1] ~"Struct();";
				}

				gtkCall ~= "&" ~ parmsType[i].removechars("*").tolower();
				
				end ~= id ~" = new "~ split(parmsWrap[i])[1] ~"("~ parmsType[i].removechars("*").tolower() ~");";
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
		else
		{
			/* If the call constructs an object, call the GTK+ constructor
			 * and pass the object to the wrapper's constructor. */
			if(ctor)
			{
				/*char[] prepend = "this(cast(";
				if(convParms.realStrct.length > 0)
					prepend ~= convParms.realStrct ~ "*)";
				else
					prepend ~= convParms.strct ~ "*)";
				gtkCall = prepend ~ gtkCall*/
				char[] strct = (convParms.realStrct.length > 0) ? convParms.realStrct : convParms.strct;
				/* Do we need a cast? */
				bd ~= "auto p = " ~ gtkCall ~ ";"; //GtkStruct* p = gtk_function(arg1...argN);
				
				checkError();

				char[][] check = [	"if(p is null)",
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
				if(type == typeWrap)
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
						if ( !wrapError && end.length == 0 )
							bd ~= "return Str.toString(" ~ gtkCall ~ ");";
						else
						{
							bd ~= "auto p = Str.toString(" ~ gtkCall ~ ");";
							checkError();

							if ( end.length > 0 )
								bd ~= end;

							bd ~= "return p;";
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

						char[][] check = [	"if(p is null)",
								  			"{",
										  	"	return null;",
											"}"	];
						bd ~= check;
						/* What's with all the casting? */
						/* A; Casting is needed because some GTK+
						 *    functions can return void pointers. */
						if( GtkDClass.endsWith(typeWrap, "IF") )
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
