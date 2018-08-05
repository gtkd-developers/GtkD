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


module gtk.Builder;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.MemorySlice;
private import glib.Module;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Type;
private import gobject.Value;
private import gobject.c.functions;
private import gtk.Application;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.paths;
private import std.string;


/**
 * A GtkBuilder is an auxiliary object that reads textual descriptions
 * of a user interface and instantiates the described objects. To create
 * a GtkBuilder from a user interface description, call
 * gtk_builder_new_from_file(), gtk_builder_new_from_resource() or
 * gtk_builder_new_from_string().
 * 
 * In the (unusual) case that you want to add user interface
 * descriptions from multiple sources to the same GtkBuilder you can
 * call gtk_builder_new() to get an empty builder and populate it by
 * (multiple) calls to gtk_builder_add_from_file(),
 * gtk_builder_add_from_resource() or gtk_builder_add_from_string().
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
 * # GtkBuilder UI Definitions # {#BUILDER-UI}
 * 
 * GtkBuilder parses textual descriptions of user interfaces which are
 * specified in an XML format which can be roughly described by the
 * RELAX NG schema below. We refer to these descriptions as “GtkBuilder
 * UI definitions” or just “UI definitions” if the context is clear.
 * Do not confuse GtkBuilder UI Definitions with
 * [GtkUIManager UI Definitions][XML-UI], which are more limited in scope.
 * It is common to use `.ui` as the filename extension for files containing
 * GtkBuilder UI definitions.
 * 
 * [RELAX NG Compact Syntax](https://git.gnome.org/browse/gtk+/tree/gtk/gtkbuilder.rnc)
 * 
 * The toplevel element is <interface>. It optionally takes a “domain”
 * attribute, which will make the builder look for translated strings
 * using dgettext() in the domain specified. This can also be done by
 * calling gtk_builder_set_translation_domain() on the builder.
 * Objects are described by <object> elements, which can contain
 * <property> elements to set properties, <signal> elements which
 * connect signals to handlers, and <child> elements, which describe
 * child objects (most often widgets inside a container, but also e.g.
 * actions in an action group, or columns in a tree model). A <child>
 * element contains an <object> element which describes the child object.
 * The target toolkit version(s) are described by <requires> elements,
 * the “lib” attribute specifies the widget library in question (currently
 * the only supported value is “gtk+”) and the “version” attribute specifies
 * the target version in the form “<major>.<minor>”. The builder will error
 * out if the version requirements are not met.
 * 
 * Typically, the specific kind of object represented by an <object>
 * element is specified by the “class” attribute. If the type has not
 * been loaded yet, GTK+ tries to find the get_type() function from the
 * class name by applying heuristics. This works in most cases, but if
 * necessary, it is possible to specify the name of the get_type() function
 * explictly with the "type-func" attribute. As a special case, GtkBuilder
 * allows to use an object that has been constructed by a #GtkUIManager in
 * another part of the UI definition by specifying the id of the #GtkUIManager
 * in the “constructor” attribute and the name of the object in the “id”
 * attribute.
 * 
 * Objects may be given a name with the “id” attribute, which allows the
 * application to retrieve them from the builder with gtk_builder_get_object().
 * An id is also necessary to use the object as property value in other
 * parts of the UI definition. GTK+ reserves ids starting and ending
 * with ___ (3 underscores) for its own purposes.
 * 
 * Setting properties of objects is pretty straightforward with the
 * <property> element: the “name” attribute specifies the name of the
 * property, and the content of the element specifies the value.
 * If the “translatable” attribute is set to a true value, GTK+ uses
 * gettext() (or dgettext() if the builder has a translation domain set)
 * to find a translation for the value. This happens before the value
 * is parsed, so it can be used for properties of any type, but it is
 * probably most useful for string properties. It is also possible to
 * specify a context to disambiguate short strings, and comments which
 * may help the translators.
 * 
 * GtkBuilder can parse textual representations for the most common
 * property types: characters, strings, integers, floating-point numbers,
 * booleans (strings like “TRUE”, “t”, “yes”, “y”, “1” are interpreted
 * as %TRUE, strings like “FALSE”, “f”, “no”, “n”, “0” are interpreted
 * as %FALSE), enumerations (can be specified by their name, nick or
 * integer value), flags (can be specified by their name, nick, integer
 * value, optionally combined with “|”, e.g. “GTK_VISIBLE|GTK_REALIZED”)
 * and colors (in a format understood by gdk_rgba_parse()).
 * 
 * GVariants can be specified in the format understood by g_variant_parse(),
 * and pixbufs can be specified as a filename of an image file to load.
 * 
 * Objects can be referred to by their name and by default refer to
 * objects declared in the local xml fragment and objects exposed via
 * gtk_builder_expose_object(). In general, GtkBuilder allows forward
 * references to objects — declared in the local xml; an object doesn’t
 * have to be constructed before it can be referred to. The exception
 * to this rule is that an object has to be constructed before it can
 * be used as the value of a construct-only property.
 * 
 * It is also possible to bind a property value to another object's
 * property value using the attributes
 * "bind-source" to specify the source object of the binding,
 * "bind-property" to specify the source property and optionally
 * "bind-flags" to specify the binding flags
 * Internally builder implement this using GBinding objects.
 * For more information see g_object_bind_property()
 * 
 * Signal handlers are set up with the <signal> element. The “name”
 * attribute specifies the name of the signal, and the “handler” attribute
 * specifies the function to connect to the signal. By default, GTK+ tries
 * to find the handler using g_module_symbol(), but this can be changed by
 * passing a custom #GtkBuilderConnectFunc to
 * gtk_builder_connect_signals_full(). The remaining attributes, “after”,
 * “swapped” and “object”, have the same meaning as the corresponding
 * parameters of the g_signal_connect_object() or
 * g_signal_connect_data() functions. A “last_modification_time”
 * attribute is also allowed, but it does not have a meaning to the
 * builder.
 * 
 * Sometimes it is necessary to refer to widgets which have implicitly
 * been constructed by GTK+ as part of a composite widget, to set
 * properties on them or to add further children (e.g. the @vbox of
 * a #GtkDialog). This can be achieved by setting the “internal-child”
 * propery of the <child> element to a true value. Note that GtkBuilder
 * still requires an <object> element for the internal child, even if it
 * has already been constructed.
 * 
 * A number of widgets have different places where a child can be added
 * (e.g. tabs vs. page content in notebooks). This can be reflected in
 * a UI definition by specifying the “type” attribute on a <child>
 * The possible values for the “type” attribute are described in the
 * sections describing the widget-specific portions of UI definitions.
 * 
 * # A GtkBuilder UI Definition
 * 
 * |[
 * <interface>
 * <object class="GtkDialog" id="dialog1">
 * <child internal-child="vbox">
 * <object class="GtkBox" id="vbox1">
 * <property name="border-width">10</property>
 * <child internal-child="action_area">
 * <object class="GtkButtonBox" id="hbuttonbox1">
 * <property name="border-width">20</property>
 * <child>
 * <object class="GtkButton" id="ok_button">
 * <property name="label">gtk-ok</property>
 * <property name="use-stock">TRUE</property>
 * <signal name="clicked" handler="ok_button_clicked"/>
 * </object>
 * </child>
 * </object>
 * </child>
 * </object>
 * </child>
 * </object>
 * </interface>
 * ]|
 * 
 * Beyond this general structure, several object classes define their
 * own XML DTD fragments for filling in the ANY placeholders in the DTD
 * above. Note that a custom element in a <child> element gets parsed by
 * the custom tag handler of the parent object, while a custom element in
 * an <object> element gets parsed by the custom tag handler of the object.
 * 
 * These XML fragments are explained in the documentation of the
 * respective objects.
 * 
 * Additionally, since 3.10 a special <template> tag has been added
 * to the format allowing one to define a widget class’s components.
 * See the [GtkWidget documentation][composite-templates] for details.
 */
public class Builder : ObjectG
{
	/** the main Gtk struct */
	protected GtkBuilder* gtkBuilder;

	/** Get the main Gtk struct */
	public GtkBuilder* getBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBuilder* gtkBuilder, bool ownedRef = false)
	{
		this.gtkBuilder = gtkBuilder;
		super(cast(GObject*)gtkBuilder, ownedRef);
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
		klass.getTypeFromName = &gtk_builder_real_get_type_from_name_override;
	}

	/**
	 * This function is a modification of _gtk_builder_resolve_type_lazily from "gtk/gtkbuilder.c".
	 * It is needed because it assumes we are linking at compile time to the gtk libs.
	 * specifically the NULL in g_module_open( NULL, 0 );
	 * It replaces the default function pointer "get_type_from_name" in GtkBuilderClass.
	 */
	extern(C) private static GType gtk_builder_real_get_type_from_name_override ( GtkBuilder* builder, const(char)* name )
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
			Module mod = Module.open( lib, GModuleFlags.LAZY );
			if( mod is null )
				continue;

			scope(exit) mod.close();

			if ( mod.symbol( symbol_name, cast(void**)&func ) ) {
				return func();
		}
	}

	return GType.INVALID;
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
		objects ~= ObjectG.getDObject!(ObjectG)(cast(GObject*) list.data);
		list = list.next;
	}

	g_slist_free(list);

	return objects;
}

/**
 */

/** */
public static GType getType()
{
	return gtk_builder_get_type();
}

/**
 * Builds the [GtkBuilder UI definition][BUILDER-UI]
 * in the file @filename.
 *
 * If there is an error opening the file or parsing the description then
 * the program will be aborted.  You should only ever attempt to parse
 * user interface descriptions that are shipped as part of your program.
 *
 * Params:
 *     filename = filename of user interface description file
 *
 * Returns: a #GtkBuilder containing the described interface
 *
 * Since: 3.10
 *
 * Throws: ConstructionException GTK+ fails to create the object.
 */
public this(string filename)
{
	auto p = gtk_builder_new_from_file(Str.toStringz(filename));

	if(p is null)
	{
		throw new ConstructionException("null returned by new_from_file");
	}

	this(cast(GtkBuilder*) p, true);
}

/**
 * Adds the @callback_symbol to the scope of @builder under the given @callback_name.
 *
 * Using this function overrides the behavior of gtk_builder_connect_signals()
 * for any callback symbols that are added. Using this method allows for better
 * encapsulation as it does not require that callback symbols be declared in
 * the global namespace.
 *
 * Params:
 *     callbackName = The name of the callback, as expected in the XML
 *     callbackSymbol = The callback pointer
 *
 * Since: 3.10
 */
public void addCallbackSymbol(string callbackName, GCallback callbackSymbol)
{
	gtk_builder_add_callback_symbol(gtkBuilder, Str.toStringz(callbackName), callbackSymbol);
}

/**
 * Parses a file containing a [GtkBuilder UI definition][BUILDER-UI]
 * and merges it with the current contents of @builder.
 *
 * Most users will probably want to use gtk_builder_new_from_file().
 *
 * If an error occurs, 0 will be returned and @error will be assigned a
 * #GError from the #GTK_BUILDER_ERROR, #G_MARKUP_ERROR or #G_FILE_ERROR
 * domain.
 *
 * It’s not really reasonable to attempt to handle failures of this
 * call. You should not use this function with untrusted files (ie:
 * files that are not part of your application). Broken #GtkBuilder
 * files can easily crash your program, and it’s possible that memory
 * was leaked leading up to the reported failure. The only reasonable
 * thing to do when an error is detected is to call g_error().
 *
 * Params:
 *     filename = the name of the file to parse
 *
 * Returns: A positive value on success, 0 if an error occurred
 *
 * Since: 2.12
 *
 * Throws: GException on failure.
 */
public uint addFromFile(string filename)
{
	GError* err = null;

	auto p = gtk_builder_add_from_file(gtkBuilder, Str.toStringz(filename), &err);

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return p;
}

/**
 * Parses a resource file containing a [GtkBuilder UI definition][BUILDER-UI]
 * and merges it with the current contents of @builder.
 *
 * Most users will probably want to use gtk_builder_new_from_resource().
 *
 * If an error occurs, 0 will be returned and @error will be assigned a
 * #GError from the #GTK_BUILDER_ERROR, #G_MARKUP_ERROR or #G_RESOURCE_ERROR
 * domain.
 *
 * It’s not really reasonable to attempt to handle failures of this
 * call.  The only reasonable thing to do when an error is detected is
 * to call g_error().
 *
 * Params:
 *     resourcePath = the path of the resource file to parse
 *
 * Returns: A positive value on success, 0 if an error occurred
 *
 * Since: 3.4
 *
 * Throws: GException on failure.
 */
public uint addFromResource(string resourcePath)
{
	GError* err = null;

	auto p = gtk_builder_add_from_resource(gtkBuilder, Str.toStringz(resourcePath), &err);

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return p;
}

/**
 * Parses a string containing a [GtkBuilder UI definition][BUILDER-UI]
 * and merges it with the current contents of @builder.
 *
 * Most users will probably want to use gtk_builder_new_from_string().
 *
 * Upon errors 0 will be returned and @error will be assigned a
 * #GError from the #GTK_BUILDER_ERROR, #G_MARKUP_ERROR or
 * #G_VARIANT_PARSE_ERROR domain.
 *
 * It’s not really reasonable to attempt to handle failures of this
 * call.  The only reasonable thing to do when an error is detected is
 * to call g_error().
 *
 * Params:
 *     buffer = the string to parse
 *
 * Returns: A positive value on success, 0 if an error occurred
 *
 * Since: 2.12
 *
 * Throws: GException on failure.
 */
public uint addFromString(string buffer)
{
	GError* err = null;

	auto p = gtk_builder_add_from_string(gtkBuilder, Str.toStringz(buffer), cast(size_t)buffer.length, &err);

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return p;
}

/**
 * Parses a file containing a [GtkBuilder UI definition][BUILDER-UI]
 * building only the requested objects and merges
 * them with the current contents of @builder.
 *
 * Upon errors 0 will be returned and @error will be assigned a
 * #GError from the #GTK_BUILDER_ERROR, #G_MARKUP_ERROR or #G_FILE_ERROR
 * domain.
 *
 * If you are adding an object that depends on an object that is not
 * its child (for instance a #GtkTreeView that depends on its
 * #GtkTreeModel), you have to explicitly list all of them in @object_ids.
 *
 * Params:
 *     filename = the name of the file to parse
 *     objectIds = nul-terminated array of objects to build
 *
 * Returns: A positive value on success, 0 if an error occurred
 *
 * Since: 2.14
 *
 * Throws: GException on failure.
 */
public uint addObjectsFromFile(string filename, string[] objectIds)
{
	GError* err = null;

	auto p = gtk_builder_add_objects_from_file(gtkBuilder, Str.toStringz(filename), Str.toStringzArray(objectIds), &err);

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return p;
}

/**
 * Parses a resource file containing a [GtkBuilder UI definition][BUILDER-UI]
 * building only the requested objects and merges
 * them with the current contents of @builder.
 *
 * Upon errors 0 will be returned and @error will be assigned a
 * #GError from the #GTK_BUILDER_ERROR, #G_MARKUP_ERROR or #G_RESOURCE_ERROR
 * domain.
 *
 * If you are adding an object that depends on an object that is not
 * its child (for instance a #GtkTreeView that depends on its
 * #GtkTreeModel), you have to explicitly list all of them in @object_ids.
 *
 * Params:
 *     resourcePath = the path of the resource file to parse
 *     objectIds = nul-terminated array of objects to build
 *
 * Returns: A positive value on success, 0 if an error occurred
 *
 * Since: 3.4
 *
 * Throws: GException on failure.
 */
public uint addObjectsFromResource(string resourcePath, string[] objectIds)
{
	GError* err = null;

	auto p = gtk_builder_add_objects_from_resource(gtkBuilder, Str.toStringz(resourcePath), Str.toStringzArray(objectIds), &err);

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return p;
}

/**
 * Parses a string containing a [GtkBuilder UI definition][BUILDER-UI]
 * building only the requested objects and merges
 * them with the current contents of @builder.
 *
 * Upon errors 0 will be returned and @error will be assigned a
 * #GError from the #GTK_BUILDER_ERROR or #G_MARKUP_ERROR domain.
 *
 * If you are adding an object that depends on an object that is not
 * its child (for instance a #GtkTreeView that depends on its
 * #GtkTreeModel), you have to explicitly list all of them in @object_ids.
 *
 * Params:
 *     buffer = the string to parse
 *     length = the length of @buffer (may be -1 if @buffer is nul-terminated)
 *     objectIds = nul-terminated array of objects to build
 *
 * Returns: A positive value on success, 0 if an error occurred
 *
 * Since: 2.14
 *
 * Throws: GException on failure.
 */
public uint addObjectsFromString(string buffer, size_t length, string[] objectIds)
{
	GError* err = null;

	auto p = gtk_builder_add_objects_from_string(gtkBuilder, Str.toStringz(buffer), length, Str.toStringzArray(objectIds), &err);

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return p;
}

/**
 * This method is a simpler variation of gtk_builder_connect_signals_full().
 * It uses symbols explicitly added to @builder with prior calls to
 * gtk_builder_add_callback_symbol(). In the case that symbols are not
 * explicitly added; it uses #GModule’s introspective features (by opening the module %NULL)
 * to look at the application’s symbol table. From here it tries to match
 * the signal handler names given in the interface description with
 * symbols in the application and connects the signals. Note that this
 * function can only be called once, subsequent calls will do nothing.
 *
 * Note that unless gtk_builder_add_callback_symbol() is called for
 * all signal callbacks which are referenced by the loaded XML, this
 * function will require that #GModule be supported on the platform.
 *
 * If you rely on #GModule support to lookup callbacks in the symbol table,
 * the following details should be noted:
 *
 * When compiling applications for Windows, you must declare signal callbacks
 * with #G_MODULE_EXPORT, or they will not be put in the symbol table.
 * On Linux and Unices, this is not necessary; applications should instead
 * be compiled with the -Wl,--export-dynamic CFLAGS, and linked against
 * gmodule-export-2.0.
 *
 * Params:
 *     userData = user data to pass back with all signals
 *
 * Since: 2.12
 */
public void connectSignals(void* userData)
{
	gtk_builder_connect_signals(gtkBuilder, userData);
}

/**
 * This function can be thought of the interpreted language binding
 * version of gtk_builder_connect_signals(), except that it does not
 * require GModule to function correctly.
 *
 * Params:
 *     func = the function used to connect the signals
 *     userData = arbitrary data that will be passed to the connection function
 *
 * Since: 2.12
 */
public void connectSignalsFull(GtkBuilderConnectFunc func, void* userData)
{
	gtk_builder_connect_signals_full(gtkBuilder, func, userData);
}

/**
 * Add @object to the @builder object pool so it can be referenced just like any
 * other object built by builder.
 *
 * Params:
 *     name = the name of the object exposed to the builder
 *     object = the object to expose
 *
 * Since: 3.8
 */
public void exposeObject(string name, ObjectG object)
{
	gtk_builder_expose_object(gtkBuilder, Str.toStringz(name), (object is null) ? null : object.getObjectGStruct());
}

/**
 * Main private entry point for building composite container
 * components from template XML.
 *
 * This is exported purely to let gtk-builder-tool validate
 * templates, applications have no need to call this function.
 *
 * Params:
 *     widget = the widget that is being extended
 *     templateType = the type that the template is for
 *     buffer = the string to parse
 *     length = the length of @buffer (may be -1 if @buffer is nul-terminated)
 *
 * Returns: A positive value on success, 0 if an error occurred
 *
 * Throws: GException on failure.
 */
public uint extendWithTemplate(Widget widget, GType templateType, string buffer, size_t length)
{
	GError* err = null;

	auto p = gtk_builder_extend_with_template(gtkBuilder, (widget is null) ? null : widget.getWidgetStruct(), templateType, Str.toStringz(buffer), length, &err);

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return p;
}

/**
 * Gets the #GtkApplication associated with the builder.
 *
 * The #GtkApplication is used for creating action proxies as requested
 * from XML that the builder is loading.
 *
 * By default, the builder uses the default application: the one from
 * g_application_get_default(). If you want to use another application
 * for constructing proxies, use gtk_builder_set_application().
 *
 * Returns: the application being used by the builder,
 *     or %NULL
 *
 * Since: 3.10
 */
public Application getApplication()
{
	auto p = gtk_builder_get_application(gtkBuilder);

	if(p is null)
	{
		return null;
	}

	return ObjectG.getDObject!(Application)(cast(GtkApplication*) p);
}

/**
 * Gets the object named @name. Note that this function does not
 * increment the reference count of the returned object.
 *
 * Params:
 *     name = name of object to get
 *
 * Returns: the object named @name or %NULL if
 *     it could not be found in the object tree.
 *
 * Since: 2.12
 */
public ObjectG getObject(string name)
{
	auto p = gtk_builder_get_object(gtkBuilder, Str.toStringz(name));

	if(p is null)
	{
		return null;
	}

	return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
}

/**
 * Gets the translation domain of @builder.
 *
 * Returns: the translation domain. This string is owned
 *     by the builder object and must not be modified or freed.
 *
 * Since: 2.12
 */
public string getTranslationDomain()
{
	return Str.toString(gtk_builder_get_translation_domain(gtkBuilder));
}

/**
 * Looks up a type by name, using the virtual function that
 * #GtkBuilder has for that purpose. This is mainly used when
 * implementing the #GtkBuildable interface on a type.
 *
 * Params:
 *     typeName = type name to lookup
 *
 * Returns: the #GType found for @type_name or #G_TYPE_INVALID
 *     if no type was found
 *
 * Since: 2.12
 */
public GType getTypeFromName(string typeName)
{
	return gtk_builder_get_type_from_name(gtkBuilder, Str.toStringz(typeName));
}

/**
 * Fetches a symbol previously added to @builder
 * with gtk_builder_add_callback_symbols()
 *
 * This function is intended for possible use in language bindings
 * or for any case that one might be cusomizing signal connections
 * using gtk_builder_connect_signals_full()
 *
 * Params:
 *     callbackName = The name of the callback
 *
 * Returns: The callback symbol in @builder for @callback_name, or %NULL
 *
 * Since: 3.10
 */
public GCallback lookupCallbackSymbol(string callbackName)
{
	return gtk_builder_lookup_callback_symbol(gtkBuilder, Str.toStringz(callbackName));
}

/**
 * Sets the application associated with @builder.
 *
 * You only need this function if there is more than one #GApplication
 * in your process. @application cannot be %NULL.
 *
 * Params:
 *     application = a #GtkApplication
 *
 * Since: 3.10
 */
public void setApplication(Application application)
{
	gtk_builder_set_application(gtkBuilder, (application is null) ? null : application.getGtkApplicationStruct());
}

/**
 * Sets the translation domain of @builder.
 * See #GtkBuilder:translation-domain.
 *
 * Params:
 *     domain = the translation domain or %NULL
 *
 * Since: 2.12
 */
public void setTranslationDomain(string domain)
{
	gtk_builder_set_translation_domain(gtkBuilder, Str.toStringz(domain));
}

/**
 * This function demarshals a value from a string. This function
 * calls g_value_init() on the @value argument, so it need not be
 * initialised beforehand.
 *
 * This function can handle char, uchar, boolean, int, uint, long,
 * ulong, enum, flags, float, double, string, #GdkColor, #GdkRGBA and
 * #GtkAdjustment type values. Support for #GtkWidget type values is
 * still to come.
 *
 * Upon errors %FALSE will be returned and @error will be assigned a
 * #GError from the #GTK_BUILDER_ERROR domain.
 *
 * Params:
 *     pspec = the #GParamSpec for the property
 *     string_ = the string representation of the value
 *     value = the #GValue to store the result in
 *
 * Returns: %TRUE on success
 *
 * Since: 2.12
 *
 * Throws: GException on failure.
 */
public bool valueFromString(ParamSpec pspec, string string_, out Value value)
{
	GValue* outvalue = sliceNew!GValue();
	GError* err = null;

	auto p = gtk_builder_value_from_string(gtkBuilder, (pspec is null) ? null : pspec.getParamSpecStruct(), Str.toStringz(string_), outvalue, &err) != 0;

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	value = ObjectG.getDObject!(Value)(outvalue, true);

	return p;
}

/**
 * Like gtk_builder_value_from_string(), this function demarshals
 * a value from a string, but takes a #GType instead of #GParamSpec.
 * This function calls g_value_init() on the @value argument, so it
 * need not be initialised beforehand.
 *
 * Upon errors %FALSE will be returned and @error will be assigned a
 * #GError from the #GTK_BUILDER_ERROR domain.
 *
 * Params:
 *     type = the #GType of the value
 *     string_ = the string representation of the value
 *     value = the #GValue to store the result in
 *
 * Returns: %TRUE on success
 *
 * Since: 2.12
 *
 * Throws: GException on failure.
 */
public bool valueFromStringType(GType type, string string_, out Value value)
{
	GValue* outvalue = sliceNew!GValue();
	GError* err = null;

	auto p = gtk_builder_value_from_string_type(gtkBuilder, type, Str.toStringz(string_), outvalue, &err) != 0;

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	value = ObjectG.getDObject!(Value)(outvalue, true);

	return p;
}
}
