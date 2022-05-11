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


module gio.Settings;

private import gio.ActionIF;
private import gio.SettingsBackend;
private import gio.SettingsSchema;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * The #GSettings class provides a convenient API for storing and retrieving
 * application settings.
 * 
 * Reads and writes can be considered to be non-blocking.  Reading
 * settings with #GSettings is typically extremely fast: on
 * approximately the same order of magnitude (but slower than) a
 * #GHashTable lookup.  Writing settings is also extremely fast in terms
 * of time to return to your application, but can be extremely expensive
 * for other threads and other processes.  Many settings backends
 * (including dconf) have lazy initialisation which means in the common
 * case of the user using their computer without modifying any settings
 * a lot of work can be avoided.  For dconf, the D-Bus service doesn't
 * even need to be started in this case.  For this reason, you should
 * only ever modify #GSettings keys in response to explicit user action.
 * Particular care should be paid to ensure that modifications are not
 * made during startup -- for example, when setting the initial value
 * of preferences widgets.  The built-in g_settings_bind() functionality
 * is careful not to write settings in response to notify signals as a
 * result of modifications that it makes to widgets.
 * 
 * When creating a GSettings instance, you have to specify a schema
 * that describes the keys in your settings and their types and default
 * values, as well as some other information.
 * 
 * Normally, a schema has a fixed path that determines where the settings
 * are stored in the conceptual global tree of settings. However, schemas
 * can also be '[relocatable][gsettings-relocatable]', i.e. not equipped with
 * a fixed path. This is
 * useful e.g. when the schema describes an 'account', and you want to be
 * able to store a arbitrary number of accounts.
 * 
 * Paths must start with and end with a forward slash character ('/')
 * and must not contain two sequential slash characters.  Paths should
 * be chosen based on a domain name associated with the program or
 * library to which the settings belong.  Examples of paths are
 * "/org/gtk/settings/file-chooser/" and "/ca/desrt/dconf-editor/".
 * Paths should not start with "/apps/", "/desktop/" or "/system/" as
 * they often did in GConf.
 * 
 * Unlike other configuration systems (like GConf), GSettings does not
 * restrict keys to basic types like strings and numbers. GSettings stores
 * values as #GVariant, and allows any #GVariantType for keys. Key names
 * are restricted to lowercase characters, numbers and '-'. Furthermore,
 * the names must begin with a lowercase character, must not end
 * with a '-', and must not contain consecutive dashes.
 * 
 * Similar to GConf, the default values in GSettings schemas can be
 * localized, but the localized values are stored in gettext catalogs
 * and looked up with the domain that is specified in the
 * `gettext-domain` attribute of the <schemalist> or <schema>
 * elements and the category that is specified in the `l10n` attribute of
 * the <default> element. The string which is translated includes all text in
 * the <default> element, including any surrounding quotation marks.
 * 
 * The `l10n` attribute must be set to `messages` or `time`, and sets the
 * [locale category for
 * translation](https://www.gnu.org/software/gettext/manual/html_node/Aspects.html#index-locale-categories-1).
 * The `messages` category should be used by default; use `time` for
 * translatable date or time formats. A translation comment can be added as an
 * XML comment immediately above the <default> element — it is recommended to
 * add these comments to aid translators understand the meaning and
 * implications of the default value. An optional translation `context`
 * attribute can be set on the <default> element to disambiguate multiple
 * defaults which use the same string.
 * 
 * For example:
 * |[
 * <!-- Translators: A list of words which are not allowed to be typed, in
 * GVariant serialization syntax.
 * See: https://developer.gnome.org/glib/stable/gvariant-text.html -->
 * <default l10n='messages' context='Banned words'>['bad', 'words']</default>
 * ]|
 * 
 * Translations of default values must remain syntactically valid serialized
 * #GVariants (e.g. retaining any surrounding quotation marks) or runtime
 * errors will occur.
 * 
 * GSettings uses schemas in a compact binary form that is created
 * by the [glib-compile-schemas][glib-compile-schemas]
 * utility. The input is a schema description in an XML format.
 * 
 * A DTD for the gschema XML format can be found here:
 * [gschema.dtd](https://gitlab.gnome.org/GNOME/glib/-/blob/HEAD/gio/gschema.dtd)
 * 
 * The [glib-compile-schemas][glib-compile-schemas] tool expects schema
 * files to have the extension `.gschema.xml`.
 * 
 * At runtime, schemas are identified by their id (as specified in the
 * id attribute of the <schema> element). The convention for schema
 * ids is to use a dotted name, similar in style to a D-Bus bus name,
 * e.g. "org.gnome.SessionManager". In particular, if the settings are
 * for a specific service that owns a D-Bus bus name, the D-Bus bus name
 * and schema id should match. For schemas which deal with settings not
 * associated with one named application, the id should not use
 * StudlyCaps, e.g. "org.gnome.font-rendering".
 * 
 * In addition to #GVariant types, keys can have types that have
 * enumerated types. These can be described by a <choice>,
 * <enum> or <flags> element, as seen in the
 * [example][schema-enumerated]. The underlying type of such a key
 * is string, but you can use g_settings_get_enum(), g_settings_set_enum(),
 * g_settings_get_flags(), g_settings_set_flags() access the numeric values
 * corresponding to the string value of enum and flags keys.
 * 
 * An example for default value:
 * |[
 * <schemalist>
 * <schema id="org.gtk.Test" path="/org/gtk/Test/" gettext-domain="test">
 * 
 * <key name="greeting" type="s">
 * <default l10n="messages">"Hello, earthlings"</default>
 * <summary>A greeting</summary>
 * <description>
 * Greeting of the invading martians
 * </description>
 * </key>
 * 
 * <key name="box" type="(ii)">
 * <default>(20,30)</default>
 * </key>
 * 
 * <key name="empty-string" type="s">
 * <default>""</default>
 * <summary>Empty strings have to be provided in GVariant form</summary>
 * </key>
 * 
 * </schema>
 * </schemalist>
 * ]|
 * 
 * An example for ranges, choices and enumerated types:
 * |[
 * <schemalist>
 * 
 * <enum id="org.gtk.Test.myenum">
 * <value nick="first" value="1"/>
 * <value nick="second" value="2"/>
 * </enum>
 * 
 * <flags id="org.gtk.Test.myflags">
 * <value nick="flag1" value="1"/>
 * <value nick="flag2" value="2"/>
 * <value nick="flag3" value="4"/>
 * </flags>
 * 
 * <schema id="org.gtk.Test">
 * 
 * <key name="key-with-range" type="i">
 * <range min="1" max="100"/>
 * <default>10</default>
 * </key>
 * 
 * <key name="key-with-choices" type="s">
 * <choices>
 * <choice value='Elisabeth'/>
 * <choice value='Annabeth'/>
 * <choice value='Joe'/>
 * </choices>
 * <aliases>
 * <alias value='Anna' target='Annabeth'/>
 * <alias value='Beth' target='Elisabeth'/>
 * </aliases>
 * <default>'Joe'</default>
 * </key>
 * 
 * <key name='enumerated-key' enum='org.gtk.Test.myenum'>
 * <default>'first'</default>
 * </key>
 * 
 * <key name='flags-key' flags='org.gtk.Test.myflags'>
 * <default>["flag1","flag2"]</default>
 * </key>
 * </schema>
 * </schemalist>
 * ]|
 * 
 * ## Vendor overrides
 * 
 * Default values are defined in the schemas that get installed by
 * an application. Sometimes, it is necessary for a vendor or distributor
 * to adjust these defaults. Since patching the XML source for the schema
 * is inconvenient and error-prone,
 * [glib-compile-schemas][glib-compile-schemas] reads so-called vendor
 * override' files. These are keyfiles in the same directory as the XML
 * schema sources which can override default values. The schema id serves
 * as the group name in the key file, and the values are expected in
 * serialized GVariant form, as in the following example:
 * |[
 * [org.gtk.Example]
 * key1='string'
 * key2=1.5
 * ]|
 * 
 * glib-compile-schemas expects schema files to have the extension
 * `.gschema.override`.
 * 
 * ## Binding
 * 
 * A very convenient feature of GSettings lets you bind #GObject properties
 * directly to settings, using g_settings_bind(). Once a GObject property
 * has been bound to a setting, changes on either side are automatically
 * propagated to the other side. GSettings handles details like mapping
 * between GObject and GVariant types, and preventing infinite cycles.
 * 
 * This makes it very easy to hook up a preferences dialog to the
 * underlying settings. To make this even more convenient, GSettings
 * looks for a boolean property with the name "sensitivity" and
 * automatically binds it to the writability of the bound setting.
 * If this 'magic' gets in the way, it can be suppressed with the
 * %G_SETTINGS_BIND_NO_SENSITIVITY flag.
 * 
 * ## Relocatable schemas # {#gsettings-relocatable}
 * 
 * A relocatable schema is one with no `path` attribute specified on its
 * <schema> element. By using g_settings_new_with_path(), a #GSettings object
 * can be instantiated for a relocatable schema, assigning a path to the
 * instance. Paths passed to g_settings_new_with_path() will typically be
 * constructed dynamically from a constant prefix plus some form of instance
 * identifier; but they must still be valid GSettings paths. Paths could also
 * be constant and used with a globally installed schema originating from a
 * dependency library.
 * 
 * For example, a relocatable schema could be used to store geometry information
 * for different windows in an application. If the schema ID was
 * `org.foo.MyApp.Window`, it could be instantiated for paths
 * `/org/foo/MyApp/main/`, `/org/foo/MyApp/document-1/`,
 * `/org/foo/MyApp/document-2/`, etc. If any of the paths are well-known
 * they can be specified as <child> elements in the parent schema, e.g.:
 * |[
 * <schema id="org.foo.MyApp" path="/org/foo/MyApp/">
 * <child name="main" schema="org.foo.MyApp.Window"/>
 * </schema>
 * ]|
 * 
 * ## Build system integration # {#gsettings-build-system}
 * 
 * GSettings comes with autotools integration to simplify compiling and
 * installing schemas. To add GSettings support to an application, add the
 * following to your `configure.ac`:
 * |[
 * GLIB_GSETTINGS
 * ]|
 * 
 * In the appropriate `Makefile.am`, use the following snippet to compile and
 * install the named schema:
 * |[
 * gsettings_SCHEMAS = org.foo.MyApp.gschema.xml
 * EXTRA_DIST = $(gsettings_SCHEMAS)
 * 
 * @GSETTINGS_RULES@
 * ]|
 * 
 * No changes are needed to the build system to mark a schema XML file for
 * translation. Assuming it sets the `gettext-domain` attribute, a schema may
 * be marked for translation by adding it to `POTFILES.in`, assuming gettext
 * 0.19 is in use (the preferred method for translation):
 * |[
 * data/org.foo.MyApp.gschema.xml
 * ]|
 * 
 * Alternatively, if intltool 0.50.1 is in use:
 * |[
 * [type: gettext/gsettings]data/org.foo.MyApp.gschema.xml
 * ]|
 * 
 * GSettings will use gettext to look up translations for the <summary> and
 * <description> elements, and also any <default> elements which have a `l10n`
 * attribute set. Translations must not be included in the `.gschema.xml` file
 * by the build system, for example by using intltool XML rules with a
 * `.gschema.xml.in` template.
 * 
 * If an enumerated type defined in a C header file is to be used in a GSettings
 * schema, it can either be defined manually using an <enum> element in the
 * schema XML, or it can be extracted automatically from the C header. This
 * approach is preferred, as it ensures the two representations are always
 * synchronised. To do so, add the following to the relevant `Makefile.am`:
 * |[
 * gsettings_ENUM_NAMESPACE = org.foo.MyApp
 * gsettings_ENUM_FILES = my-app-enums.h my-app-misc.h
 * ]|
 * 
 * `gsettings_ENUM_NAMESPACE` specifies the schema namespace for the enum files,
 * which are specified in `gsettings_ENUM_FILES`. This will generate a
 * `org.foo.MyApp.enums.xml` file containing the extracted enums, which will be
 * automatically included in the schema compilation, install and uninstall
 * rules. It should not be committed to version control or included in
 * `EXTRA_DIST`.
 */
public class Settings : ObjectG
{
	/** the main Gtk struct */
	protected GSettings* gSettings;

	/** Get the main Gtk struct */
	public GSettings* getSettingsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSettings;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSettings;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSettings* gSettings, bool ownedRef = false)
	{
		this.gSettings = gSettings;
		super(cast(GObject*)gSettings, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_settings_get_type();
	}

	/**
	 * Creates a new #GSettings object with the schema specified by
	 * @schema_id.
	 *
	 * It is an error for the schema to not exist: schemas are an
	 * essential part of a program, as they provide type information.
	 * If schemas need to be dynamically loaded (for example, from an
	 * optional runtime dependency), g_settings_schema_source_lookup()
	 * can be used to test for their existence before loading them.
	 *
	 * Signals on the newly created #GSettings object will be dispatched
	 * via the thread-default #GMainContext in effect at the time of the
	 * call to g_settings_new().  The new #GSettings will hold a reference
	 * on the context.  See g_main_context_push_thread_default().
	 *
	 * Params:
	 *     schemaId = the id of the schema
	 *
	 * Returns: a new #GSettings object
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string schemaId)
	{
		auto __p = g_settings_new(Str.toStringz(schemaId));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSettings*) __p, true);
	}

	/**
	 * Creates a new #GSettings object with a given schema, backend and
	 * path.
	 *
	 * It should be extremely rare that you ever want to use this function.
	 * It is made available for advanced use-cases (such as plugin systems
	 * that want to provide access to schemas loaded from custom locations,
	 * etc).
	 *
	 * At the most basic level, a #GSettings object is a pure composition of
	 * 4 things: a #GSettingsSchema, a #GSettingsBackend, a path within that
	 * backend, and a #GMainContext to which signals are dispatched.
	 *
	 * This constructor therefore gives you full control over constructing
	 * #GSettings instances.  The first 3 parameters are given directly as
	 * @schema, @backend and @path, and the main context is taken from the
	 * thread-default (as per g_settings_new()).
	 *
	 * If @backend is %NULL then the default backend is used.
	 *
	 * If @path is %NULL then the path from the schema is used.  It is an
	 * error if @path is %NULL and the schema has no path of its own or if
	 * @path is non-%NULL and not equal to the path that the schema does
	 * have.
	 *
	 * Params:
	 *     schema = a #GSettingsSchema
	 *     backend = a #GSettingsBackend
	 *     path = the path to use
	 *
	 * Returns: a new #GSettings object
	 *
	 * Since: 2.32
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SettingsSchema schema, SettingsBackend backend, string path)
	{
		auto __p = g_settings_new_full((schema is null) ? null : schema.getSettingsSchemaStruct(), (backend is null) ? null : backend.getSettingsBackendStruct(), Str.toStringz(path));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(GSettings*) __p, true);
	}

	/**
	 * Creates a new #GSettings object with the schema specified by
	 * @schema_id and a given #GSettingsBackend.
	 *
	 * Creating a #GSettings object with a different backend allows accessing
	 * settings from a database other than the usual one. For example, it may make
	 * sense to pass a backend corresponding to the "defaults" settings database on
	 * the system to get a settings object that modifies the system default
	 * settings instead of the settings for this user.
	 *
	 * Params:
	 *     schemaId = the id of the schema
	 *     backend = the #GSettingsBackend to use
	 *
	 * Returns: a new #GSettings object
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string schemaId, SettingsBackend backend)
	{
		auto __p = g_settings_new_with_backend(Str.toStringz(schemaId), (backend is null) ? null : backend.getSettingsBackendStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_backend");
		}

		this(cast(GSettings*) __p, true);
	}

	/**
	 * Creates a new #GSettings object with the schema specified by
	 * @schema_id and a given #GSettingsBackend and path.
	 *
	 * This is a mix of g_settings_new_with_backend() and
	 * g_settings_new_with_path().
	 *
	 * Params:
	 *     schemaId = the id of the schema
	 *     backend = the #GSettingsBackend to use
	 *     path = the path to use
	 *
	 * Returns: a new #GSettings object
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string schemaId, SettingsBackend backend, string path)
	{
		auto __p = g_settings_new_with_backend_and_path(Str.toStringz(schemaId), (backend is null) ? null : backend.getSettingsBackendStruct(), Str.toStringz(path));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_backend_and_path");
		}

		this(cast(GSettings*) __p, true);
	}

	/**
	 * Creates a new #GSettings object with the relocatable schema specified
	 * by @schema_id and a given path.
	 *
	 * You only need to do this if you want to directly create a settings
	 * object with a schema that doesn't have a specified path of its own.
	 * That's quite rare.
	 *
	 * It is a programmer error to call this function for a schema that
	 * has an explicitly specified path.
	 *
	 * It is a programmer error if @path is not a valid path.  A valid path
	 * begins and ends with '/' and does not contain two consecutive '/'
	 * characters.
	 *
	 * Params:
	 *     schemaId = the id of the schema
	 *     path = the path to use
	 *
	 * Returns: a new #GSettings object
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string schemaId, string path)
	{
		auto __p = g_settings_new_with_path(Str.toStringz(schemaId), Str.toStringz(path));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_path");
		}

		this(cast(GSettings*) __p, true);
	}

	/**
	 * Deprecated.
	 *
	 * Deprecated: Use g_settings_schema_source_list_schemas() instead
	 *
	 * Returns: a list of
	 *     relocatable #GSettings schemas that are available, in no defined order.
	 *     The list must not be modified or freed.
	 *
	 * Since: 2.28
	 */
	public static string[] listRelocatableSchemas()
	{
		return Str.toStringArray(g_settings_list_relocatable_schemas());
	}

	/**
	 * Deprecated.
	 *
	 * Deprecated: Use g_settings_schema_source_list_schemas() instead.
	 * If you used g_settings_list_schemas() to check for the presence of
	 * a particular schema, use g_settings_schema_source_lookup() instead
	 * of your whole loop.
	 *
	 * Returns: a list of
	 *     #GSettings schemas that are available, in no defined order.  The list
	 *     must not be modified or freed.
	 *
	 * Since: 2.26
	 */
	public static string[] listSchemas()
	{
		return Str.toStringArray(g_settings_list_schemas());
	}

	/**
	 * Ensures that all pending operations are complete for the default backend.
	 *
	 * Writes made to a #GSettings are handled asynchronously.  For this
	 * reason, it is very unlikely that the changes have it to disk by the
	 * time g_settings_set() returns.
	 *
	 * This call will block until all of the writes have made it to the
	 * backend.  Since the mainloop is not running, no change notifications
	 * will be dispatched during this call (but some may be queued by the
	 * time the call is done).
	 */
	public static void sync()
	{
		g_settings_sync();
	}

	/**
	 * Removes an existing binding for @property on @object.
	 *
	 * Note that bindings are automatically removed when the
	 * object is finalized, so it is rarely necessary to call this
	 * function.
	 *
	 * Params:
	 *     object = the object
	 *     property = the property whose binding is removed
	 *
	 * Since: 2.26
	 */
	public static void unbind(ObjectG object, string property)
	{
		g_settings_unbind((object is null) ? null : object.getObjectGStruct(), Str.toStringz(property));
	}

	/**
	 * Applies any changes that have been made to the settings.  This
	 * function does nothing unless @settings is in 'delay-apply' mode;
	 * see g_settings_delay().  In the normal case settings are always
	 * applied immediately.
	 */
	public void apply()
	{
		g_settings_apply(gSettings);
	}

	/**
	 * Create a binding between the @key in the @settings object
	 * and the property @property of @object.
	 *
	 * The binding uses the default GIO mapping functions to map
	 * between the settings and property values. These functions
	 * handle booleans, numeric types and string types in a
	 * straightforward way. Use g_settings_bind_with_mapping() if
	 * you need a custom mapping, or map between types that are not
	 * supported by the default mapping functions.
	 *
	 * Unless the @flags include %G_SETTINGS_BIND_NO_SENSITIVITY, this
	 * function also establishes a binding between the writability of
	 * @key and the "sensitive" property of @object (if @object has
	 * a boolean property by that name). See g_settings_bind_writable()
	 * for more details about writable bindings.
	 *
	 * Note that the lifecycle of the binding is tied to @object,
	 * and that you can have only one binding per object property.
	 * If you bind the same property twice on the same object, the second
	 * binding overrides the first one.
	 *
	 * Params:
	 *     key = the key to bind
	 *     object = a #GObject
	 *     property = the name of the property to bind
	 *     flags = flags for the binding
	 *
	 * Since: 2.26
	 */
	public void bind(string key, ObjectG object, string property, GSettingsBindFlags flags)
	{
		g_settings_bind(gSettings, Str.toStringz(key), (object is null) ? null : object.getObjectGStruct(), Str.toStringz(property), flags);
	}

	/**
	 * Create a binding between the @key in the @settings object
	 * and the property @property of @object.
	 *
	 * The binding uses the provided mapping functions to map between
	 * settings and property values.
	 *
	 * Note that the lifecycle of the binding is tied to @object,
	 * and that you can have only one binding per object property.
	 * If you bind the same property twice on the same object, the second
	 * binding overrides the first one.
	 *
	 * Params:
	 *     key = the key to bind
	 *     object = a #GObject
	 *     property = the name of the property to bind
	 *     flags = flags for the binding
	 *     getMapping = a function that gets called to convert values
	 *         from @settings to @object, or %NULL to use the default GIO mapping
	 *     setMapping = a function that gets called to convert values
	 *         from @object to @settings, or %NULL to use the default GIO mapping
	 *     userData = data that gets passed to @get_mapping and @set_mapping
	 *     destroy = #GDestroyNotify function for @user_data
	 *
	 * Since: 2.26
	 */
	public void bindWithMapping(string key, ObjectG object, string property, GSettingsBindFlags flags, GSettingsBindGetMapping getMapping, GSettingsBindSetMapping setMapping, void* userData, GDestroyNotify destroy)
	{
		g_settings_bind_with_mapping(gSettings, Str.toStringz(key), (object is null) ? null : object.getObjectGStruct(), Str.toStringz(property), flags, getMapping, setMapping, userData, destroy);
	}

	/**
	 * Create a binding between the writability of @key in the
	 * @settings object and the property @property of @object.
	 * The property must be boolean; "sensitive" or "visible"
	 * properties of widgets are the most likely candidates.
	 *
	 * Writable bindings are always uni-directional; changes of the
	 * writability of the setting will be propagated to the object
	 * property, not the other way.
	 *
	 * When the @inverted argument is %TRUE, the binding inverts the
	 * value as it passes from the setting to the object, i.e. @property
	 * will be set to %TRUE if the key is not writable.
	 *
	 * Note that the lifecycle of the binding is tied to @object,
	 * and that you can have only one binding per object property.
	 * If you bind the same property twice on the same object, the second
	 * binding overrides the first one.
	 *
	 * Params:
	 *     key = the key to bind
	 *     object = a #GObject
	 *     property = the name of a boolean property to bind
	 *     inverted = whether to 'invert' the value
	 *
	 * Since: 2.26
	 */
	public void bindWritable(string key, ObjectG object, string property, bool inverted)
	{
		g_settings_bind_writable(gSettings, Str.toStringz(key), (object is null) ? null : object.getObjectGStruct(), Str.toStringz(property), inverted);
	}

	/**
	 * Creates a #GAction corresponding to a given #GSettings key.
	 *
	 * The action has the same name as the key.
	 *
	 * The value of the key becomes the state of the action and the action
	 * is enabled when the key is writable.  Changing the state of the
	 * action results in the key being written to.  Changes to the value or
	 * writability of the key cause appropriate change notifications to be
	 * emitted for the action.
	 *
	 * For boolean-valued keys, action activations take no parameter and
	 * result in the toggling of the value.  For all other types,
	 * activations take the new value for the key (which must have the
	 * correct type).
	 *
	 * Params:
	 *     key = the name of a key in @settings
	 *
	 * Returns: a new #GAction
	 *
	 * Since: 2.32
	 */
	public ActionIF createAction(string key)
	{
		auto __p = g_settings_create_action(gSettings, Str.toStringz(key));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ActionIF)(cast(GAction*) __p, true);
	}

	/**
	 * Changes the #GSettings object into 'delay-apply' mode. In this
	 * mode, changes to @settings are not immediately propagated to the
	 * backend, but kept locally until g_settings_apply() is called.
	 *
	 * Since: 2.26
	 */
	public void delay()
	{
		g_settings_delay(gSettings);
	}

	/**
	 * Gets the value that is stored at @key in @settings.
	 *
	 * A convenience variant of g_settings_get() for booleans.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a boolean type in the schema for @settings.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *
	 * Returns: a boolean
	 *
	 * Since: 2.26
	 */
	public bool getBoolean(string key)
	{
		return g_settings_get_boolean(gSettings, Str.toStringz(key)) != 0;
	}

	/**
	 * Creates a child settings object which has a base path of
	 * `base-path/@name`, where `base-path` is the base path of
	 * @settings.
	 *
	 * The schema for the child settings object must have been declared
	 * in the schema of @settings using a `<child>` element.
	 *
	 * The created child settings object will inherit the #GSettings:delay-apply
	 * mode from @settings.
	 *
	 * Params:
	 *     name = the name of the child schema
	 *
	 * Returns: a 'child' settings object
	 *
	 * Since: 2.26
	 */
	public Settings getChild(string name)
	{
		auto __p = g_settings_get_child(gSettings, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Settings)(cast(GSettings*) __p, true);
	}

	/**
	 * Gets the "default value" of a key.
	 *
	 * This is the value that would be read if g_settings_reset() were to be
	 * called on the key.
	 *
	 * Note that this may be a different value than returned by
	 * g_settings_schema_key_get_default_value() if the system administrator
	 * has provided a default value.
	 *
	 * Comparing the return values of g_settings_get_default_value() and
	 * g_settings_get_value() is not sufficient for determining if a value
	 * has been set because the user may have explicitly set the value to
	 * something that happens to be equal to the default.  The difference
	 * here is that if the default changes in the future, the user's key
	 * will still be set.
	 *
	 * This function may be useful for adding an indication to a UI of what
	 * the default value was before the user set it.
	 *
	 * It is a programmer error to give a @key that isn't contained in the
	 * schema for @settings.
	 *
	 * Params:
	 *     key = the key to get the default value for
	 *
	 * Returns: the default value
	 *
	 * Since: 2.40
	 */
	public Variant getDefaultValue(string key)
	{
		auto __p = g_settings_get_default_value(gSettings, Str.toStringz(key));

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Gets the value that is stored at @key in @settings.
	 *
	 * A convenience variant of g_settings_get() for doubles.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a 'double' type in the schema for @settings.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *
	 * Returns: a double
	 *
	 * Since: 2.26
	 */
	public double getDouble(string key)
	{
		return g_settings_get_double(gSettings, Str.toStringz(key));
	}

	/**
	 * Gets the value that is stored in @settings for @key and converts it
	 * to the enum value that it represents.
	 *
	 * In order to use this function the type of the value must be a string
	 * and it must be marked in the schema file as an enumerated type.
	 *
	 * It is a programmer error to give a @key that isn't contained in the
	 * schema for @settings or is not marked as an enumerated type.
	 *
	 * If the value stored in the configuration database is not a valid
	 * value for the enumerated type then this function will return the
	 * default value.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *
	 * Returns: the enum value
	 *
	 * Since: 2.26
	 */
	public int getEnum(string key)
	{
		return g_settings_get_enum(gSettings, Str.toStringz(key));
	}

	/**
	 * Gets the value that is stored in @settings for @key and converts it
	 * to the flags value that it represents.
	 *
	 * In order to use this function the type of the value must be an array
	 * of strings and it must be marked in the schema file as a flags type.
	 *
	 * It is a programmer error to give a @key that isn't contained in the
	 * schema for @settings or is not marked as a flags type.
	 *
	 * If the value stored in the configuration database is not a valid
	 * value for the flags type then this function will return the default
	 * value.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *
	 * Returns: the flags value
	 *
	 * Since: 2.26
	 */
	public uint getFlags(string key)
	{
		return g_settings_get_flags(gSettings, Str.toStringz(key));
	}

	/**
	 * Returns whether the #GSettings object has any unapplied
	 * changes.  This can only be the case if it is in 'delayed-apply' mode.
	 *
	 * Returns: %TRUE if @settings has unapplied changes
	 *
	 * Since: 2.26
	 */
	public bool getHasUnapplied()
	{
		return g_settings_get_has_unapplied(gSettings) != 0;
	}

	/**
	 * Gets the value that is stored at @key in @settings.
	 *
	 * A convenience variant of g_settings_get() for 32-bit integers.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a int32 type in the schema for @settings.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *
	 * Returns: an integer
	 *
	 * Since: 2.26
	 */
	public int getInt(string key)
	{
		return g_settings_get_int(gSettings, Str.toStringz(key));
	}

	/**
	 * Gets the value that is stored at @key in @settings.
	 *
	 * A convenience variant of g_settings_get() for 64-bit integers.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a int64 type in the schema for @settings.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *
	 * Returns: a 64-bit integer
	 *
	 * Since: 2.50
	 */
	public long getInt64(string key)
	{
		return g_settings_get_int64(gSettings, Str.toStringz(key));
	}

	/**
	 * Gets the value that is stored at @key in @settings, subject to
	 * application-level validation/mapping.
	 *
	 * You should use this function when the application needs to perform
	 * some processing on the value of the key (for example, parsing).  The
	 * @mapping function performs that processing.  If the function
	 * indicates that the processing was unsuccessful (due to a parse error,
	 * for example) then the mapping is tried again with another value.
	 *
	 * This allows a robust 'fall back to defaults' behaviour to be
	 * implemented somewhat automatically.
	 *
	 * The first value that is tried is the user's setting for the key.  If
	 * the mapping function fails to map this value, other values may be
	 * tried in an unspecified order (system or site defaults, translated
	 * schema default values, untranslated schema default values, etc).
	 *
	 * If the mapping function fails for all possible values, one additional
	 * attempt is made: the mapping function is called with a %NULL value.
	 * If the mapping function still indicates failure at this point then
	 * the application will be aborted.
	 *
	 * The result parameter for the @mapping function is pointed to a
	 * #gpointer which is initially set to %NULL.  The same pointer is given
	 * to each invocation of @mapping.  The final value of that #gpointer is
	 * what is returned by this function.  %NULL is valid; it is returned
	 * just as any other value would be.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *     mapping = the function to map the value in the
	 *         settings database to the value used by the application
	 *     userData = user data for @mapping
	 *
	 * Returns: the result, which may be %NULL
	 */
	public void* getMapped(string key, GSettingsGetMapping mapping, void* userData)
	{
		return g_settings_get_mapped(gSettings, Str.toStringz(key), mapping, userData);
	}

	/**
	 * Queries the range of a key.
	 *
	 * Deprecated: Use g_settings_schema_key_get_range() instead.
	 *
	 * Params:
	 *     key = the key to query the range of
	 *
	 * Since: 2.28
	 */
	public Variant getRange(string key)
	{
		auto __p = g_settings_get_range(gSettings, Str.toStringz(key));

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Gets the value that is stored at @key in @settings.
	 *
	 * A convenience variant of g_settings_get() for strings.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a string type in the schema for @settings.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *
	 * Returns: a newly-allocated string
	 *
	 * Since: 2.26
	 */
	public string getString(string key)
	{
		auto retStr = g_settings_get_string(gSettings, Str.toStringz(key));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * A convenience variant of g_settings_get() for string arrays.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having an array of strings type in the schema for @settings.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *
	 * Returns: a
	 *     newly-allocated, %NULL-terminated array of strings, the value that
	 *     is stored at @key in @settings.
	 *
	 * Since: 2.26
	 */
	public string[] getStrv(string key)
	{
		auto retStr = g_settings_get_strv(gSettings, Str.toStringz(key));

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Gets the value that is stored at @key in @settings.
	 *
	 * A convenience variant of g_settings_get() for 32-bit unsigned
	 * integers.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a uint32 type in the schema for @settings.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *
	 * Returns: an unsigned integer
	 *
	 * Since: 2.30
	 */
	public uint getUint(string key)
	{
		return g_settings_get_uint(gSettings, Str.toStringz(key));
	}

	/**
	 * Gets the value that is stored at @key in @settings.
	 *
	 * A convenience variant of g_settings_get() for 64-bit unsigned
	 * integers.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a uint64 type in the schema for @settings.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *
	 * Returns: a 64-bit unsigned integer
	 *
	 * Since: 2.50
	 */
	public ulong getUint64(string key)
	{
		return g_settings_get_uint64(gSettings, Str.toStringz(key));
	}

	/**
	 * Checks the "user value" of a key, if there is one.
	 *
	 * The user value of a key is the last value that was set by the user.
	 *
	 * After calling g_settings_reset() this function should always return
	 * %NULL (assuming something is not wrong with the system
	 * configuration).
	 *
	 * It is possible that g_settings_get_value() will return a different
	 * value than this function.  This can happen in the case that the user
	 * set a value for a key that was subsequently locked down by the system
	 * administrator -- this function will return the user's old value.
	 *
	 * This function may be useful for adding a "reset" option to a UI or
	 * for providing indication that a particular value has been changed.
	 *
	 * It is a programmer error to give a @key that isn't contained in the
	 * schema for @settings.
	 *
	 * Params:
	 *     key = the key to get the user value for
	 *
	 * Returns: the user's value, if set
	 *
	 * Since: 2.40
	 */
	public Variant getUserValue(string key)
	{
		auto __p = g_settings_get_user_value(gSettings, Str.toStringz(key));

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Gets the value that is stored in @settings for @key.
	 *
	 * It is a programmer error to give a @key that isn't contained in the
	 * schema for @settings.
	 *
	 * Params:
	 *     key = the key to get the value for
	 *
	 * Returns: a new #GVariant
	 *
	 * Since: 2.26
	 */
	public Variant getValue(string key)
	{
		auto __p = g_settings_get_value(gSettings, Str.toStringz(key));

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Finds out if a key can be written or not
	 *
	 * Params:
	 *     name = the name of a key
	 *
	 * Returns: %TRUE if the key @name is writable
	 *
	 * Since: 2.26
	 */
	public bool isWritable(string name)
	{
		return g_settings_is_writable(gSettings, Str.toStringz(name)) != 0;
	}

	/**
	 * Gets the list of children on @settings.
	 *
	 * The list is exactly the list of strings for which it is not an error
	 * to call g_settings_get_child().
	 *
	 * There is little reason to call this function from "normal" code, since
	 * you should already know what children are in your schema. This function
	 * may still be useful there for introspection reasons, however.
	 *
	 * You should free the return value with g_strfreev() when you are done
	 * with it.
	 *
	 * Returns: a list of the children
	 *     on @settings, in no defined order
	 */
	public string[] listChildren()
	{
		auto retStr = g_settings_list_children(gSettings);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Introspects the list of keys on @settings.
	 *
	 * You should probably not be calling this function from "normal" code
	 * (since you should already know what keys are in your schema).  This
	 * function is intended for introspection reasons.
	 *
	 * You should free the return value with g_strfreev() when you are done
	 * with it.
	 *
	 * Deprecated: Use g_settings_schema_list_keys() instead.
	 *
	 * Returns: a list
	 *     of the keys on @settings, in no defined order
	 */
	public string[] listKeys()
	{
		auto retStr = g_settings_list_keys(gSettings);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Checks if the given @value is of the correct type and within the
	 * permitted range for @key.
	 *
	 * Deprecated: Use g_settings_schema_key_range_check() instead.
	 *
	 * Params:
	 *     key = the key to check
	 *     value = the value to check
	 *
	 * Returns: %TRUE if @value is valid for @key
	 *
	 * Since: 2.28
	 */
	public bool rangeCheck(string key, Variant value)
	{
		return g_settings_range_check(gSettings, Str.toStringz(key), (value is null) ? null : value.getVariantStruct()) != 0;
	}

	/**
	 * Resets @key to its default value.
	 *
	 * This call resets the key, as much as possible, to its default value.
	 * That might be the value specified in the schema or the one set by the
	 * administrator.
	 *
	 * Params:
	 *     key = the name of a key
	 */
	public void reset(string key)
	{
		g_settings_reset(gSettings, Str.toStringz(key));
	}

	/**
	 * Reverts all non-applied changes to the settings.  This function
	 * does nothing unless @settings is in 'delay-apply' mode; see
	 * g_settings_delay().  In the normal case settings are always applied
	 * immediately.
	 *
	 * Change notifications will be emitted for affected keys.
	 */
	public void revert()
	{
		g_settings_revert(gSettings);
	}

	/**
	 * Sets @key in @settings to @value.
	 *
	 * A convenience variant of g_settings_set() for booleans.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a boolean type in the schema for @settings.
	 *
	 * Params:
	 *     key = the name of the key to set
	 *     value = the value to set it to
	 *
	 * Returns: %TRUE if setting the key succeeded,
	 *     %FALSE if the key was not writable
	 *
	 * Since: 2.26
	 */
	public bool setBoolean(string key, bool value)
	{
		return g_settings_set_boolean(gSettings, Str.toStringz(key), value) != 0;
	}

	/**
	 * Sets @key in @settings to @value.
	 *
	 * A convenience variant of g_settings_set() for doubles.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a 'double' type in the schema for @settings.
	 *
	 * Params:
	 *     key = the name of the key to set
	 *     value = the value to set it to
	 *
	 * Returns: %TRUE if setting the key succeeded,
	 *     %FALSE if the key was not writable
	 *
	 * Since: 2.26
	 */
	public bool setDouble(string key, double value)
	{
		return g_settings_set_double(gSettings, Str.toStringz(key), value) != 0;
	}

	/**
	 * Looks up the enumerated type nick for @value and writes it to @key,
	 * within @settings.
	 *
	 * It is a programmer error to give a @key that isn't contained in the
	 * schema for @settings or is not marked as an enumerated type, or for
	 * @value not to be a valid value for the named type.
	 *
	 * After performing the write, accessing @key directly with
	 * g_settings_get_string() will return the 'nick' associated with
	 * @value.
	 *
	 * Params:
	 *     key = a key, within @settings
	 *     value = an enumerated value
	 *
	 * Returns: %TRUE, if the set succeeds
	 */
	public bool setEnum(string key, int value)
	{
		return g_settings_set_enum(gSettings, Str.toStringz(key), value) != 0;
	}

	/**
	 * Looks up the flags type nicks for the bits specified by @value, puts
	 * them in an array of strings and writes the array to @key, within
	 * @settings.
	 *
	 * It is a programmer error to give a @key that isn't contained in the
	 * schema for @settings or is not marked as a flags type, or for @value
	 * to contain any bits that are not value for the named type.
	 *
	 * After performing the write, accessing @key directly with
	 * g_settings_get_strv() will return an array of 'nicks'; one for each
	 * bit in @value.
	 *
	 * Params:
	 *     key = a key, within @settings
	 *     value = a flags value
	 *
	 * Returns: %TRUE, if the set succeeds
	 */
	public bool setFlags(string key, uint value)
	{
		return g_settings_set_flags(gSettings, Str.toStringz(key), value) != 0;
	}

	/**
	 * Sets @key in @settings to @value.
	 *
	 * A convenience variant of g_settings_set() for 32-bit integers.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a int32 type in the schema for @settings.
	 *
	 * Params:
	 *     key = the name of the key to set
	 *     value = the value to set it to
	 *
	 * Returns: %TRUE if setting the key succeeded,
	 *     %FALSE if the key was not writable
	 *
	 * Since: 2.26
	 */
	public bool setInt(string key, int value)
	{
		return g_settings_set_int(gSettings, Str.toStringz(key), value) != 0;
	}

	/**
	 * Sets @key in @settings to @value.
	 *
	 * A convenience variant of g_settings_set() for 64-bit integers.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a int64 type in the schema for @settings.
	 *
	 * Params:
	 *     key = the name of the key to set
	 *     value = the value to set it to
	 *
	 * Returns: %TRUE if setting the key succeeded,
	 *     %FALSE if the key was not writable
	 *
	 * Since: 2.50
	 */
	public bool setInt64(string key, long value)
	{
		return g_settings_set_int64(gSettings, Str.toStringz(key), value) != 0;
	}

	/**
	 * Sets @key in @settings to @value.
	 *
	 * A convenience variant of g_settings_set() for strings.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a string type in the schema for @settings.
	 *
	 * Params:
	 *     key = the name of the key to set
	 *     value = the value to set it to
	 *
	 * Returns: %TRUE if setting the key succeeded,
	 *     %FALSE if the key was not writable
	 *
	 * Since: 2.26
	 */
	public bool setString(string key, string value)
	{
		return g_settings_set_string(gSettings, Str.toStringz(key), Str.toStringz(value)) != 0;
	}

	/**
	 * Sets @key in @settings to @value.
	 *
	 * A convenience variant of g_settings_set() for string arrays.  If
	 * @value is %NULL, then @key is set to be the empty array.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having an array of strings type in the schema for @settings.
	 *
	 * Params:
	 *     key = the name of the key to set
	 *     value = the value to set it to, or %NULL
	 *
	 * Returns: %TRUE if setting the key succeeded,
	 *     %FALSE if the key was not writable
	 *
	 * Since: 2.26
	 */
	public bool setStrv(string key, string[] value)
	{
		return g_settings_set_strv(gSettings, Str.toStringz(key), Str.toStringzArray(value)) != 0;
	}

	/**
	 * Sets @key in @settings to @value.
	 *
	 * A convenience variant of g_settings_set() for 32-bit unsigned
	 * integers.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a uint32 type in the schema for @settings.
	 *
	 * Params:
	 *     key = the name of the key to set
	 *     value = the value to set it to
	 *
	 * Returns: %TRUE if setting the key succeeded,
	 *     %FALSE if the key was not writable
	 *
	 * Since: 2.30
	 */
	public bool setUint(string key, uint value)
	{
		return g_settings_set_uint(gSettings, Str.toStringz(key), value) != 0;
	}

	/**
	 * Sets @key in @settings to @value.
	 *
	 * A convenience variant of g_settings_set() for 64-bit unsigned
	 * integers.
	 *
	 * It is a programmer error to give a @key that isn't specified as
	 * having a uint64 type in the schema for @settings.
	 *
	 * Params:
	 *     key = the name of the key to set
	 *     value = the value to set it to
	 *
	 * Returns: %TRUE if setting the key succeeded,
	 *     %FALSE if the key was not writable
	 *
	 * Since: 2.50
	 */
	public bool setUint64(string key, ulong value)
	{
		return g_settings_set_uint64(gSettings, Str.toStringz(key), value) != 0;
	}

	/**
	 * Sets @key in @settings to @value.
	 *
	 * It is a programmer error to give a @key that isn't contained in the
	 * schema for @settings or for @value to have the incorrect type, per
	 * the schema.
	 *
	 * If @value is floating then this function consumes the reference.
	 *
	 * Params:
	 *     key = the name of the key to set
	 *     value = a #GVariant of the correct type
	 *
	 * Returns: %TRUE if setting the key succeeded,
	 *     %FALSE if the key was not writable
	 *
	 * Since: 2.26
	 */
	public bool setValue(string key, Variant value)
	{
		return g_settings_set_value(gSettings, Str.toStringz(key), (value is null) ? null : value.getVariantStruct()) != 0;
	}

	/**
	 * The "change-event" signal is emitted once per change event that
	 * affects this settings object.  You should connect to this signal
	 * only if you are interested in viewing groups of changes before they
	 * are split out into multiple emissions of the "changed" signal.
	 * For most use cases it is more appropriate to use the "changed" signal.
	 *
	 * In the event that the change event applies to one or more specified
	 * keys, @keys will be an array of #GQuark of length @n_keys.  In the
	 * event that the change event applies to the #GSettings object as a
	 * whole (ie: potentially every key has been changed) then @keys will
	 * be %NULL and @n_keys will be 0.
	 *
	 * The default handler for this signal invokes the "changed" signal
	 * for each affected key.  If any other connected handler returns
	 * %TRUE then this default functionality will be suppressed.
	 *
	 * Params:
	 *     keys = an array of #GQuarks for the changed keys, or %NULL
	 *     nKeys = the length of the @keys array, or 0
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the
	 *     event. FALSE to propagate the event further.
	 */
	gulong addOnChange(bool delegate(void*, int, Settings) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "change-event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The "changed" signal is emitted when a key has potentially changed.
	 * You should call one of the g_settings_get() calls to check the new
	 * value.
	 *
	 * This signal supports detailed connections.  You can connect to the
	 * detailed signal "changed::x" in order to only receive callbacks
	 * when key "x" changes.
	 *
	 * Note that @settings only emits this signal if you have read @key at
	 * least once while a signal handler was already connected for @key.
	 *
	 * Params:
	 *     key = the name of the key that changed
	 */
	gulong addOnChanged(void delegate(string, Settings) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The "writable-change-event" signal is emitted once per writability
	 * change event that affects this settings object.  You should connect
	 * to this signal if you are interested in viewing groups of changes
	 * before they are split out into multiple emissions of the
	 * "writable-changed" signal.  For most use cases it is more
	 * appropriate to use the "writable-changed" signal.
	 *
	 * In the event that the writability change applies only to a single
	 * key, @key will be set to the #GQuark for that key.  In the event
	 * that the writability change affects the entire settings object,
	 * @key will be 0.
	 *
	 * The default handler for this signal invokes the "writable-changed"
	 * and "changed" signals for each affected key.  This is done because
	 * changes in writability might also imply changes in value (if for
	 * example, a new mandatory setting is introduced).  If any other
	 * connected handler returns %TRUE then this default functionality
	 * will be suppressed.
	 *
	 * Params:
	 *     key = the quark of the key, or 0
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the
	 *     event. FALSE to propagate the event further.
	 */
	gulong addOnWritableChange(bool delegate(uint, Settings) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "writable-change-event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The "writable-changed" signal is emitted when the writability of a
	 * key has potentially changed.  You should call
	 * g_settings_is_writable() in order to determine the new status.
	 *
	 * This signal supports detailed connections.  You can connect to the
	 * detailed signal "writable-changed::x" in order to only receive
	 * callbacks when the writability of "x" changes.
	 *
	 * Params:
	 *     key = the key
	 */
	gulong addOnWritableChanged(void delegate(string, Settings) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "writable-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
