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

private import gdkpixbuf.Pixbuf;
private import gio.IconIF;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gsv.SourceCompletionProposalIF;
private import gsv.SourceCompletionProposalT;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;


/** */
public class SourceCompletionItem : ObjectG, SourceCompletionProposalIF
{
	/** the main Gtk struct */
	protected GtkSourceCompletionItem* gtkSourceCompletionItem;

	/** Get the main Gtk struct */
	public GtkSourceCompletionItem* getSourceCompletionItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceCompletionItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionItem;
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


	/** */
	public static GType getType()
	{
		return gtk_source_completion_item_get_type();
	}

	/**
	 * Creates a new #GtkSourceCompletionItem. The desired properties need to be set
	 * afterwards.
	 *
	 * Returns: a new #GtkSourceCompletionItem.
	 *
	 * Since: 4.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_source_completion_item_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceCompletionItem*) p, true);
	}

	/** */
	public void setGicon(IconIF gicon)
	{
		gtk_source_completion_item_set_gicon(gtkSourceCompletionItem, (gicon is null) ? null : gicon.getIconStruct());
	}

	/** */
	public void setIcon(Pixbuf icon)
	{
		gtk_source_completion_item_set_icon(gtkSourceCompletionItem, (icon is null) ? null : icon.getPixbufStruct());
	}

	/** */
	public void setIconName(string iconName)
	{
		gtk_source_completion_item_set_icon_name(gtkSourceCompletionItem, Str.toStringz(iconName));
	}

	/** */
	public void setInfo(string info)
	{
		gtk_source_completion_item_set_info(gtkSourceCompletionItem, Str.toStringz(info));
	}

	/** */
	public void setLabel(string label)
	{
		gtk_source_completion_item_set_label(gtkSourceCompletionItem, Str.toStringz(label));
	}

	/** */
	public void setMarkup(string markup)
	{
		gtk_source_completion_item_set_markup(gtkSourceCompletionItem, Str.toStringz(markup));
	}

	/** */
	public void setText(string text)
	{
		gtk_source_completion_item_set_text(gtkSourceCompletionItem, Str.toStringz(text));
	}
}
