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
 * inFile  = GtkInputDialog.html
 * outPack = gtk
 * outFile = InputDialog
 * strct   = GtkInputDialog
 * realStrct=
 * ctorStrct=
 * clss    = InputDialog
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_input_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.InputDialog;

private import gtkc.gtktypes;

private import gtkc.gtk;




/**
 * Description
 *  NOTE this widget is considered too specialized/little-used for
 *  GTK+, and will in the future be moved to some other package. If
 *  your application needs this widget, feel free to use it, as the
 *  widget does work and is useful in some applications; it's just not
 *  of general interest. However, we are not accepting new features for
 *  the widget, and it will eventually move out of the GTK+
 *  distribution.
 * GtkInputDialog displays a dialog which allows the user
 * to configure XInput extension devices. For each
 * device, they can control the mode of the device
 * (disabled, screen-relative, or window-relative),
 * the mapping of axes to coordinates, and the
 * mapping of the devices macro keys to key press
 * events.
 * GtkInputDialog contains two buttons to which
 * the application can connect; one for closing
 * the dialog, and one for saving the changes.
 * No actions are bound to these by default.
 * The changes that the user makes take effect
 * immediately.
 */
private import gtk.Dialog;
public class InputDialog : Dialog
{
	
	/** the main Gtk struct */
	protected GtkInputDialog* gtkInputDialog;
	
	
	public GtkInputDialog* getInputDialogStruct()
	{
		return gtkInputDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkInputDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkInputDialog* gtkInputDialog)
	{
		super(cast(GtkDialog*)gtkInputDialog);
		this.gtkInputDialog = gtkInputDialog;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(GdkDevice*, InputDialog)[] onDisableDeviceListeners;
	void addOnDisableDevice(void delegate(GdkDevice*, InputDialog) dlg)
	{
		if ( !("disable-device" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"disable-device",
			cast(GCallback)&callBackDisableDevice,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["disable-device"] = 1;
		}
		onDisableDeviceListeners ~= dlg;
	}
	extern(C) static void callBackDisableDevice(GtkInputDialog* inputdialogStruct, GdkDevice* deviceid, InputDialog inputDialog)
	{
		bit consumed = false;
		
		foreach ( void delegate(GdkDevice*, InputDialog) dlg ; inputDialog.onDisableDeviceListeners )
		{
			dlg(deviceid, inputDialog);
		}
		
		return consumed;
	}
	
	void delegate(GdkDevice*, InputDialog)[] onEnableDeviceListeners;
	void addOnEnableDevice(void delegate(GdkDevice*, InputDialog) dlg)
	{
		if ( !("enable-device" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"enable-device",
			cast(GCallback)&callBackEnableDevice,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["enable-device"] = 1;
		}
		onEnableDeviceListeners ~= dlg;
	}
	extern(C) static void callBackEnableDevice(GtkInputDialog* inputdialogStruct, GdkDevice* deviceid, InputDialog inputDialog)
	{
		bit consumed = false;
		
		foreach ( void delegate(GdkDevice*, InputDialog) dlg ; inputDialog.onEnableDeviceListeners )
		{
			dlg(deviceid, inputDialog);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkInputDialog.
	 * Returns:
	 * the new GtkInputDialog.
	 * Signal Details
	 * The "disable-device" signal
	 * void user_function (GtkInputDialog *inputdialog,
	 *  GdkDevice *deviceid,
	 *  gpointer user_data) : Run Last
	 * This signal is emitted when the user changes the
	 * mode of a device from a GDK_MODE_SCREEN or GDK_MODE_WINDOW
	 * to GDK_MODE_ENABLED.
	 * inputdialog:
	 * the object which received the signal.
	 * deviceid:
	 * The ID of the newly disabled device.
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public this ()
	{
		// GtkWidget* gtk_input_dialog_new (void);
		this(cast(GtkInputDialog*)gtk_input_dialog_new() );
	}
	
}
