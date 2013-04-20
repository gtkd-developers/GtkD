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
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkBuilder.html
 * outPack = gtk
 * outFile = Builder
 * strct   = GtkBuilder
 * realStrct=
 * ctorStrct=
 * clss    = Builder
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_builder_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_builder_get_object
 * 	- gtk_builder_get_objects
 * 	- gtk_builder_new
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListSG
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * 	- std.string
 * 	- gtkc.glib;
 * 	- gtkc.gobject
 * 	- gtkc.paths
 * 	- glib.Module
 * 	- gobject.Type
 * structWrap:
 * 	- GObject* -> ObjectG
 * 	- GParamSpec* -> ParamSpec
 * 	- GSList* -> ListSG
 * 	- GValue* -> Value
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Builder;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import glib.ListSG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Value;
private import gtkc.glib;;
private import gtkc.gobject;
private import gtkc.paths;
private import glib.Module;
private import gobject.Type;


version(Tango) {
	private import tango.text.Util;
	private import tango.text.Unicode;
} else {
	private import std.string;
}


private import gobject.ObjectG;

/**
 * A GtkBuilder is an auxiliary object that reads textual descriptions
 * of a user interface and instantiates the described objects. To pass a
 * description to a GtkBuilder, call gtk_builder_add_from_file() or
 * gtk_builder_add_from_string(). These functions can be called multiple
 * times; the builder merges the content of all descriptions.
 *
 * A GtkBuilder holds a reference to all objects that it has constructed
 * and drops these references when it is finalized. This finalization can
 * cause the destruction of non-widget objects or widgets which are not
 * contained in a toplevel window. For toplevel windows constructed by a
 * builder, it is the responsibility of the user to call gtk_widget_destroy()
 * to get rid of them and all the widgets they contain.
 *
 * The functions gtk_builder_get_object() and gtk_builder_get_objects()
 * can be used to access the widgets in the interface by the names assigned
 * to them inside the UI description. Toplevel windows returned by these
 * functions will stay around until the user explicitly destroys them
 * with gtk_widget_destroy(). Other widgets will either be part of a
 * larger hierarchy constructed by the builder (in which case you should
 * not have to worry about their lifecycle), or without a parent, in which
 * case they have to be added to some container to make use of them.
 * Non-widget objects need to be reffed with g_object_ref() to keep them
 * beyond the lifespan of the builder.
 *
 * The function gtk_builder_connect_signals() and variants thereof can be
 * used to connect handlers to the named signals in the description.
 *
 * GtkBuilder UI Definitions
 *
 * GtkBuilder parses textual descriptions of user interfaces which are specified
 * in an XML format which can be roughly described by the RELAX NG schema below.
 * We refer to these descriptions as GtkBuilder UI definitions
 * or just UI definitions if the context is clear. Do not
 * confuse GtkBuilder UI Definitions with
 * GtkUIManager UI Definitions, which are more
 * limited in scope. It is common to use .ui as the filename extension for files containing GtkBuilder UI definitions.
 *
 * start = element interface {
	 *  attribute domain { text } ?,
	 *  ( requires | object | menu ) *
 * }
 *
 * requires = element requires {
	 *  attribute lib { text },
	 *  attribute version { text }
 * }
 *
 * object = element object {
	 *  attribute id { xsd:ID },
	 *  attribute class { text },
	 *  attribute type-func { text } ?,
	 *  attribute constructor { text } ?,
	 *  (property | signal | child | ANY) *
 * }
 *
 * property = element property {
	 *  attribute name { text },
	 *  attribute translatable { "yes" | "no" } ?,
	 *  attribute comments { text } ?,
	 *  attribute context { text } ?,
	 *  text ?
 * }
 *
 * signal = element signal {
	 *  attribute name { text },
	 *  attribute handler { text },
	 *  attribute after { text } ?,
	 *  attribute swapped { text } ?,
	 *  attribute object { text } ?,
	 *  attribute last_modification_time { text } ?,
	 *  empty
 * }
 *
 * child = element child {
	 *  attribute type { text } ?,
	 *  attribute internal-child { text } ?,
	 *  (object | ANY)*
 * }
 *
 * menu = element menu {
	 *  attribute id { xsd:ID },
	 *  attribute domain { text } ?,
	 *  (item | submenu | section) *
 * }
 *
 * item = element item {
	 *  attribute id { xsd:ID } ?,
	 *  (attribute_ | link) *
 * }
 *
 * attribute_ = element attribute {
	 *  attribute name { text },
	 *  attribute type { text } ?,
	 *  attribute translatable { "yes" | "no" } ?,
	 *  attribute context { text } ?,
	 *  attribute comments { text } ?,
	 *  text ?
 * }
 *
 * link = element link {
	 *  attribute id { xsd:ID } ?,
	 *  attribute name { text },
	 *  item *
 * }
 *
 * submenu = element submenu {
	 *  attribute id { xsd:ID } ?,
	 *  (attribute_ | item | submenu | section) *
 * }
 *
 * section = element section {
	 *  attribute id { xsd:ID } ?,
	 *  (attribute_ | item | submenu | section) *
 * }
 *
 * ANY = element * - (interface | requires | object | property | signal | child | menu | item | attribute | link | submenu | section) {
	 *  attribute * { text } *,
	 *  (ALL *  text ?)
 * }
 * ALL = element * {
	 *  attribute * { text } *,
	 *  (ALL *  text ?)
 * }
 *
 * The toplevel element is <interface>. It optionally takes a "domain"
 * attribute, which will make the builder look for translated strings using
 * dgettext() in the domain specified. This can also be done by calling
 * gtk_builder_set_translation_domain() on the builder. Objects are described by
 * <object> elements, which can contain <property> elements to set
 * properties, <signal> elements which connect signals to handlers, and
 * <child> elements, which describe child objects (most often widgets
 * inside a container, but also e.g. actions in an action group, or columns in a
 * tree model). A <child> element contains an <object> element which
 * describes the child object. The target toolkit version(s) are described by
 * <requires> elements, the "lib" attribute specifies the widget library
 * in question (currently the only supported value is "gtk+") and the "version"
 * attribute specifies the target version in the form
 * "<major>.<minor>". The builder will error out if the version
 * requirements are not met.
 *
 * Typically, the specific kind of object represented by an <object>
 * element is specified by the "class" attribute. If the type has not been
 * loaded yet, GTK+ tries to find the _get_type() from the
 * class name by applying heuristics. This works in most cases, but if
 * necessary, it is possible to specify the name of the
 * _get_type() explictly with the "type-func" attribute.
 * As a special case, GtkBuilder allows to use an object that has been
 * constructed by a GtkUIManager in another part of the UI definition by
 * specifying the id of the GtkUIManager in the "constructor" attribute and the
 * name of the object in the "id" attribute.
 *
 * Objects must be given a name with the "id" attribute, which allows the
 * application to retrieve them from the builder with gtk_builder_get_object().
 * An id is also necessary to use the object as property value in other parts of
 * the UI definition.
 *
 * Note
 *
 * Prior to 2.20, GtkBuilder was setting the "name" property of constructed widgets to the
 * "id" attribute. In GTK+ 2.20 or newer, you have to use gtk_buildable_get_name() instead
 * of gtk_widget_get_name() to obtain the "id", or set the "name" property in your UI
 * definition.
 *
 * Setting properties of objects is pretty straightforward with the
 * <property> element: the "name" attribute specifies the name of the
 * property, and the content of the element specifies the value. If the
 * "translatable" attribute is set to a true value, GTK+ uses gettext() (or
 * dgettext() if the builder has a translation domain set) to find a translation
 * for the value. This happens before the value is parsed, so it can be used for
 * properties of any type, but it is probably most useful for string properties.
 * It is also possible to specify a context to disambiguate short strings, and
 * comments which may help the translators.
 *
 * GtkBuilder can parse textual representations for the most common property
 * types: characters, strings, integers, floating-point numbers, booleans
 * (strings like "TRUE", "t", "yes", "y", "1" are interpreted as TRUE, strings
 * like "FALSE, "f", "no", "n", "0" are interpreted as FALSE), enumerations
 * (can be specified by their name, nick or integer value), flags (can be
 * specified by their name, nick, integer value, optionally combined with "|",
 * e.g. "GTK_VISIBLE|GTK_REALIZED") and colors (in a format understood by
 * gdk_color_parse()). Pixbufs can be specified as a filename of an image file to load.
 * Objects can be referred to by their name and by default refer to objects declared
 * in the local xml fragment and objects exposed via gtk_builder_expose_object().
 *
 * In general, GtkBuilder allows forward references to objects mdash declared
 * in the local xml; an object doesn't have to be constructed before it can be referred to.
 * The exception to this rule is that an object has to be constructed before
 * it can be used as the value of a construct-only property.
 *
 * Signal handlers are set up with the <signal> element. The "name"
 * attribute specifies the name of the signal, and the "handler" attribute
 * specifies the function to connect to the signal. By default, GTK+ tries to
 * find the handler using g_module_symbol(), but this can be changed by passing
 * a custom GtkBuilderConnectFunc to gtk_builder_connect_signals_full(). The
 * remaining attributes, "after", "swapped" and "object", have the same meaning
 * as the corresponding parameters of the g_signal_connect_object() or
 * g_signal_connect_data() functions. A "last_modification_time" attribute
 * is also allowed, but it does not have a meaning to the builder.
 *
 * Sometimes it is necessary to refer to widgets which have implicitly been
 * constructed by GTK+ as part of a composite widget, to set properties on them
 * or to add further children (e.g. the vbox of a GtkDialog). This can be
 * achieved by setting the "internal-child" propery of the <child> element
 * to a true value. Note that GtkBuilder still requires an <object>
 * element for the internal child, even if it has already been constructed.
 *
 * A number of widgets have different places where a child can be added (e.g.
 * tabs vs. page content in notebooks). This can be reflected in a UI definition
 * by specifying the "type" attribute on a <child>. The possible values
 * for the "type" attribute are described in the sections describing the
 * widget-specific portions of UI definitions.
 *
 * $(DDOC_COMMENT example)
 *
 * Beyond this general structure, several object classes define their own XML
 * DTD fragments for filling in the ANY placeholders in the DTD above. Note that
 * a custom element in a <child> element gets parsed by the custom tag
 * handler of the parent object, while a custom element in an <object>
 * element gets parsed by the custom tag handler of the object.
 *
 * These XML fragments are explained in the documentation of the respective
 * objects, see
 * GtkWidget,
 * GtkLabel,
 * GtkWindow,
 * GtkContainer,
 * GtkDialog,
 * GtkCellLayout,
 * GtkColorSelectionDialog,
 * GtkFontSelectionDialog,
 * GtkExpander,
 * GtkFrame,
 * GtkListStore,
 * GtkTreeStore,
 * GtkNotebook,
 * GtkSizeGroup,
 * GtkTreeView,
 * GtkUIManager,
 * GtkActionGroup.
 * GtkMenuItem,
 * GtkMenuToolButton,
 * GtkAssistant,
 * GtkScale,
 * GtkComboBoxText,
 * GtkRecentFilter,
 * GtkFileFilter,
 * GtkTextTagTable.
 *
 * <hr>
 *
 * Embedding other XML
 *
 * Apart from the language for UI descriptions that has been explained
 * in the previous section, GtkBuilder can also parse XML fragments
 * of GMenu markup. The resulting
 * GMenu object and its named submenus are available via
 * gtk_builder_get_object() like other constructed objects.
 */
public class Builder : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkBuilder* gtkBuilder;
	
	
	public GtkBuilder* getBuilderStruct()
	{
		return gtkBuilder;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkBuilder;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkBuilder* gtkBuilder)
	{
		super(cast(GObject*)gtkBuilder);
		this.gtkBuilder = gtkBuilder;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkBuilder = cast(GtkBuilder*)obj;
	}
	
	private struct GtkBuilderClass
	{
		GObjectClass parentClass;
		extern(C) GType function( GtkBuilder*, char* ) get_type_from_name;
		
		/* Padding for future expansion */
		extern(C) void  function()  _gtk_reserved1;
		extern(C) void  function()  _gtk_reserved2;
		extern(C) void  function()  _gtk_reserved3;
		extern(C) void  function()  _gtk_reserved4;
		extern(C) void  function()  _gtk_reserved5;
		extern(C) void  function()  _gtk_reserved6;
		extern(C) void  function()  _gtk_reserved7;
		extern(C) void  function()  _gtk_reserved8;
	}
	
	/**
	 * Creates a new builder object.
	 * Since 2.12
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkBuilder* gtk_builder_new (void);
		auto p = gtk_builder_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_builder_new()");
		}
		this(cast(GtkBuilder*) p);
		
		GtkBuilderClass* klass = Type.getInstanceClass!(GtkBuilderClass)( this );
		klass.get_type_from_name = &gtk_builder_real_get_type_from_name_override;
	}
	
	/**
	 * This function is a modification of _gtk_builder_resolve_type_lazily from "gtk/gtkbuilder.c".
	 * It is needed because it assumes we are linking at compile time to the gtk libs.
	 * specifically the NULL in g_module_open( NULL, 0 );
	 * It replaces the default function pointer "get_type_from_name" in GtkBuilderClass.
	 */
	extern(C) private static GType gtk_builder_real_get_type_from_name_override ( GtkBuilder* builder, char *name )
	{
		GType gtype;
		gtype = g_type_from_name( name );
		if (gtype != GType.INVALID)
		{
			return gtype;
		}
		
		/*
		 * Try to map a type name to a _get_type function
		 * and call it, eg:
		 *
		 * GtkWindow -> gtk_window_get_type
		 * GtkHBox -> gtk_hbox_get_type
		 * GtkUIManager -> gtk_ui_manager_get_type
		 *
		 */
		char   c;
		string symbol_name;
		
		for (int i = 0; name[i] != '\0'; i++)
		{
			c = name[i];
			/* skip if uppercase, first or previous is uppercase */
			if ((c == Str.asciiToupper (c) &&
			i > 0 && name[i-1] != Str.asciiToupper (name[i-1])) ||
			(i > 2 && name[i]   == Str.asciiToupper (name[i]) &&
			name[i-1] == Str.asciiToupper (name[i-1]) &&
			name[i-2] == Str.asciiToupper (name[i-2]))
			)
			
			symbol_name ~= '_';
			symbol_name ~= Str.asciiTolower (c);
		}
		symbol_name ~=  "_get_type" ;
		
		/* scan linked librarys for function symbol */
		foreach ( lib; importLibs )
		{
			GType function() func;
			Module mod = Module.open( lib, GModuleFlags.BIND_LAZY );
			if( mod is null )
			continue;
			
			scope(exit) mod.close();
			
			if ( mod.symbol( symbol_name, cast(void**) &func ) ) {
				return func();
			}
		}
		
		return GType.INVALID;
	}
	
	/**
	 * Gets the object named name. Note that this function does not
	 * increment the reference count of the returned object.
	 * Since 2.12
	 * Params:
	 * name = name of object to get
	 * Returns: the object named name or NULL if it could not be found in the object tree.. transfer none.
	 */
	public ObjectG getObject(string name)
	{
		// GObject* gtk_builder_get_object (GtkBuilder *builder,  const gchar *name);
		return newFromObject( gtk_builder_get_object(gtkBuilder, Str.toStringz(name)) );
	}
	
	/**
	 * Gets all objects that have been constructed by builder.
	 * Since 2.12
	 * Returns: an array containing all the objects constructed by the GtkBuilder instance.
	 */
	public ObjectG[] getObjects()
	{
		ObjectG[] objects;
		
		// GSList* gtk_builder_get_objects (GtkBuilder *builder);
		GSList* list = gtk_builder_get_objects(gtkBuilder);
		
		while ( list.next !is null )
		{
			objects ~= newFromObject( cast(GObject*)list.data );
			list = list.next;
		}
		
		g_slist_free(list);
		
		return objects;
	}
	
	/**
	 * This function creates an D object corresponding to the Struct pointer passed in.
	 */
	public ObjectG newFromObject(GObject* cobj)
	{
		version(LDC)
		{
			version(D_Version2)
			{
				alias ClassInfo.find findClassInfo;
			}
		}
		else
		{
			alias ClassInfo.find findClassInfo;
		}
		
		if(cobj is null)
		{
			return null;
		}
		
		void* dObj = g_object_get_data(cobj, Str.toStringz("GObject"));
		
		if ( dObj !is null )
		{
			return cast(ObjectG)dObj;
		}
		
		string type = convertClassName(Type.name((cast(GTypeInstance*)cobj).gClass.gType));
		ClassInfo ci = cast(ClassInfo)findClassInfo(type);
		
		//Gobject and Gio types both start with g, so try both.
		if(ci is null && startsWith(type, "gobject"))
		{
			ci = cast(ClassInfo)findClassInfo("gio"~ type[7..$]);
		}
		
		if(ci is null)
		{
			return null;
		}
		
		ObjectG obj = cast(ObjectG)_d_newclass(ci);
		
		version(D_Version2)
		{
			obj.__ctor(cobj);
		}
		else
		{
			obj._ctor(cobj);
		}
		
		return obj;
	}
	
	/**
	 * Turn the name of a C Type in to the name of the corresponding D type.
	 * Note: If the prefix of the type is "G" this always usses "gobject" as
	 *     the prefix, extra care should be taken for types from GIO.
	 */
	private string convertClassName(string gName)
	{
		string conv;
		string prefix;
		
		version(Tango)
		{
			alias toUpper toupper;
			alias toLower tolower;
		}
		version(D_Version2)
		{
			alias toUpper toupper;
			alias toLower tolower;
		}
		
		if      ( startsWith(gName, "GtkSource" ) ) prefix = "Gsv";
		else if ( startsWith(gName, "Gtk") )        prefix = "Gtk";
		else if ( startsWith(gName, "Gdk") )        prefix = "Gdk";
		else if ( startsWith(gName, "Gst") )        prefix = "Gst";
		else if ( startsWith(gName, "Gda") )        prefix = "Gda";
		else if ( startsWith(gName, "Atk") )        prefix = "Atk";
		else if ( startsWith(gName, "G") )          prefix = "G";
		else if ( startsWith(gName, "Pango") )      prefix = "Pg";
		else if ( startsWith(gName, "cairo") )      prefix = "cairo";
		
		conv = gName[prefix.length..gName.length];
		
		if ( conv == "Object" ) conv ~= prefix;
		if ( prefix == "Pg" )   conv = "Pg" ~ gName[5..gName.length];
		if ( prefix == "cairo") conv = toupper(gName[6..7]) ~ gName[7..gName.length - 2];
		
		prefix = tolower(prefix);
		
		if( prefix == "gst") prefix = "gstreamer";
		if( prefix == "g")   prefix = "gobject";
		if( prefix == "pg" ) prefix = "pango";
		
		return prefix ~"."~ conv ~"."~ conv;
	}
	
	private bool startsWith(string str, string prefix)
	{
		return str.length >= prefix.length && str[0..prefix.length] == prefix;
	}
	
	version(LDC)
	{
		//version( !D_Version2 )
		version(D_Version2) {} else
		{
			private Object _d_newclass(ClassInfo ci)
			{
				void* p = cast(void*)_d_allocclass(ci);
				(cast(byte*) p)[0 .. ci.init.length] = ci.init[];
				
				return cast(Object) p;
			}
			
			private ClassInfo findClassInfo(string classname)
			{
				foreach ( m; ModuleInfo )
				{
					foreach ( c; m.localClasses )
					{
						if ( c.name == classname )
						return c;
					}
				}
				
				return null;
			}
		}
	}
	
	/**
	 */
	
	/**
	 * Parses a file containing a GtkBuilder
	 * UI definition and merges it with the current contents of builder.
	 * Upon errors 0 will be returned and error will be assigned a
	 * GError from the GTK_BUILDER_ERROR, G_MARKUP_ERROR or G_FILE_ERROR
	 * domain.
	 * Since 2.12
	 * Params:
	 * filename = the name of the file to parse
	 * Returns: A positive value on success, 0 if an error occurred
	 * Throws: GException on failure.
	 */
	public uint addFromFile(string filename)
	{
		// guint gtk_builder_add_from_file (GtkBuilder *builder,  const gchar *filename,  GError **error);
		GError* err = null;
		
		auto p = gtk_builder_add_from_file(gtkBuilder, Str.toStringz(filename), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Parses a resource file containing a GtkBuilder
	 * UI definition and merges it with the current contents of builder.
	 * Upon errors 0 will be returned and error will be assigned a
	 * GError from the GTK_BUILDER_ERROR, G_MARKUP_ERROR or G_RESOURCE_ERROR
	 * domain.
	 * Params:
	 * resourcePath = the path of the resource file to parse
	 * Returns: A positive value on success, 0 if an error occurred Since 3.4
	 * Throws: GException on failure.
	 */
	public uint addFromResource(string resourcePath)
	{
		// guint gtk_builder_add_from_resource (GtkBuilder *builder,  const gchar *resource_path,  GError **error);
		GError* err = null;
		
		auto p = gtk_builder_add_from_resource(gtkBuilder, Str.toStringz(resourcePath), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Parses a string containing a GtkBuilder
	 * UI definition and merges it with the current contents of builder.
	 * Upon errors 0 will be returned and error will be assigned a
	 * GError from the GTK_BUILDER_ERROR or G_MARKUP_ERROR domain.
	 * Since 2.12
	 * Params:
	 * buffer = the string to parse
	 * length = the length of buffer (may be -1 if buffer is nul-terminated)
	 * Returns: A positive value on success, 0 if an error occurred
	 * Throws: GException on failure.
	 */
	public uint addFromString(string buffer, gsize length)
	{
		// guint gtk_builder_add_from_string (GtkBuilder *builder,  const gchar *buffer,  gsize length,  GError **error);
		GError* err = null;
		
		auto p = gtk_builder_add_from_string(gtkBuilder, Str.toStringz(buffer), length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Parses a file containing a GtkBuilder
	 * UI definition building only the requested objects and merges
	 * them with the current contents of builder.
	 * Upon errors 0 will be returned and error will be assigned a
	 * GError from the GTK_BUILDER_ERROR, G_MARKUP_ERROR or G_FILE_ERROR
	 * domain.
	 * Note
	 * If you are adding an object that depends on an object that is not
	 * its child (for instance a GtkTreeView that depends on its
	 * GtkTreeModel), you have to explicitely list all of them in object_ids.
	 * Since 2.14
	 * Params:
	 * filename = the name of the file to parse
	 * objectIds = nul-terminated array of objects to build. [array zero-terminated=1][element-type utf8]
	 * Returns: A positive value on success, 0 if an error occurred
	 * Throws: GException on failure.
	 */
	public uint addObjectsFromFile(string filename, string[] objectIds)
	{
		// guint gtk_builder_add_objects_from_file (GtkBuilder *builder,  const gchar *filename,  gchar **object_ids,  GError **error);
		GError* err = null;
		
		auto p = gtk_builder_add_objects_from_file(gtkBuilder, Str.toStringz(filename), Str.toStringzArray(objectIds), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Parses a string containing a GtkBuilder
	 * UI definition building only the requested objects and merges
	 * them with the current contents of builder.
	 * Upon errors 0 will be returned and error will be assigned a
	 * GError from the GTK_BUILDER_ERROR or G_MARKUP_ERROR domain.
	 * Note
	 * If you are adding an object that depends on an object that is not
	 * its child (for instance a GtkTreeView that depends on its
	 * GtkTreeModel), you have to explicitely list all of them in object_ids.
	 * Since 2.14
	 * Params:
	 * buffer = the string to parse
	 * length = the length of buffer (may be -1 if buffer is nul-terminated)
	 * objectIds = nul-terminated array of objects to build. [array zero-terminated=1][element-type utf8]
	 * Returns: A positive value on success, 0 if an error occurred
	 * Throws: GException on failure.
	 */
	public uint addObjectsFromString(string buffer, gsize length, string[] objectIds)
	{
		// guint gtk_builder_add_objects_from_string (GtkBuilder *builder,  const gchar *buffer,  gsize length,  gchar **object_ids,  GError **error);
		GError* err = null;
		
		auto p = gtk_builder_add_objects_from_string(gtkBuilder, Str.toStringz(buffer), length, Str.toStringzArray(objectIds), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Parses a resource file containing a GtkBuilder
	 * UI definition building only the requested objects and merges
	 * them with the current contents of builder.
	 * Upon errors 0 will be returned and error will be assigned a
	 * GError from the GTK_BUILDER_ERROR, G_MARKUP_ERROR or G_RESOURCE_ERROR
	 * domain.
	 * Note
	 * If you are adding an object that depends on an object that is not
	 * its child (for instance a GtkTreeView that depends on its
	 * GtkTreeModel), you have to explicitely list all of them in object_ids.
	 * Params:
	 * resourcePath = the path of the resource file to parse
	 * objectIds = nul-terminated array of objects to build. [array zero-terminated=1][element-type utf8]
	 * Returns: A positive value on success, 0 if an error occurred Since 3.4
	 * Throws: GException on failure.
	 */
	public uint addObjectsFromResource(string resourcePath, string[] objectIds)
	{
		// guint gtk_builder_add_objects_from_resource  (GtkBuilder *builder,  const gchar *resource_path,  gchar **object_ids,  GError **error);
		GError* err = null;
		
		auto p = gtk_builder_add_objects_from_resource(gtkBuilder, Str.toStringz(resourcePath), Str.toStringzArray(objectIds), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Add object to the builder object pool so it can be referenced just like any
	 * other object built by builder.
	 * Params:
	 * name = the name of the object exposed to the builder
	 * object = the object to expose
	 * Since 3.8
	 */
	public void exposeObject(string name, ObjectG object)
	{
		// void gtk_builder_expose_object (GtkBuilder *builder,  const gchar *name,  GObject *object);
		gtk_builder_expose_object(gtkBuilder, Str.toStringz(name), (object is null) ? null : object.getObjectGStruct());
	}
	
	/**
	 * This method is a simpler variation of gtk_builder_connect_signals_full().
	 * It uses GModule's introspective features (by opening the module NULL)
	 * to look at the application's symbol table. From here it tries to match
	 * the signal handler names given in the interface description with
	 * symbols in the application and connects the signals. Note that this
	 * function can only be called once, subsequent calls will do nothing.
	 * Note that this function will not work correctly if GModule is not
	 * supported on the platform.
	 * When compiling applications for Windows, you must declare signal callbacks
	 * with G_MODULE_EXPORT, or they will not be put in the symbol table.
	 * On Linux and Unices, this is not necessary; applications should instead
	 * be compiled with the -Wl,--export-dynamic CFLAGS, and linked against
	 * gmodule-export-2.0.
	 * Since 2.12
	 * Params:
	 * userData = a pointer to a structure sent in as user data to all signals
	 */
	public void connectSignals(void* userData)
	{
		// void gtk_builder_connect_signals (GtkBuilder *builder,  gpointer user_data);
		gtk_builder_connect_signals(gtkBuilder, userData);
	}
	
	/**
	 * This function can be thought of the interpreted language binding
	 * version of gtk_builder_connect_signals(), except that it does not
	 * require GModule to function correctly.
	 * Since 2.12
	 * Params:
	 * func = the function used to connect the signals. [scope call]
	 * userData = arbitrary data that will be passed to the connection function
	 */
	public void connectSignalsFull(GtkBuilderConnectFunc func, void* userData)
	{
		// void gtk_builder_connect_signals_full (GtkBuilder *builder,  GtkBuilderConnectFunc func,  gpointer user_data);
		gtk_builder_connect_signals_full(gtkBuilder, func, userData);
	}
	
	/**
	 * Sets the translation domain of builder.
	 * See "translation-domain".
	 * Since 2.12
	 * Params:
	 * domain = the translation domain or NULL. [allow-none]
	 */
	public void setTranslationDomain(string domain)
	{
		// void gtk_builder_set_translation_domain (GtkBuilder *builder,  const gchar *domain);
		gtk_builder_set_translation_domain(gtkBuilder, Str.toStringz(domain));
	}
	
	/**
	 * Gets the translation domain of builder.
	 * Since 2.12
	 * Returns: the translation domain. This string is owned by the builder object and must not be modified or freed.
	 */
	public string getTranslationDomain()
	{
		// const gchar * gtk_builder_get_translation_domain (GtkBuilder *builder);
		return Str.toString(gtk_builder_get_translation_domain(gtkBuilder));
	}
	
	/**
	 * Looks up a type by name, using the virtual function that
	 * GtkBuilder has for that purpose. This is mainly used when
	 * implementing the GtkBuildable interface on a type.
	 * Since 2.12
	 * Params:
	 * typeName = type name to lookup
	 * Returns: the GType found for type_name or G_TYPE_INVALID if no type was found
	 */
	public GType getTypeFromName(string typeName)
	{
		// GType gtk_builder_get_type_from_name (GtkBuilder *builder,  const char *type_name);
		return gtk_builder_get_type_from_name(gtkBuilder, Str.toStringz(typeName));
	}
	
	/**
	 * This function demarshals a value from a string. This function
	 * calls g_value_init() on the value argument, so it need not be
	 * initialised beforehand.
	 * This function can handle char, uchar, boolean, int, uint, long,
	 * ulong, enum, flags, float, double, string, GdkColor, GdkRGBA and
	 * GtkAdjustment type values. Support for GtkWidget type values is
	 * still to come.
	 * Upon errors FALSE will be returned and error will be assigned a
	 * GError from the GTK_BUILDER_ERROR domain.
	 * Since 2.12
	 * Params:
	 * pspec = the GParamSpec for the property
	 * string = the string representation of the value
	 * value = the GValue to store the result in. [out]
	 * Returns: TRUE on success
	 * Throws: GException on failure.
	 */
	public int valueFromString(ParamSpec pspec, string string, Value value)
	{
		// gboolean gtk_builder_value_from_string (GtkBuilder *builder,  GParamSpec *pspec,  const gchar *string,  GValue *value,  GError **error);
		GError* err = null;
		
		auto p = gtk_builder_value_from_string(gtkBuilder, (pspec is null) ? null : pspec.getParamSpecStruct(), Str.toStringz(string), (value is null) ? null : value.getValueStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Like gtk_builder_value_from_string(), this function demarshals
	 * a value from a string, but takes a GType instead of GParamSpec.
	 * This function calls g_value_init() on the value argument, so it
	 * need not be initialised beforehand.
	 * Upon errors FALSE will be returned and error will be assigned a
	 * GError from the GTK_BUILDER_ERROR domain.
	 * Since 2.12
	 * Params:
	 * type = the GType of the value
	 * string = the string representation of the value
	 * value = the GValue to store the result in. [out]
	 * Returns: TRUE on success
	 * Throws: GException on failure.
	 */
	public int valueFromStringType(GType type, string string, Value value)
	{
		// gboolean gtk_builder_value_from_string_type (GtkBuilder *builder,  GType type,  const gchar *string,  GValue *value,  GError **error);
		GError* err = null;
		
		auto p = gtk_builder_value_from_string_type(gtkBuilder, type, Str.toStringz(string), (value is null) ? null : value.getValueStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
