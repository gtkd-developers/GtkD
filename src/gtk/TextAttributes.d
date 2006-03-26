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
 * outFile = TextAttributes
 * strct   = GtkTextAttributes
 * realStrct=
 * clss    = TextAttributes
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_text_attributes_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.TextAttributes
 * structWrap:
 * 	- GtkTextAttributes* -> TextAttributes
 * local aliases:
 */

module gtk.TextAttributes;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.TextAttributes;

/**
 * Description
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 * Tags should be in the GtkTextTagTable for a given GtkTextBuffer
 * before using them with that buffer.
 * gtk_text_buffer_create_tag() is the best way to create tags.
 * See gtk-demo for numerous examples.
 * The "invisible" property was not implemented for GTK+ 2.0; it's
 * planned to be implemented in future releases.
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
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	gboolean delegate(GObject*, GdkEvent*, GtkTextIter*, TextAttributes)[] onListeners;
	void addOn(gboolean delegate(GObject*, GdkEvent*, GtkTextIter*, TextAttributes) dlg)
	{
		if ( !("event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"event",
			cast(GCallback)&callBack,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["event"] = 1;
		}
		onListeners ~= dlg;
	}
	extern(C) static void callBack(GtkTextTag* texttagStruct, GObject* arg1, GdkEvent* event, GtkTextIter* arg2, TextAttributes textAttributes)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GObject*, GdkEvent*, GtkTextIter*, TextAttributes) dlg ; textAttributes.onListeners )
		{
			dlg(arg1, event, arg2, textAttributes);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	
	
	
	
	/**
	 * Creates a GtkTextAttributes, which describes
	 * a set of properties on some text.
	 * Returns:
	 *  a new GtkTextAttributes
	 */
	public this ()
	{
		// GtkTextAttributes* gtk_text_attributes_new (void);
		this(cast(GtkTextAttributes*)gtk_text_attributes_new() );
	}
	
	/**
	 * Copies src and returns a new GtkTextAttributes.
	 * src:
	 *  a GtkTextAttributes to be copied
	 * Returns:
	 *  a copy of src
	 */
	public TextAttributes copy()
	{
		// GtkTextAttributes* gtk_text_attributes_copy (GtkTextAttributes *src);
		return new TextAttributes( gtk_text_attributes_copy(gtkTextAttributes) );
	}
	
	/**
	 * Copies the values from src to dest so that dest has the same values
	 * as src. Frees existing values in dest.
	 * src:
	 *  a GtkTextAttributes
	 * dest:
	 *  another GtkTextAttributes
	 */
	public void copyValues(TextAttributes dest)
	{
		// void gtk_text_attributes_copy_values (GtkTextAttributes *src,  GtkTextAttributes *dest);
		gtk_text_attributes_copy_values(gtkTextAttributes, (dest is null) ? null : dest.getTextAttributesStruct());
	}
	
	/**
	 * Decrements the reference count on values, freeing the structure
	 * if the reference count reaches 0.
	 * values:
	 *  a GtkTextAttributes
	 */
	public void unref()
	{
		// void gtk_text_attributes_unref (GtkTextAttributes *values);
		gtk_text_attributes_unref(gtkTextAttributes);
	}
	
	/**
	 * Increments the reference count on values.
	 * values:
	 *  a GtkTextAttributes
	 * Returns:
	 *  the GtkTextAttributes that were passed in
	 * Property Details
	 * The "background" property
	 *  "background" gchararray : Write
	 * Background color as a string.
	 * Default value: NULL
	 */
	public TextAttributes ref()
	{
		// GtkTextAttributes* gtk_text_attributes_ref (GtkTextAttributes *values);
		return new TextAttributes( gtk_text_attributes_ref(gtkTextAttributes) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
