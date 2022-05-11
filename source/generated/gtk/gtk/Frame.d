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
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkFrame` is a widget that surrounds its child with a decorative
 * frame and an optional label.
 * 
 * ![An example GtkFrame](frame.png)
 * 
 * If present, the label is drawn inside the top edge of the frame.
 * The horizontal position of the label can be controlled with
 * [method@Gtk.Frame.set_label_align].
 * 
 * `GtkFrame` clips its child. You can use this to add rounded corners
 * to widgets, but be aware that it also cuts off shadows.
 * 
 * # GtkFrame as GtkBuildable
 * 
 * The `GtkFrame` implementation of the `GtkBuildable` interface supports
 * placing a child in the label position by specifying “label” as the
 * “type” attribute of a <child> element. A normal content child can
 * be specified without specifying a <child> type attribute.
 * 
 * An example of a UI definition fragment with GtkFrame:
 * ```xml
 * <object class="GtkFrame">
 * <child type="label">
 * <object class="GtkLabel" id="frame_label"/>
 * </child>
 * <child>
 * <object class="GtkEntry" id="frame_content"/>
 * </child>
 * </object>
 * ```
 * 
 * # CSS nodes
 * 
 * ```
 * frame
 * ├── <label widget>
 * ╰── <child>
 * ```
 * 
 * `GtkFrame` has a main CSS node with name “frame”, which is used to draw the
 * visible border. You can set the appearance of the border using CSS properties
 * like “border-style” on this node.
 */
public class Frame : Widget
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
		super(cast(GtkWidget*)gtkFrame, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_frame_get_type();
	}

	/**
	 * Creates a new `GtkFrame`, with optional label @label.
	 *
	 * If @label is %NULL, the label is omitted.
	 *
	 * Params:
	 *     label = the text to use as the label of the frame
	 *
	 * Returns: a new `GtkFrame` widget
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
	 * Gets the child widget of @frame.
	 *
	 * Returns: the child widget of @frame
	 */
	public Widget getChild()
	{
		auto __p = gtk_frame_get_child(gtkFrame);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the frame labels text.
	 *
	 * If the frame's label widget is not a `GtkLabel`, %NULL
	 * is returned.
	 *
	 * Returns: the text in the label, or %NULL if there
	 *     was no label widget or the label widget was not a `GtkLabel`.
	 *     This string is owned by GTK and must not be modified or freed.
	 */
	public string getLabel()
	{
		return Str.toString(gtk_frame_get_label(gtkFrame));
	}

	/**
	 * Retrieves the X alignment of the frame’s label.
	 *
	 * Returns: the frames X alignment
	 */
	public float getLabelAlign()
	{
		return gtk_frame_get_label_align(gtkFrame);
	}

	/**
	 * Retrieves the label widget for the frame.
	 *
	 * Returns: the label widget
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
	 * Sets the child widget of @frame.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_frame_set_child(gtkFrame, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Creates a new `GtkLabel` with the @label and sets it as the frame's
	 * label widget.
	 *
	 * Params:
	 *     label = the text to use as the label of the frame
	 */
	public void setLabel(string label)
	{
		gtk_frame_set_label(gtkFrame, Str.toStringz(label));
	}

	/**
	 * Sets the X alignment of the frame widget’s label.
	 *
	 * The default value for a newly created frame is 0.0.
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
	 * Sets the label widget for the frame.
	 *
	 * This is the widget that will appear embedded in the top edge
	 * of the frame as a title.
	 *
	 * Params:
	 *     labelWidget = the new label widget
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		gtk_frame_set_label_widget(gtkFrame, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}
}
