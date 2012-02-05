/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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
 * inFile  = GtkIMContextSimple.html
 * outPack = gtk
 * outFile = IMContextSimple
 * strct   = GtkIMContextSimple
 * realStrct=
 * ctorStrct=
 * clss    = IMContextSimple
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_im_context_simple_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.IMContext
 * structWrap:
 * 	- GtkIMContext* -> IMContext
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.IMContextSimple;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import gtk.IMContext;



private import gtk.IMContext;

/**
 * Description
 */
public class IMContextSimple : IMContext
{
	
	/** the main Gtk struct */
	protected GtkIMContextSimple* gtkIMContextSimple;
	
	
	public GtkIMContextSimple* getIMContextSimpleStruct()
	{
		return gtkIMContextSimple;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkIMContextSimple;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkIMContextSimple* gtkIMContextSimple)
	{
		if(gtkIMContextSimple is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkIMContextSimple);
		if( ptr !is null )
		{
			this = cast(IMContextSimple)ptr;
			return;
		}
		super(cast(GtkIMContext*)gtkIMContextSimple);
		this.gtkIMContextSimple = gtkIMContextSimple;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkIMContextSimple = cast(GtkIMContextSimple*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkIMContextSimple.
	 * Returns: a new GtkIMContextSimple.
	 */
	public static IMContext newIMContextSimple()
	{
		// GtkIMContext * gtk_im_context_simple_new (void);
		auto p = gtk_im_context_simple_new();
		if(p is null)
		{
			return null;
		}
		return new IMContext(cast(GtkIMContext*) p);
	}
	
	/**
	 * Adds an additional table to search to the input context.
	 * Each row of the table consists of max_seq_len key symbols
	 * followed by two guint16 interpreted as the high and low
	 * words of a gunicode value. Tables are searched starting
	 * from the last added.
	 * The table must be sorted in dictionary order on the
	 * numeric value of the key symbol fields. (Values beyond
	 * the length of the sequence should be zero.)
	 * Params:
	 * data = the table
	 * maxSeqLen = Maximum length of a sequence in the table
	 *  (cannot be greater than GTK_MAX_COMPOSE_LEN)
	 */
	public void addTable(ushort[] data, int maxSeqLen)
	{
		// void gtk_im_context_simple_add_table (GtkIMContextSimple *context_simple,  guint16 *data,  gint max_seq_len,  gint n_seqs);
		gtk_im_context_simple_add_table(gtkIMContextSimple, data.ptr, maxSeqLen, cast(int) data.length);
	}
}
