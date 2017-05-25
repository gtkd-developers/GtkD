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


module gtk.ActivatableT;

public  import gobject.ObjectG;
public  import gtk.Action;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * Activatable widgets can be connected to a #GtkAction and reflects
 * the state of its action. A #GtkActivatable can also provide feedback
 * through its action, as they are responsible for activating their
 * related actions.
 * 
 * # Implementing GtkActivatable
 * 
 * When extending a class that is already #GtkActivatable; it is only
 * necessary to implement the #GtkActivatable->sync_action_properties()
 * and #GtkActivatable->update() methods and chain up to the parent
 * implementation, however when introducing
 * a new #GtkActivatable class; the #GtkActivatable:related-action and
 * #GtkActivatable:use-action-appearance properties need to be handled by
 * the implementor. Handling these properties is mostly a matter of installing
 * the action pointer and boolean flag on your instance, and calling
 * gtk_activatable_do_set_related_action() and
 * gtk_activatable_sync_action_properties() at the appropriate times.
 * 
 * ## A class fragment implementing #GtkActivatable
 * 
 * |[<!-- language="C" -->
 * 
 * enum {
 * ...
 * 
 * PROP_ACTIVATABLE_RELATED_ACTION,
 * PROP_ACTIVATABLE_USE_ACTION_APPEARANCE
 * }
 * 
 * struct _FooBarPrivate
 * {
 * 
 * ...
 * 
 * GtkAction      *action;
 * gboolean        use_action_appearance;
 * };
 * 
 * ...
 * 
 * static void foo_bar_activatable_interface_init         (GtkActivatableIface  *iface);
 * static void foo_bar_activatable_update                 (GtkActivatable       *activatable,
 * GtkAction            *action,
 * const gchar          *property_name);
 * static void foo_bar_activatable_sync_action_properties (GtkActivatable       *activatable,
 * GtkAction            *action);
 * ...
 * 
 * 
 * static void
 * foo_bar_class_init (FooBarClass *klass)
 * {
 * 
 * ...
 * 
 * g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_RELATED_ACTION, "related-action");
 * g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_USE_ACTION_APPEARANCE, "use-action-appearance");
 * 
 * ...
 * }
 * 
 * 
 * static void
 * foo_bar_activatable_interface_init (GtkActivatableIface  *iface)
 * {
 * iface->update = foo_bar_activatable_update;
 * iface->sync_action_properties = foo_bar_activatable_sync_action_properties;
 * }
 * 
 * ... Break the reference using gtk_activatable_do_set_related_action()...
 * 
 * static void
 * foo_bar_dispose (GObject *object)
 * {
 * FooBar *bar = FOO_BAR (object);
 * FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
 * 
 * ...
 * 
 * if (priv->action)
 * {
 * gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), NULL);
 * priv->action = NULL;
 * }
 * G_OBJECT_CLASS (foo_bar_parent_class)->dispose (object);
 * }
 * 
 * ... Handle the “related-action” and “use-action-appearance” properties ...
 * 
 * static void
 * foo_bar_set_property (GObject         *object,
 * guint            prop_id,
 * const GValue    *value,
 * GParamSpec      *pspec)
 * {
 * FooBar *bar = FOO_BAR (object);
 * FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
 * 
 * switch (prop_id)
 * {
 * 
 * ...
 * 
 * case PROP_ACTIVATABLE_RELATED_ACTION:
 * foo_bar_set_related_action (bar, g_value_get_object (value));
 * break;
 * case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
 * foo_bar_set_use_action_appearance (bar, g_value_get_boolean (value));
 * break;
 * default:
 * G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
 * break;
 * }
 * }
 * 
 * static void
 * foo_bar_get_property (GObject         *object,
 * guint            prop_id,
 * GValue          *value,
 * GParamSpec      *pspec)
 * {
 * FooBar *bar = FOO_BAR (object);
 * FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
 * 
 * switch (prop_id)
 * {
 * 
 * ...
 * 
 * case PROP_ACTIVATABLE_RELATED_ACTION:
 * g_value_set_object (value, priv->action);
 * break;
 * case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
 * g_value_set_boolean (value, priv->use_action_appearance);
 * break;
 * default:
 * G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
 * break;
 * }
 * }
 * 
 * 
 * static void
 * foo_bar_set_use_action_appearance (FooBar   *bar,
 * gboolean  use_appearance)
 * {
 * FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
 * 
 * if (priv->use_action_appearance != use_appearance)
 * {
 * priv->use_action_appearance = use_appearance;
 * 
 * gtk_activatable_sync_action_properties (GTK_ACTIVATABLE (bar), priv->action);
 * }
 * }
 * 
 * ... call gtk_activatable_do_set_related_action() and then assign the action pointer,
 * no need to reference the action here since gtk_activatable_do_set_related_action() already
 * holds a reference here for you...
 * static void
 * foo_bar_set_related_action (FooBar    *bar,
 * GtkAction *action)
 * {
 * FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
 * 
 * if (priv->action == action)
 * return;
 * 
 * gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), action);
 * 
 * priv->action = action;
 * }
 * 
 * ... Selectively reset and update activatable depending on the use-action-appearance property ...
 * static void
 * gtk_button_activatable_sync_action_properties (GtkActivatable       *activatable,
 * GtkAction            *action)
 * {
 * GtkButtonPrivate *priv = GTK_BUTTON_GET_PRIVATE (activatable);
 * 
 * if (!action)
 * return;
 * 
 * if (gtk_action_is_visible (action))
 * gtk_widget_show (GTK_WIDGET (activatable));
 * else
 * gtk_widget_hide (GTK_WIDGET (activatable));
 * 
 * gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
 * 
 * ...
 * 
 * if (priv->use_action_appearance)
 * {
 * if (gtk_action_get_stock_id (action))
 * foo_bar_set_stock (button, gtk_action_get_stock_id (action));
 * else if (gtk_action_get_label (action))
 * foo_bar_set_label (button, gtk_action_get_label (action));
 * 
 * ...
 * 
 * }
 * }
 * 
 * static void
 * foo_bar_activatable_update (GtkActivatable       *activatable,
 * GtkAction            *action,
 * const gchar          *property_name)
 * {
 * FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (activatable);
 * 
 * if (strcmp (property_name, "visible") == 0)
 * {
 * if (gtk_action_is_visible (action))
 * gtk_widget_show (GTK_WIDGET (activatable));
 * else
 * gtk_widget_hide (GTK_WIDGET (activatable));
 * }
 * else if (strcmp (property_name, "sensitive") == 0)
 * gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
 * 
 * ...
 * 
 * if (!priv->use_action_appearance)
 * return;
 * 
 * if (strcmp (property_name, "stock-id") == 0)
 * foo_bar_set_stock (button, gtk_action_get_stock_id (action));
 * else if (strcmp (property_name, "label") == 0)
 * foo_bar_set_label (button, gtk_action_get_label (action));
 * 
 * ...
 * }
 * ]|
 */
public template ActivatableT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkActivatable* getActivatableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkActivatable*)getStruct();
	}


	/**
	 * This is a utility function for #GtkActivatable implementors.
	 *
	 * When implementing #GtkActivatable you must call this when
	 * handling changes of the #GtkActivatable:related-action, and
	 * you must also use this to break references in #GObject->dispose().
	 *
	 * This function adds a reference to the currently set related
	 * action for you, it also makes sure the #GtkActivatable->update()
	 * method is called when the related #GtkAction properties change
	 * and registers to the action’s proxy list.
	 *
	 * > Be careful to call this before setting the local
	 * > copy of the #GtkAction property, since this function uses
	 * > gtk_activatable_get_related_action() to retrieve the
	 * > previous action.
	 *
	 * Params:
	 *     action = the #GtkAction to set
	 *
	 * Since: 2.16
	 */
	public void doSetRelatedAction(Action action)
	{
		gtk_activatable_do_set_related_action(getActivatableStruct(), (action is null) ? null : action.getActionStruct());
	}

	/**
	 * Gets the related #GtkAction for @activatable.
	 *
	 * Returns: the related #GtkAction if one is set.
	 *
	 * Since: 2.16
	 */
	public Action getRelatedAction()
	{
		auto p = gtk_activatable_get_related_action(getActivatableStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Action)(cast(GtkAction*) p);
	}

	/**
	 * Gets whether this activatable should reset its layout
	 * and appearance when setting the related action or when
	 * the action changes appearance.
	 *
	 * Returns: whether @activatable uses its actions appearance.
	 *
	 * Since: 2.16
	 */
	public bool getUseActionAppearance()
	{
		return gtk_activatable_get_use_action_appearance(getActivatableStruct()) != 0;
	}

	/**
	 * Sets the related action on the @activatable object.
	 *
	 * > #GtkActivatable implementors need to handle the #GtkActivatable:related-action
	 * > property and call gtk_activatable_do_set_related_action() when it changes.
	 *
	 * Params:
	 *     action = the #GtkAction to set
	 *
	 * Since: 2.16
	 */
	public void setRelatedAction(Action action)
	{
		gtk_activatable_set_related_action(getActivatableStruct(), (action is null) ? null : action.getActionStruct());
	}

	/**
	 * Sets whether this activatable should reset its layout and appearance
	 * when setting the related action or when the action changes appearance
	 *
	 * > #GtkActivatable implementors need to handle the
	 * > #GtkActivatable:use-action-appearance property and call
	 * > gtk_activatable_sync_action_properties() to update @activatable
	 * > if needed.
	 *
	 * Params:
	 *     useAppearance = whether to use the actions appearance
	 *
	 * Since: 2.16
	 */
	public void setUseActionAppearance(bool useAppearance)
	{
		gtk_activatable_set_use_action_appearance(getActivatableStruct(), useAppearance);
	}

	/**
	 * This is called to update the activatable completely, this is called
	 * internally when the #GtkActivatable:related-action property is set
	 * or unset and by the implementing class when
	 * #GtkActivatable:use-action-appearance changes.
	 *
	 * Params:
	 *     action = the related #GtkAction or %NULL
	 *
	 * Since: 2.16
	 */
	public void syncActionProperties(Action action)
	{
		gtk_activatable_sync_action_properties(getActivatableStruct(), (action is null) ? null : action.getActionStruct());
	}
}
