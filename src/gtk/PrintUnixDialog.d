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
 * inFile  = GtkPrintUnixDialog.html
 * outPack = gtk
 * outFile = PrintUnixDialog
 * strct   = GtkPrintUnixDialog
 * realStrct=
 * ctorStrct=
 * clss    = PrintUnixDialog
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_print_unix_dialog_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.PageSetup
 * 	- gtk.Printer
 * 	- gtk.PrintSettings
 * 	- gtk.Widget
 * 	- gtk.Window
 * structWrap:
 * 	- GtkPageSetup* -> PageSetup
 * 	- GtkPrintSettings* -> PrintSettings
 * 	- GtkPrinter* -> Printer
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 * 	- getSettings -> getPrintSettings
 * 	- setSettings -> setPrintSettings
 * overrides:
 */

module gtk.PrintUnixDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.PageSetup;
private import gtk.Printer;
private import gtk.PrintSettings;
private import gtk.Widget;
private import gtk.Window;



private import gtk.Dialog;

/**
 * Description
 * GtkPrintUnixDialog implements a print dialog for platforms
 * which don't provide a native print dialog, like Unix. It can
 * be used very much like any other GTK+ dialog, at the cost of
 * the portability offered by the
 * high-level printing API
 * In order to print something with GtkPrintUnixDialog, you need
 * to use gtk_print_unix_dialog_get_selected_printer() to obtain
 * a GtkPrinter object and use it to construct a GtkPrintJob using
 * gtk_print_job_new().
 * GtkPrintUnixDialog uses the following response values:
 * GTK_RESPONSE_OK
 * for the "Print" button
 * GTK_RESPONSE_APPLY
 * for the "Preview" button
 * GTK_RESPONSE_CANCEL
 * for the "Cancel" button
 * Printing support was added in GTK+ 2.10.
 * GtkPrintUnixDialog as GtkBuildable
 * The GtkPrintUnixDialog implementation of the GtkBuildable interface exposes its
 * notebook internal children with the name "notebook".
 * $(DDOC_COMMENT example)
 */
public class PrintUnixDialog : Dialog
{
	
	/** the main Gtk struct */
	protected GtkPrintUnixDialog* gtkPrintUnixDialog;
	
	
	public GtkPrintUnixDialog* getPrintUnixDialogStruct()
	{
		return gtkPrintUnixDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPrintUnixDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPrintUnixDialog* gtkPrintUnixDialog)
	{
		super(cast(GtkDialog*)gtkPrintUnixDialog);
		this.gtkPrintUnixDialog = gtkPrintUnixDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkPrintUnixDialog = cast(GtkPrintUnixDialog*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkPrintUnixDialog.
	 * Since 2.10
	 * Params:
	 * title = Title of the dialog, or NULL. [allow-none]
	 * parent = Transient parent of the dialog, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string title, Window parent)
	{
		// GtkWidget * gtk_print_unix_dialog_new (const gchar *title,  GtkWindow *parent);
		auto p = gtk_print_unix_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_print_unix_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct())");
		}
		this(cast(GtkPrintUnixDialog*) p);
	}
	
	/**
	 * Sets the page setup of the GtkPrintUnixDialog.
	 * Since 2.10
	 * Params:
	 * pageSetup = a GtkPageSetup
	 */
	public void setPageSetup(PageSetup pageSetup)
	{
		// void gtk_print_unix_dialog_set_page_setup  (GtkPrintUnixDialog *dialog,  GtkPageSetup *page_setup);
		gtk_print_unix_dialog_set_page_setup(gtkPrintUnixDialog, (pageSetup is null) ? null : pageSetup.getPageSetupStruct());
	}
	
	/**
	 * Gets the page setup that is used by the GtkPrintUnixDialog.
	 * Since 2.10
	 * Returns: the page setup of dialog. [transfer none]
	 */
	public PageSetup getPageSetup()
	{
		// GtkPageSetup * gtk_print_unix_dialog_get_page_setup  (GtkPrintUnixDialog *dialog);
		auto p = gtk_print_unix_dialog_get_page_setup(gtkPrintUnixDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) p);
	}
	
	/**
	 * Sets the current page number. If current_page is not -1, this enables
	 * the current page choice for the range of pages to print.
	 * Since 2.10
	 * Params:
	 * currentPage = the current page number.
	 */
	public void setCurrentPage(int currentPage)
	{
		// void gtk_print_unix_dialog_set_current_page  (GtkPrintUnixDialog *dialog,  gint current_page);
		gtk_print_unix_dialog_set_current_page(gtkPrintUnixDialog, currentPage);
	}
	
	/**
	 * Gets the current page of the GtkPrintUnixDialog.
	 * Since 2.10
	 * Returns: the current page of dialog
	 */
	public int getCurrentPage()
	{
		// gint gtk_print_unix_dialog_get_current_page  (GtkPrintUnixDialog *dialog);
		return gtk_print_unix_dialog_get_current_page(gtkPrintUnixDialog);
	}
	
	/**
	 * Sets the GtkPrintSettings for the GtkPrintUnixDialog. Typically,
	 * this is used to restore saved print settings from a previous print
	 * operation before the print dialog is shown.
	 * Since 2.10
	 * Params:
	 * settings = a GtkPrintSettings, or NULL. [allow-none]
	 */
	public void setPrintSettings(PrintSettings settings)
	{
		// void gtk_print_unix_dialog_set_settings (GtkPrintUnixDialog *dialog,  GtkPrintSettings *settings);
		gtk_print_unix_dialog_set_settings(gtkPrintUnixDialog, (settings is null) ? null : settings.getPrintSettingsStruct());
	}
	
	/**
	 * Gets a new GtkPrintSettings object that represents the
	 * current values in the print dialog. Note that this creates a
	 * new object, and you need to unref it
	 * if don't want to keep it.
	 * Since 2.10
	 * Returns: a new GtkPrintSettings object with the values from dialog
	 */
	public PrintSettings getPrintSettings()
	{
		// GtkPrintSettings * gtk_print_unix_dialog_get_settings (GtkPrintUnixDialog *dialog);
		auto p = gtk_print_unix_dialog_get_settings(gtkPrintUnixDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PrintSettings)(cast(GtkPrintSettings*) p);
	}
	
	/**
	 * Gets the currently selected printer.
	 * Since 2.10
	 * Returns: the currently selected printer. [transfer none]
	 */
	public Printer getSelectedPrinter()
	{
		// GtkPrinter * gtk_print_unix_dialog_get_selected_printer  (GtkPrintUnixDialog *dialog);
		auto p = gtk_print_unix_dialog_get_selected_printer(gtkPrintUnixDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Printer)(cast(GtkPrinter*) p);
	}
	
	/**
	 * Adds a custom tab to the print dialog.
	 * Since 2.10
	 * Params:
	 * child = the widget to put in the custom tab
	 * tabLabel = the widget to use as tab label
	 */
	public void addCustomTab(Widget child, Widget tabLabel)
	{
		// void gtk_print_unix_dialog_add_custom_tab  (GtkPrintUnixDialog *dialog,  GtkWidget *child,  GtkWidget *tab_label);
		gtk_print_unix_dialog_add_custom_tab(gtkPrintUnixDialog, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct());
	}
	
	/**
	 * Sets whether the print dialog allows user to print a selection.
	 * Since 2.18
	 * Params:
	 * supportSelection = TRUE to allow print selection
	 */
	public void setSupportSelection(int supportSelection)
	{
		// void gtk_print_unix_dialog_set_support_selection  (GtkPrintUnixDialog *dialog,  gboolean support_selection);
		gtk_print_unix_dialog_set_support_selection(gtkPrintUnixDialog, supportSelection);
	}
	
	/**
	 * Gets the value of "support-selection" property.
	 * Since 2.18
	 * Returns: whether the application supports print of selection
	 */
	public int getSupportSelection()
	{
		// gboolean gtk_print_unix_dialog_get_support_selection  (GtkPrintUnixDialog *dialog);
		return gtk_print_unix_dialog_get_support_selection(gtkPrintUnixDialog);
	}
	
	/**
	 * Sets whether a selection exists.
	 * Since 2.18
	 * Params:
	 * hasSelection = TRUE indicates that a selection exists
	 */
	public void setHasSelection(int hasSelection)
	{
		// void gtk_print_unix_dialog_set_has_selection  (GtkPrintUnixDialog *dialog,  gboolean has_selection);
		gtk_print_unix_dialog_set_has_selection(gtkPrintUnixDialog, hasSelection);
	}
	
	/**
	 * Gets the value of "has-selection" property.
	 * Since 2.18
	 * Returns: whether there is a selection
	 */
	public int getHasSelection()
	{
		// gboolean gtk_print_unix_dialog_get_has_selection  (GtkPrintUnixDialog *dialog);
		return gtk_print_unix_dialog_get_has_selection(gtkPrintUnixDialog);
	}
	
	/**
	 * Embed page size combo box and orientation combo box into page setup page.
	 * Since 2.18
	 * Params:
	 * embed = embed page setup selection
	 */
	public void setEmbedPageSetup(int embed)
	{
		// void gtk_print_unix_dialog_set_embed_page_setup  (GtkPrintUnixDialog *dialog,  gboolean embed);
		gtk_print_unix_dialog_set_embed_page_setup(gtkPrintUnixDialog, embed);
	}
	
	/**
	 * Gets the value of "embed-page-setup" property.
	 * Since 2.18
	 * Returns: whether there is a selection
	 */
	public int getEmbedPageSetup()
	{
		// gboolean gtk_print_unix_dialog_get_embed_page_setup  (GtkPrintUnixDialog *dialog);
		return gtk_print_unix_dialog_get_embed_page_setup(gtkPrintUnixDialog);
	}
	
	/**
	 * Gets the page setup that is used by the GtkPrintUnixDialog.
	 * Since 2.18
	 * Returns: whether a page setup was set by user.
	 */
	public int getPageSetupSet()
	{
		// gboolean gtk_print_unix_dialog_get_page_setup_set  (GtkPrintUnixDialog *dialog);
		return gtk_print_unix_dialog_get_page_setup_set(gtkPrintUnixDialog);
	}
	
	/**
	 * This lets you specify the printing capabilities your application
	 * supports. For instance, if you can handle scaling the output then
	 * you pass GTK_PRINT_CAPABILITY_SCALE. If you don't pass that, then
	 * the dialog will only let you select the scale if the printing
	 * system automatically handles scaling.
	 * Since 2.10
	 * Params:
	 * capabilities = the printing capabilities of your application
	 */
	public void setManualCapabilities(GtkPrintCapabilities capabilities)
	{
		// void gtk_print_unix_dialog_set_manual_capabilities  (GtkPrintUnixDialog *dialog,  GtkPrintCapabilities capabilities);
		gtk_print_unix_dialog_set_manual_capabilities(gtkPrintUnixDialog, capabilities);
	}
	
	/**
	 * Gets the value of "manual-capabilities" property.
	 * Since 2.18
	 * Returns: the printing capabilities
	 */
	public GtkPrintCapabilities getManualCapabilities()
	{
		// GtkPrintCapabilities gtk_print_unix_dialog_get_manual_capabilities  (GtkPrintUnixDialog *dialog);
		return gtk_print_unix_dialog_get_manual_capabilities(gtkPrintUnixDialog);
	}
}
