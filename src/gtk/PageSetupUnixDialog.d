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
 * inFile  = GtkPageSetupUnixDialog.html
 * outPack = gtk
 * outFile = PageSetupUnixDialog
 * strct   = GtkPageSetupUnixDialog
 * realStrct=
 * ctorStrct=
 * clss    = PageSetupUnixDialog
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_page_setup_unix_dialog_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.PageSetup
 * 	- gtk.PrintSettings
 * 	- gtk.Widget
 * 	- gtk.Window
 * structWrap:
 * 	- GtkPageSetup* -> PageSetup
 * 	- GtkPrintSettings* -> PrintSettings
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.PageSetupUnixDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.PageSetup;
private import gtk.PrintSettings;
private import gtk.Widget;
private import gtk.Window;



private import gtk.Dialog;

/**
 * GtkPageSetupUnixDialog implements a page setup dialog for platforms
 * which don't provide a native page setup dialog, like Unix. It can
 * be used very much like any other GTK+ dialog, at the cost of
 * the portability offered by the high-level printing API
 *
 * Printing support was added in GTK+ 2.10.
 */
public class PageSetupUnixDialog : Dialog
{
	
	/** the main Gtk struct */
	protected GtkPageSetupUnixDialog* gtkPageSetupUnixDialog;
	
	
	public GtkPageSetupUnixDialog* getPageSetupUnixDialogStruct()
	{
		return gtkPageSetupUnixDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPageSetupUnixDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPageSetupUnixDialog* gtkPageSetupUnixDialog)
	{
		super(cast(GtkDialog*)gtkPageSetupUnixDialog);
		this.gtkPageSetupUnixDialog = gtkPageSetupUnixDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkPageSetupUnixDialog = cast(GtkPageSetupUnixDialog*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new page setup dialog.
	 * Since 2.10
	 * Params:
	 * title = the title of the dialog, or NULL. [allow-none]
	 * parent = transient parent of the dialog, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string title, Window parent)
	{
		// GtkWidget * gtk_page_setup_unix_dialog_new (const gchar *title,  GtkWindow *parent);
		auto p = gtk_page_setup_unix_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_page_setup_unix_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct())");
		}
		this(cast(GtkPageSetupUnixDialog*) p);
	}
	
	/**
	 * Sets the GtkPageSetup from which the page setup
	 * dialog takes its values.
	 * Since 2.10
	 * Params:
	 * pageSetup = a GtkPageSetup
	 */
	public void setPageSetup(PageSetup pageSetup)
	{
		// void gtk_page_setup_unix_dialog_set_page_setup  (GtkPageSetupUnixDialog *dialog,  GtkPageSetup *page_setup);
		gtk_page_setup_unix_dialog_set_page_setup(gtkPageSetupUnixDialog, (pageSetup is null) ? null : pageSetup.getPageSetupStruct());
	}
	
	/**
	 * Gets the currently selected page setup from the dialog.
	 * Since 2.10
	 * Returns: the current page setup. [transfer none]
	 */
	public PageSetup getPageSetup()
	{
		// GtkPageSetup * gtk_page_setup_unix_dialog_get_page_setup  (GtkPageSetupUnixDialog *dialog);
		auto p = gtk_page_setup_unix_dialog_get_page_setup(gtkPageSetupUnixDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) p);
	}
	
	/**
	 * Sets the GtkPrintSettings from which the page setup dialog
	 * takes its values.
	 * Since 2.10
	 * Params:
	 * printSettings = a GtkPrintSettings
	 */
	public void setPrintSettings(PrintSettings printSettings)
	{
		// void gtk_page_setup_unix_dialog_set_print_settings  (GtkPageSetupUnixDialog *dialog,  GtkPrintSettings *print_settings);
		gtk_page_setup_unix_dialog_set_print_settings(gtkPageSetupUnixDialog, (printSettings is null) ? null : printSettings.getPrintSettingsStruct());
	}
	
	/**
	 * Gets the current print settings from the dialog.
	 * Since 2.10
	 * Returns: the current print settings. [transfer none]
	 */
	public PrintSettings getPrintSettings()
	{
		// GtkPrintSettings * gtk_page_setup_unix_dialog_get_print_settings  (GtkPageSetupUnixDialog *dialog);
		auto p = gtk_page_setup_unix_dialog_get_print_settings(gtkPageSetupUnixDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PrintSettings)(cast(GtkPrintSettings*) p);
	}
}
