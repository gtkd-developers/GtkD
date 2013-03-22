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
 * inFile  = GtkFileChooserWidget.html
 * outPack = gtk
 * outFile = FileChooserWidget
 * strct   = GtkFileChooserWidget
 * realStrct=
 * ctorStrct=
 * clss    = FileChooserWidget
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- FileChooserIF
 * prefixes:
 * 	- gtk_file_chooser_widget_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.FileChooserT
 * 	- gtk.FileChooserIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.FileChooserWidget;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.FileChooserT;
private import gtk.FileChooserIF;



private import gtk.Box;

/**
 * GtkFileChooserWidget is a widget suitable for selecting files.
 * It is the main building block of a GtkFileChooserDialog. Most
 * applications will only need to use the latter; you can use
 * GtkFileChooserWidget as part of a larger window if you have
 * special needs.
 *
 * Note that GtkFileChooserWidget does not have any methods of its
 * own. Instead, you should use the functions that work on a
 * GtkFileChooser.
 */
public class FileChooserWidget : Box, FileChooserIF
{
	
	/** the main Gtk struct */
	protected GtkFileChooserWidget* gtkFileChooserWidget;
	
	
	public GtkFileChooserWidget* getFileChooserWidgetStruct()
	{
		return gtkFileChooserWidget;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFileChooserWidget;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFileChooserWidget* gtkFileChooserWidget)
	{
		super(cast(GtkBox*)gtkFileChooserWidget);
		this.gtkFileChooserWidget = gtkFileChooserWidget;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkFileChooserWidget = cast(GtkFileChooserWidget*)obj;
	}
	
	// add the FileChooser capabilities
	mixin FileChooserT!(GtkFileChooserWidget);
	
	/**
	 */
	
	/**
	 * Creates a new GtkFileChooserWidget. This is a file chooser widget that can
	 * be embedded in custom windows, and it is the same widget that is used by
	 * GtkFileChooserDialog.
	 * Since 2.4
	 * Params:
	 * action = Open or save mode for the widget
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GtkFileChooserAction action)
	{
		// GtkWidget * gtk_file_chooser_widget_new (GtkFileChooserAction action);
		auto p = gtk_file_chooser_widget_new(action);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_file_chooser_widget_new(action)");
		}
		this(cast(GtkFileChooserWidget*) p);
	}
}
