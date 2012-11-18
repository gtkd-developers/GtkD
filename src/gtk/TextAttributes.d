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
 * inFile  = 
 * outPack = gtk
 * outFile = TextAttributes
 * strct   = GtkTextAttributes
 * realStrct=
 * ctorStrct=
 * clss    = TextAttributes
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_text_attributes_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * 	- event
 * imports:
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GtkTextAttributes* -> TextAttributes
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TextAttributes;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtkc.Loader;
private import gtkc.paths;




/**
 * Description
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and
 * data types related to the text widget and how they work together.
 * Tags should be in the GtkTextTagTable for a given GtkTextBuffer
 * before using them with that buffer.
 * gtk_text_buffer_create_tag() is the best way to create tags.
 * See gtk3-demo for numerous examples.
 * For each property of GtkTextTag, there is a "set" property, e.g.
 * "font-set" corresponds to "font". These "set" properties reflect
 * whether a property has been set or not.
 * You should not set them independently.
 */
public class TextAttributes
{
	
	/** the main Gtk struct */
	protected GtkTextAttributes* gtkTextAttributes;
	
	
	public GtkTextAttributes* getTextAttributesStruct()
	{
		return gtkTextAttributes;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTextAttributes;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTextAttributes* gtkTextAttributes)
	{
		this.gtkTextAttributes = gtkTextAttributes;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GTK) && gtkTextAttributes !is null )
		{
			gtk_text_attributes_unref(gtkTextAttributes);
		}
	}
	
	//TODO: properties ?
	
	/**
	 */
	
	/**
	 * Creates a GtkTextAttributes, which describes
	 * a set of properties on some text.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkTextAttributes * gtk_text_attributes_new (void);
		auto p = gtk_text_attributes_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_text_attributes_new()");
		}
		this(cast(GtkTextAttributes*) p);
	}
	
	/**
	 * Copies src and returns a new GtkTextAttributes.
	 * Returns: a copy of src, free with gtk_text_attributes_unref()
	 */
	public TextAttributes copy()
	{
		// GtkTextAttributes * gtk_text_attributes_copy (GtkTextAttributes *src);
		auto p = gtk_text_attributes_copy(gtkTextAttributes);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextAttributes)(cast(GtkTextAttributes*) p);
	}
	
	/**
	 * Copies the values from src to dest so that dest has
	 * the same values as src. Frees existing values in dest.
	 * Params:
	 * dest = another GtkTextAttributes
	 */
	public void copyValues(TextAttributes dest)
	{
		// void gtk_text_attributes_copy_values (GtkTextAttributes *src,  GtkTextAttributes *dest);
		gtk_text_attributes_copy_values(gtkTextAttributes, (dest is null) ? null : dest.getTextAttributesStruct());
	}
	
	/**
	 * Decrements the reference count on values, freeing the structure
	 * if the reference count reaches 0.
	 */
	public void unref()
	{
		// void gtk_text_attributes_unref (GtkTextAttributes *values);
		gtk_text_attributes_unref(gtkTextAttributes);
	}
	
	/**
	 * Increments the reference count on values.
	 * Returns: the GtkTextAttributes that were passed in
	 */
	public TextAttributes doref()
	{
		// GtkTextAttributes * gtk_text_attributes_ref (GtkTextAttributes *values);
		auto p = gtk_text_attributes_ref(gtkTextAttributes);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextAttributes)(cast(GtkTextAttributes*) p);
	}
}
