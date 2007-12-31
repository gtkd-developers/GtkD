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
 * inFile  = GtkPrintUnixDialog.html
 * outPack = gtk
 * outFile = PrintUnixDialog
 * strct   = GtkPrintUnixDialog
 * realStrct=
 * ctorStrct=
 * clss    = PrintUnixDialog
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_print_unix_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_print_unix_dialog_set_settings
 * 	- gtk_print_unix_dialog_get_settings
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.Window
 * 	- gtk.Printer
 * 	- gtk.PageSetup
 * 	- gtk.PrintSettings
 * structWrap:
 * 	- GtkPageSetup* -> PageSetup
 * 	- GtkPrintSettings* -> PrintSettings
 * 	- GtkPrinter* -> Printer
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 */

module gtk.PrintUnixDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.Widget;
private import gtk.Window;
private import gtk.Printer;
private import gtk.PageSetup;
private import gtk.PrintSettings;



private import gtk.Dialog;

/**
 * Description
 * GtkPrintUnixDialog implements a print dialog for platforms
 * which don't provide a native print dialog, like Unix. It can
 * be used very much like any other GTK+ dialog, at the cost of
 * the portability offered by the high-level printing API
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
 * Example42.A GtkPrintUnixDialog UI definition fragment.
 * <object class="GtkPrintUnixDialog" id="dialog1">
 *  <child internal-child="notebook">
 *  <object class="GtkNotebook" id="notebook">
 *  <child>
 *  <object class="GtkLabel" id="tabcontent">
 *  <property name="label">Content on notebook tab</property>
 *  </object>
 *  </child>
 *  <child type="tab">
 *  <object class="GtkLabel" id="tablabel">
 *  <property name="label">Tab label</property>
 *  </object>
 *  <packing>
 *  <property name="tab_expand">False</property>
 *  <property name="tab_fill">False</property>
 *  </packing>
 *  </child>
 *  </object>
 *  </child>
 * </object>
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
	protected void* getStruct()
	{
		return cast(void*)gtkPrintUnixDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPrintUnixDialog* gtkPrintUnixDialog)
	{
		if(gtkPrintUnixDialog is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkPrintUnixDialog passed to constructor.");
			else return;
		}
		super(cast(GtkDialog*)gtkPrintUnixDialog);
		this.gtkPrintUnixDialog = gtkPrintUnixDialog;
	}
	
	/**
	 * Sets the GtkPrintSettings for the GtkPrintUnixDialog. Typically,
	 * this is used to restore saved print settings from a previous print
	 * operation before the print dialog is shown.
	 * Since 2.10
	 * Params:
	 * settings =  a GtkPrintSettings, or NULL
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
		// GtkPrintSettings* gtk_print_unix_dialog_get_settings (GtkPrintUnixDialog *dialog);
		return new PrintSettings( gtk_print_unix_dialog_get_settings(gtkPrintUnixDialog) );
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkPrintUnixDialog.
	 * Since 2.10
	 * Params:
	 * title =  Title of the dialog, or NULL
	 * parent =  Transient parent of the dialog, or NULL
	 */
	public this (char[] title, Window parent)
	{
		// GtkWidget* gtk_print_unix_dialog_new (const gchar *title,  GtkWindow *parent);
		auto p = gtk_print_unix_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct());
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkPrintUnixDialog*) p);
	}
	
	/**
	 * Sets the page setup of the GtkPrintUnixDialog.
	 * Since 2.10
	 * Params:
	 * pageSetup =  a GtkPageSetup
	 */
	public void setPageSetup(PageSetup pageSetup)
	{
		// void gtk_print_unix_dialog_set_page_setup  (GtkPrintUnixDialog *dialog,  GtkPageSetup *page_setup);
		gtk_print_unix_dialog_set_page_setup(gtkPrintUnixDialog, (pageSetup is null) ? null : pageSetup.getPageSetupStruct());
	}
	
	/**
	 * Gets the page setup that is used by the GtkPrintUnixDialog.
	 * Since 2.10
	 * Returns: the page setup of dialog.
	 */
	public PageSetup getPageSetup()
	{
		// GtkPageSetup* gtk_print_unix_dialog_get_page_setup  (GtkPrintUnixDialog *dialog);
		auto p = gtk_print_unix_dialog_get_page_setup(gtkPrintUnixDialog);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PageSetup(cast(GtkPageSetup*) p);
	}
	
	/**
	 * Sets the current page number. If current_page is not -1, this enables
	 * the current page choice for the range of pages to print.
	 * Since 2.10
	 * Params:
	 * currentPage =  the current page number.
	 */
	public void setCurrentPage(int currentPage)
	{
		// void gtk_print_unix_dialog_set_current_page  (GtkPrintUnixDialog *dialog,  gint current_page);
		gtk_print_unix_dialog_set_current_page(gtkPrintUnixDialog, currentPage);
	}
	
	/**
	 * Gets the current page of the GtkPrintDialog.
	 * Since 2.10
	 * Returns: the current page of dialog
	 */
	public int getCurrentPage()
	{
		// gint gtk_print_unix_dialog_get_current_page  (GtkPrintUnixDialog *dialog);
		return gtk_print_unix_dialog_get_current_page(gtkPrintUnixDialog);
	}
	
	
	
	/**
	 * Gets the currently selected printer.
	 * Since 2.10
	 * Returns: the currently selected printer
	 */
	public Printer getSelectedPrinter()
	{
		// GtkPrinter* gtk_print_unix_dialog_get_selected_printer  (GtkPrintUnixDialog *dialog);
		auto p = gtk_print_unix_dialog_get_selected_printer(gtkPrintUnixDialog);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Printer(cast(GtkPrinter*) p);
	}
	
	/**
	 * Adds a custom tab to the print dialog.
	 * Since 2.10
	 * Params:
	 * child =  the widget to put in the custom tab
	 * tabLabel =  the widget to use as tab label
	 */
	public void addCustomTab(Widget child, Widget tabLabel)
	{
		// void gtk_print_unix_dialog_add_custom_tab  (GtkPrintUnixDialog *dialog,  GtkWidget *child,  GtkWidget *tab_label);
		gtk_print_unix_dialog_add_custom_tab(gtkPrintUnixDialog, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct());
	}
	
	
	/**
	 * This lets you specify the printing capabilities your application
	 * supports. For instance, if you can handle scaling the output then
	 * you pass GTK_PRINT_CAPABILITY_SCALE. If you don't pass that, then
	 * the dialog will only let you select the scale if the printing
	 * system automatically handles scaling.
	 * Since 2.10
	 * Params:
	 * capabilities =  the printing capabilities of your application
	 */
	public void setManualCapabilities(GtkPrintCapabilities capabilities)
	{
		// void gtk_print_unix_dialog_set_manual_capabilities  (GtkPrintUnixDialog *dialog,  GtkPrintCapabilities capabilities);
		gtk_print_unix_dialog_set_manual_capabilities(gtkPrintUnixDialog, capabilities);
	}
	
	
	
}
