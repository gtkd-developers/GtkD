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

/**
 * This template generates the boilerplate needed to implement a
 * GTK interface in D.
 *
 * Base is the Gtk struct for the base class, and Iface is the
 * Gtk Iface struct for the interface.
 *
 * In your constructor you will need to instantiate the Gtk class
 * by calling the ObjectG costructor: `super(getType(), null);` 
 */
mixin template ImplementInterface(Base, Iface)
{
	mixin(ImplementInterfaceImpl!(Base, Iface, typeof(this))());
}

template ImplementInterfaceImpl(Base, Klass, Impl)
{
	import std.algorithm;
	import std.traits;
	import std.meta;
	import std.range;
	import std.string;
	import std.uni;
	import std.conv;
	import gtkc.gobjecttypes;

	string ImplementInterfaceImpl()
	{
		string result;

		result ~= "import glib.Str;\n"~
		          "import gobject.Type : Type;\n"~
		          "import gtkc.gobject : g_type_class_peek_parent, g_object_get_data;\n";

		if ( !is(Base == gtkc.gobjecttypes.GObject) )
			result ~= "import "~ getTypeImport!Base() ~": "~ getTypeFunction!Base()[0..$-2] ~";\n";

		result ~= "import "~ getTypeImport!Klass() ~" : "~ getTypeFunction!Klass()[0..$-2] ~";\n\n";

		result ~= "struct "~ toPascalCase!Impl() ~";\n"~
		          "struct "~ toPascalCase!Impl() ~"Class\n"~
		          "{\n"~
		          "\t"~ Base.stringof ~"Class parentClass;\n"~
		          "}\n\n";

		result ~= "protected "~ toPascalCase!Impl() ~"* "~ toCamelCase!Impl() ~";\n"~
		          "protected static "~ Base.stringof ~"Class* parentClass = null;\n\n";

		result ~= "protected override void* getStruct()\n"~
		          "{\n"~
		          "\treturn cast(void*)gObject;\n"~
		          "}\n\n";
		
		result ~= "public this()\n"~
		          "{\n"~
		          "\tauto p = super(getType(), null);\n"~
		          "\t"~ toCamelCase!Impl() ~" = cast("~ toPascalCase!Impl() ~"*) p.getObjectGStruct();\n"~
		          "}\n\n";

		if ( !implements("getType") )
		{
			result ~= "public static GType getType()\n"~
				      "{\n"~
				      "\tGType "~ toCamelCase!Impl() ~"Type = Type.fromName(\""~ toPascalCase!Impl() ~"\");\n\n"~
				      "\tif ("~ toCamelCase!Impl() ~"Type == GType.INVALID)\n"~
				      "\t{\n"~
				      "\t\t"~ toCamelCase!Impl() ~"Type = Type.registerStaticSimple(\n"~
			          "\t\t\t"~ getTypeFunction!Base() ~",\n"~
				      "\t\t\t\""~ toPascalCase!Impl() ~"\",\n"~
				      "\t\t\tcast(uint)"~ toPascalCase!Impl() ~"Class.sizeof,\n"~
				      "\t\t\tcast(GClassInitFunc) &"~ toCamelCase!Impl() ~"ClassInit,\n"~
				      "\t\t\tcast(uint)"~ Base.stringof ~".sizeof, null, cast(GTypeFlags)0);\n\n"~
				      "\t\tforeach ( member; __traits(derivedMembers, "~ Impl.stringof ~") )\n"~
				      "\t\t{\n"~
				      "\t\t\tstatic if ( member.startsWith(\"_implementInterface\") )\n"~
				      "\t\t\t\t__traits(getMember, "~ Impl.stringof ~", member)("~ toCamelCase!Impl() ~"Type);\n"~
				      "\t\t}\n"~
				      "\t}\n\n"~
				      "\treturn "~ toCamelCase!Impl() ~"Type;\n"~
				      "}\n\n";
		}

		result ~= "static void _implementInterface"~ toPascalCase!Impl() ~"(GType type)\n"~
		          "{\n"~
		          "\tGInterfaceInfo "~ Klass.stringof ~"Info =\n"~
		          "\t{\n"~
		          "\t\tcast(GInterfaceInitFunc) &"~ toCamelCase!Impl() ~"Init,\n"~
		          "\t\tnull,\n"~
		          "\t\tnull\n"~
		          "\t};\n"~
		          "\tType.addInterfaceStatic(type, "~ getTypeFunction!Klass() ~", &"~ Klass.stringof ~"Info);\n"~
		          "};\n\n";

		result ~= "extern(C)\n{\n";

		if ( !implements(toCamelCase!Impl() ~"ClassInit") )
		{
			result ~= "static void "~ toCamelCase!Impl() ~"ClassInit (void* klass)\n"~
			          "{\n"~
			          "\tparentClass = cast("~ Base.stringof ~"Class*) g_type_class_peek_parent(klass);\n"~
			          "\t(cast("~ Base.stringof ~"Class*)klass).finalize = &"~ toCamelCase!Impl() ~"Finalize;\n"~
			          "}\n\n";
		}

		if ( !implements(toCamelCase!Impl() ~"Finalize") )
		{
			result ~= "static void "~ toCamelCase!Impl() ~"Finalize (GObject *object)\n"~
			          "{\n"~
			          "\tparentClass.finalize(object);\n"~
			          "}\n\n";
		}

		if ( !implements(toCamelCase!Impl() ~"Init") )
		{
			result ~= "static void "~ toCamelCase!Impl() ~"Init ("~ Klass.stringof ~" *iface)\n"~
			          "{\n";

			auto names = FieldNameTuple!Klass;
			foreach ( i, member; Fields!Klass )
			{
				if ( isCallable!member && implements(names[i]) && (!implements("addOn"~ names[i].capitalizeFirst) || implements(toCamelCase!Impl() ~ names[i].capitalizeFirst) ) )
				{
					result ~= "\tiface."~ names[i] ~" = &"~ toCamelCase!Impl() ~ names[i].capitalizeFirst ~";\n";
				}
			}

			result ~= "}\n\n";
		}

		alias names = FieldNameTuple!Klass;
		foreach ( i, member; Fields!Klass )
		{
			if ( isCallable!member && 
			     implements(names[i]) &&
			     !implements(toCamelCase!Impl() ~ names[i].capitalizeFirst) &&
			     !implements("addOn"~ names[i].capitalizeFirst) )
			{
				result ~= getWrapFunction!(member, names[i]);
			}
		}

		result ~= "}";

		return result;
	}

	string getTypeFunction(Iface)()
	{
		string result;

		if ( is(Iface == gtkc.gobjecttypes.GObject) )
			return "GType.OBJECT";

		foreach ( i, char c; Iface.stringof )
		{
			if ( c.isUpper && i > 0 )
				result ~= "_"~c;
			else
				result ~= c;
		}

		return result.toLower.replace("_iface", "")~ "_get_type()";
	}

	string getTypeImport(Iface)()
	{
		return fullyQualifiedName!Iface.replace("types."~ Iface.stringof, "");
	}

	string getWrapFunction(Member, string name)()
	{
		string result;

		static if ( isCallable!Member )
		{
			alias Params = Parameters!Member;
			alias STC = ParameterStorageClass;
			auto ParamStorage = [STC.none, ParameterStorageClassTuple!(__traits(getMember, Impl, name))];
			auto ParamNames = ["iface", ParameterIdentifierTuple!(__traits(getMember, Impl, name))];
			alias DParamTypes = AliasSeq!(void, Parameters!(__traits(getMember, Impl, name)));

			result ~= "static "~ ReturnType!Member.stringof ~" "~ toCamelCase!Impl() ~ name.capitalizeFirst ~"(";

			foreach ( i, param; Params )
			{
				if ( i > 0 )
					result ~= ", ";
				result ~= param.stringof ~" "~ ParamNames[i];
			}

			result ~= ")\n"~
			          "{\n";

			if ( implements("get"~ Impl.stringof ~"Struct") && implements("getStruct") )
				result ~= "\tauto impl = ObjectG.getDObject!("~ Impl.stringof ~")(cast("~ toPascalCase!Impl() ~"*)iface);\n";
			else
				result ~= "\tauto impl = cast("~ Impl.stringof ~")g_object_get_data(cast(GObject*)iface, \"GObject\".ptr);\n";

			foreach ( i, param; Params )
			{
				if ( ParamStorage[i] == STC.out_ && isGtkdType!(DParamTypes[i]) )
					result ~= "\t"~ DParamTypes[i].stringof ~" d_"~ ParamNames[i] ~";\n";
			}

			if ( is(ReturnType!Member == void) )
				result ~= "\n\timpl."~ name ~"(";
			else
				result ~= "\n\tauto ret = impl."~ name ~"(";

			foreach ( i, param; Params )
			{
				if ( i == 0 )
					continue;
				if ( i > 1 )
					result ~= ", ";

				if ( ParamStorage[i] == STC.out_ && isGtkdType!(DParamTypes[i]) )
					result ~= "d_"~ ParamNames[i];
				else if ( isGtkdType!(DParamTypes[i]) )
					result ~= "ObjectG.getDObject!("~ DParamTypes[i].stringof ~")("~ ParamNames[i] ~")";
				else
					result ~= ParamNames[i];
			}

			result ~= ");\n\n";

			foreach ( i, param; Params )
			{
				if ( ParamStorage[i] == STC.out_ && isGtkdType!(DParamTypes[i]) )
					result ~= "\t"~ ParamNames[i] ~" = d_"~ ParamNames[i] ~".get"~ DParamTypes[i].stringof ~"Struct();\n";
			}

			if ( isGtkdType!(ReturnType!(__traits(getMember, Impl, name))) && isPointer!(ReturnType!Member) )
				result ~= "\treturn ret.get"~ (ReturnType!(__traits(getMember, Impl, name))).stringof ~"Struct();\n";
			else if ( !is(ReturnType!Member == void) )
				result ~= "\treturn ret;\n";

			result ~= "}\n\n";
		}

		return result;
	}

	string toCamelCase(Type)()
	{
		string result;

		foreach (i, word; to!string(fullyQualifiedName!Type).split("."))
		{
			if ( i == 0 )
				word = word[0 .. 1].toLower ~ word[1 .. $];
			else
				word = word.capitalizeFirst;
			
			result ~= word;
		}

		return result;
	}

	string toPascalCase(Type)()
	{
		string result;

		foreach (word; to!string(fullyQualifiedName!Type).split("."))
		{
			result ~= word.capitalizeFirst;
		}

		return result;
	}

	template isGtkdType(T)
	{
		static if ( __traits(compiles, new T(cast(typeof(T.tupleof[0]))null, true)) )
			enum bool isGtkdType = hasMember!(T, "get"~ T.stringof ~"Struct");
		else
			enum bool isGtkdType = false;
	}

	bool implements(string member)
	{
		return (cast(string[])[__traits(derivedMembers, Impl)]).canFind(member);
	}

	string capitalizeFirst(string str)
	{
		if ( str.empty )
			return str;
		else if ( str.length == 1 )
			return str.toUpper;
		else
			return str[0 .. 1].toUpper ~ str[1 .. $];
	}
}
