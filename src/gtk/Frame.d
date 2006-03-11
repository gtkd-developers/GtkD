/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = Frame
 * strct   = GtkFrame
 * realStrct=
 * clss    = Frame
 * extend  = 
 * prefixes:
 * 	- gtk_frame_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- std.string
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Frame;

private import gtk.typedefs;

private import lib.gtk;

private import std.string;
private import gtk.Widget;

/**
 * Description
 * The frame widget is a Bin that surrounds its child
 * with a decorative frame and an optional label.
 * If present, the label is drawn in a gap in the
 * top side of the frame. The position of the
 * label can be controlled with gtk_frame_set_label_align().
 */
private import gtk.Bin;
public class Frame : Bin
{
	
	/** the main Gtk struct */
	protected GtkFrame* gtkFrame;
	
	
	public GtkFrame* getFrameStruct()
	{
		return gtkFrame;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkFrame;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFrame* gtkFrame)
	{
		super(cast(GtkBin*)gtkFrame);
		this.gtkFrame = gtkFrame;
	}
	
	/**
	 * Creates frame with label and set it's child widget
	 */
	public this(Widget widget, char[] label)
	{
		this(label);
		add(widget);
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkFrame, with optional label label.
	 * If label is NULL, the label is omitted.
	 * label:
	 *  the text to use as the label of the frame
	 * Returns:
	 *  a new GtkFrame widget
	 */
	public this (char[] label)
	{
		// GtkWidget* gtk_frame_new (const gchar *label);
		this(cast(GtkFrame*)gtk_frame_new(std.string.toStringz(label)) );
	}
	
	/**
	 * Sets the text of the label. If label is NULL,
	 * the current label is removed.
	 * frame:
	 *  a GtkFrame
	 * label:
	 *  the text to use as the label of the frame
	 */
	public void setLabel(char[] label)
	{
		// void gtk_frame_set_label (GtkFrame *frame,  const gchar *label);
		gtk_frame_set_label(gtkFrame, std.string.toStringz(label));
	}
	
	/**
	 * Sets the label widget for the frame. This is the widget that
	 * will appear embedded in the top edge of the frame as a
	 * title.
	 * frame:
	 *  a GtkFrame
	 * label_widget:
	 *  the new label widget
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		// void gtk_frame_set_label_widget (GtkFrame *frame,  GtkWidget *label_widget);
		gtk_frame_set_label_widget(gtkFrame, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}
	
	/**
	 * Sets the alignment of the frame widget's label. The
	 * default values for a newly created frame are 0.0 and 0.5.
	 * frame:
	 *  a GtkFrame
	 * xalign:
	 *  The position of the label along the top edge
	 *  of the widget. A value of 0.0 represents left alignment;
	 *  1.0 represents right alignment.
	 * yalign:
	 *  The y alignment of the label. A value of 0.0 aligns under
	 *  the frame; 1.0 aligns above the frame.
	 */
	public void setLabelAlign(float xalign, float yalign)
	{
		// void gtk_frame_set_label_align (GtkFrame *frame,  gfloat xalign,  gfloat yalign);
		gtk_frame_set_label_align(gtkFrame, xalign, yalign);
	}
	
	/**
	 * Sets the shadow type for frame.
	 * frame:
	 *  a GtkFrame
	 * type:
	 *  the new GtkShadowType
	 */
	public void setShadowType(GtkShadowType type)
	{
		// void gtk_frame_set_shadow_type (GtkFrame *frame,  GtkShadowType type);
		gtk_frame_set_shadow_type(gtkFrame, type);
	}
	
	/**
	 * If the frame's label widget is a GtkLabel, returns the
	 * text in the label widget. (The frame will have a GtkLabel
	 * for the label widget if a non-NULL argument was passed
	 * to gtk_frame_new().)
	 * frame:
	 *  a GtkFrame
	 * Returns:
	 *  the text in the label, or NULL if there
	 *  was no label widget or the lable widget was not
	 *  a GtkLabel. This string is owned by GTK+ and
	 *  must not be modified or freed.
	 */
	public char[] getLabel()
	{
		// const gchar* gtk_frame_get_label (GtkFrame *frame);
		return std.string.toString(gtk_frame_get_label(gtkFrame) );
	}
	
	/**
	 * Retrieves the X and Y alignment of the frame's label. See
	 * gtk_frame_set_label_align().
	 * frame:
	 *  a GtkFrame
	 * xalign:
	 *  location to store X alignment of frame's label, or NULL
	 * yalign:
	 *  location to store X alignment of frame's label, or NULL
	 */
	public void getLabelAlign(float* xalign, float* yalign)
	{
		// void gtk_frame_get_label_align (GtkFrame *frame,  gfloat *xalign,  gfloat *yalign);
		gtk_frame_get_label_align(gtkFrame, xalign, yalign);
	}
	
	/**
	 * Retrieves the label widget for the frame. See
	 * gtk_frame_set_label_widget().
	 * frame:
	 *  a GtkFrame
	 * Returns:
	 *  the label widget, or NULL if there is none.
	 */
	public Widget getLabelWidget()
	{
		// GtkWidget* gtk_frame_get_label_widget (GtkFrame *frame);
		return new Widget( gtk_frame_get_label_widget(gtkFrame) );
	}
	
	/**
	 * Retrieves the shadow type of the frame. See
	 * gtk_frame_set_shadow_type().
	 * frame:
	 *  a GtkFrame
	 * Returns:
	 *  the current shadow type of the frame.
	 * Property Details
	 * The "label" property
	 *  "label" gchararray : Read / Write
	 * Text of the frame's label.
	 * Default value: NULL
	 */
	public GtkShadowType getShadowType()
	{
		// GtkShadowType gtk_frame_get_shadow_type (GtkFrame *frame);
		return gtk_frame_get_shadow_type(gtkFrame);
	}
	
	
	
	
	
}
