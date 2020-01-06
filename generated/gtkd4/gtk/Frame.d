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


module gtk.Frame;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Bin;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * The frame widget is a bin that surrounds its child with a decorative
 * frame and an optional label. If present, the label is drawn inside
 * the top edge of the frame. The horizontal position of the label can
 * be controlled with gtk_frame_set_label_align().
 * 
 * # GtkFrame as GtkBuildable
 * 
 * The GtkFrame implementation of the GtkBuildable interface supports
 * placing a child in the label position by specifying “label” as the
 * “type” attribute of a <child> element. A normal content child can
 * be specified without specifying a <child> type attribute.
 * 
 * An example of a UI definition fragment with GtkFrame:
 * |[
 * <object class="GtkFrame">
 * <child type="label">
 * <object class="GtkLabel" id="frame_label"/>
 * </child>
 * <child>
 * <object class="GtkEntry" id="frame_content"/>
 * </child>
 * </object>
 * ]|
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * frame[.flat]
 * ├── <label widget>
 * ╰── <child>
 * ]|
 * 
 * GtkFrame has a main CSS node with name “frame”, which is used to draw the
 * visible border. You can set the appearance of the border using CSS properties
 * like “border-style” on this node.
 * 
 * The node can be given the style class “.flat”, which is used by themes to
 * disable drawing of the border. To do this from code, call
 * gtk_frame_set_shadow_type() with %GTK_SHADOW_NONE to add the “.flat” class or
 * any other shadow type to remove it.
 */
public class Frame : Bin
{
	/** the main Gtk struct */
	protected GtkFrame* gtkFrame;

	/** Get the main Gtk struct */
	public GtkFrame* getFrameStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFrame;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFrame;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFrame* gtkFrame, bool ownedRef = false)
	{
		this.gtkFrame = gtkFrame;
		super(cast(GtkBin*)gtkFrame, ownedRef);
	}

	/**
	 * Creates frame with label and set it's child widget
	 */
	public this(Widget widget, string label)
	{
		this(label);
		add(widget);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_frame_get_type();
	}

	/**
	 * Creates a new #GtkFrame, with optional label @label.
	 * If @label is %NULL, the label is omitted.
	 *
	 * Params:
	 *     label = the text to use as the label of the frame
	 *
	 * Returns: a new #GtkFrame widget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string label)
	{
		auto __p = gtk_frame_new(Str.toStringz(label));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFrame*) __p);
	}

	/**
	 * If the frame’s label widget is a #GtkLabel, returns the
	 * text in the label widget. (The frame will have a #GtkLabel
	 * for the label widget if a non-%NULL argument was passed
	 * to gtk_frame_new().)
	 *
	 * Returns: the text in the label, or %NULL if there
	 *     was no label widget or the lable widget was not
	 *     a #GtkLabel. This string is owned by GTK+ and
	 *     must not be modified or freed.
	 */
	public string getLabel()
	{
		return Str.toString(gtk_frame_get_label(gtkFrame));
	}

	/**
	 * Retrieves the X alignment of the frame’s label. See
	 * gtk_frame_set_label_align().
	 */
	public float getLabelAlign()
	{
		return gtk_frame_get_label_align(gtkFrame);
	}

	/**
	 * Retrieves the label widget for the frame. See
	 * gtk_frame_set_label_widget().
	 *
	 * Returns: the label widget, or %NULL if
	 *     there is none.
	 */
	public Widget getLabelWidget()
	{
		auto __p = gtk_frame_get_label_widget(gtkFrame);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Retrieves the shadow type of the frame. See
	 * gtk_frame_set_shadow_type().
	 *
	 * Returns: the current shadow type of the frame.
	 */
	public GtkShadowType getShadowType()
	{
		return gtk_frame_get_shadow_type(gtkFrame);
	}

	/**
	 * Removes the current #GtkFrame:label-widget. If @label is not %NULL, creates a
	 * new #GtkLabel with that text and adds it as the #GtkFrame:label-widget.
	 *
	 * Params:
	 *     label = the text to use as the label of the frame
	 */
	public void setLabel(string label)
	{
		gtk_frame_set_label(gtkFrame, Str.toStringz(label));
	}

	/**
	 * Sets the X alignment of the frame widget’s label. The
	 * default value for a newly created frame is 0.0.
	 *
	 * Params:
	 *     xalign = The position of the label along the top edge
	 *         of the widget. A value of 0.0 represents left alignment;
	 *         1.0 represents right alignment.
	 */
	public void setLabelAlign(float xalign)
	{
		gtk_frame_set_label_align(gtkFrame, xalign);
	}

	/**
	 * Sets the #GtkFrame:label-widget for the frame. This is the widget that
	 * will appear embedded in the top edge of the frame as a title.
	 *
	 * Params:
	 *     labelWidget = the new label widget
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		gtk_frame_set_label_widget(gtkFrame, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}

	/**
	 * Sets the #GtkFrame:shadow-type for @frame, i.e. whether it is drawn without
	 * (%GTK_SHADOW_NONE) or with (other values) a visible border. Values other than
	 * %GTK_SHADOW_NONE are treated identically by GtkFrame. The chosen type is
	 * applied by removing or adding the .flat class to the main CSS node, frame.
	 *
	 * Params:
	 *     type = the new #GtkShadowType
	 */
	public void setShadowType(GtkShadowType type)
	{
		gtk_frame_set_shadow_type(gtkFrame, type);
	}
}
