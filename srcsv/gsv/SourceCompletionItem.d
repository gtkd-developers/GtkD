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


module gsv.SourceCompletionItem;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gsv.SourceCompletionProposalIF;
private import gsv.SourceCompletionProposalT;
private import gsvc.gsv;
public  import gsvc.gsvtypes;


/** */
public class SourceCompletionItem : ObjectG, SourceCompletionProposalIF
{
	/** the main Gtk struct */
	protected GtkSourceCompletionItem* gtkSourceCompletionItem;

	/** Get the main Gtk struct */
	public GtkSourceCompletionItem* getSourceCompletionItemStruct()
	{
		return gtkSourceCompletionItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionItem;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkSourceCompletionItem = cast(GtkSourceCompletionItem*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceCompletionItem* gtkSourceCompletionItem, bool ownedRef = false)
	{
		this.gtkSourceCompletionItem = gtkSourceCompletionItem;
		super(cast(GObject*)gtkSourceCompletionItem, ownedRef);
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
			p = gtk_source_completion_item_new_with_markup(Str.toStringz(label), Str.toStringz(text), (icon is null) ? null : icon.getPixbufStruct(), Str.toStringz(info));
		}
		else
		{
			p = gtk_source_completion_item_new(Str.toStringz(label), Str.toStringz(text), (icon is null) ? null : icon.getPixbufStruct(), Str.toStringz(info));
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_completion_item_new(Str.toStringz(label), Str.toStringz(text), (icon is null) ? null : icon.getPixbufStruct(), Str.toStringz(info))");
		}
		this(p, true);
	}

	/**
	 */

	public static GType getType()
	{
		return gtk_source_completion_item_get_type();
	}

	/**
	 * Creates a new #GtkSourceCompletionItem from a stock item. If @label is %NULL,
	 * the stock label will be used.
	 *
	 * Deprecated: Use gtk_source_completion_item_new() instead.
	 *
	 * Params:
	 *     label = The item label.
	 *     text = The item text.
	 *     stock = The stock icon.
	 *     info = The item extra information.
	 *
	 * Return: a new #GtkSourceCompletionItem.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string label, string text, string stock, string info)
	{
		auto p = gtk_source_completion_item_new_from_stock(Str.toStringz(label), Str.toStringz(text), Str.toStringz(stock), Str.toStringz(info));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_stock");
		}
		
		this(cast(GtkSourceCompletionItem*) p, true);
	}
}
