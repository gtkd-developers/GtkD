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
 * class Code: Yes
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
 * omit signals:
 * imports:
 * 	- gtk.Button
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.InputDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtk.Button;



private import gtk.Dialog;

/**
 * Description
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
 * As of GTK+ 2.20, GtkInputDialog has been deprecated since it is too specialized.
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
	protected override void* getStruct()
	{
		return cast(void*)gtkInputDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkInputDialog* gtkInputDialog)
	{
		if(gtkInputDialog is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkInputDialog);
		if( ptr !is null )
		{
			this = cast(InputDialog)ptr;
			return;
		}
		super(cast(GtkDialog*)gtkInputDialog);
		this.gtkInputDialog = gtkInputDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkInputDialog = cast(GtkInputDialog*)obj;
	}
	
	Button getCloseButton()
	{
		//int[] arr= [144, 148, 152, 160, 164, 168, 172, 176,
		//	184, 188, 192, 196, 200, 204, 208, 212, 216,
		//	224];
		
		//foreach(i; arr)
		//{
			//	int* pt2 =cast(int*)getStruct();
			//	pt2+=i/4;
			//	printf("*pt+%d=%X\n", i, *pt2);
			
			//	Widget wg = new Widget(cast(GtkWidget*)(*pt2));
			//	Stdout(wg.getName()).newline;
		//}
		
		int* pt =cast(int*)getStruct();
		pt += 172/4;
		return new Button(cast(GtkButton*)(*pt));
	}
	
	Button getSaveButton()
	{
		//int[] arr= [144, 148, 152, 160, 164, 168, 172, 176,
		//	184, 188, 192, 196, 200, 204, 208, 212, 216,
		//	224];
		
		//foreach(i; arr)
		//{
			//	int* pt2 =cast(int*)getStruct();
			//	pt2+=i/4;
			//	printf("*pt+%d=%X\n", i, *pt2);
			
			//	Widget wg = new Widget(cast(GtkWidget*)(*pt2));
			//	Stdout(wg.getName()).newline;
		//}
		
		int* pt =cast(int*)getStruct();
		pt += 176/4;
		return new Button(cast(GtkButton*)(*pt));
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(GdkDevice*, InputDialog)[] onDisableDeviceListeners;
	/**
	 * This signal is emitted when the user changes the
	 * mode of a device from a GDK_MODE_SCREEN or GDK_MODE_WINDOW
	 * to GDK_MODE_ENABLED.
	 */
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
	extern(C) static void callBackDisableDevice(GtkInputDialog* inputdialogStruct, GdkDevice* arg1, InputDialog inputDialog)
	{
		foreach ( void delegate(GdkDevice*, InputDialog) dlg ; inputDialog.onDisableDeviceListeners )
		{
			dlg(arg1, inputDialog);
		}
	}
	
	void delegate(GdkDevice*, InputDialog)[] onEnableDeviceListeners;
	/**
	 * This signal is emitted when the user changes the
	 * mode of a device from GDK_MODE_DISABLED to a
	 * GDK_MODE_SCREEN or GDK_MODE_WINDOW.
	 */
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
	extern(C) static void callBackEnableDevice(GtkInputDialog* inputdialogStruct, GdkDevice* arg1, InputDialog inputDialog)
	{
		foreach ( void delegate(GdkDevice*, InputDialog) dlg ; inputDialog.onEnableDeviceListeners )
		{
			dlg(arg1, inputDialog);
		}
	}
	
	
	/**
	 * Warning
	 * gtk_input_dialog_new has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.
	 * Creates a new GtkInputDialog.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_input_dialog_new (void);
		auto p = gtk_input_dialog_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_input_dialog_new()");
		}
		this(cast(GtkInputDialog*) p);
	}
}
