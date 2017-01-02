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
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Window;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * Native dialogs are platform dialogs that don't use #GtkDialog or
 * #GtkWindow. They are used in order to integrate better with a
 * platform, by looking the same as other native applications and
 * supporting platform specific features.
 * 
 * The #GtkDialog functions cannot be used on such objects, but we
 * need a similar API in order to drive them. The #GtkNativeDialog
 * object is an API that allows you to do this. It allows you to set
 * various common properties on the dialog, as well as show and hide
 * it and get a #GtkNativeDialog::response signal when the user finished
 * with the dialog.
 * 
 * There is also a gtk_native_dialog_run() helper that makes it easy
 * to run any native dialog in a modal way with a recursive mainloop,
 * similar to gtk_dialog_run().
 */
public class NativeDialog : ObjectG
{
	/** the main Gtk struct */
	protected GtkNativeDialog* gtkNativeDialog;

	/** Get the main Gtk struct */
	public GtkNativeDialog* getNativeDialogStruct()
	{
		return gtkNativeDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkNativeDialog;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkNativeDialog = cast(GtkNativeDialog*)obj;
		super.setStruct(obj);
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
	 * to other objects. If it is visible it will be hidden and any underlying
	 * window system resources will be destroyed.
	 *
	 * Note that this does not release any reference to the object (as opposed to
	 * destroying a GtkWindow) because there is no reference from the windowing
	 * system to the #GtkNativeDialog.
	 *
	 * Since: 3.20
	 */
	public void destroy()
	{
		gtk_native_dialog_destroy(gtkNativeDialog);
	}

	/**
	 * Returns whether the dialog is modal. See gtk_native_dialog_set_modal().
	 *
	 * Return: %TRUE if the dialog is set to be modal
	 *
	 * Since: 3.20
	 */
	public bool getModal()
	{
		return gtk_native_dialog_get_modal(gtkNativeDialog) != 0;
	}

	/**
	 * Gets the title of the #GtkNativeDialog.
	 *
	 * Return: the title of the dialog, or %NULL if none has
	 *     been set explicitly. The returned string is owned by the widget
	 *     and must not be modified or freed.
	 *
	 * Since: 3.20
	 */
	public string getTitle()
	{
		return Str.toString(gtk_native_dialog_get_title(gtkNativeDialog));
	}

	/**
	 * Fetches the transient parent for this window. See
	 * gtk_native_dialog_set_transient_for().
	 *
	 * Return: the transient parent for this window,
	 *     or %NULL if no transient parent has been set.
	 *
	 * Since: 3.20
	 */
	public Window getTransientFor()
	{
		auto p = gtk_native_dialog_get_transient_for(gtkNativeDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GtkWindow*) p);
	}

	/**
	 * Determines whether the dialog is visible.
	 *
	 * Return: %TRUE if the dialog is visible
	 *
	 * Since: 3.20
	 */
	public bool getVisible()
	{
		return gtk_native_dialog_get_visible(gtkNativeDialog) != 0;
	}

	/**
	 * Hides the dialog if it is visilbe, aborting any interaction. Once this
	 * is called the  #GtkNativeDialog::response signal will not be emitted
	 * until after the next call to gtk_native_dialog_show().
	 *
	 * If the dialog is not visible this does nothing.
	 *
	 * Since: 3.20
	 */
	public void hide()
	{
		gtk_native_dialog_hide(gtkNativeDialog);
	}

	/**
	 * Blocks in a recursive main loop until @self emits the
	 * #GtkNativeDialog::response signal. It then returns the response ID
	 * from the ::response signal emission.
	 *
	 * Before entering the recursive main loop, gtk_native_dialog_run()
	 * calls gtk_native_dialog_show() on the dialog for you.
	 *
	 * After gtk_native_dialog_run() returns, then dialog will be hidden.
	 *
	 * Typical usage of this function might be:
	 * |[<!-- language="C" -->
	 * gint result = gtk_native_dialog_run (GTK_NATIVE_DIALOG (dialog));
	 * switch (result)
	 * {
	 * case GTK_RESPONSE_ACCEPT:
	 * do_application_specific_something ();
	 * break;
	 * default:
	 * do_nothing_since_dialog_was_cancelled ();
	 * break;
	 * }
	 * g_object_unref (dialog);
	 * ]|
	 *
	 * Note that even though the recursive main loop gives the effect of a
	 * modal dialog (it prevents the user from interacting with other
	 * windows in the same window group while the dialog is run), callbacks
	 * such as timeouts, IO channel watches, DND drops, etc, will
	 * be triggered during a gtk_nautilus_dialog_run() call.
	 *
	 * Return: response ID
	 *
	 * Since: 3.20
	 */
	public int run()
	{
		return gtk_native_dialog_run(gtkNativeDialog);
	}

	/**
	 * Sets a dialog modal or non-modal. Modal dialogs prevent interaction
	 * with other windows in the same application. To keep modal dialogs
	 * on top of main application windows, use
	 * gtk_native_dialog_set_transient_for() to make the dialog transient for the
	 * parent; most [window managers][gtk-X11-arch]
	 * will then disallow lowering the dialog below the parent.
	 *
	 * Params:
	 *     modal = whether the window is modal
	 *
	 * Since: 3.20
	 */
	public void setModal(bool modal)
	{
		gtk_native_dialog_set_modal(gtkNativeDialog, modal);
	}

	/**
	 * Sets the title of the #GtkNativeDialog.
	 *
	 * Params:
	 *     title = title of the dialog
	 *
	 * Since: 3.20
	 */
	public void setTitle(string title)
	{
		gtk_native_dialog_set_title(gtkNativeDialog, Str.toStringz(title));
	}

	/**
	 * Dialog windows should be set transient for the main application
	 * window they were spawned from. This allows
	 * [window managers][gtk-X11-arch] to e.g. keep the
	 * dialog on top of the main window, or center the dialog over the
	 * main window.
	 *
	 * Passing %NULL for @parent unsets the current transient window.
	 *
	 * Params:
	 *     parent = parent window, or %NULL
	 *
	 * Since: 3.20
	 */
	public void setTransientFor(Window parent)
	{
		gtk_native_dialog_set_transient_for(gtkNativeDialog, (parent is null) ? null : parent.getWindowStruct());
	}

	/**
	 * Shows the dialog on the display, allowing the user to interact with
	 * it. When the user accepts the state of the dialog the dialog will
	 * be automatically hidden and the #GtkNativeDialog::response signal
	 * will be emitted.
	 *
	 * Multiple calls while the dialog is visible will be ignored.
	 *
	 * Since: 3.20
	 */
	public void show()
	{
		gtk_native_dialog_show(gtkNativeDialog);
	}

	protected class OnResponseDelegateWrapper
	{
		void delegate(int, NativeDialog) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, NativeDialog) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnResponseDelegateWrapper[] onResponseListeners;

	/**
	 * Emitted when the user responds to the dialog.
	 *
	 * When this is called the dialog has been hidden.
	 *
	 * If you call gtk_native_dialog_hide() before the user responds to
	 * the dialog this signal will not be emitted.
	 *
	 * Params:
	 *     responseId = the response ID
	 *
	 * Since: 3.20
	 */
	gulong addOnResponse(void delegate(int, NativeDialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onResponseListeners ~= new OnResponseDelegateWrapper(dlg, 0, connectFlags);
		onResponseListeners[onResponseListeners.length - 1].handlerId = Signals.connectData(
			this,
			"response",
			cast(GCallback)&callBackResponse,
			cast(void*)onResponseListeners[onResponseListeners.length - 1],
			cast(GClosureNotify)&callBackResponseDestroy,
			connectFlags);
		return onResponseListeners[onResponseListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackResponse(GtkNativeDialog* nativedialogStruct, int responseId,OnResponseDelegateWrapper wrapper)
	{
		wrapper.dlg(responseId, wrapper.outer);
	}
	
	extern(C) static void callBackResponseDestroy(OnResponseDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnResponse(wrapper);
	}

	protected void internalRemoveOnResponse(OnResponseDelegateWrapper source)
	{
		foreach(index, wrapper; onResponseListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onResponseListeners[index] = null;
				onResponseListeners = std.algorithm.remove(onResponseListeners, index);
				break;
			}
		}
	}
	
}
