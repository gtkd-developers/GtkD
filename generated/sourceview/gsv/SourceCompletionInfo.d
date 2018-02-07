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


module gsv.SourceCompletionInfo;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.TextIter;
private import gtk.TextView;
private import gtk.Widget;
private import gtk.Window;
private import std.algorithm;


/** */
public class SourceCompletionInfo : Window
{
	/** the main Gtk struct */
	protected GtkSourceCompletionInfo* gtkSourceCompletionInfo;

	/** Get the main Gtk struct */
	public GtkSourceCompletionInfo* getSourceCompletionInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceCompletionInfo;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceCompletionInfo* gtkSourceCompletionInfo, bool ownedRef = false)
	{
		this.gtkSourceCompletionInfo = gtkSourceCompletionInfo;
		super(cast(GtkWindow*)gtkSourceCompletionInfo, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_completion_info_get_type();
	}

	/**
	 * Returns: a new GtkSourceCompletionInfo.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_source_completion_info_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceCompletionInfo*) p);
	}

	/**
	 * Get the current content widget.
	 *
	 * Deprecated: Use gtk_bin_get_child() instead.
	 *
	 * Returns: The current content widget.
	 */
	public Widget getWidget()
	{
		auto p = gtk_source_completion_info_get_widget(gtkSourceCompletionInfo);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Moves the #GtkSourceCompletionInfo to @iter. If @iter is %NULL @info is
	 * moved to the cursor position. Moving will respect the #GdkGravity setting
	 * of the info window and will ensure the line at @iter is not occluded by
	 * the window.
	 *
	 * Params:
	 *     view = a #GtkTextView on which the info window should be positioned.
	 *     iter = a #GtkTextIter.
	 */
	public void moveToIter(TextView view, TextIter iter)
	{
		gtk_source_completion_info_move_to_iter(gtkSourceCompletionInfo, (view is null) ? null : view.getTextViewStruct(), (iter is null) ? null : iter.getTextIterStruct());
	}

	/**
	 * Sets the content widget of the info window. See that the previous widget will
	 * lose a reference and it can be destroyed, so if you do not want this to
	 * happen you must use g_object_ref() before calling this method.
	 *
	 * Deprecated: Use gtk_container_add() instead. If there is already a child
	 * widget, remove it with gtk_container_remove().
	 *
	 * Params:
	 *     widget = a #GtkWidget.
	 */
	public void setWidget(Widget widget)
	{
		gtk_source_completion_info_set_widget(gtkSourceCompletionInfo, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * This signal is emitted before any "show" management. You can connect
	 * to this signal if you want to change some properties or position
	 * before the real "show".
	 *
	 * Deprecated: This signal should not be used.
	 */
	gulong addOnBeforeShow(void delegate(SourceCompletionInfo) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "before-show", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
