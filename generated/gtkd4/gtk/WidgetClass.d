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


module gtk.WidgetClass;

private import glib.Bytes;
private import glib.Str;
private import glib.VariantType;
private import gtk.BuilderScopeIF;
private import gtk.c.functions;
public  import gtk.c.types;


/** */
public class WidgetClass
{
	/** the main Gtk struct */
	protected GtkWidgetClass* gtkWidgetClass;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkWidgetClass* getWidgetClassStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkWidgetClass;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkWidgetClass;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkWidgetClass* gtkWidgetClass, bool ownedRef = false)
	{
		this.gtkWidgetClass = gtkWidgetClass;
		this.ownedRef = ownedRef;
	}


	/**
	 * Declares a @callback_symbol to handle @callback_name from the template XML
	 * defined for @widget_type. This function is not supported after
	 * gtk_widget_class_set_template_scope() has been used on @widget_class.
	 * See gtk_builder_cscope_add_callback_symbol().
	 *
	 * Note that this must be called from a composite widget classes class
	 * initializer after calling gtk_widget_class_set_template().
	 *
	 * Params:
	 *     callbackName = The name of the callback as expected in the template XML
	 *     callbackSymbol = The callback symbol
	 */
	public void bindTemplateCallbackFull(string callbackName, GCallback callbackSymbol)
	{
		gtk_widget_class_bind_template_callback_full(gtkWidgetClass, Str.toStringz(callbackName), callbackSymbol);
	}

	/**
	 * Automatically assign an object declared in the class template XML to be set to a location
	 * on a freshly built instance’s private data, or alternatively accessible via gtk_widget_get_template_child().
	 *
	 * The struct can point either into the public instance, then you should use G_STRUCT_OFFSET(WidgetType, member)
	 * for @struct_offset,  or in the private struct, then you should use G_PRIVATE_OFFSET(WidgetType, member).
	 *
	 * An explicit strong reference will be held automatically for the duration of your
	 * instance’s life cycle, it will be released automatically when #GObjectClass.dispose() runs
	 * on your instance and if a @struct_offset that is != 0 is specified, then the automatic location
	 * in your instance public or private data will be set to %NULL. You can however access an automated child
	 * pointer the first time your classes #GObjectClass.dispose() runs, or alternatively in
	 * #GtkWidgetClass.destroy().
	 *
	 * If @internal_child is specified, #GtkBuildableIface.get_internal_child() will be automatically
	 * implemented by the #GtkWidget class so there is no need to implement it manually.
	 *
	 * The wrapper macros gtk_widget_class_bind_template_child(), gtk_widget_class_bind_template_child_internal(),
	 * gtk_widget_class_bind_template_child_private() and gtk_widget_class_bind_template_child_internal_private()
	 * might be more convenient to use.
	 *
	 * Note that this must be called from a composite widget classes class
	 * initializer after calling gtk_widget_class_set_template().
	 *
	 * Params:
	 *     name = The “id” of the child defined in the template XML
	 *     internalChild = Whether the child should be accessible as an “internal-child”
	 *         when this class is used in GtkBuilder XML
	 *     structOffset = The structure offset into the composite widget’s instance public or private structure
	 *         where the automated child pointer should be set, or 0 to not assign the pointer.
	 */
	public void bindTemplateChildFull(string name, bool internalChild, ptrdiff_t structOffset)
	{
		gtk_widget_class_bind_template_child_full(gtkWidgetClass, Str.toStringz(name), internalChild, structOffset);
	}

	/**
	 * Gets the name used by this class for matching in CSS code. See
	 * gtk_widget_class_set_css_name() for details.
	 *
	 * Returns: the CSS name of the given class
	 */
	public string getCssName()
	{
		return Str.toString(gtk_widget_class_get_css_name(gtkWidgetClass));
	}

	/**
	 * Retrieves the type of the #GtkLayoutManager used by the #GtkWidget class.
	 *
	 * See also: gtk_widget_class_set_layout_manager_type()
	 *
	 * Returns: a #GtkLayoutManager subclass, or %G_TYPE_INVALID
	 */
	public GType getLayoutManagerType()
	{
		return gtk_widget_class_get_layout_manager_type(gtkWidgetClass);
	}

	/** */
	public void installAction(string actionName, string parameterType, GtkWidgetActionActivateFunc activate)
	{
		gtk_widget_class_install_action(gtkWidgetClass, Str.toStringz(actionName), Str.toStringz(parameterType), activate);
	}

	/**
	 * Installs an action called @action_name on @widget_class and binds its
	 * state to the value of the @property_name property.
	 *
	 * This function will perform a few santity checks on the property selected via
	 * @property_name. Namely, the property must exist, must be readable, writable and
	 * must not be construct-only. There are also certain restrictions on the type of
	 * the given property. If any of these conditions are not met, a critical
	 * warning will be printed and no action will be added.
	 *
	 * Params:
	 *     actionName = name of the action
	 *     propertyName = name of the property in instances of @widget_class
	 *         or any parent class.
	 */
	public void installPropertyAction(string actionName, string propertyName)
	{
		gtk_widget_class_install_property_action(gtkWidgetClass, Str.toStringz(actionName), Str.toStringz(propertyName));
	}

	/**
	 * Queries the actions that have been installed for
	 * a widget class using gtk_widget_class_install_action()
	 * during class initialization.
	 *
	 * Note that this function will also return actions defined
	 * by parent classes. You can identify those by looking
	 * at @owner.
	 *
	 * Params:
	 *     index = position of the action to query
	 *     owner = return location for the type where the action was defined
	 *     actionName = return location for the action name
	 *     parameterType = return location for the parameter type
	 *     propertyName = return location for the property name
	 *
	 * Returns: %TRUE if the action was found,
	 *     %FALSE if @index_ is out of range
	 */
	public bool queryAction(uint index, out GType owner, out string actionName, out VariantType parameterType, out string propertyName)
	{
		char* outactionName = null;
		GVariantType* outparameterType = null;
		char* outpropertyName = null;

		auto __p = gtk_widget_class_query_action(gtkWidgetClass, index, &owner, &outactionName, &outparameterType, &outpropertyName) != 0;

		actionName = Str.toString(outactionName);
		parameterType = new VariantType(outparameterType);
		propertyName = Str.toString(outpropertyName);

		return __p;
	}

	/**
	 * Sets the default #AtkRole to be set on accessibles created for
	 * widgets of @widget_class. Accessibles may decide to not honor this
	 * setting if their role reporting is more refined. Calls to
	 * gtk_widget_class_set_accessible_type() will reset this value.
	 *
	 * In cases where you want more fine-grained control over the role of
	 * accessibles created for @widget_class, you should provide your own
	 * accessible type and use gtk_widget_class_set_accessible_type()
	 * instead.
	 *
	 * If @role is #ATK_ROLE_INVALID, the default role will not be changed
	 * and the accessible’s default role will be used instead.
	 *
	 * This function should only be called from class init functions of widgets.
	 *
	 * Params:
	 *     role = The role to use for accessibles created for @widget_class
	 */
	public void setAccessibleRole(AtkRole role)
	{
		gtk_widget_class_set_accessible_role(gtkWidgetClass, role);
	}

	/**
	 * Sets the type to be used for creating accessibles for widgets of
	 * @widget_class. The given @type must be a subtype of the type used for
	 * accessibles of the parent class.
	 *
	 * This function should only be called from class init functions of widgets.
	 *
	 * Params:
	 *     type = The object type that implements the accessible for @widget_class
	 */
	public void setAccessibleType(GType type)
	{
		gtk_widget_class_set_accessible_type(gtkWidgetClass, type);
	}

	/**
	 * Sets the name to be used for CSS matching of widgets.
	 *
	 * If this function is not called for a given class, the name
	 * of the parent class is used.
	 *
	 * Params:
	 *     name = name to use
	 */
	public void setCssName(string name)
	{
		gtk_widget_class_set_css_name(gtkWidgetClass, Str.toStringz(name));
	}

	/**
	 * Sets the type to be used for creating layout managers for widgets of
	 * @widget_class. The given @type must be a subtype of #GtkLayoutManager.
	 *
	 * This function should only be called from class init functions of widgets.
	 *
	 * Params:
	 *     type = The object type that implements the #GtkLayoutManager for @widget_class
	 */
	public void setLayoutManagerType(GType type)
	{
		gtk_widget_class_set_layout_manager_type(gtkWidgetClass, type);
	}

	/**
	 * This should be called at class initialization time to specify
	 * the GtkBuilder XML to be used to extend a widget.
	 *
	 * For convenience, gtk_widget_class_set_template_from_resource() is also provided.
	 *
	 * Note that any class that installs templates must call gtk_widget_init_template()
	 * in the widget’s instance initializer.
	 *
	 * Params:
	 *     templateBytes = A #GBytes holding the #GtkBuilder XML
	 */
	public void setTemplate(Bytes templateBytes)
	{
		gtk_widget_class_set_template(gtkWidgetClass, (templateBytes is null) ? null : templateBytes.getBytesStruct());
	}

	/**
	 * A convenience function to call gtk_widget_class_set_template().
	 *
	 * Note that any class that installs templates must call gtk_widget_init_template()
	 * in the widget’s instance initializer.
	 *
	 * Params:
	 *     resourceName = The name of the resource to load the template from
	 */
	public void setTemplateFromResource(string resourceName)
	{
		gtk_widget_class_set_template_from_resource(gtkWidgetClass, Str.toStringz(resourceName));
	}

	/**
	 * For use in language bindings, this will override the default #GtkBuilderScope to be
	 * used when parsing GtkBuilder XML from this class’s template data.
	 *
	 * Note that this must be called from a composite widget classes class
	 * initializer after calling gtk_widget_class_set_template().
	 *
	 * Params:
	 *     scope_ = The #GtkBuilderScope to use when loading the class template
	 */
	public void setTemplateScope(BuilderScopeIF scope_)
	{
		gtk_widget_class_set_template_scope(gtkWidgetClass, (scope_ is null) ? null : scope_.getBuilderScopeStruct());
	}
}
