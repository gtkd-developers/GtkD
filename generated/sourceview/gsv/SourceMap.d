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


module gsv.SourceMap;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsv.SourceView;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
private import gtk.Widget;


/** */
public class SourceMap : SourceView
{
	/** the main Gtk struct */
	protected GtkSourceMap* gtkSourceMap;

	/** Get the main Gtk struct */
	public GtkSourceMap* getSourceMapStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceMap;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceMap;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceMap* gtkSourceMap, bool ownedRef = false)
	{
		this.gtkSourceMap = gtkSourceMap;
		super(cast(GtkSourceView*)gtkSourceMap, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_map_get_type();
	}

	/**
	 * Creates a new #GtkSourceMap.
	 *
	 * Returns: a new #GtkSourceMap.
	 *
	 * Since: 3.18
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_source_map_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceMap*) p);
	}

	/**
	 * Gets the #GtkSourceMap:view property, which is the view this widget is mapping.
	 *
	 * Returns: a #GtkSourceView or %NULL.
	 *
	 * Since: 3.18
	 */
	public SourceView getView()
	{
		auto p = gtk_source_map_get_view(gtkSourceMap);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceView)(cast(GtkSourceView*) p);
	}

	/**
	 * Sets the view that @map will be doing the mapping to.
	 *
	 * Params:
	 *     view = a #GtkSourceView
	 *
	 * Since: 3.18
	 */
	public void setView(SourceView view)
	{
		gtk_source_map_set_view(gtkSourceMap, (view is null) ? null : view.getSourceViewStruct());
	}
}
