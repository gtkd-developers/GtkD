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
 * inFile  = GtkSourceMark.html
 * outPack = gsv
 * outFile = SourceMark
 * strct   = GtkSourceMark
 * realStrct=
 * ctorStrct=
 * clss    = SourceMark
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_mark_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GtkSourceMark* -> SourceMark
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceMark;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;



private import gtk.TextMark;

/**
 * Description
 * A GtkSourceMark marks a position in the text where you want to display
 * additional info. It is based on GtkTextMark and thus is still valid after
 * the text has changed though its position may change.
 * GtkSourceMarks are organised in categories which you have to set
 * when you create the mark. Each category can have a pixbuf and a priority
 * associated using gtk_source_view_set_mark_category_pixbuf and
 * gtk_source_view_set_mark_category_priority. The pixbuf will be displayed in
 * the margin at the line where the mark residents if the
 * "show-line-marks" property is set to TRUE. If there are
 * multiple marks in the same line, the pixbufs will be drawn on top of each
 * other. The mark with the highest priority will be drawn on top.
 */
public class SourceMark : TextMark
{
	
	/** the main Gtk struct */
	protected GtkSourceMark* gtkSourceMark;
	
	
	public GtkSourceMark* getSourceMarkStruct()
	{
		return gtkSourceMark;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceMark;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceMark* gtkSourceMark)
	{
		super(cast(GtkTextMark*)gtkSourceMark);
		this.gtkSourceMark = gtkSourceMark;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceMark = cast(GtkSourceMark*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a text mark. Add it to a buffer using gtk_text_buffer_add_mark().
	 * If name is NULL, the mark is anonymous; otherwise, the mark can be retrieved
	 * by name using gtk_text_buffer_get_mark().
	 * Normally marks are created using the utility function
	 * gtk_source_buffer_create_mark().
	 * Since 2.2
	 * Params:
	 * name = Name of the GtkSourceMark, can be NULL when not using a name
	 * category = is used to classify marks according to common characteristics
	 * (e.g. all the marks representing a bookmark could belong to the "bookmark"
	 * category, or all the marks representing a compilation error could belong to
	 * "error" category).
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string category)
	{
		// GtkSourceMark * gtk_source_mark_new (const gchar *name,  const gchar *category);
		auto p = gtk_source_mark_new(Str.toStringz(name), Str.toStringz(category));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_mark_new(Str.toStringz(name), Str.toStringz(category))");
		}
		this(cast(GtkSourceMark*) p);
	}
	
	/**
	 * Returns the mark category.
	 * Since 2.2
	 * Returns: the category of the GtkSourceMark.
	 */
	public string getCategory()
	{
		// const gchar * gtk_source_mark_get_category (GtkSourceMark *mark);
		return Str.toString(gtk_source_mark_get_category(gtkSourceMark));
	}
	
	/**
	 * Returns the next GtkSourceMark in the buffer or NULL if the mark
	 * was not added to a buffer. If there is no next mark, NULL will be returned.
	 * If category is NULL, looks for marks of any category.
	 * Since 2.2
	 * Params:
	 * category = a string specifying the mark category, or NULL. [allow-none]
	 * Returns: the next GtkSourceMark, or NULL. [transfer none]
	 */
	public SourceMark next(string category)
	{
		// GtkSourceMark * gtk_source_mark_next (GtkSourceMark *mark,  const gchar *category);
		auto p = gtk_source_mark_next(gtkSourceMark, Str.toStringz(category));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceMark)(cast(GtkSourceMark*) p);
	}
	
	/**
	 * Returns the previous GtkSourceMark in the buffer or NULL if the mark
	 * was not added to a buffer. If there is no previous mark, NULL is returned.
	 * If category is NULL, looks for marks of any category
	 * Since 2.2
	 * Params:
	 * category = a string specifying the mark category, or NULL.
	 * Returns: the previous GtkSourceMark, or NULL. [transfer none]
	 */
	public SourceMark prev(string category)
	{
		// GtkSourceMark * gtk_source_mark_prev (GtkSourceMark *mark,  const gchar *category);
		auto p = gtk_source_mark_prev(gtkSourceMark, Str.toStringz(category));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceMark)(cast(GtkSourceMark*) p);
	}
}
