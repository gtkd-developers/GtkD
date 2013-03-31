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
 * inFile  = GtkSourceCompletionItem.html
 * outPack = gsv
 * outFile = SourceCompletionItem
 * strct   = GtkSourceCompletionItem
 * realStrct=
 * ctorStrct=
 * clss    = SourceCompletionItem
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- SourceCompletionProposalIF
 * prefixes:
 * 	- gtk_source_completion_item_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_source_completion_item_new
 * 	- gtk_source_completion_item_new_with_markup
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixbuf
 * 	- gsv.SourceCompletionProposalIF
 * 	- gsv.SourceCompletionProposalT
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceCompletionItem;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Pixbuf;
private import gsv.SourceCompletionProposalIF;
private import gsv.SourceCompletionProposalT;



private import gobject.ObjectG;

/**
 * The GtkSourceCompletionItem class is a simple implementation of the
 * GtkSourceCompletionProposal interface.
 */
public class SourceCompletionItem : ObjectG, SourceCompletionProposalIF
{
	
	/** the main Gtk struct */
	protected GtkSourceCompletionItem* gtkSourceCompletionItem;
	
	
	public GtkSourceCompletionItem* getSourceCompletionItemStruct()
	{
		return gtkSourceCompletionItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceCompletionItem* gtkSourceCompletionItem)
	{
		super(cast(GObject*)gtkSourceCompletionItem);
		this.gtkSourceCompletionItem = gtkSourceCompletionItem;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceCompletionItem = cast(GtkSourceCompletionItem*)obj;
	}
	
	// add the SourceCompletionProposal capabilities
	mixin SourceCompletionProposalT!(GtkSourceCompletionItem);
	
	/**
	 * Create a new GtkSourceCompletionItem with label label, icon icon and
	 * extra information info. Both icon and info can be NULL in which case
	 * there will be no icon shown and no extra information available.
	 * Params:
	 * label = The item label.
	 * text = The item text.
	 * icon = The item icon. [allow-none]
	 * info = The item extra information. [allow-none]
	 * markup = If true label will be treated as markup. using gtk_source_completion_item_new_with_markup.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label, string text, Pixbuf icon, string info, bool markup = false)
	{
		GtkSourceCompletionItem* p;
		
		if ( markup )
		{
			// GtkSourceCompletionItem * gtk_source_completion_item_new_with_markup  (const gchar *markup,  const gchar *text,  GdkPixbuf *icon,  const gchar *info);
			p = gtk_source_completion_item_new_with_markup(Str.toStringz(label), Str.toStringz(text), (icon is null) ? null : icon.getPixbufStruct(), Str.toStringz(info));
		}
		else
		{
			// GtkSourceCompletionItem * gtk_source_completion_item_new  (const gchar *label,  const gchar *text,  GdkPixbuf *icon,  const gchar *info);
			p = gtk_source_completion_item_new(Str.toStringz(label), Str.toStringz(text), (icon is null) ? null : icon.getPixbufStruct(), Str.toStringz(info));
			
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_completion_item_new(Str.toStringz(label), Str.toStringz(text), (icon is null) ? null : icon.getPixbufStruct(), Str.toStringz(info))");
		}
		this(cast(GtkSourceCompletionItem*) p);
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkSourceCompletionItem from a stock item. If label is NULL,
	 * the stock label will be used.
	 * Params:
	 * label = The item label. [allow-none]
	 * text = The item text.
	 * stock = The stock icon.
	 * info = The item extra information. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label, string text, string stock, string info)
	{
		// GtkSourceCompletionItem * gtk_source_completion_item_new_from_stock  (const gchar *label,  const gchar *text,  const gchar *stock,  const gchar *info);
		auto p = gtk_source_completion_item_new_from_stock(Str.toStringz(label), Str.toStringz(text), Str.toStringz(stock), Str.toStringz(info));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_completion_item_new_from_stock(Str.toStringz(label), Str.toStringz(text), Str.toStringz(stock), Str.toStringz(info))");
		}
		this(cast(GtkSourceCompletionItem*) p);
	}
}
