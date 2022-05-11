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


module gtk.NativeDialog;

private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * Native dialogs are platform dialogs that don't use `GtkDialog`.
 * 
 * They are used in order to integrate better with a platform, by
 * looking the same as other native applications and supporting
 * platform specific features.
 * 
 * The [class@Gtk.Dialog] functions cannot be used on such objects,
 * but we need a similar API in order to drive them. The `GtkNativeDialog`
 * object is an API that allows you to do this. It allows you to set
 * various common properties on the dialog, as well as show and hide
 * it and get a [signal@Gtk.NativeDialog::response] signal when the user
 * finished with the dialog.
 * 
 * Note that unlike `GtkDialog`, `GtkNativeDialog` objects are not
 * toplevel widgets, and GTK does not keep them alive. It is your
 * responsibility to keep a reference until you are done with the
 * object.
 */
public class NativeDialog : ObjectG
{
	/** the main Gtk struct */
	protected GtkNativeDialog* gtkNativeDialog;

	/** Get the main Gtk struct */
	public GtkNativeDialog* getNativeDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkNativeDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkNativeDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkNativeDialog* gtkNativeDialog, bool ownedRef = false)
	{
		this.gtkNativeDialog = gtkNativeDialog;
		super(cast(GObject*)gtkNativeDialog, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_native_dialog_get_type();
	}

	/**
	 * Destroys a dialog.
	 *
	 * When a dialog is destroyed, it will break any references it holds
	 * to other objects.
	 *
	 * If it is visible it will be hidden and any underlying window system
	 * resources will be destroyed.
	 *
	 * Note that this does not release any reference to the object (as opposed
	 * to destroying a `GtkWindow`) because there is no reference from the
	 * windowing system to the `GtkNativeDialog`.
	 */
	public void destroy()
	{
		gtk_native_dialog_destroy(gtkNativeDialog);
	}

	/**
	 * Returns whether the dialog is modal.
	 *
	 * Returns: %TRUE if the dialog is set to be modal
	 */
	public bool getModal()
	{
		return gtk_native_dialog_get_modal(gtkNativeDialog) != 0;
	}

	/**
	 * Gets the title of the `GtkNativeDialog`.
	 *
	 * Returns: the title of the dialog, or %NULL if none has
	 *     been set explicitly. The returned string is owned by the widget
	 *     and must not be modified or freed.
	 */
	public string getTitle()
	{
		return Str.toString(gtk_native_dialog_get_title(gtkNativeDialog));
	}

	/**
	 * Fetches the transient parent for this window.
	 *
	 * Returns: the transient parent for this window,
	 *     or %NULL if no transient parent has been set.
	 */
	public Window getTransientFor()
	{
		auto __p = gtk_native_dialog_get_transient_for(gtkNativeDialog);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GtkWindow*) __p);
	}

	/**
	 * Determines whether the dialog is visible.
	 *
	 * Returns: %TRUE if the dialog is visible
	 */
	public bool getVisible()
	{
		return gtk_native_dialog_get_visible(gtkNativeDialog) != 0;
	}

	/**
	 * Hides the dialog if it is visible, aborting any interaction.
	 *
	 * Once this is called the [signal@Gtk.NativeDialog::response] signal
	 * will *not* be emitted until after the next call to
	 * [method@Gtk.NativeDialog.show].
	 *
	 * If the dialog is not visible this does nothing.
	 */
	public void hide()
	{
		gtk_native_dialog_hide(gtkNativeDialog);
	}

	/**
	 * Sets a dialog modal or non-modal.
	 *
	 * Modal dialogs prevent interaction with other windows in the same
	 * application. To keep modal dialogs on top of main application
	 * windows, use [method@Gtk.NativeDialog.set_transient_for] to make
	 * the dialog transient for the parent; most window managers will
	 * then disallow lowering the dialog below the parent.
	 *
	 * Params:
	 *     modal = whether the window is modal
	 */
	public void setModal(bool modal)
	{
		gtk_native_dialog_set_modal(gtkNativeDialog, modal);
	}

	/**
	 * Sets the title of the `GtkNativeDialog.`
	 *
	 * Params:
	 *     title = title of the dialog
	 */
	public void setTitle(string title)
	{
		gtk_native_dialog_set_title(gtkNativeDialog, Str.toStringz(title));
	}

	/**
	 * Dialog windows should be set transient for the main application
	 * window they were spawned from.
	 *
	 * This allows window managers to e.g. keep the dialog on top of the
	 * main window, or center the dialog over the main window.
	 *
	 * Passing %NULL for @parent unsets the current transient window.
	 *
	 * Params:
	 *     parent = parent window
	 */
	public void setTransientFor(Window parent)
	{
		gtk_native_dialog_set_transient_for(gtkNativeDialog, (parent is null) ? null : parent.getWindowStruct());
	}

	/**
	 * Shows the dialog on the display.
	 *
	 * When the user accepts the state of the dialog the dialog will
	 * be automatically hidden and the [signal@Gtk.NativeDialog::response]
	 * signal will be emitted.
	 *
	 * Multiple calls while the dialog is visible will be ignored.
	 */
	public void show()
	{
		gtk_native_dialog_show(gtkNativeDialog);
	}

	/**
	 * Emitted when the user responds to the dialog.
	 *
	 * When this is called the dialog has been hidden.
	 *
	 * If you call [method@Gtk.NativeDialog.hide] before the user
	 * responds to the dialog this signal will not be emitted.
	 *
	 * Params:
	 *     responseId = the response ID
	 */
	gulong addOnResponse(void delegate(int, NativeDialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "response", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
