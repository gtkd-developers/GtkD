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
private import glib.ListSG;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.Closure;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Value;
private import gtk.BuilderScopeIF;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkBuilder` reads XML descriptions of a user interface and
 * instantiates the described objects.
 * 
 * To create a `GtkBuilder` from a user interface description, call
 * [ctor@Gtk.Builder.new_from_file], [ctor@Gtk.Builder.new_from_resource]
 * or [ctor@Gtk.Builder.new_from_string].
 * 
 * In the (unusual) case that you want to add user interface
 * descriptions from multiple sources to the same `GtkBuilder` you can
 * call [ctor@Gtk.Builder.new] to get an empty builder and populate it by
 * (multiple) calls to [method@Gtk.Builder.add_from_file],
 * [method@Gtk.Builder.add_from_resource] or
 * [method@Gtk.Builder.add_from_string].
 * 
 * A `GtkBuilder` holds a reference to all objects that it has constructed
 * and drops these references when it is finalized. This finalization can
 * cause the destruction of non-widget objects or widgets which are not
 * contained in a toplevel window. For toplevel windows constructed by a
 * builder, it is the responsibility of the user to call
 * [method@Gtk.Window.destroy] to get rid of them and all the widgets
 * they contain.
 * 
 * The functions [method@Gtk.Builder.get_object] and
 * [method@Gtk.Builder.get_objects] can be used to access the widgets in
 * the interface by the names assigned to them inside the UI description.
 * Toplevel windows returned by these functions will stay around until the
 * user explicitly destroys them with [method@Gtk.Window.destroy]. Other
 * widgets will either be part of a larger hierarchy constructed by the
 * builder (in which case you should not have to worry about their lifecycle),
 * or without a parent, in which case they have to be added to some container
 * to make use of them. Non-widget objects need to be reffed with
 * g_object_ref() to keep them beyond the lifespan of the builder.
 * 
 * # GtkBuilder UI Definitions
 * 
 * `GtkBuilder` parses textual descriptions of user interfaces which are
 * specified in XML format. We refer to these descriptions as “GtkBuilder
 * UI definitions” or just “UI definitions” if the context is clear.
 * 
 * The toplevel element is `<interface>`. It optionally takes a “domain”
 * attribute, which will make the builder look for translated strings
 * using `dgettext()` in the domain specified. This can also be done by
 * calling [method@Gtk.Builder.set_translation_domain] on the builder.
 * 
 * Objects are described by `<object>` elements, which can contain
 * `<property>` elements to set properties, `<signal>` elements which
 * connect signals to handlers, and `<child>` elements, which describe
 * child objects (most often widgets inside a container, but also e.g.
 * actions in an action group, or columns in a tree model). A `<child>`
 * element contains an `<object>` element which describes the child object.
 * 
 * The target toolkit version(s) are described by `<requires>` elements,
 * the “lib” attribute specifies the widget library in question (currently
 * the only supported value is “gtk”) and the “version” attribute specifies
 * the target version in the form “`<major>`.`<minor>`”. `GtkBuilder` will
 * error out if the version requirements are not met.
 * 
 * Typically, the specific kind of object represented by an `<object>`
 * element is specified by the “class” attribute. If the type has not
 * been loaded yet, GTK tries to find the `get_type()` function from the
 * class name by applying heuristics. This works in most cases, but if
 * necessary, it is possible to specify the name of the `get_type()`
 * function explicitly with the "type-func" attribute.
 * 
 * Objects may be given a name with the “id” attribute, which allows the
 * application to retrieve them from the builder with
 * [method@Gtk.Builder.get_object]. An id is also necessary to use the
 * object as property value in other parts of the UI definition. GTK
 * reserves ids starting and ending with `___` (three consecutive
 * underscores) for its own purposes.
 * 
 * Setting properties of objects is pretty straightforward with the
 * `<property>` element: the “name” attribute specifies the name of the
 * property, and the content of the element specifies the value.
 * If the “translatable” attribute is set to a true value, GTK uses
 * `gettext()` (or `dgettext()` if the builder has a translation domain set)
 * to find a translation for the value. This happens before the value
 * is parsed, so it can be used for properties of any type, but it is
 * probably most useful for string properties. It is also possible to
 * specify a context to disambiguate short strings, and comments which
 * may help the translators.
 * 
 * `GtkBuilder` can parse textual representations for the most common
 * property types: characters, strings, integers, floating-point numbers,
 * booleans (strings like “TRUE”, “t”, “yes”, “y”, “1” are interpreted
 * as %TRUE, strings like “FALSE”, “f”, “no”, “n”, “0” are interpreted
 * as %FALSE), enumerations (can be specified by their name, nick or
 * integer value), flags (can be specified by their name, nick, integer
 * value, optionally combined with “|”, e.g.
 * “GTK_INPUT_HINT_EMOJI|GTK_INPUT_HINT_LOWERCASE”)
 * and colors (in a format understood by [method@Gdk.RGBA.parse]).
 * 
 * `GVariant`s can be specified in the format understood by
 * g_variant_parse(), and pixbufs can be specified as a filename of an
 * image file to load.
 * 
 * Objects can be referred to by their name and by default refer to
 * objects declared in the local XML fragment and objects exposed via
 * [method@Gtk.Builder.expose_object]. In general, `GtkBuilder` allows
 * forward references to objects — declared in the local XML; an object
 * doesn’t have to be constructed before it can be referred to. The
 * exception to this rule is that an object has to be constructed before
 * it can be used as the value of a construct-only property.
 * 
 * It is also possible to bind a property value to another object's
 * property value using the attributes "bind-source" to specify the
 * source object of the binding, and optionally, "bind-property" and
 * "bind-flags" to specify the source property and source binding flags
 * respectively. Internally, `GtkBuilder` implements this using `GBinding`
 * objects. For more information see g_object_bind_property().
 * 
 * Sometimes it is necessary to refer to widgets which have implicitly
 * been constructed by GTK as part of a composite widget, to set
 * properties on them or to add further children (e.g. the content area
 * of a `GtkDialog`). This can be achieved by setting the “internal-child”
 * property of the `<child>` element to a true value. Note that `GtkBuilder`
 * still requires an `<object>` element for the internal child, even if it
 * has already been constructed.
 * 
 * A number of widgets have different places where a child can be added
 * (e.g. tabs vs. page content in notebooks). This can be reflected in
 * a UI definition by specifying the “type” attribute on a `<child>`
 * The possible values for the “type” attribute are described in the
 * sections describing the widget-specific portions of UI definitions.
 * 
 * # Signal handlers and function pointers
 * 
 * Signal handlers are set up with the `<signal>` element. The “name”
 * attribute specifies the name of the signal, and the “handler” attribute
 * specifies the function to connect to the signal.
 * The remaining attributes, “after”, “swapped” and “object”, have the
 * same meaning as the corresponding parameters of the
 * g_signal_connect_object() or g_signal_connect_data() functions. A
 * “last_modification_time” attribute is also allowed, but it does not
 * have a meaning to the builder.
 * 
 * If you rely on `GModule` support to lookup callbacks in the symbol table,
 * the following details should be noted:
 * 
 * When compiling applications for Windows, you must declare signal callbacks
 * with %G_MODULE_EXPORT, or they will not be put in the symbol table.
 * On Linux and Unix, this is not necessary; applications should instead
 * be compiled with the -Wl,--export-dynamic `CFLAGS`, and linked against
 * `gmodule-export-2.0`.
 * 
 * # A GtkBuilder UI Definition
 * 
 * ```xml
 * <interface>
 * <object class="GtkDialog" id="dialog1">
 * <child internal-child="content_area">
 * <object class="GtkBox" id="vbox1">
 * <child internal-child="action_area">
 * <object class="GtkBox" id="hbuttonbox1">
 * <child>
 * <object class="GtkButton" id="ok_button">
 * <property name="label" translatable="yes">_Ok</property>
 * <property name="use-underline">True</property>
 * <signal name="clicked" handler="ok_button_clicked"/>
 * </object>
 * </child>
 * </object>
 * </child>
 * </object>
 * </child>
 * </object>
 * </interface>
 * ```
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
 * A `<template>` tag can be used to define a widget class’s components.
 * See the [GtkWidget documentation](class.Widget.html#building-composite-widgets-from-template-xml) for details.
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
	 * Gets all objects that have been constructed by @builder. Note that
	 * this function does not increment the reference counts of the returned
	 * objects.
	 *
	 * Returns: a newly-allocated #GSList containing all the objects
	 *     constructed by the #GtkBuilder instance. It should be freed by
	 *     g_slist_free()
	 */
	public ObjectG[] getObjects()
	{
		auto __p = gtk_builder_get_objects(gtkBuilder);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p).toArray!ObjectG();
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_builder_get_type();
	}

	/**
	 * Creates a new empty builder object.
	 *
	 * This function is only useful if you intend to make multiple calls
	 * to [method@Gtk.Builder.add_from_file], [method@Gtk.Builder.add_from_resource]
	 * or [method@Gtk.Builder.add_from_string] in order to merge multiple UI
	 * descriptions into a single builder.
	 *
	 * Returns: a new (empty) `GtkBuilder` object
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_builder_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkBuilder*) __p, true);
	}

	/**
	 * Parses the UI definition in the file @filename.
	 *
	 * If there is an error opening the file or parsing the description then
	 * the program will be aborted. You should only ever attempt to parse
	 * user interface descriptions that are shipped as part of your program.
	 *
	 * Params:
	 *     filename = filename of user interface description file
	 *
	 * Returns: a `GtkBuilder` containing the described interface
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename)
	{
		auto __p = gtk_builder_new_from_file(Str.toStringz(filename));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_file");
		}

		this(cast(GtkBuilder*) __p, true);
	}

	/**
	 * Parses a file containing a UI definition and merges it with
	 * the current contents of @builder.
	 *
	 * This function is useful if you need to call
	 * [method@Gtk.Builder.set_current_object]) to add user data to
	 * callbacks before loading GtkBuilder UI. Otherwise, you probably
	 * want [ctor@Gtk.Builder.new_from_file] instead.
	 *
	 * If an error occurs, 0 will be returned and @error will be assigned a
	 * `GError` from the `GTK_BUILDER_ERROR`, `G_MARKUP_ERROR` or `G_FILE_ERROR`
	 * domains.
	 *
	 * It’s not really reasonable to attempt to handle failures of this
	 * call. You should not use this function with untrusted files (ie:
	 * files that are not part of your application). Broken `GtkBuilder`
	 * files can easily crash your program, and it’s possible that memory
	 * was leaked leading up to the reported failure. The only reasonable
	 * thing to do when an error is detected is to call `g_error()`.
	 *
	 * Params:
	 *     filename = the name of the file to parse
	 *
	 * Returns: %TRUE on success, %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool addFromFile(string filename)
	{
		GError* err = null;

		auto __p = gtk_builder_add_from_file(gtkBuilder, Str.toStringz(filename), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Parses a resource file containing a UI definition
	 * and merges it with the current contents of @builder.
	 *
	 * This function is useful if you need to call
	 * [method@Gtk.Builder.set_current_object] to add user data to
	 * callbacks before loading GtkBuilder UI. Otherwise, you probably
	 * want [ctor@Gtk.Builder.new_from_resource] instead.
	 *
	 * If an error occurs, 0 will be returned and @error will be assigned a
	 * `GError` from the %GTK_BUILDER_ERROR, %G_MARKUP_ERROR or %G_RESOURCE_ERROR
	 * domain.
	 *
	 * It’s not really reasonable to attempt to handle failures of this
	 * call.  The only reasonable thing to do when an error is detected is
	 * to call g_error().
	 *
	 * Params:
	 *     resourcePath = the path of the resource file to parse
	 *
	 * Returns: %TRUE on success, %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool addFromResource(string resourcePath)
	{
		GError* err = null;

		auto __p = gtk_builder_add_from_resource(gtkBuilder, Str.toStringz(resourcePath), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Parses a string containing a UI definition and merges it
	 * with the current contents of @builder.
	 *
	 * This function is useful if you need to call
	 * [method@Gtk.Builder.set_current_object] to add user data to
	 * callbacks before loading `GtkBuilder` UI. Otherwise, you probably
	 * want [ctor@Gtk.Builder.new_from_string] instead.
	 *
	 * Upon errors %FALSE will be returned and @error will be assigned a
	 * `GError` from the %GTK_BUILDER_ERROR, %G_MARKUP_ERROR or
	 * %G_VARIANT_PARSE_ERROR domain.
	 *
	 * It’s not really reasonable to attempt to handle failures of this
	 * call.  The only reasonable thing to do when an error is detected is
	 * to call g_error().
	 *
	 * Params:
	 *     buffer = the string to parse
	 *     length = the length of @buffer (may be -1 if @buffer is nul-terminated)
	 *
	 * Returns: %TRUE on success, %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool addFromString(string buffer, ptrdiff_t length)
	{
		GError* err = null;

		auto __p = gtk_builder_add_from_string(gtkBuilder, Str.toStringz(buffer), length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Parses a file containing a UI definition building only the
	 * requested objects and merges them with the current contents
	 * of @builder.
	 *
	 * Upon errors, 0 will be returned and @error will be assigned a
	 * `GError` from the %GTK_BUILDER_ERROR, %G_MARKUP_ERROR or %G_FILE_ERROR
	 * domain.
	 *
	 * If you are adding an object that depends on an object that is not
	 * its child (for instance a `GtkTreeView` that depends on its
	 * `GtkTreeModel`), you have to explicitly list all of them in @object_ids.
	 *
	 * Params:
	 *     filename = the name of the file to parse
	 *     objectIds = nul-terminated array of objects to build
	 *
	 * Returns: %TRUE on success, %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool addObjectsFromFile(string filename, string[] objectIds)
	{
		GError* err = null;

		auto __p = gtk_builder_add_objects_from_file(gtkBuilder, Str.toStringz(filename), Str.toStringzArray(objectIds), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Parses a resource file containing a UI definition, building
	 * only the requested objects and merges them with the current
	 * contents of @builder.
	 *
	 * Upon errors, 0 will be returned and @error will be assigned a
	 * `GError` from the %GTK_BUILDER_ERROR, %G_MARKUP_ERROR or %G_RESOURCE_ERROR
	 * domain.
	 *
	 * If you are adding an object that depends on an object that is not
	 * its child (for instance a `GtkTreeView` that depends on its
	 * `GtkTreeModel`), you have to explicitly list all of them in @object_ids.
	 *
	 * Params:
	 *     resourcePath = the path of the resource file to parse
	 *     objectIds = nul-terminated array of objects to build
	 *
	 * Returns: %TRUE on success, %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool addObjectsFromResource(string resourcePath, string[] objectIds)
	{
		GError* err = null;

		auto __p = gtk_builder_add_objects_from_resource(gtkBuilder, Str.toStringz(resourcePath), Str.toStringzArray(objectIds), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Parses a string containing a UI definition, building only the
	 * requested objects and merges them with the current contents of
	 * @builder.
	 *
	 * Upon errors %FALSE will be returned and @error will be assigned a
	 * `GError` from the %GTK_BUILDER_ERROR or %G_MARKUP_ERROR domain.
	 *
	 * If you are adding an object that depends on an object that is not
	 * its child (for instance a `GtkTreeView` that depends on its
	 * `GtkTreeModel`), you have to explicitly list all of them in @object_ids.
	 *
	 * Params:
	 *     buffer = the string to parse
	 *     length = the length of @buffer (may be -1 if @buffer is nul-terminated)
	 *     objectIds = nul-terminated array of objects to build
	 *
	 * Returns: %TRUE on success, %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool addObjectsFromString(string buffer, ptrdiff_t length, string[] objectIds)
	{
		GError* err = null;

		auto __p = gtk_builder_add_objects_from_string(gtkBuilder, Str.toStringz(buffer), length, Str.toStringzArray(objectIds), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Creates a closure to invoke the function called @function_name.
	 *
	 * This is using the create_closure() implementation of @builder's
	 * [iface@Gtk.BuilderScope].
	 *
	 * If no closure could be created, %NULL will be returned and @error
	 * will be set.
	 *
	 * Params:
	 *     functionName = name of the function to look up
	 *     flags = closure creation flags
	 *     object = Object to create the closure with
	 *
	 * Returns: A new closure for invoking @function_name
	 *
	 * Throws: GException on failure.
	 */
	public Closure createClosure(string functionName, GtkBuilderClosureFlags flags, ObjectG object)
	{
		GError* err = null;

		auto __p = gtk_builder_create_closure(gtkBuilder, Str.toStringz(functionName), flags, (object is null) ? null : object.getObjectGStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Closure)(cast(GClosure*) __p, true);
	}

	/**
	 * Add @object to the @builder object pool so it can be
	 * referenced just like any other object built by builder.
	 *
	 * Params:
	 *     name = the name of the object exposed to the builder
	 *     object = the object to expose
	 */
	public void exposeObject(string name, ObjectG object)
	{
		gtk_builder_expose_object(gtkBuilder, Str.toStringz(name), (object is null) ? null : object.getObjectGStruct());
	}

	/**
	 * Main private entry point for building composite components
	 * from template XML.
	 *
	 * This is exported purely to let `gtk-builder-tool` validate
	 * templates, applications have no need to call this function.
	 *
	 * Params:
	 *     object = the object that is being extended
	 *     templateType = the type that the template is for
	 *     buffer = the string to parse
	 *     length = the length of @buffer (may be -1 if @buffer is nul-terminated)
	 *
	 * Returns: A positive value on success, 0 if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool extendWithTemplate(ObjectG object, GType templateType, string buffer, ptrdiff_t length)
	{
		GError* err = null;

		auto __p = gtk_builder_extend_with_template(gtkBuilder, (object is null) ? null : object.getObjectGStruct(), templateType, Str.toStringz(buffer), length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Gets the current object set via gtk_builder_set_current_object().
	 *
	 * Returns: the current object
	 */
	public ObjectG getCurrentObject()
	{
		auto __p = gtk_builder_get_current_object(gtkBuilder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Gets the object named @name.
	 *
	 * Note that this function does not increment the reference count
	 * of the returned object.
	 *
	 * Params:
	 *     name = name of object to get
	 *
	 * Returns: the object named @name
	 */
	public ObjectG getObject(string name)
	{
		auto __p = gtk_builder_get_object(gtkBuilder, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Gets the scope in use that was set via gtk_builder_set_scope().
	 *
	 * Returns: the current scope
	 */
	public BuilderScopeIF getScope()
	{
		auto __p = gtk_builder_get_scope(gtkBuilder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BuilderScopeIF)(cast(GtkBuilderScope*) __p);
	}

	/**
	 * Gets the translation domain of @builder.
	 *
	 * Returns: the translation domain
	 */
	public string getTranslationDomain()
	{
		return Str.toString(gtk_builder_get_translation_domain(gtkBuilder));
	}

	/**
	 * Looks up a type by name.
	 *
	 * This is using the virtual function that `GtkBuilder` has
	 * for that purpose. This is mainly used when implementing
	 * the `GtkBuildable` interface on a type.
	 *
	 * Params:
	 *     typeName = type name to lookup
	 *
	 * Returns: the `GType` found for @type_name or %G_TYPE_INVALID
	 *     if no type was found
	 */
	public GType getTypeFromName(string typeName)
	{
		return gtk_builder_get_type_from_name(gtkBuilder, Str.toStringz(typeName));
	}

	/**
	 * Sets the current object for the @builder.
	 *
	 * The current object can be thought of as the `this` object that the
	 * builder is working for and will often be used as the default object
	 * when an object is optional.
	 *
	 * [method@Gtk.Widget.init_template] for example will set the current
	 * object to the widget the template is inited for. For functions like
	 * [ctor@Gtk.Builder.new_from_resource], the current object will be %NULL.
	 *
	 * Params:
	 *     currentObject = the new current object
	 */
	public void setCurrentObject(ObjectG currentObject)
	{
		gtk_builder_set_current_object(gtkBuilder, (currentObject is null) ? null : currentObject.getObjectGStruct());
	}

	/**
	 * Sets the scope the builder should operate in.
	 *
	 * If @scope is %NULL, a new [class@Gtk.BuilderCScope] will be created.
	 *
	 * Params:
	 *     scope_ = the scope to use
	 */
	public void setScope(BuilderScopeIF scope_)
	{
		gtk_builder_set_scope(gtkBuilder, (scope_ is null) ? null : scope_.getBuilderScopeStruct());
	}

	/**
	 * Sets the translation domain of @builder.
	 *
	 * Params:
	 *     domain = the translation domain
	 */
	public void setTranslationDomain(string domain)
	{
		gtk_builder_set_translation_domain(gtkBuilder, Str.toStringz(domain));
	}

	/**
	 * Demarshals a value from a string.
	 *
	 * This function calls g_value_init() on the @value argument,
	 * so it need not be initialised beforehand.
	 *
	 * Can handle char, uchar, boolean, int, uint, long,
	 * ulong, enum, flags, float, double, string, `GdkRGBA` and
	 * `GtkAdjustment` type values.
	 *
	 * Upon errors %FALSE will be returned and @error will be
	 * assigned a `GError` from the %GTK_BUILDER_ERROR domain.
	 *
	 * Params:
	 *     pspec = the `GParamSpec` for the property
	 *     string_ = the string representation of the value
	 *     value = the `GValue` to store the result in
	 *
	 * Returns: %TRUE on success
	 *
	 * Throws: GException on failure.
	 */
	public bool valueFromString(ParamSpec pspec, string string_, out Value value)
	{
		GValue* outvalue = sliceNew!GValue();
		GError* err = null;

		auto __p = gtk_builder_value_from_string(gtkBuilder, (pspec is null) ? null : pspec.getParamSpecStruct(), Str.toStringz(string_), outvalue, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		value = ObjectG.getDObject!(Value)(outvalue, true);

		return __p;
	}

	/**
	 * Demarshals a value from a string.
	 *
	 * Unlike [method@Gtk.Builder.value_from_string], this function
	 * takes a `GType` instead of `GParamSpec`.
	 *
	 * Calls g_value_init() on the @value argument, so it
	 * need not be initialised beforehand.
	 *
	 * Upon errors %FALSE will be returned and @error will be
	 * assigned a `GError` from the %GTK_BUILDER_ERROR domain.
	 *
	 * Params:
	 *     type = the `GType` of the value
	 *     string_ = the string representation of the value
	 *     value = the `GValue` to store the result in
	 *
	 * Returns: %TRUE on success
	 *
	 * Throws: GException on failure.
	 */
	public bool valueFromStringType(GType type, string string_, out Value value)
	{
		GValue* outvalue = sliceNew!GValue();
		GError* err = null;

		auto __p = gtk_builder_value_from_string_type(gtkBuilder, type, Str.toStringz(string_), outvalue, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		value = ObjectG.getDObject!(Value)(outvalue, true);

		return __p;
	}
}
