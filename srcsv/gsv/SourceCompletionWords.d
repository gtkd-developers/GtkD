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
 * inFile  = GtkSourceCompletionWords.html
 * outPack = gsv
 * outFile = SourceCompletionWords
 * strct   = GtkSourceCompletionWords
 * realStrct=
 * ctorStrct=
 * clss    = SourceCompletionWords
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_completion_words_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixbuf
 * 	- gtk.TextBuffer
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkTextBuffer* -> TextBuffer
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceCompletionWords;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Pixbuf;
private import gtk.TextBuffer;



private import gobject.ObjectG;

/**
 * The GtkSourceCompletionWords is an example of an implementation of
 * the GtkSourceCompletionProvider interface. The proposals are words
 * appearing in the registered GtkTextBuffers.
 */
public class SourceCompletionWords : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceCompletionWords* gtkSourceCompletionWords;
	
	
	public GtkSourceCompletionWords* getSourceCompletionWordsStruct()
	{
		return gtkSourceCompletionWords;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionWords;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceCompletionWords* gtkSourceCompletionWords)
	{
		super(cast(GObject*)gtkSourceCompletionWords);
		this.gtkSourceCompletionWords = gtkSourceCompletionWords;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceCompletionWords = cast(GtkSourceCompletionWords*)obj;
	}
	
	/**
	 */
	
	/**
	 * Params:
	 * name = The name for the provider. [allow-none]
	 * icon = A specific icon for the provider. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, Pixbuf icon)
	{
		// GtkSourceCompletionWords * gtk_source_completion_words_new  (const gchar *name,  GdkPixbuf *icon);
		auto p = gtk_source_completion_words_new(Str.toStringz(name), (icon is null) ? null : icon.getPixbufStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_completion_words_new(Str.toStringz(name), (icon is null) ? null : icon.getPixbufStruct())");
		}
		this(cast(GtkSourceCompletionWords*) p);
	}
	
	/**
	 * Registers buffer in the words provider.
	 * Params:
	 * buffer = a GtkTextBuffer
	 */
	public void register(TextBuffer buffer)
	{
		// void gtk_source_completion_words_register  (GtkSourceCompletionWords *words,  GtkTextBuffer *buffer);
		gtk_source_completion_words_register(gtkSourceCompletionWords, (buffer is null) ? null : buffer.getTextBufferStruct());
	}
	
	/**
	 * Unregisters buffer from the words provider.
	 * Params:
	 * buffer = a GtkTextBuffer
	 */
	public void unregister(TextBuffer buffer)
	{
		// void gtk_source_completion_words_unregister  (GtkSourceCompletionWords *words,  GtkTextBuffer *buffer);
		gtk_source_completion_words_unregister(gtkSourceCompletionWords, (buffer is null) ? null : buffer.getTextBufferStruct());
	}
}
