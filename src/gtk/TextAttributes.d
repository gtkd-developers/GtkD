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
 * inFile  = 
 * outPack = gtk
 * outFile = TextAttributes
 * strct   = GtkTextAttributes
 * realStrct=
 * ctorStrct=
 * clss    = TextAttributes
 * interf  = 
 * class Code: No
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
 * imports:
 * 	- gtk.TextAttributes
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

private import gobject.Signals;
public  import gtkc.gdktypes;

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
		if(gtkTextAttributes is null)
		{
			this = null;
			return;
		}
		this.gtkTextAttributes = gtkTextAttributes;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	gboolean delegate(GObject*, GdkEvent*, GtkTextIter*, TextAttributes)[] onListeners;
	/**
	 * The ::event signal is emitted when an event occurs on a region of the
	 * buffer marked with this tag.
	 */
	void addOn(gboolean delegate(GObject*, GdkEvent*, GtkTextIter*, TextAttributes) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"event",
			cast(GCallback)&callBack,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["event"] = 1;
		}
		onListeners ~= dlg;
	}
	extern(C) static void callBack(GtkTextTag* tagStruct, GObject* object, GdkEvent* event, GtkTextIter* iter, TextAttributes textAttributes)
	{
		bool consumed = false;
		
		foreach ( gboolean delegate(GObject*, GdkEvent*, GtkTextIter*, TextAttributes) dlg ; textAttributes.onListeners )
		{
			dlg(object, event, iter, textAttributes);
		}
		
		return consumed;
	}
	
	
	/**
	 * Creates a GtkTextAttributes, which describes
	 * a set of properties on some text.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkTextAttributes* gtk_text_attributes_new (void);
		auto p = gtk_text_attributes_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_text_attributes_new()");
		}
		this(cast(GtkTextAttributes*) p);
	}
	
	/**
	 * Copies src and returns a new GtkTextAttributes.
	 * Returns: a copy of src
	 */
	public TextAttributes copy()
	{
		// GtkTextAttributes* gtk_text_attributes_copy (GtkTextAttributes *src);
		auto p = gtk_text_attributes_copy(gtkTextAttributes);
		if(p is null)
		{
			return null;
		}
		return new TextAttributes(cast(GtkTextAttributes*) p);
	}
	
	/**
	 * Copies the values from src to dest so that dest has the same values
	 * as src. Frees existing values in dest.
	 * Params:
	 * dest =  another GtkTextAttributes
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
		// GtkTextAttributes* gtk_text_attributes_ref (GtkTextAttributes *values);
		auto p = gtk_text_attributes_ref(gtkTextAttributes);
		if(p is null)
		{
			return null;
		}
		return new TextAttributes(cast(GtkTextAttributes*) p);
	}
}
