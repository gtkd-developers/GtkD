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
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GSettings.html
 * outPack = gio
 * outFile = Settings
 * strct   = GSettings
 * realStrct=
 * ctorStrct=
 * clss    = Settings
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_settings_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.Variant
 * 	- glib.VariantType
 * 	- gobject.Value
 * 	- gio.SettingsBackend
 * structWrap:
 * 	- GSettings* -> Settings
 * 	- GSettingsBackend* -> SettingsBackend
 * 	- GValue* -> Value
 * 	- GVariant* -> Variant
 * 	- GVariantType* -> VariantType
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Settings;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import gobject.Value;
private import gio.SettingsBackend;



private import gobject.ObjectG;

/**
 * Description
 * The GSettings class provides a convenient API for storing and retrieving
 * application settings.
 * When creating a GSettings instance, you have to specify a schema
 * that describes the keys in your settings and their types and default
 * values, as well as some other information.
 * Normally, a schema has as fixed path that determines where the settings
 * are stored in the conceptual global tree of settings. However, schemas
 * can also be 'relocatable', i.e. not equipped with a fixed path. This is
 * useful e.g. when the schema describes an 'account', and you want to be
 * able to store a arbitrary number of accounts.
 * Unlike other configuration systems (like GConf), GSettings does not
 * restrict keys to basic types like strings and numbers. GSettings stores
 * values as GVariant, and allows any GVariantType for keys. Key names
 * are restricted to lowercase characters, numbers and '-'. Furthermore,
 * the names must begin with a lowercase character, must not end
 * with a '-', and must not contain consecutive dashes. Key names can
 * be up to 32 characters long.
 * Similar to GConf, the default values in GSettings schemas can be
 * localized, but the localized values are stored in gettext catalogs
 * and looked up with the domain that is specified in the
 * gettext-domain attribute of the
 * <schemalist> or <schema>
 * elements and the category that is specified in the l10n attribute of the
 * <key> element.
 * GSettings uses schemas in a compact binary form that is created
 * by the glib-compile-schemas
 * utility. The input is a schema description in an XML format that can be
 * described by the following DTD:
 * $(DDOC_COMMENT example)
 * At runtime, schemas are identified by their id (as specified
 * in the id attribute of the
 * <schema> element). The
 * convention for schema ids is to use a dotted name, similar in
 * style to a DBus bus name, e.g. "org.gnome.font-rendering".
 * $(DDOC_COMMENT example)
 * $(DDOC_COMMENT example)
 * Vendor overrides
 *  Default values are defined in the schemas that get installed by
 *  an application. Sometimes, it is necessary for a vendor or distributor
 *  to adjust these defaults. Since patching the XML source for the schema
 *  is inconvenient and error-prone,
 *  glib-compile-schemas reads
 *  so-called 'vendor override' files. These are keyfiles in the same
 *  directory as the XML schema sources which can override default values.
 *  The schema id serves as the group name in the key file, and the values
 *  are expected in serialized GVariant form, as in the following example:
 * $(DDOC_COMMENT example)
 * <hr>
 * Binding
 *  A very convenient feature of GSettings lets you bind GObject properties
 *  directly to settings, using g_settings_bind(). Once a GObject property
 *  has been bound to a setting, changes on either side are automatically
 *  propagated to the other side. GSettings handles details like
 *  mapping between GObject and GVariant types, and preventing infinite
 *  cycles.
 *  This makes it very easy to hook up a preferences dialog to the
 *  underlying settings. To make this even more convenient, GSettings
 *  looks for a boolean property with the name "sensitivity" and
 *  automatically binds it to the writability of the bound setting.
 *  If this 'magic' gets in the way, it can be suppressed with the
 *  G_SETTINGS_BIND_NO_SENSITIVITY flag.
 */
public class Settings : ObjectG
{
	
	/** the main Gtk struct */
	protected GSettings* gSettings;
	
	
	public GSettings* getSettingsStruct()
	{
		return gSettings;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSettings;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSettings* gSettings)
	{
		if(gSettings is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gSettings);
		if( ptr !is null )
		{
			this = cast(Settings)ptr;
			return;
		}
		super(cast(GObject*)gSettings);
		this.gSettings = gSettings;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSettings = cast(GSettings*)obj;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	bool delegate(gpointer, gint, Settings)[] onChangeListeners;
	/**
	 * The "change-event" signal is emitted once per change event that
	 * affects this settings object. You should connect to this signal
	 * only if you are interested in viewing groups of changes before they
	 * are split out into multiple emissions of the "changed" signal.
	 * For most use cases it is more appropriate to use the "changed" signal.
	 * In the event that the change event applies to one or more specified
	 * keys, keys will be an array of GQuark of length n_keys. In the
	 * event that the change event applies to the GSettings object as a
	 * whole (ie: potentially every key has been changed) then keys will
	 * be NULL and n_keys will be 0.
	 * The default handler for this signal invokes the "changed" signal
	 * for each affected key. If any other connected handler returns
	 * TRUE then this default functionality will be supressed.
	 * TRUE to stop other handlers from being invoked for the
	 *  event. FALSE to propagate the event further.
	 */
	void addOnChange(bool delegate(gpointer, gint, Settings) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("change-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"change-event",
			cast(GCallback)&callBackChange,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["change-event"] = 1;
		}
		onChangeListeners ~= dlg;
	}
	extern(C) static gboolean callBackChange(GSettings* settingsStruct, gpointer keys, gint nKeys, Settings settings)
	{
		foreach ( bool delegate(gpointer, gint, Settings) dlg ; settings.onChangeListeners )
		{
			if ( dlg(keys, nKeys, settings) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(string, Settings)[] onChangedListeners;
	/**
	 * The "changed" signal is emitted when a key has potentially changed.
	 * You should call one of the g_settings_get() calls to check the new
	 * value.
	 * This signal supports detailed connections. You can connect to the
	 * detailed signal "changed::x" in order to only receive callbacks
	 * when key "x" changes.
	 */
	void addOnChanged(void delegate(string, Settings) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GSettings* settingsStruct, gchar* key, Settings settings)
	{
		foreach ( void delegate(string, Settings) dlg ; settings.onChangedListeners )
		{
			dlg(Str.toString(key), settings);
		}
	}
	
	bool delegate(guint, Settings)[] onWritableChangeListeners;
	/**
	 * The "writable-change-event" signal is emitted once per writability
	 * change event that affects this settings object. You should connect
	 * to this signal if you are interested in viewing groups of changes
	 * before they are split out into multiple emissions of the
	 * "writable-changed" signal. For most use cases it is more
	 * appropriate to use the "writable-changed" signal.
	 * In the event that the writability change applies only to a single
	 * key, key will be set to the GQuark for that key. In the event
	 * that the writability change affects the entire settings object,
	 * key will be 0.
	 * The default handler for this signal invokes the "writable-changed"
	 * and "changed" signals for each affected key. This is done because
	 * changes in writability might also imply changes in value (if for
	 * example, a new mandatory setting is introduced). If any other
	 * connected handler returns TRUE then this default functionality
	 * will be supressed.
	 * TRUE to stop other handlers from being invoked for the
	 *  event. FALSE to propagate the event further.
	 */
	void addOnWritableChange(bool delegate(guint, Settings) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("writable-change-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"writable-change-event",
			cast(GCallback)&callBackWritableChange,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["writable-change-event"] = 1;
		}
		onWritableChangeListeners ~= dlg;
	}
	extern(C) static gboolean callBackWritableChange(GSettings* settingsStruct, guint key, Settings settings)
	{
		foreach ( bool delegate(guint, Settings) dlg ; settings.onWritableChangeListeners )
		{
			if ( dlg(key, settings) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(string, Settings)[] onWritableChangedListeners;
	/**
	 * The "writable-changed" signal is emitted when the writability of a
	 * key has potentially changed. You should call
	 * g_settings_is_writable() in order to determine the new status.
	 * This signal supports detailed connections. You can connect to the
	 * detailed signal "writable-changed::x" in order to only receive
	 * callbacks when the writability of "x" changes.
	 */
	void addOnWritableChanged(void delegate(string, Settings) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("writable-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"writable-changed",
			cast(GCallback)&callBackWritableChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["writable-changed"] = 1;
		}
		onWritableChangedListeners ~= dlg;
	}
	extern(C) static void callBackWritableChanged(GSettings* settingsStruct, gchar* key, Settings settings)
	{
		foreach ( void delegate(string, Settings) dlg ; settings.onWritableChangedListeners )
		{
			dlg(Str.toString(key), settings);
		}
	}
	
	
	/**
	 * Creates a new GSettings object with a given schema.
	 * Signals on the newly created GSettings object will be dispatched
	 * via the thread-default GMainContext in effect at the time of the
	 * call to g_settings_new(). The new GSettings will hold a reference
	 * on the context. See g_main_context_push_thread_default().
	 * Since 2.26
	 * Params:
	 * schema = the name of the schema
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string schema)
	{
		// GSettings * g_settings_new (const gchar *schema);
		auto p = g_settings_new(Str.toStringz(schema));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_settings_new(Str.toStringz(schema))");
		}
		this(cast(GSettings*) p);
	}
	
	/**
	 * Creates a new GSettings object with a given schema and path.
	 * You only need to do this if you want to directly create a settings
	 * object with a schema that doesn't have a specified path of its own.
	 * That's quite rare.
	 * It is a programmer error to call this function for a schema that
	 * has an explicitly specified path.
	 * Since 2.26
	 * Params:
	 * schema = the name of the schema
	 * path = the path to use
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string schema, string path)
	{
		// GSettings * g_settings_new_with_path (const gchar *schema,  const gchar *path);
		auto p = g_settings_new_with_path(Str.toStringz(schema), Str.toStringz(path));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_settings_new_with_path(Str.toStringz(schema), Str.toStringz(path))");
		}
		this(cast(GSettings*) p);
	}
	
	/**
	 * Creates a new GSettings object with a given schema and backend.
	 * Creating settings objects with an different backend allows accessing settings
	 * from a database other than the usual one. For example, it may make
	 * sense to pass a backend corresponding to the "defaults" settings database on
	 * the system to get a settings object that modifies the system default
	 * settings instead of the settings for this user.
	 * Since 2.26
	 * Params:
	 * schema = the name of the schema
	 * backend = the GSettingsBackend to use
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string schema, SettingsBackend backend)
	{
		// GSettings * g_settings_new_with_backend (const gchar *schema,  GSettingsBackend *backend);
		auto p = g_settings_new_with_backend(Str.toStringz(schema), (backend is null) ? null : backend.getSettingsBackendStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_settings_new_with_backend(Str.toStringz(schema), (backend is null) ? null : backend.getSettingsBackendStruct())");
		}
		this(cast(GSettings*) p);
	}
	
	/**
	 * Creates a new GSettings object with a given schema, backend and
	 * path.
	 * This is a mix of g_settings_new_with_backend() and
	 * g_settings_new_with_path().
	 * Since 2.26
	 * Params:
	 * schema = the name of the schema
	 * backend = the GSettingsBackend to use
	 * path = the path to use
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string schema, SettingsBackend backend, string path)
	{
		// GSettings * g_settings_new_with_backend_and_path  (const gchar *schema,  GSettingsBackend *backend,  const gchar *path);
		auto p = g_settings_new_with_backend_and_path(Str.toStringz(schema), (backend is null) ? null : backend.getSettingsBackendStruct(), Str.toStringz(path));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_settings_new_with_backend_and_path(Str.toStringz(schema), (backend is null) ? null : backend.getSettingsBackendStruct(), Str.toStringz(path))");
		}
		this(cast(GSettings*) p);
	}
	
	/**
	 * Ensures that all pending operations for the given are complete for
	 * the default backend.
	 * Writes made to a GSettings are handled asynchronously. For this
	 * reason, it is very unlikely that the changes have it to disk by the
	 * time g_settings_set() returns.
	 * This call will block until all of the writes have made it to the
	 * backend. Since the mainloop is not running, no change notifications
	 * will be dispatched during this call (but some may be queued by the
	 * time the call is done).
	 */
	public static void sync()
	{
		// void g_settings_sync (void);
		g_settings_sync();
	}
	
	/**
	 * Gets the value that is stored in settings for key.
	 * It is a programmer error to give a key that isn't contained in the
	 * schema for settings.
	 * Since 2.26
	 * Params:
	 * key = the key to get the value for
	 * Returns: a new GVariant
	 */
	public Variant getValue(string key)
	{
		// GVariant * g_settings_get_value (GSettings *settings,  const gchar *key);
		auto p = g_settings_get_value(gSettings, Str.toStringz(key));
		if(p is null)
		{
			return null;
		}
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Sets key in settings to value.
	 * It is a programmer error to give a key that isn't contained in the
	 * schema for settings or for value to have the incorrect type, per
	 * the schema.
	 * If value is floating then this function consumes the reference.
	 * Since 2.26
	 * Params:
	 * key = the name of the key to set
	 * value = a GVariant of the correct type
	 * Returns: TRUE if setting the key succeeded, FALSE if the key was not writable
	 */
	public int setValue(string key, Variant value)
	{
		// gboolean g_settings_set_value (GSettings *settings,  const gchar *key,  GVariant *value);
		return g_settings_set_value(gSettings, Str.toStringz(key), (value is null) ? null : value.getVariantStruct());
	}
	
	/**
	 * Finds out if a key can be written or not
	 * Since 2.26
	 * Params:
	 * name = the name of a key
	 * Returns: TRUE if the key name is writable
	 */
	public int isWritable(string name)
	{
		// gboolean g_settings_is_writable (GSettings *settings,  const gchar *name);
		return g_settings_is_writable(gSettings, Str.toStringz(name));
	}
	
	/**
	 * Changes the GSettings object into 'delay-apply' mode. In this
	 * mode, changes to settings are not immediately propagated to the
	 * backend, but kept locally until g_settings_apply() is called.
	 * Since 2.26
	 */
	public void delay()
	{
		// void g_settings_delay (GSettings *settings);
		g_settings_delay(gSettings);
	}
	
	/**
	 * Applies any changes that have been made to the settings. This
	 * function does nothing unless settings is in 'delay-apply' mode;
	 * see g_settings_delay(). In the normal case settings are always
	 * applied immediately.
	 */
	public void apply()
	{
		// void g_settings_apply (GSettings *settings);
		g_settings_apply(gSettings);
	}
	
	/**
	 * Reverts all non-applied changes to the settings. This function
	 * does nothing unless settings is in 'delay-apply' mode; see
	 * g_settings_delay(). In the normal case settings are always applied
	 * immediately.
	 * Change notifications will be emitted for affected keys.
	 */
	public void revert()
	{
		// void g_settings_revert (GSettings *settings);
		g_settings_revert(gSettings);
	}
	
	/**
	 * Returns whether the GSettings object has any unapplied
	 * changes. This can only be the case if it is in 'delayed-apply' mode.
	 * Since 2.26
	 * Returns: TRUE if settings has unapplied changes
	 */
	public int getHasUnapplied()
	{
		// gboolean g_settings_get_has_unapplied (GSettings *settings);
		return g_settings_get_has_unapplied(gSettings);
	}
	
	/**
	 * Creates a 'child' settings object which has a base path of
	 * base-path/name", where
	 * base-path is the base path of settings.
	 * The schema for the child settings object must have been declared
	 * in the schema of settings using a <child> element.
	 * Since 2.26
	 * Params:
	 * name = the name of the 'child' schema
	 * Returns: a 'child' settings object
	 */
	public Settings getChild(string name)
	{
		// GSettings * g_settings_get_child (GSettings *settings,  const gchar *name);
		auto p = g_settings_get_child(gSettings, Str.toStringz(name));
		if(p is null)
		{
			return null;
		}
		return new Settings(cast(GSettings*) p);
	}
	
	/**
	 * Resets key to its default value.
	 * This call resets the key, as much as possible, to its default value.
	 * That might the value specified in the schema or the one set by the
	 * administrator.
	 * Params:
	 * key = the name of a key
	 */
	public void reset(string key)
	{
		// void g_settings_reset (GSettings *settings,  const gchar *key);
		g_settings_reset(gSettings, Str.toStringz(key));
	}
	
	/**
	 * Gets the value that is stored at key in settings.
	 * A convenience variant of g_settings_get() for booleans.
	 * It is a programmer error to give a key that isn't specified as
	 * having a boolean type in the schema for settings.
	 * Since 2.26
	 * Params:
	 * key = the key to get the value for
	 * Returns: a boolean
	 */
	public int getBoolean(string key)
	{
		// gboolean g_settings_get_boolean (GSettings *settings,  const gchar *key);
		return g_settings_get_boolean(gSettings, Str.toStringz(key));
	}
	
	/**
	 * Sets key in settings to value.
	 * A convenience variant of g_settings_set() for booleans.
	 * It is a programmer error to give a key that isn't specified as
	 * having a boolean type in the schema for settings.
	 * Since 2.26
	 * Params:
	 * key = the name of the key to set
	 * value = the value to set it to
	 * Returns: TRUE if setting the key succeeded, FALSE if the key was not writable
	 */
	public int setBoolean(string key, int value)
	{
		// gboolean g_settings_set_boolean (GSettings *settings,  const gchar *key,  gboolean value);
		return g_settings_set_boolean(gSettings, Str.toStringz(key), value);
	}
	
	/**
	 * Gets the value that is stored at key in settings.
	 * A convenience variant of g_settings_get() for 32-bit integers.
	 * It is a programmer error to give a key that isn't specified as
	 * having a int32 type in the schema for settings.
	 * Since 2.26
	 * Params:
	 * key = the key to get the value for
	 * Returns: an integer
	 */
	public int getInt(string key)
	{
		// gint g_settings_get_int (GSettings *settings,  const gchar *key);
		return g_settings_get_int(gSettings, Str.toStringz(key));
	}
	
	/**
	 * Sets key in settings to value.
	 * A convenience variant of g_settings_set() for 32-bit integers.
	 * It is a programmer error to give a key that isn't specified as
	 * having a int32 type in the schema for settings.
	 * Since 2.26
	 * Params:
	 * key = the name of the key to set
	 * value = the value to set it to
	 * Returns: TRUE if setting the key succeeded, FALSE if the key was not writable
	 */
	public int setInt(string key, int value)
	{
		// gboolean g_settings_set_int (GSettings *settings,  const gchar *key,  gint value);
		return g_settings_set_int(gSettings, Str.toStringz(key), value);
	}
	
	/**
	 * Gets the value that is stored at key in settings.
	 * A convenience variant of g_settings_get() for doubles.
	 * It is a programmer error to give a key that isn't specified as
	 * having a 'double' type in the schema for settings.
	 * Since 2.26
	 * Params:
	 * key = the key to get the value for
	 * Returns: a double
	 */
	public double getDouble(string key)
	{
		// gdouble g_settings_get_double (GSettings *settings,  const gchar *key);
		return g_settings_get_double(gSettings, Str.toStringz(key));
	}
	
	/**
	 * Sets key in settings to value.
	 * A convenience variant of g_settings_set() for doubles.
	 * It is a programmer error to give a key that isn't specified as
	 * having a 'double' type in the schema for settings.
	 * Since 2.26
	 * Params:
	 * key = the name of the key to set
	 * value = the value to set it to
	 * Returns: TRUE if setting the key succeeded, FALSE if the key was not writable
	 */
	public int setDouble(string key, double value)
	{
		// gboolean g_settings_set_double (GSettings *settings,  const gchar *key,  gdouble value);
		return g_settings_set_double(gSettings, Str.toStringz(key), value);
	}
	
	/**
	 * Gets the value that is stored at key in settings.
	 * A convenience variant of g_settings_get() for strings.
	 * It is a programmer error to give a key that isn't specified as
	 * having a string type in the schema for settings.
	 * Since 2.26
	 * Params:
	 * key = the key to get the value for
	 * Returns: a newly-allocated string
	 */
	public string getString(string key)
	{
		// gchar * g_settings_get_string (GSettings *settings,  const gchar *key);
		return Str.toString(g_settings_get_string(gSettings, Str.toStringz(key)));
	}
	
	/**
	 * Sets key in settings to value.
	 * A convenience variant of g_settings_set() for strings.
	 * It is a programmer error to give a key that isn't specified as
	 * having a string type in the schema for settings.
	 * Since 2.26
	 * Params:
	 * key = the name of the key to set
	 * value = the value to set it to
	 * Returns: TRUE if setting the key succeeded, FALSE if the key was not writable
	 */
	public int setString(string key, string value)
	{
		// gboolean g_settings_set_string (GSettings *settings,  const gchar *key,  const gchar *value);
		return g_settings_set_string(gSettings, Str.toStringz(key), Str.toStringz(value));
	}
	
	/**
	 * Gets the value that is stored at key in settings.
	 * A convenience variant of g_settings_get() for string arrays.
	 * It is a programmer error to give a key that isn't specified as
	 * having an array of strings type in the schema for settings.
	 * Since 2.26
	 * Params:
	 * key = the key to get the value for
	 * Returns: a newly-allocated, NULL-terminated array of strings
	 */
	public string[] getStrv(string key)
	{
		// gchar ** g_settings_get_strv (GSettings *settings,  const gchar *key);
		return Str.toStringArray(g_settings_get_strv(gSettings, Str.toStringz(key)));
	}
	
	/**
	 * Sets key in settings to value.
	 * A convenience variant of g_settings_set() for string arrays. If
	 * value is NULL, then key is set to be the empty array.
	 * It is a programmer error to give a key that isn't specified as
	 * having an array of strings type in the schema for settings.
	 * Since 2.26
	 * Params:
	 * key = the name of the key to set
	 * value = the value to set it to, or NULL. [allow-none]
	 * Returns: TRUE if setting the key succeeded, FALSE if the key was not writable
	 */
	public int setStrv(string key, string[] value)
	{
		// gboolean g_settings_set_strv (GSettings *settings,  const gchar *key,  const gchar *const *value);
		return g_settings_set_strv(gSettings, Str.toStringz(key), Str.toStringzArray(value));
	}
	
	/**
	 * Gets the value that is stored in settings for key and converts it
	 * to the enum value that it represents.
	 * In order to use this function the type of the value must be a string
	 * and it must be marked in the schema file as an enumerated type.
	 * It is a programmer error to give a key that isn't contained in the
	 * schema for settings or is not marked as an enumerated type.
	 * If the value stored in the configuration database is not a valid
	 * value for the enumerated type then this function will return the
	 * default value.
	 * Since 2.26
	 * Params:
	 * key = the key to get the value for
	 * Returns: the enum value
	 */
	public int getEnum(string key)
	{
		// gint g_settings_get_enum (GSettings *settings,  const gchar *key);
		return g_settings_get_enum(gSettings, Str.toStringz(key));
	}
	
	/**
	 * Looks up the enumerated type nick for value and writes it to key,
	 * within settings.
	 * It is a programmer error to give a key that isn't contained in the
	 * schema for settings or is not marked as an enumerated type, or for
	 * value not to be a valid value for the named type.
	 * After performing the write, accessing key directly with
	 * g_settings_get_string() will return the 'nick' associated with
	 * value.
	 * Params:
	 * key = a key, within settings
	 * value = an enumerated value
	 * Returns: TRUE, if the set succeeds
	 */
	public int setEnum(string key, int value)
	{
		// gboolean g_settings_set_enum (GSettings *settings,  const gchar *key,  gint value);
		return g_settings_set_enum(gSettings, Str.toStringz(key), value);
	}
	
	/**
	 * Gets the value that is stored in settings for key and converts it
	 * to the flags value that it represents.
	 * In order to use this function the type of the value must be an array
	 * of strings and it must be marked in the schema file as an flags type.
	 * It is a programmer error to give a key that isn't contained in the
	 * schema for settings or is not marked as a flags type.
	 * If the value stored in the configuration database is not a valid
	 * value for the flags type then this function will return the default
	 * value.
	 * Since 2.26
	 * Params:
	 * key = the key to get the value for
	 * Returns: the flags value
	 */
	public uint getFlags(string key)
	{
		// guint g_settings_get_flags (GSettings *settings,  const gchar *key);
		return g_settings_get_flags(gSettings, Str.toStringz(key));
	}
	
	/**
	 * Looks up the flags type nicks for the bits specified by value, puts
	 * them in an array of strings and writes the array to key, withing
	 * settings.
	 * It is a programmer error to give a key that isn't contained in the
	 * schema for settings or is not marked as a flags type, or for value
	 * to contain any bits that are not value for the named type.
	 * After performing the write, accessing key directly with
	 * g_settings_get_strv() will return an array of 'nicks'; one for each
	 * bit in value.
	 * Params:
	 * key = a key, within settings
	 * value = a flags value
	 * Returns: TRUE, if the set succeeds
	 */
	public int setFlags(string key, uint value)
	{
		// gboolean g_settings_set_flags (GSettings *settings,  const gchar *key,  guint value);
		return g_settings_set_flags(gSettings, Str.toStringz(key), value);
	}
	
	/**
	 * Gets the value that is stored at key in settings, subject to
	 * application-level validation/mapping.
	 * You should use this function when the application needs to perform
	 * some processing on the value of the key (for example, parsing). The
	 * mapping function performs that processing. If the function
	 * indicates that the processing was unsuccessful (due to a parse error,
	 * for example) then the mapping is tried again with another value.
	 * This allows a robust 'fall back to defaults' behaviour to be
	 * implemented somewhat automatically.
	 * The first value that is tried is the user's setting for the key. If
	 * the mapping function fails to map this value, other values may be
	 * tried in an unspecified order (system or site defaults, translated
	 * schema default values, untranslated schema default values, etc).
	 * If the mapping function fails for all possible values, one additional
	 * attempt is made: the mapping function is called with a NULL value.
	 * If the mapping function still indicates failure at this point then
	 * the application will be aborted.
	 * The result parameter for the mapping function is pointed to a
	 * gpointer which is initially set to NULL. The same pointer is given
	 * to each invocation of mapping. The final value of that gpointer is
	 * what is returned by this function. NULL is valid; it is returned
	 * just as any other value would be.
	 * Params:
	 * key = the key to get the value for
	 * mapping = the function to map the value in the settings database to
	 *  the value used by the application
	 * userData = user data for mapping
	 * Returns: the result, which may be NULL
	 */
	public void* getMapped(string key, GSettingsGetMapping mapping, void* userData)
	{
		// gpointer g_settings_get_mapped (GSettings *settings,  const gchar *key,  GSettingsGetMapping mapping,  gpointer user_data);
		return g_settings_get_mapped(gSettings, Str.toStringz(key), mapping, userData);
	}
	
	/**
	 * Create a binding between the key in the settings object
	 * and the property property of object.
	 * The binding uses the default GIO mapping functions to map
	 * between the settings and property values. These functions
	 * handle booleans, numeric types and string types in a
	 * straightforward way. Use g_settings_bind_with_mapping() if
	 * you need a custom mapping, or map between types that are not
	 * supported by the default mapping functions.
	 * Unless the flags include G_SETTINGS_BIND_NO_SENSITIVITY, this
	 * function also establishes a binding between the writability of
	 * key and the "sensitive" property of object (if object has
	 * a boolean property by that name). See g_settings_bind_writable()
	 * for more details about writable bindings.
	 * Note that the lifecycle of the binding is tied to the object,
	 * and that you can have only one binding per object property.
	 * If you bind the same property twice on the same object, the second
	 * binding overrides the first one.
	 * Since 2.26
	 * Params:
	 * key = the key to bind
	 * object = a GObject
	 * property = the name of the property to bind
	 * flags = flags for the binding
	 */
	public void bind(string key, void* object, string property, GSettingsBindFlags flags)
	{
		// void g_settings_bind (GSettings *settings,  const gchar *key,  gpointer object,  const gchar *property,  GSettingsBindFlags flags);
		g_settings_bind(gSettings, Str.toStringz(key), object, Str.toStringz(property), flags);
	}
	
	/**
	 * Create a binding between the key in the settings object
	 * and the property property of object.
	 * The binding uses the provided mapping functions to map between
	 * settings and property values.
	 * Note that the lifecycle of the binding is tied to the object,
	 * and that you can have only one binding per object property.
	 * If you bind the same property twice on the same object, the second
	 * binding overrides the first one.
	 * Since 2.26
	 * Params:
	 * key = the key to bind
	 * object = a GObject
	 * property = the name of the property to bind
	 * flags = flags for the binding
	 * getMapping = a function that gets called to convert values
	 *  from settings to object, or NULL to use the default GIO mapping
	 * setMapping = a function that gets called to convert values
	 *  from object to settings, or NULL to use the default GIO mapping
	 * userData = data that gets passed to get_mapping and set_mapping
	 * destroy = GDestroyNotify function for user_data
	 */
	public void bindWithMapping(string key, void* object, string property, GSettingsBindFlags flags, GSettingsBindGetMapping getMapping, GSettingsBindSetMapping setMapping, void* userData, GDestroyNotify destroy)
	{
		// void g_settings_bind_with_mapping (GSettings *settings,  const gchar *key,  gpointer object,  const gchar *property,  GSettingsBindFlags flags,  GSettingsBindGetMapping get_mapping,  GSettingsBindSetMapping set_mapping,  gpointer user_data,  GDestroyNotify destroy);
		g_settings_bind_with_mapping(gSettings, Str.toStringz(key), object, Str.toStringz(property), flags, getMapping, setMapping, userData, destroy);
	}
	
	/**
	 * Create a binding between the writability of key in the
	 * settings object and the property property of object.
	 * The property must be boolean; "sensitive" or "visible"
	 * properties of widgets are the most likely candidates.
	 * Writable bindings are always uni-directional; changes of the
	 * writability of the setting will be propagated to the object
	 * property, not the other way.
	 * When the inverted argument is TRUE, the binding inverts the
	 * value as it passes from the setting to the object, i.e. property
	 * will be set to TRUE if the key is not
	 * writable.
	 * Note that the lifecycle of the binding is tied to the object,
	 * and that you can have only one binding per object property.
	 * If you bind the same property twice on the same object, the second
	 * binding overrides the first one.
	 * Since 2.26
	 * Params:
	 * key = the key to bind
	 * object = a GObject
	 * property = the name of a boolean property to bind
	 * inverted = whether to 'invert' the value
	 */
	public void bindWritable(string key, void* object, string property, int inverted)
	{
		// void g_settings_bind_writable (GSettings *settings,  const gchar *key,  gpointer object,  const gchar *property,  gboolean inverted);
		g_settings_bind_writable(gSettings, Str.toStringz(key), object, Str.toStringz(property), inverted);
	}
	
	/**
	 * Removes an existing binding for property on object.
	 * Note that bindings are automatically removed when the
	 * object is finalized, so it is rarely necessary to call this
	 * function.
	 * Since 2.26
	 * Params:
	 * object = the object
	 * property = the property whose binding is removed
	 */
	public static void unbind(void* object, string property)
	{
		// void g_settings_unbind (gpointer object,  const gchar *property);
		g_settings_unbind(object, Str.toStringz(property));
	}
}
