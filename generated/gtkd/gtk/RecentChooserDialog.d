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


module gtk.RecentChooserDialog;

private import glib.ConstructionException;
private import gtk.Dialog;
private import gtk.RecentChooserIF;
private import gtk.RecentChooserT;
private import gtk.RecentManager;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * #GtkRecentChooserDialog is a dialog box suitable for displaying the recently
 * used documents.  This widgets works by putting a #GtkRecentChooserWidget inside
 * a #GtkDialog.  It exposes the #GtkRecentChooserIface interface, so you can use
 * all the #GtkRecentChooser functions on the recent chooser dialog as well as
 * those for #GtkDialog.
 * 
 * Note that #GtkRecentChooserDialog does not have any methods of its own.
 * Instead, you should use the functions that work on a #GtkRecentChooser.
 * 
 * ## Typical usage ## {#gtkrecentchooser-typical-usage}
 * 
 * In the simplest of cases, you can use the following code to use
 * a #GtkRecentChooserDialog to select a recently used file:
 * 
 * |[<!-- language="C" -->
 * GtkWidget *dialog;
 * gint res;
 * 
 * dialog = gtk_recent_chooser_dialog_new ("Recent Documents",
 * parent_window,
 * _("_Cancel"),
 * GTK_RESPONSE_CANCEL,
 * _("_Open"),
 * GTK_RESPONSE_ACCEPT,
 * NULL);
 * 
 * res = gtk_dialog_run (GTK_DIALOG (dialog));
 * if (res == GTK_RESPONSE_ACCEPT)
 * {
 * GtkRecentInfo *info;
 * GtkRecentChooser *chooser = GTK_RECENT_CHOOSER (dialog);
 * 
 * info = gtk_recent_chooser_get_current_item (chooser);
 * open_file (gtk_recent_info_get_uri (info));
 * gtk_recent_info_unref (info);
 * }
 * 
 * gtk_widget_destroy (dialog);
 * ]|
 * 
 * Recently used files are supported since GTK+ 2.10.
 */
public class RecentChooserDialog : Dialog, RecentChooserIF
{
	/** the main Gtk struct */
	protected GtkRecentChooserDialog* gtkRecentChooserDialog;

	/** Get the main Gtk struct */
	public GtkRecentChooserDialog* getRecentChooserDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRecentChooserDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRecentChooserDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRecentChooserDialog* gtkRecentChooserDialog, bool ownedRef = false)
	{
		this.gtkRecentChooserDialog = gtkRecentChooserDialog;
		super(cast(GtkDialog*)gtkRecentChooserDialog, ownedRef);
	}

	// add the RecentChooser capabilities
	mixin RecentChooserT!(GtkRecentChooserDialog);

	/**
	 * Creates a new GtkRecentChooserDialog with a specified recent manager.
	 * This is useful if you have implemented your own recent manager, or if you
	 * have a customized instance of a GtkRecentManager object.
	 * Since 2.10
	 * Params:
	 *  title =  Title of the dialog, or null
	 *  parent =  Transient parent of the dialog, or null,
	 *  manager =  a GtkRecentManager, or null
	 *  buttonsText = text to go in the buttons
	 *  responses = response ID's for the buttons
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string title, Window parent, RecentManager manager,  string[] buttonsText=null, ResponseType[] responses=null )
	{
		// GtkWidget* gtk_recent_chooser_dialog_new_for_manager  (const gchar *title,  GtkWindow *parent,  GtkRecentManager *manager, const gchar *first_button_text,  ...);
		auto p = gtk_recent_chooser_dialog_new_for_manager(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct(), (manager is null) ? null : manager.getRecentManagerStruct(), null);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_recent_chooser_dialog_new_for_manager");
		}
		this(cast(GtkRecentChooserDialog*) p);
		addButtons(buttonsText, responses);
	}

	/**
	 * Creates a new GtkRecentChooserDialog with a specified recent manager.
	 * This is useful if you have implemented your own recent manager, or if you
	 * have a customized instance of a GtkRecentManager object.
	 * Since 2.10
	 * Params:
	 *  title =  Title of the dialog, or null
	 *  parent =  Transient parent of the dialog, or null,
	 *  manager =  a GtkRecentManager, or null
	 *  stockIDs = stockIDs of the buttons
	 *  responses = response ID's for the buttons
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string title, Window parent, RecentManager manager,  StockID[] stockIDs, ResponseType[] responses=null )
	{
		// GtkWidget* gtk_recent_chooser_dialog_new_for_manager  (const gchar *title,  GtkWindow *parent,  GtkRecentManager *manager, const gchar *first_button_text,  ...);
		auto p = gtk_recent_chooser_dialog_new_for_manager(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct(), (manager is null) ? null : manager.getRecentManagerStruct(), null);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_recent_chooser_dialog_new_for_manager");
		}
		this(cast(GtkRecentChooserDialog*) p);
		addButtons(stockIDs, responses);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_recent_chooser_dialog_get_type();
	}
}
