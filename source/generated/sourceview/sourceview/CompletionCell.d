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


module sourceview.CompletionCell;

private import gdk.PaintableIF;
private import gio.IconIF;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import pango.PgAttributeList;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Widget for single cell of completion proposal.
 * 
 * The `GtkSourceCompletionCell` widget provides a container to display various
 * types of information with the completion display.
 * 
 * Each proposal may consist of multiple cells depending on the complexity of
 * the proposal. For example, programming language proposals may contain a cell
 * for the "left-hand-side" of an operation along with the "typed-text" for a
 * function name and "parameters". They may also optionally set an icon to
 * signify the kind of result.
 * 
 * A [iface@CompletionProvider] should implement the
 * [vfunc@CompletionProvider.display] virtual function to control
 * how to convert data from their [iface@CompletionProposal] to content for
 * the `GtkSourceCompletionCell`.
 */
public class CompletionCell : Widget
{
	/** the main Gtk struct */
	protected GtkSourceCompletionCell* gtkSourceCompletionCell;

	/** Get the main Gtk struct */
	public GtkSourceCompletionCell* getCompletionCellStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceCompletionCell;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionCell;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceCompletionCell* gtkSourceCompletionCell, bool ownedRef = false)
	{
		this.gtkSourceCompletionCell = gtkSourceCompletionCell;
		super(cast(GtkWidget*)gtkSourceCompletionCell, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_completion_cell_get_type();
	}

	/** */
	public GtkSourceCompletionColumn getColumn()
	{
		return gtk_source_completion_cell_get_column(gtkSourceCompletionCell);
	}

	/**
	 * Gets the child #GtkWidget, if any.
	 *
	 * Returns: a #GtkWidget or %NULL
	 */
	public Widget getWidget()
	{
		auto __p = gtk_source_completion_cell_get_widget(gtkSourceCompletionCell);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/** */
	public void setGicon(IconIF gicon)
	{
		gtk_source_completion_cell_set_gicon(gtkSourceCompletionCell, (gicon is null) ? null : gicon.getIconStruct());
	}

	/** */
	public void setIconName(string iconName)
	{
		gtk_source_completion_cell_set_icon_name(gtkSourceCompletionCell, Str.toStringz(iconName));
	}

	/** */
	public void setMarkup(string markup)
	{
		gtk_source_completion_cell_set_markup(gtkSourceCompletionCell, Str.toStringz(markup));
	}

	/** */
	public void setPaintable(PaintableIF paintable)
	{
		gtk_source_completion_cell_set_paintable(gtkSourceCompletionCell, (paintable is null) ? null : paintable.getPaintableStruct());
	}

	/**
	 * Sets the text for the column cell. Use %NULL to unset.
	 *
	 * Params:
	 *     text = the text to set or %NULL
	 */
	public void setText(string text)
	{
		gtk_source_completion_cell_set_text(gtkSourceCompletionCell, Str.toStringz(text));
	}

	/** */
	public void setTextWithAttributes(string text, PgAttributeList attrs)
	{
		gtk_source_completion_cell_set_text_with_attributes(gtkSourceCompletionCell, Str.toStringz(text), (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}

	/** */
	public void setWidget(Widget child)
	{
		gtk_source_completion_cell_set_widget(gtkSourceCompletionCell, (child is null) ? null : child.getWidgetStruct());
	}
}
