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
 * inFile  = GtkBuilder.html
 * outPack = gtk
 * outFile = Builder
 * strct   = GtkBuilder
 * realStrct=
 * ctorStrct=
 * clss    = Builder
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_builder_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * 	- glib.ListSG
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


private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Value;
private import glib.ListSG;



private import gobject.ObjectG;

/**
 * Description
 * A GtkBuilder is an auxiliary object that reads textual descriptions
 * of a user interface and instantiates the described objects. To pass a
 * description to a GtkBuilder, call gtk_builder_add_from_file() or
 * gtk_builder_add_from_string(). These functions can be called multiple
 * times; the builder merges the content of all descriptions.
 * A GtkBuilder holds a reference to all objects that it has constructed
 * and drops these references when it is finalized. This finalization can
 * cause the destruction of non-widget objects or widgets which are not
 * contained in a toplevel window. For toplevel windows constructed by a
 * builder, it is the responsibility of the user to call gtk_widget_destroy()
 * to get rid of them and all the widgets they contain.
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
 * The function gtk_builder_connect_signals() and variants thereof can be
 * used to connect handlers to the named signals in the description.
 * GtkBuilder UI Definitions
 * GtkBuilder parses textual descriptions of user interfaces which
 * are specified in an XML format which can be roughly described
 * by the DTD below. We refer to these descriptions as
 * GtkBuilder UI definitions or just
 * UI definitions if the context is clear.
 * Do not confuse GtkBuilder UI Definitions with
 * GtkUIManager UI Definitions,
 * which are more limited in scope.
 * <!ELEMENT interface object* >
 * <!ELEMENT object (property|signal|child|ANY)* >
 * <!ELEMENT property PCDATA >
 * <!ELEMENT signal EMPTY >
 * <!ELEMENT child (object|ANY*) >
 * <!ATTLIST interface domain 	 #IMPLIED >
 * <!ATTLIST object id 	 #REQUIRED
 *  class 	 #REQUIRED
 *  type-func 	 #IMPLIED
 *  constructor 	 #IMPLIED >
 * <!ATTLIST property name 	 #REQUIRED
 *  translatable 	 #IMPLIED
 *  comments #IMPLIED
 *  context #IMPLIED >
 * <!ATTLIST signal name 	 #REQUIRED
 *  handler 	 #REQUIRED
 *  after 	 #IMPLIED
 *  swapped 	 #IMPLIED
 *  object 	 #IMPLIED
 *  last_modification_time #IMPLIED >
 * <!ATTLIST child type 	 #IMPLIED
 *  internal-child 	 #IMPLIED >
 * The toplevel element is <interface>.
 * It optionally takes a "domain" attribute, which will make
 * the builder look for translated strings using dgettext() in the
 * domain specified. This can also be done by calling
 * gtk_builder_set_translation_domain() on the builder.
 * Objects are described by <object> elements, which can
 * contain <property> elements to set properties, <signal>
 * elements which connect signals to handlers, and <child>
 * elements, which describe child objects (most often widgets
 * inside a container, but also e.g. actions in an action group,
 * or columns in a tree model). A <child> element contains
 * an <object> element which describes the child object.
 * Typically, the specific kind of object represented by an
 * <object> element is specified by the "class" attribute.
 * If the type has not been loaded yet, GTK+ tries to find the
 * _get_type() from the class name by applying
 * heuristics. This works in most cases, but if necessary, it is
 * possible to specify the name of the _get_type()
 * explictly with the "type-func" attribute. As a special case,
 * GtkBuilder allows to use an object that has been constructed
 * by a GtkUIManager in another part of the UI definition by
 * specifying the id of the GtkUIManager in the "constructor"
 * attribute and the name of the object in the "id" attribute.
 * Objects must be given a name with the "id" attribute, which
 * allows the application to retrieve them from the builder with
 * gtk_builder_get_object(). An id is also necessary to use the
 * object as property value in other parts of the UI definition.
 * Setting properties of objects is pretty straightforward with
 * the <property> element: the "name" attribute specifies
 * the name of the property, and the content of the element
 * specifies the value. If the "translatable" attribute is
 * set to a true value, GTK+ uses gettext() (or dgettext() if
 * the builder has a translation domain set) to find a translation
 * for the value. This happens before the value is parsed, so
 * it can be used for properties of any type, but it is probably
 * most useful for string properties. It is also possible to
 * specify a context to disambiguate short strings, and comments
 * which may help the translators.
 * GtkBuilder can parse textual representations for the most
 * common property types: characters, strings, integers, floating-point
 * numbers, booleans (strings like "TRUE", "t", "yes", "y", "1" are
 * interpreted as TRUE, strings like "FALSE, "f", "no", "n", "0" are
 * interpreted as FALSE), enumerations (can be specified by their
 * name, nick or integer value), flags (can be specified by their name,
 * nick, integer value, optionally combined with "|", e.g.
 * "GTK_VISIBLE|GTK_REALIZED") and colors (in a format understood by
 * gdk_color_parse()). Objects can be referred to by their name.
 * Pixbufs can be specified as a filename of an image file to load.
 * In general, GtkBuilder allows forward references to objects
 * an object doesn't have to constructed before it can be referred to.
 * The exception to this rule is that an object has to be constructed
 * before it can be used as the value of a construct-only property.
 * Signal handlers are set up with the <signal> element.
 * The "name" attribute specifies the name of the signal, and the
 * "handler" attribute specifies the function to connect to the signal.
 * By default, GTK+ tries to find the handler using g_module_symbol(),
 * but this can be changed by passing a custom GtkBuilderConnectFunc
 * to gtk_builder_connect_signals_full(). The remaining attributes,
 * "after", "swapped" and "object", have the same meaning as the
 * corresponding parameters of the g_signal_connect_object() or
 * g_signal_connect_data() functions. A "last_modification_time" attribute
 * is also allowed, but it does not have a meaning to the builder.
 * Sometimes it is necessary to refer to widgets which have implicitly
 * been constructed by GTK+ as part of a composite widget, to set
 * properties on them or to add further children (e.g. the vbox
 * of a GtkDialog). This can be achieved by setting the "internal-child"
 * propery of the <child> element to a true value. Note that
 * GtkBuilder still requires an <object> element for the internal
 * child, even if it has already been constructed.
 * A number of widgets have different places where a child can be
 * added (e.g. tabs vs. page content in notebooks). This can be reflected
 * in a UI definition by specifying the "type" attribute on a <child>
 * The possible values for the "type" attribute are described in
 * the sections describing the widget-specific portions of UI definitions.
 * Example50.A GtkBuilder UI Definition
 * <interface>
 *  <object class="GtkDialog" id="dialog1">
 *  <child internal-child="vbox">
 *  <object class="GtkVBox" id="vbox1">
 *  <property name="border-width">10</property>
 *  <child internal-child="action_area">
 *  <object class="GtkHButtonBox" id="hbuttonbox1">
 *  <property name="border-width">20</property>
 *  <child>
 *  <object class="GtkButton" id="ok_button">
 *  <property name="label">gtk-ok</property>
 *  <property name="use-stock">TRUE</property>
 *  <signal name="clicked" handler="ok_button_clicked"/>
 *  </object>
 *  </child>
 *  </object>
 *  </child>
 *  </object>
 *  </child>
 *  </object>
 * </interface>
 * Beyond this general structure, several object classes define
 * their own XML DTD fragments for filling in the ANY placeholders
 * in the DTD above. Note that a custom element in a <child>
 * element gets parsed by the custom tag handler of the parent
 * object, while a custom element in an <object> element
 * gets parsed by the custom tag handler of the object.
 * These XML fragments are explained in the documentation of the
 * respective objects, see
 * GtkWidget,
 * GtkContainer,
 * GtkDialog,
 * GtkCellLayout,
 * GtkColorSelectionDialog,
 * GtkFontSelectionDialog,
 * GtkComboBoxEntry,
 * GtkExpander,
 * GtkFrame,
 * GtkListStore,
 * GtkTreeStore,
 * GtkNotebook,
 * GtkSizeGroup,
 * GtkTreeView,
 * GtkUIManager,
 * GtkActionGroup.
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
		if(gtkBuilder is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkBuilder passed to constructor.");
			else return;
		}
		super(cast(GObject*)gtkBuilder);
		this.gtkBuilder = gtkBuilder;
	}
	
	/**
	 */
	
	/**
	 * Creates a new builder object.
	 * Since 2.12
	 */
	public this ()
	{
		// GtkBuilder* gtk_builder_new (void);
		auto p = gtk_builder_new();
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkBuilder*) p);
	}
	
	/**
	 * Parses a file containing a GtkBuilder
	 * UI definition and merges it with the current contents of builder.
	 * Since 2.12
	 * Params:
	 * filename =  the name of the file to parse
	 * error =  return location for an error, or NULL
	 * Returns: A positive value on success, 0 if an error occurred
	 */
	public uint addFromFile(string filename, GError** error)
	{
		// guint gtk_builder_add_from_file (GtkBuilder *builder,  const gchar *filename,  GError **error);
		return gtk_builder_add_from_file(gtkBuilder, Str.toStringz(filename), error);
	}
	
	/**
	 * Parses a string containing a GtkBuilder
	 * UI definition and merges it with the current contents of builder.
	 * Since 2.12
	 * Params:
	 * buffer =  the string to parse
	 * length =  the length of buffer (may be -1 if buffer is nul-terminated)
	 * error =  return location for an error, or NULL
	 * Returns: A positive value on success, 0 if an error occurred
	 */
	public uint addFromString(string buffer, uint length, GError** error)
	{
		// guint gtk_builder_add_from_string (GtkBuilder *builder,  const gchar *buffer,  gsize length,  GError **error);
		return gtk_builder_add_from_string(gtkBuilder, Str.toStringz(buffer), length, error);
	}
	
	/**
	 * Gets the object named name. Note that this function does not
	 * increment the reference count of the returned object.
	 * Since 2.12
	 * Params:
	 * name =  name of object to get
	 * Returns: the object named name or NULL if it could not be  found in the object tree.
	 */
	public ObjectG getObject(string name)
	{
		// GObject* gtk_builder_get_object (GtkBuilder *builder,  const gchar *name);
		auto p = gtk_builder_get_object(gtkBuilder, Str.toStringz(name));
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new ObjectG(cast(GObject*) p);
	}
	
	/**
	 * Gets all objects that have been constructed by builder. Note that
	 * this function does not increment the reference counts of the returned
	 * objects.
	 * Since 2.12
	 * Returns: a newly-allocated GSList containing all the objects constructed by the GtkBuilder instance. It should be freed by g_slist_free()
	 */
	public ListSG getObjects()
	{
		// GSList* gtk_builder_get_objects (GtkBuilder *builder);
		auto p = gtk_builder_get_objects(gtkBuilder);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * This method is a simpler variation of gtk_builder_connect_signals_full().
	 * It uses GModule's introspective features (by opening the module NULL)
	 * to look at the application's symbol table. From here it tries to match
	 * the signal handler names given in the interface description with
	 * symbols in the application and connects the signals.
	 * Note that this function will not work correctly if GModule is not
	 * supported on the platform.
	 * Since 2.12
	 * Params:
	 * userData =  a pointer to a structure sent in as user data to all signals
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
	 * func =  the function used to connect the signals
	 * userData =  arbitrary data that will be passed to the connection function
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
	 * domain =  the translation domain or NULL
	 */
	public void setTranslationDomain(string domain)
	{
		// void gtk_builder_set_translation_domain (GtkBuilder *builder,  const gchar *domain);
		gtk_builder_set_translation_domain(gtkBuilder, Str.toStringz(domain));
	}
	
	/**
	 * Gets the translation domain of builder.
	 * Since 2.12
	 * Returns: the translation domain. This string is ownedby the builder object and must not be modified or freed.
	 */
	public string getTranslationDomain()
	{
		// const gchar* gtk_builder_get_translation_domain (GtkBuilder *builder);
		return Str.toString(gtk_builder_get_translation_domain(gtkBuilder));
	}
	
	/**
	 * Looks up a type by name, using the virtual function that
	 * GtkBuilder has for that purpose. This is mainly used when
	 * implementing the GtkBuildable interface on a type.
	 * Since 2.12
	 * Params:
	 * typeName =  type name to lookup
	 * Returns: the GType found for type_name or G_TYPE_INVALID  if no type was found
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
	 * ulong, enum, flags, float, double, string, GdkColor and
	 * GtkAdjustment type values. Support for GtkWidget type values is
	 * still to come.
	 * Since 2.12
	 * Params:
	 * pspec =  the GParamSpec for the property
	 * string =  the string representation of the value
	 * value =  the GValue to store the result in
	 * error =  return location for an error, or NULL
	 * Returns: TRUE on success
	 */
	public int valueFromString(ParamSpec pspec, string string, Value value, GError** error)
	{
		// gboolean gtk_builder_value_from_string (GtkBuilder *builder,  GParamSpec *pspec,  const gchar *string,  GValue *value,  GError **error);
		return gtk_builder_value_from_string(gtkBuilder, (pspec is null) ? null : pspec.getParamSpecStruct(), Str.toStringz(string), (value is null) ? null : value.getValueStruct(), error);
	}
	
	/**
	 * Like gtk_builder_value_from_string(), this function demarshals
	 * a value from a string, but takes a GType instead of GParamSpec.
	 * This function calls g_value_init() on the value argument, so it
	 * need not be initialised beforehand.
	 * Since 2.12
	 * Params:
	 * type =  the GType of the value
	 * string =  the string representation of the value
	 * value =  the GValue to store the result in
	 * error =  return location for an error, or NULL
	 * Returns: TRUE on success
	 */
	public int valueFromStringType(GType type, string string, Value value, GError** error)
	{
		// gboolean gtk_builder_value_from_string_type (GtkBuilder *builder,  GType type,  const gchar *string,  GValue *value,  GError **error);
		return gtk_builder_value_from_string_type(gtkBuilder, type, Str.toStringz(string), (value is null) ? null : value.getValueStruct(), error);
	}
}
