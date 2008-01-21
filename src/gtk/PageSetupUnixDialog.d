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
 * inFile  = GtkPageSetupUnixDialog.html
 * outPack = gtk
 * outFile = PageSetupUnixDialog
 * strct   = GtkPageSetupUnixDialog
 * realStrct=
 * ctorStrct=
 * clss    = PageSetupUnixDialog
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_page_setup_unix_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.Window
 * 	- gtk.PageSetup
 * 	- gtk.PrintSettings
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * 	- gtk.Builder
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * structWrap:
 * 	- GtkPageSetup* -> PageSetup
 * 	- GtkPrintSettings* -> PrintSettings
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 */

module gtk.PageSetupUnixDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.Widget;
private import gtk.Window;
private import gtk.PageSetup;
private import gtk.PrintSettings;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Builder;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gtk.Dialog;

/**
 * Description
 * GtkPageSetupUnixDialog implements a page setup dialog for platforms
 * which don't provide a native page setup dialog, like Unix. It can
 * be used very much like any other GTK+ dialog, at the cost of
 * the portability offered by the high-level printing API
 * Printing support was added in GTK+ 2.10.
 */
public class PageSetupUnixDialog : Dialog, BuildableIF
{
	
	/** the main Gtk struct */
	protected GtkPageSetupUnixDialog* gtkPageSetupUnixDialog;
	
	
	public GtkPageSetupUnixDialog* getPageSetupUnixDialogStruct()
	{
		return gtkPageSetupUnixDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkPageSetupUnixDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPageSetupUnixDialog* gtkPageSetupUnixDialog)
	{
		if(gtkPageSetupUnixDialog is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkPageSetupUnixDialog passed to constructor.");
			else return;
		}
		super(cast(GtkDialog*)gtkPageSetupUnixDialog);
		this.gtkPageSetupUnixDialog = gtkPageSetupUnixDialog;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkPageSetupUnixDialog);
	
	/**
	 */
	
	/**
	 * Creates a new page setup dialog.
	 * Since 2.10
	 * Params:
	 * title =  the title of the dialog, or NULL
	 * parent =  transient parent of the dialog, or NULL
	 */
	public this (char[] title, Window parent)
	{
		// GtkWidget* gtk_page_setup_unix_dialog_new (const gchar *title,  GtkWindow *parent);
		auto p = gtk_page_setup_unix_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct());
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkPageSetupUnixDialog*) p);
	}
	
	/**
	 * Sets the GtkPageSetup from which the page setup
	 * dialog takes its values.
	 * Since 2.10
	 * Params:
	 * pageSetup =  a GtkPageSetup
	 */
	public void setPageSetup(PageSetup pageSetup)
	{
		// void gtk_page_setup_unix_dialog_set_page_setup  (GtkPageSetupUnixDialog *dialog,  GtkPageSetup *page_setup);
		gtk_page_setup_unix_dialog_set_page_setup(gtkPageSetupUnixDialog, (pageSetup is null) ? null : pageSetup.getPageSetupStruct());
	}
	
	/**
	 * Gets the currently selected page setup from the dialog.
	 * Since 2.10
	 * Returns: the current page setup
	 */
	public PageSetup getPageSetup()
	{
		// GtkPageSetup* gtk_page_setup_unix_dialog_get_page_setup  (GtkPageSetupUnixDialog *dialog);
		auto p = gtk_page_setup_unix_dialog_get_page_setup(gtkPageSetupUnixDialog);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PageSetup(cast(GtkPageSetup*) p);
	}
	
	/**
	 * Sets the GtkPrintSettings from which the page setup dialog
	 * takes its values.
	 * Since 2.10
	 * Params:
	 * printSettings =  a GtkPrintSettings
	 */
	public void setPrintSettings(PrintSettings printSettings)
	{
		// void gtk_page_setup_unix_dialog_set_print_settings  (GtkPageSetupUnixDialog *dialog,  GtkPrintSettings *print_settings);
		gtk_page_setup_unix_dialog_set_print_settings(gtkPageSetupUnixDialog, (printSettings is null) ? null : printSettings.getPrintSettingsStruct());
	}
	
	/**
	 * Gets the current print settings from the dialog.
	 * Since 2.10
	 * Returns: the current print settings
	 */
	public PrintSettings getPrintSettings()
	{
		// GtkPrintSettings* gtk_page_setup_unix_dialog_get_print_settings  (GtkPageSetupUnixDialog *dialog);
		auto p = gtk_page_setup_unix_dialog_get_print_settings(gtkPageSetupUnixDialog);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PrintSettings(cast(GtkPrintSettings*) p);
	}
}
