/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = FileChooserWidget
 * strct   = GtkFileChooserWidget
 * clss    = FileChooserWidget
 * prefixes:
 * 	- gtk_file_chooser_widget_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.ListSG;
 * 	- gtk.Widget;
 * 	- gtk.FileFilter;
 * 	- gtk.FileChooser;
 * structWrap:
 * local aliases:
 */

module gtk.FileChooserWidget;

private import gtk.typedefs;

private import lib.gtk;

private import glib.ListSG;;private import gtk.Widget;;private import gtk.FileFilter;;private import gtk.FileChooser;;
/**
 * Description
 *  GtkFileChooserWidget is a widget suitable for selecting files.
 *  It is the main building block of a GtkFileChooserDialog. Most
 *  applications will only need to use the latter; you can use
 *  GtkFileChooserWidget as part of a larger window if you have
 *  special needs.
 *  Note that GtkFileChooserWidget does not have any methods of its
 *  own. Instead, you should use the functions that work on a
 *  GtkFileChooser.
 */
private import gtk.VBox;
public class FileChooserWidget : VBox
{
	
	/** the main Gtk struct */
	protected GtkFileChooserWidget* gtkFileChooserWidget;
	
	
	public GtkFileChooserWidget* getFileChooserWidgetStruct()
	{
		return gtkFileChooserWidget;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkFileChooserWidget;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFileChooserWidget* gtkFileChooserWidget)
	{
		super(cast(GtkVBox*)gtkFileChooserWidget);
		this.gtkFileChooserWidget = gtkFileChooserWidget;
	}
	
	private FileChooser fileChooser;
	
	public FileChooser getFileChooser()
	{
		if ( fileChooser is null )
		{
			fileChooser = new FileChooser(cast(GtkFileChooser*)getFileChooserWidgetStruct());
		}
		return fileChooser;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkFileChooserWidget. This is a file chooser widget that can
	 * be embedded in custom windows, and it is the same widget that is used by
	 * GtkFileChooserDialog.
	 * action:
	 *  Open or save mode for the widget
	 * Returns:
	 *  a new GtkFileChooserWidget
	 * Since 2.4
	 */
	public this (GtkFileChooserAction action)
	{
		// GtkWidget* gtk_file_chooser_widget_new (GtkFileChooserAction action);
		this(cast(GtkFileChooserWidget*)gtk_file_chooser_widget_new(action) );
	}
	
	/**
	 * Creates a new GtkFileChooserWidget with a specified backend. This is
	 * especially useful if you use gtk_file_chooser_set_local_only() to allow
	 * non-local files. This is a file chooser widget that can be embedded in
	 * custom windows and it is the same widget that is used by
	 * GtkFileChooserDialog.
	 * action:
	 *  Open or save mode for the widget
	 * backend:
	 *  The name of the specific filesystem backend to use.
	 * Returns:
	 *  a new GtkFileChooserWidget
	 * Since 2.4
	 * See Also
	 *  GtkFileChooser, GtkFileChooserDialog
	 */
	public this (GtkFileChooserAction action, char[] backend)
	{
		// GtkWidget* gtk_file_chooser_widget_new_with_backend  (GtkFileChooserAction action,  const gchar *backend);
		this(cast(GtkFileChooserWidget*)gtk_file_chooser_widget_new_with_backend(action, std.string.toStringz(backend)) );
	}
}
