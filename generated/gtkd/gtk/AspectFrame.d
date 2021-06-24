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


module gtk.AspectFrame;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkAspectFrame` preserves the aspect ratio of its child.
 * 
 * The frame can respect the aspect ratio of the child widget,
 * or use its own aspect ratio.
 * 
 * # CSS nodes
 * 
 * `GtkAspectFrame` uses a CSS node with name `frame`.
 */
public class AspectFrame : Widget
{
	/** the main Gtk struct */
	protected GtkAspectFrame* gtkAspectFrame;

	/** Get the main Gtk struct */
	public GtkAspectFrame* getAspectFrameStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAspectFrame;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAspectFrame;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAspectFrame* gtkAspectFrame, bool ownedRef = false)
	{
		this.gtkAspectFrame = gtkAspectFrame;
		super(cast(GtkWidget*)gtkAspectFrame, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_aspect_frame_get_type();
	}

	/**
	 * Create a new `GtkAspectFrame`.
	 *
	 * Params:
	 *     xalign = Horizontal alignment of the child within the parent.
	 *         Ranges from 0.0 (left aligned) to 1.0 (right aligned)
	 *     yalign = Vertical alignment of the child within the parent.
	 *         Ranges from 0.0 (top aligned) to 1.0 (bottom aligned)
	 *     ratio = The desired aspect ratio.
	 *     obeyChild = If %TRUE, @ratio is ignored, and the aspect
	 *         ratio is taken from the requistion of the child.
	 *
	 * Returns: the new `GtkAspectFrame`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(float xalign, float yalign, float ratio, bool obeyChild)
	{
		auto __p = gtk_aspect_frame_new(xalign, yalign, ratio, obeyChild);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAspectFrame*) __p);
	}

	/**
	 * Gets the child widget of @self.
	 *
	 * Returns: the child widget of self@
	 */
	public Widget getChild()
	{
		auto __p = gtk_aspect_frame_get_child(gtkAspectFrame);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether the child's size request should override
	 * the set aspect ratio of the `GtkAspectFrame`.
	 *
	 * Returns: whether to obey the child's size request
	 */
	public bool getObeyChild()
	{
		return gtk_aspect_frame_get_obey_child(gtkAspectFrame) != 0;
	}

	/**
	 * Returns the desired aspect ratio of the child.
	 *
	 * Returns: the desired aspect ratio
	 */
	public float getRatio()
	{
		return gtk_aspect_frame_get_ratio(gtkAspectFrame);
	}

	/**
	 * Returns the horizontal alignment of the child within the
	 * allocation of the `GtkAspectFrame`.
	 *
	 * Returns: the horizontal alignment
	 */
	public float getXalign()
	{
		return gtk_aspect_frame_get_xalign(gtkAspectFrame);
	}

	/**
	 * Returns the vertical alignment of the child within the
	 * allocation of the `GtkAspectFrame`.
	 *
	 * Returns: the vertical alignment
	 */
	public float getYalign()
	{
		return gtk_aspect_frame_get_yalign(gtkAspectFrame);
	}

	/**
	 * Sets the child widget of @self.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_aspect_frame_set_child(gtkAspectFrame, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets whether the aspect ratio of the child's size
	 * request should override the set aspect ratio of
	 * the `GtkAspectFrame`.
	 *
	 * Params:
	 *     obeyChild = If %TRUE, @ratio is ignored, and the aspect
	 *         ratio is taken from the requistion of the child.
	 */
	public void setObeyChild(bool obeyChild)
	{
		gtk_aspect_frame_set_obey_child(gtkAspectFrame, obeyChild);
	}

	/**
	 * Sets the desired aspect ratio of the child.
	 *
	 * Params:
	 *     ratio = aspect ratio of the child
	 */
	public void setRatio(float ratio)
	{
		gtk_aspect_frame_set_ratio(gtkAspectFrame, ratio);
	}

	/**
	 * Sets the horizontal alignment of the child within the allocation
	 * of the `GtkAspectFrame`.
	 *
	 * Params:
	 *     xalign = horizontal alignment, from 0.0 (left aligned) to 1.0 (right aligned)
	 */
	public void setXalign(float xalign)
	{
		gtk_aspect_frame_set_xalign(gtkAspectFrame, xalign);
	}

	/**
	 * Sets the vertical alignment of the child within the allocation
	 * of the `GtkAspectFrame`.
	 *
	 * Params:
	 *     yalign = horizontal alignment, from 0.0 (top aligned) to 1.0 (bottom aligned)
	 */
	public void setYalign(float yalign)
	{
		gtk_aspect_frame_set_yalign(gtkAspectFrame, yalign);
	}
}
