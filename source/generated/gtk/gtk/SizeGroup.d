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


module gtk.SizeGroup;

private import glib.ConstructionException;
private import glib.ListSG;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkSizeGroup` groups widgets together so they all request the same size.
 * 
 * This is typically useful when you want a column of widgets to have the
 * same size, but you can’t use a `GtkGrid`.
 * 
 * In detail, the size requested for each widget in a `GtkSizeGroup` is
 * the maximum of the sizes that would have been requested for each
 * widget in the size group if they were not in the size group. The mode
 * of the size group (see [method@Gtk.SizeGroup.set_mode]) determines whether
 * this applies to the horizontal size, the vertical size, or both sizes.
 * 
 * Note that size groups only affect the amount of space requested, not
 * the size that the widgets finally receive. If you want the widgets in
 * a `GtkSizeGroup` to actually be the same size, you need to pack them in
 * such a way that they get the size they request and not more.
 * 
 * `GtkSizeGroup` objects are referenced by each widget in the size group,
 * so once you have added all widgets to a `GtkSizeGroup`, you can drop
 * the initial reference to the size group with g_object_unref(). If the
 * widgets in the size group are subsequently destroyed, then they will
 * be removed from the size group and drop their references on the size
 * group; when all widgets have been removed, the size group will be
 * freed.
 * 
 * Widgets can be part of multiple size groups; GTK will compute the
 * horizontal size of a widget from the horizontal requisition of all
 * widgets that can be reached from the widget by a chain of size groups
 * of type %GTK_SIZE_GROUP_HORIZONTAL or %GTK_SIZE_GROUP_BOTH, and the
 * vertical size from the vertical requisition of all widgets that can be
 * reached from the widget by a chain of size groups of type
 * %GTK_SIZE_GROUP_VERTICAL or %GTK_SIZE_GROUP_BOTH.
 * 
 * Note that only non-contextual sizes of every widget are ever consulted
 * by size groups (since size groups have no knowledge of what size a widget
 * will be allocated in one dimension, it cannot derive how much height
 * a widget will receive for a given width). When grouping widgets that
 * trade height for width in mode %GTK_SIZE_GROUP_VERTICAL or %GTK_SIZE_GROUP_BOTH:
 * the height for the minimum width will be the requested height for all
 * widgets in the group. The same is of course true when horizontally grouping
 * width for height widgets.
 * 
 * Widgets that trade height-for-width should set a reasonably large minimum
 * width by way of [property@Gtk.Label:width-chars] for instance. Widgets with
 * static sizes as well as widgets that grow (such as ellipsizing text) need no
 * such considerations.
 * 
 * # GtkSizeGroup as GtkBuildable
 * 
 * Size groups can be specified in a UI definition by placing an <object>
 * element with `class="GtkSizeGroup"` somewhere in the UI definition. The
 * widgets that belong to the size group are specified by a <widgets> element
 * that may contain multiple <widget> elements, one for each member of the
 * size group. The ”name” attribute gives the id of the widget.
 * 
 * An example of a UI definition fragment with `GtkSizeGroup`:
 * ```xml
 * <object class="GtkSizeGroup">
 * <property name="mode">horizontal</property>
 * <widgets>
 * <widget name="radio1"/>
 * <widget name="radio2"/>
 * </widgets>
 * </object>
 * ```
 */
public class SizeGroup : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected GtkSizeGroup* gtkSizeGroup;

	/** Get the main Gtk struct */
	public GtkSizeGroup* getSizeGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSizeGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSizeGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSizeGroup* gtkSizeGroup, bool ownedRef = false)
	{
		this.gtkSizeGroup = gtkSizeGroup;
		super(cast(GObject*)gtkSizeGroup, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkSizeGroup);


	/** */
	public static GType getType()
	{
		return gtk_size_group_get_type();
	}

	/**
	 * Create a new `GtkSizeGroup`.
	 *
	 * Params:
	 *     mode = the mode for the new size group.
	 *
	 * Returns: a newly created `GtkSizeGroup`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkSizeGroupMode mode)
	{
		auto __p = gtk_size_group_new(mode);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSizeGroup*) __p, true);
	}

	/**
	 * Adds a widget to a `GtkSizeGroup`.
	 *
	 * In the future, the requisition
	 * of the widget will be determined as the maximum of its requisition
	 * and the requisition of the other widgets in the size group.
	 * Whether this applies horizontally, vertically, or in both directions
	 * depends on the mode of the size group.
	 * See [method@Gtk.SizeGroup.set_mode].
	 *
	 * When the widget is destroyed or no longer referenced elsewhere, it
	 * will be removed from the size group.
	 *
	 * Params:
	 *     widget = the `GtkWidget` to add
	 */
	public void addWidget(Widget widget)
	{
		gtk_size_group_add_widget(gtkSizeGroup, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Gets the current mode of the size group.
	 *
	 * Returns: the current mode of the size group.
	 */
	public GtkSizeGroupMode getMode()
	{
		return gtk_size_group_get_mode(gtkSizeGroup);
	}

	/**
	 * Returns the list of widgets associated with @size_group.
	 *
	 * Returns: a `GSList` of
	 *     widgets. The list is owned by GTK and should not be modified.
	 */
	public ListSG getWidgets()
	{
		auto __p = gtk_size_group_get_widgets(gtkSizeGroup);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Removes a widget from a `GtkSizeGroup`.
	 *
	 * Params:
	 *     widget = the `GtkWidget` to remove
	 */
	public void removeWidget(Widget widget)
	{
		gtk_size_group_remove_widget(gtkSizeGroup, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Sets the `GtkSizeGroupMode` of the size group.
	 *
	 * The mode of the size group determines whether the widgets in the
	 * size group should all have the same horizontal requisition
	 * (%GTK_SIZE_GROUP_HORIZONTAL) all have the same vertical requisition
	 * (%GTK_SIZE_GROUP_VERTICAL), or should all have the same requisition
	 * in both directions (%GTK_SIZE_GROUP_BOTH).
	 *
	 * Params:
	 *     mode = the mode to set for the size group.
	 */
	public void setMode(GtkSizeGroupMode mode)
	{
		gtk_size_group_set_mode(gtkSizeGroup, mode);
	}
}
