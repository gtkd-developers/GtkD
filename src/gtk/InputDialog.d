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

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;





private import gtk.Dialog;

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
		version(noAssert)
		{
			if ( gtkInputDialog is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkInputDialog is null on constructor").newline;
				}
				else
				{
					printf("struct gtkInputDialog is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkInputDialog !is null, "struct gtkInputDialog is null on constructor");
		}
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
	void addOnDisableDevice(void delegate(GdkDevice*, InputDialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("disable-device" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"disable-device",
			cast(GCallback)&callBackDisableDevice,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["disable-device"] = 1;
		}
		onDisableDeviceListeners ~= dlg;
	}
	extern(C) static void callBackDisableDevice(GtkInputDialog* inputdialogStruct, GdkDevice* deviceid, InputDialog inputDialog)
	{
		bool consumed = false;
		
		foreach ( void delegate(GdkDevice*, InputDialog) dlg ; inputDialog.onDisableDeviceListeners )
		{
			dlg(deviceid, inputDialog);
		}
		
		return consumed;
	}
	
	void delegate(GdkDevice*, InputDialog)[] onEnableDeviceListeners;
	void addOnEnableDevice(void delegate(GdkDevice*, InputDialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("enable-device" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"enable-device",
			cast(GCallback)&callBackEnableDevice,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["enable-device"] = 1;
		}
		onEnableDeviceListeners ~= dlg;
	}
	extern(C) static void callBackEnableDevice(GtkInputDialog* inputdialogStruct, GdkDevice* deviceid, InputDialog inputDialog)
	{
		bool consumed = false;
		
		foreach ( void delegate(GdkDevice*, InputDialog) dlg ; inputDialog.onEnableDeviceListeners )
		{
			dlg(deviceid, inputDialog);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkInputDialog.
	 */
	public this ()
	{
		// GtkWidget* gtk_input_dialog_new (void);
		this(cast(GtkInputDialog*)gtk_input_dialog_new() );
	}
	
}
