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


module sourceview.StyleSchemePreview;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import sourceview.StyleScheme;
private import sourceview.c.functions;
public  import sourceview.c.types;
private import std.algorithm;


/**
 * A preview widget for [class@StyleScheme].
 * 
 * This widget provides a convenient [class@Gtk.Widget] to preview a [class@StyleScheme].
 * 
 * The [property@StyleSchemePreview:selected] property can be used to manage
 * the selection state of a single preview widget.
 *
 * Since: 5.4
 */
public class StyleSchemePreview : Widget, ActionableIF
{
	/** the main Gtk struct */
	protected GtkSourceStyleSchemePreview* gtkSourceStyleSchemePreview;

	/** Get the main Gtk struct */
	public GtkSourceStyleSchemePreview* getStyleSchemePreviewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceStyleSchemePreview;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceStyleSchemePreview;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceStyleSchemePreview* gtkSourceStyleSchemePreview, bool ownedRef = false)
	{
		this.gtkSourceStyleSchemePreview = gtkSourceStyleSchemePreview;
		super(cast(GtkWidget*)gtkSourceStyleSchemePreview, ownedRef);
	}

	// add the Actionable capabilities
	mixin ActionableT!(GtkSourceStyleSchemePreview);


	/** */
	public static GType getType()
	{
		return gtk_source_style_scheme_preview_get_type();
	}

	/**
	 * Creates a new #GtkSourceStyleSchemePreview to preview the style scheme
	 * provided in @scheme.
	 *
	 * Params:
	 *     scheme = a #GtkSourceStyleScheme
	 *
	 * Returns: a #GtkWidget
	 *
	 * Since: 5.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(StyleScheme scheme)
	{
		auto __p = gtk_source_style_scheme_preview_new((scheme is null) ? null : scheme.getStyleSchemeStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceStyleSchemePreview*) __p, true);
	}

	/**
	 * Gets the #GtkSourceStyleScheme previewed by the widget.
	 *
	 * Returns: a #GtkSourceStyleScheme
	 *
	 * Since: 5.4
	 */
	public StyleScheme getScheme()
	{
		auto __p = gtk_source_style_scheme_preview_get_scheme(gtkSourceStyleSchemePreview);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StyleScheme)(cast(GtkSourceStyleScheme*) __p);
	}

	/** */
	public bool getSelected()
	{
		return gtk_source_style_scheme_preview_get_selected(gtkSourceStyleSchemePreview) != 0;
	}

	/** */
	public void setSelected(bool selected)
	{
		gtk_source_style_scheme_preview_set_selected(gtkSourceStyleSchemePreview, selected);
	}

	/** */
	gulong addOnActivate(void delegate(StyleSchemePreview) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
