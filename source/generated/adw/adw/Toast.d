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


module adw.Toast;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * A helper object for [class@ToastOverlay].
 * 
 * Toasts are meant to be passed into [method@ToastOverlay.add_toast] as
 * follows:
 * 
 * ```c
 * adw_toast_overlay_add_toast (overlay, adw_toast_new (_("Simple Toast"));
 * ```
 * 
 * <picture>
 * <source srcset="toast-simple-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="toast-simple.png" alt="toast-simple">
 * </picture>
 * 
 * Toasts always have a close button. They emit the [signal@Toast::dismissed]
 * signal when disappearing.
 * 
 * [property@Toast:timeout] determines how long the toast stays on screen, while
 * [property@Toast:priority] determines how it behaves if another toast is
 * already being displayed.
 * 
 * ## Actions
 * 
 * Toasts can have one button on them, with a label and an attached
 * [iface@Gio.Action].
 * 
 * ```c
 * AdwToast *toast = adw_toast_new (_("Toast with Action"));
 * 
 * adw_toast_set_button_label (toast, _("_Example"));
 * adw_toast_set_action_name (toast, "win.example");
 * 
 * adw_toast_overlay_add_toast (overlay, toast);
 * ```
 * 
 * <picture>
 * <source srcset="toast-action-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="toast-action.png" alt="toast-action">
 * </picture>
 * 
 * ## Modifying toasts
 * 
 * Toasts can be modified after they have been shown. For this, an `AdwToast`
 * reference must be kept around while the toast is visible.
 * 
 * A common use case for this is using toasts as undo prompts that stack with
 * each other, allowing to batch undo the last deleted items:
 * 
 * ```c
 * 
 * static void
 * toast_undo_cb (GtkWidget  *sender,
 * const char *action,
 * GVariant   *param)
 * {
 * // Undo the deletion
 * }
 * 
 * static void
 * dismissed_cb (MyWindow *self)
 * {
 * self->undo_toast = NULL;
 * 
 * // Permanently delete the items
 * }
 * 
 * static void
 * delete_item (MyWindow *self,
 * MyItem   *item)
 * {
 * g_autofree char *title = NULL;
 * int n_items;
 * 
 * // Mark the item as waiting for deletion
 * n_items = ... // The number of waiting items
 * 
 * if (!self->undo_toast) {
 * title = g_strdup_printf (_("‘%s’ deleted"), ...);
 * 
 * self->undo_toast = adw_toast_new (title);
 * 
 * adw_toast_set_priority (self->undo_toast, ADW_TOAST_PRIORITY_HIGH);
 * adw_toast_set_button_label (self->undo_toast, _("_Undo"));
 * adw_toast_set_action_name (self->undo_toast, "toast.undo");
 * 
 * g_signal_connect_swapped (self->undo_toast, "dismissed",
 * G_CALLBACK (dismissed_cb), self);
 * 
 * adw_toast_overlay_add_toast (self->toast_overlay, self->undo_toast);
 * 
 * return;
 * }
 * 
 * title =
 * g_strdup_printf (ngettext ("<span font_features='tnum=1'>%d</span> item deleted",
 * "<span font_features='tnum=1'>%d</span> items deleted",
 * n_items), n_items);
 * 
 * adw_toast_set_title (self->undo_toast, title);
 * }
 * 
 * static void
 * my_window_class_init (MyWindowClass *klass)
 * {
 * GtkWidgetClass *widget_class = GTK_WIDGET_CLASS (klass);
 * 
 * gtk_widget_class_install_action (widget_class, "toast.undo", NULL, toast_undo_cb);
 * }
 * ```
 * 
 * <picture>
 * <source srcset="toast-undo-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="toast-undo.png" alt="toast-undo">
 * </picture>
 *
 * Since: 1.0
 */
public class Toast : ObjectG
{
	/** the main Gtk struct */
	protected AdwToast* adwToast;

	/** Get the main Gtk struct */
	public AdwToast* getToastStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwToast;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwToast;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwToast* adwToast, bool ownedRef = false)
	{
		this.adwToast = adwToast;
		super(cast(GObject*)adwToast, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_toast_get_type();
	}

	/**
	 * Creates a new `AdwToast`.
	 *
	 * The toast will use @title as its title.
	 *
	 * @title can be marked up with the Pango text markup language.
	 *
	 * Params:
	 *     title = the title to be displayed
	 *
	 * Returns: the new created `AdwToast`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title)
	{
		auto __p = adw_toast_new(Str.toStringz(title));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwToast*) __p, true);
	}

	/**
	 * Dismisses @self.
	 *
	 * Since: 1.0
	 */
	public void dismiss()
	{
		adw_toast_dismiss(adwToast);
	}

	/**
	 * Gets the name of the associated action.
	 *
	 * Returns: the action name
	 *
	 * Since: 1.0
	 */
	public string getActionName()
	{
		return Str.toString(adw_toast_get_action_name(adwToast));
	}

	/**
	 * Gets the parameter for action invocations.
	 *
	 * Returns: the action target
	 *
	 * Since: 1.0
	 */
	public Variant getActionTargetValue()
	{
		auto __p = adw_toast_get_action_target_value(adwToast);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}

	/**
	 * Gets the label to show on the button.
	 *
	 * Returns: the button label
	 *
	 * Since: 1.0
	 */
	public string getButtonLabel()
	{
		return Str.toString(adw_toast_get_button_label(adwToast));
	}

	/**
	 * Gets priority for @self.
	 *
	 * Returns: the priority
	 *
	 * Since: 1.0
	 */
	public AdwToastPriority getPriority()
	{
		return adw_toast_get_priority(adwToast);
	}

	/**
	 * Gets timeout for @self.
	 *
	 * Returns: the timeout
	 *
	 * Since: 1.0
	 */
	public uint getTimeout()
	{
		return adw_toast_get_timeout(adwToast);
	}

	/**
	 * Gets the title that will be displayed on the toast.
	 *
	 * Returns: the title
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_toast_get_title(adwToast));
	}

	/**
	 * Sets the name of the associated action.
	 *
	 * Params:
	 *     actionName = the action name
	 *
	 * Since: 1.0
	 */
	public void setActionName(string actionName)
	{
		adw_toast_set_action_name(adwToast, Str.toStringz(actionName));
	}

	/**
	 * Sets the parameter for action invocations.
	 *
	 * If the @action_target variant has a floating reference this function
	 * will sink it.
	 *
	 * Params:
	 *     actionTarget = the action target
	 *
	 * Since: 1.0
	 */
	public void setActionTargetValue(Variant actionTarget)
	{
		adw_toast_set_action_target_value(adwToast, (actionTarget is null) ? null : actionTarget.getVariantStruct());
	}

	/**
	 * Sets the label to show on the button.
	 *
	 * It set to `NULL`, the button won't be shown.
	 *
	 * Params:
	 *     buttonLabel = a button label
	 *
	 * Since: 1.0
	 */
	public void setButtonLabel(string buttonLabel)
	{
		adw_toast_set_button_label(adwToast, Str.toStringz(buttonLabel));
	}

	/**
	 * Sets the action name and its parameter.
	 *
	 * @detailed_action_name is a string in the format accepted by
	 * [func@Gio.Action.parse_detailed_name].
	 *
	 * Params:
	 *     detailedActionName = the detailed action name
	 *
	 * Since: 1.0
	 */
	public void setDetailedActionName(string detailedActionName)
	{
		adw_toast_set_detailed_action_name(adwToast, Str.toStringz(detailedActionName));
	}

	/**
	 * Sets priority for @self.
	 *
	 * Priority controls how the toast behaves when another toast is already
	 * being displayed.
	 *
	 * If @priority is `ADW_TOAST_PRIORITY_NORMAL`, the toast will be queued.
	 *
	 * If @priority is `ADW_TOAST_PRIORITY_HIGH`, the toast will be displayed immediately,
	 * pushing the previous toast into the queue instead.
	 *
	 * Params:
	 *     priority = the priority
	 *
	 * Since: 1.0
	 */
	public void setPriority(AdwToastPriority priority)
	{
		adw_toast_set_priority(adwToast, priority);
	}

	/**
	 * Sets timeout for @self.
	 *
	 * If @timeout is 0, the toast is displayed indefinitely until manually
	 * dismissed.
	 *
	 * Toasts cannot disappear while being hovered, pressed (on touchscreen), or
	 * have keyboard focus inside them.
	 *
	 * Params:
	 *     timeout = the timeout
	 *
	 * Since: 1.0
	 */
	public void setTimeout(uint timeout)
	{
		adw_toast_set_timeout(adwToast, timeout);
	}

	/**
	 * Sets the title that will be displayed on the toast.
	 *
	 * Params:
	 *     title = a title
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		adw_toast_set_title(adwToast, Str.toStringz(title));
	}

	/**
	 * Emitted when the toast has been dismissed.
	 *
	 * Since: 1.0
	 */
	gulong addOnDismissed(void delegate(Toast) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "dismissed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
