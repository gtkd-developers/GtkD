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
 * imports:
 * 	- gtk.IMContext
 * structWrap:
 * 	- GtkIMContext* -> IMContext
 * local aliases:
 */

module gtk.IMContextSimple;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.IMContext;

/**
 * Description
 */
private import gtk.IMContext;
public class IMContextSimple : IMContext
{
	
	/** the main Gtk struct */
	protected GtkIMContextSimple* gtkIMContextSimple;
	
	
	public GtkIMContextSimple* getIMContextSimpleStruct()
	{
		return gtkIMContextSimple;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkIMContextSimple;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkIMContextSimple* gtkIMContextSimple)
	{
		super(cast(GtkIMContext*)gtkIMContextSimple);
		this.gtkIMContextSimple = gtkIMContextSimple;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkIMContextSimple.
	 * Returns:
	 *  a new GtkIMContextSimple.
	 */
	public static IMContext newIMContextSimple()
	{
		// GtkIMContext* gtk_im_context_simple_new (void);
		return new IMContext( gtk_im_context_simple_new() );
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
	 * context_simple:
	 *  A GtkIMContextSimple
	 * data:
	 *  the table
	 * max_seq_len:
	 *  Maximum length of a sequence in the table
	 *  (cannot be greater than GTK_MAX_COMPOSE_LEN)
	 * n_seqs:
	 *  number of sequences in the table
	 */
	public void addTable(ushort* data, int maxSeqLen, int nSeqs)
	{
		// void gtk_im_context_simple_add_table (GtkIMContextSimple *context_simple,  guint16 *data,  gint max_seq_len,  gint n_seqs);
		gtk_im_context_simple_add_table(gtkIMContextSimple, data, maxSeqLen, nSeqs);
	}
	
}
