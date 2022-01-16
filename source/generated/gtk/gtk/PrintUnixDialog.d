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


module gtk.PrintUnixDialog;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Dialog;
private import gtk.PageSetup;
private import gtk.PrintSettings;
private import gtk.Printer;
private import gtk.Settings;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkPrintUnixDialog` implements a print dialog for platforms
 * which don’t provide a native print dialog, like Unix.
 * 
 * ![An example GtkPrintUnixDialog](printdialog.png)
 * 
 * It can be used very much like any other GTK dialog, at the cost of
 * the portability offered by the high-level printing API with
 * [class@Gtk.PrintOperation].
 * 
 * In order to print something with `GtkPrintUnixDialog`, you need to
 * use [method@Gtk.PrintUnixDialog.get_selected_printer] to obtain a
 * [class@Gtk.Printer] object and use it to construct a [class@Gtk.PrintJob]
 * using [ctor@Gtk.PrintJob.new].
 * 
 * `GtkPrintUnixDialog` uses the following response values:
 * 
 * - %GTK_RESPONSE_OK: for the “Print” button
 * - %GTK_RESPONSE_APPLY: for the “Preview” button
 * - %GTK_RESPONSE_CANCEL: for the “Cancel” button
 * 
 * # GtkPrintUnixDialog as GtkBuildable
 * 
 * The `GtkPrintUnixDialog` implementation of the `GtkBuildable` interface
 * exposes its @notebook internal children with the name “notebook”.
 * 
 * An example of a `GtkPrintUnixDialog` UI definition fragment:
 * 
 * ```xml
 * <object class="GtkPrintUnixDialog" id="dialog1">
 * <child internal-child="notebook">
 * <object class="GtkNotebook" id="notebook">
 * <child>
 * <object type="GtkNotebookPage">
 * <property name="tab_expand">False</property>
 * <property name="tab_fill">False</property>
 * <property name="tab">
 * <object class="GtkLabel" id="tablabel">
 * <property name="label">Tab label</property>
 * </object>
 * </property>
 * <property name="child">
 * <object class="GtkLabel" id="tabcontent">
 * <property name="label">Content on notebook tab</property>
 * </object>
 * </property>
 * </object>
 * </child>
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * # CSS nodes
 * 
 * `GtkPrintUnixDialog` has a single CSS node with name window. The style classes
 * dialog and print are added.
 */
public class PrintUnixDialog : Dialog
{
	/** the main Gtk struct */
	protected GtkPrintUnixDialog* gtkPrintUnixDialog;

	/** Get the main Gtk struct */
	public GtkPrintUnixDialog* getPrintUnixDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPrintUnixDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPrintUnixDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPrintUnixDialog* gtkPrintUnixDialog, bool ownedRef = false)
	{
		this.gtkPrintUnixDialog = gtkPrintUnixDialog;
		super(cast(GtkDialog*)gtkPrintUnixDialog, ownedRef);
	}

	/**
	 * Gets a new `GtkPrintSettings` object that represents the
	 * current values in the print dialog.
	 *
	 * Note that this creates a new object, and you need to unref
	 * it if don’t want to keep it.
	 *
	 * Returns: a new `GtkPrintSettings` object with the values from @dialog
	 */
	public override Settings getSettings()
	{
		auto __p = gtk_print_unix_dialog_get_settings(gtkPrintUnixDialog);

		if(__p is null)
		{
			return null;
		}

		return cast(Settings)ObjectG.getDObject!(PrintSettings)(cast(GtkPrintSettings*) __p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_print_unix_dialog_get_type();
	}

	/**
	 * Creates a new `GtkPrintUnixDialog`.
	 *
	 * Params:
	 *     title = Title of the dialog
	 *     parent = Transient parent of the dialog
	 *
	 * Returns: a new `GtkPrintUnixDialog`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title, Window parent)
	{
		auto __p = gtk_print_unix_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPrintUnixDialog*) __p);
	}

	/**
	 * Adds a custom tab to the print dialog.
	 *
	 * Params:
	 *     child = the widget to put in the custom tab
	 *     tabLabel = the widget to use as tab label
	 */
	public void addCustomTab(Widget child, Widget tabLabel)
	{
		gtk_print_unix_dialog_add_custom_tab(gtkPrintUnixDialog, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct());
	}

	/**
	 * Gets the current page of the `GtkPrintUnixDialog`.
	 *
	 * Returns: the current page of @dialog
	 */
	public int getCurrentPage()
	{
		return gtk_print_unix_dialog_get_current_page(gtkPrintUnixDialog);
	}

	/**
	 * Gets whether to embed the page setup.
	 *
	 * Returns: whether to embed the page setup
	 */
	public bool getEmbedPageSetup()
	{
		return gtk_print_unix_dialog_get_embed_page_setup(gtkPrintUnixDialog) != 0;
	}

	/**
	 * Gets whether there is a selection.
	 *
	 * Returns: whether there is a selection
	 */
	public bool getHasSelection()
	{
		return gtk_print_unix_dialog_get_has_selection(gtkPrintUnixDialog) != 0;
	}

	/**
	 * Gets the capabilities that have been set on this `GtkPrintUnixDialog`.
	 *
	 * Returns: the printing capabilities
	 */
	public GtkPrintCapabilities getManualCapabilities()
	{
		return gtk_print_unix_dialog_get_manual_capabilities(gtkPrintUnixDialog);
	}

	/**
	 * Gets the page setup that is used by the `GtkPrintUnixDialog`.
	 *
	 * Returns: the page setup of @dialog.
	 */
	public PageSetup getPageSetup()
	{
		auto __p = gtk_print_unix_dialog_get_page_setup(gtkPrintUnixDialog);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) __p);
	}

	/**
	 * Gets whether a page setup was set by the user.
	 *
	 * Returns: whether a page setup was set by user.
	 */
	public bool getPageSetupSet()
	{
		return gtk_print_unix_dialog_get_page_setup_set(gtkPrintUnixDialog) != 0;
	}

	/**
	 * Gets the currently selected printer.
	 *
	 * Returns: the currently selected printer
	 */
	public Printer getSelectedPrinter()
	{
		auto __p = gtk_print_unix_dialog_get_selected_printer(gtkPrintUnixDialog);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Printer)(cast(GtkPrinter*) __p);
	}

	/**
	 * Gets whether the print dialog allows user to print a selection.
	 *
	 * Returns: whether the application supports print of selection
	 */
	public bool getSupportSelection()
	{
		return gtk_print_unix_dialog_get_support_selection(gtkPrintUnixDialog) != 0;
	}

	/**
	 * Sets the current page number.
	 *
	 * If @current_page is not -1, this enables the current page choice
	 * for the range of pages to print.
	 *
	 * Params:
	 *     currentPage = the current page number.
	 */
	public void setCurrentPage(int currentPage)
	{
		gtk_print_unix_dialog_set_current_page(gtkPrintUnixDialog, currentPage);
	}

	/**
	 * Embed page size combo box and orientation combo box into page setup page.
	 *
	 * Params:
	 *     embed = embed page setup selection
	 */
	public void setEmbedPageSetup(bool embed)
	{
		gtk_print_unix_dialog_set_embed_page_setup(gtkPrintUnixDialog, embed);
	}

	/**
	 * Sets whether a selection exists.
	 *
	 * Params:
	 *     hasSelection = %TRUE indicates that a selection exists
	 */
	public void setHasSelection(bool hasSelection)
	{
		gtk_print_unix_dialog_set_has_selection(gtkPrintUnixDialog, hasSelection);
	}

	/**
	 * This lets you specify the printing capabilities your application
	 * supports.
	 *
	 * For instance, if you can handle scaling the output then you pass
	 * %GTK_PRINT_CAPABILITY_SCALE. If you don’t pass that, then the dialog
	 * will only let you select the scale if the printing system automatically
	 * handles scaling.
	 *
	 * Params:
	 *     capabilities = the printing capabilities of your application
	 */
	public void setManualCapabilities(GtkPrintCapabilities capabilities)
	{
		gtk_print_unix_dialog_set_manual_capabilities(gtkPrintUnixDialog, capabilities);
	}

	/**
	 * Sets the page setup of the `GtkPrintUnixDialog`.
	 *
	 * Params:
	 *     pageSetup = a `GtkPageSetup`
	 */
	public void setPageSetup(PageSetup pageSetup)
	{
		gtk_print_unix_dialog_set_page_setup(gtkPrintUnixDialog, (pageSetup is null) ? null : pageSetup.getPageSetupStruct());
	}

	/**
	 * Sets the `GtkPrintSettings` for the `GtkPrintUnixDialog`.
	 *
	 * Typically, this is used to restore saved print settings
	 * from a previous print operation before the print dialog
	 * is shown.
	 *
	 * Params:
	 *     settings = a `GtkPrintSettings`
	 */
	public void setSettings(PrintSettings settings)
	{
		gtk_print_unix_dialog_set_settings(gtkPrintUnixDialog, (settings is null) ? null : settings.getPrintSettingsStruct());
	}

	/**
	 * Sets whether the print dialog allows user to print a selection.
	 *
	 * Params:
	 *     supportSelection = %TRUE to allow print selection
	 */
	public void setSupportSelection(bool supportSelection)
	{
		gtk_print_unix_dialog_set_support_selection(gtkPrintUnixDialog, supportSelection);
	}
}
