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

/*
 * Conversion parameters:
 * inFile  = GtkFrame.html
 * outPack = gtk
 * outFile = Frame
 * strct   = GtkFrame
 * realStrct=
 * ctorStrct=
 * clss    = Frame
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_frame_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Frame;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.Widget;



private import gtk.Bin;

/**
 * The frame widget is a Bin that surrounds its child
 * with a decorative frame and an optional label.
 * If present, the label is drawn in a gap in the
 * top side of the frame. The position of the
 * label can be controlled with gtk_frame_set_label_align().
 *
 * GtkFrame as GtkBuildable
 *
 * The GtkFrame implementation of the GtkBuildable interface
 * supports placing a child in the label position by specifying
 * "label" as the "type" attribute of a <child> element.
 * A normal content child can be specified without specifying
 * a <child> type attribute.
 *
 * $(DDOC_COMMENT example)
 */
public class Frame : Bin
{
	
	/** the main Gtk struct */
	protected GtkFrame* gtkFrame;
	
	
	public GtkFrame* getFrameStruct()
	{
		return gtkFrame;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkFrame = cast(GtkFrame*)obj;
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
	
	/**
	 * Creates a new GtkFrame, with optional label label.
	 * If label is NULL, the label is omitted.
	 * Params:
	 * label = the text to use as the label of the frame
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label)
	{
		// GtkWidget * gtk_frame_new (const gchar *label);
		auto p = gtk_frame_new(Str.toStringz(label));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_frame_new(Str.toStringz(label))");
		}
		this(cast(GtkFrame*) p);
	}
	
	/**
	 * Sets the text of the label. If label is NULL,
	 * the current label is removed.
	 * Params:
	 * label = the text to use as the label of the frame. [allow-none]
	 */
	public void setLabel(string label)
	{
		// void gtk_frame_set_label (GtkFrame *frame,  const gchar *label);
		gtk_frame_set_label(gtkFrame, Str.toStringz(label));
	}
	
	/**
	 * Sets the label widget for the frame. This is the widget that
	 * will appear embedded in the top edge of the frame as a
	 * title.
	 * Params:
	 * labelWidget = the new label widget
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		// void gtk_frame_set_label_widget (GtkFrame *frame,  GtkWidget *label_widget);
		gtk_frame_set_label_widget(gtkFrame, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}
	
	/**
	 * Sets the alignment of the frame widget's label. The
	 * default values for a newly created frame are 0.0 and 0.5.
	 * Params:
	 * xalign = The position of the label along the top edge
	 * of the widget. A value of 0.0 represents left alignment;
	 * 1.0 represents right alignment.
	 * yalign = The y alignment of the label. A value of 0.0 aligns under
	 * the frame; 1.0 aligns above the frame. If the values are exactly
	 * 0.0 or 1.0 the gap in the frame won't be painted because the label
	 * will be completely above or below the frame.
	 */
	public void setLabelAlign(float xalign, float yalign)
	{
		// void gtk_frame_set_label_align (GtkFrame *frame,  gfloat xalign,  gfloat yalign);
		gtk_frame_set_label_align(gtkFrame, xalign, yalign);
	}
	
	/**
	 * Sets the shadow type for frame.
	 * Params:
	 * type = the new GtkShadowType
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
	 * Returns: the text in the label, or NULL if there was no label widget or the lable widget was not a GtkLabel. This string is owned by GTK+ and must not be modified or freed.
	 */
	public string getLabel()
	{
		// const gchar * gtk_frame_get_label (GtkFrame *frame);
		return Str.toString(gtk_frame_get_label(gtkFrame));
	}
	
	/**
	 * Retrieves the X and Y alignment of the frame's label. See
	 * gtk_frame_set_label_align().
	 * Params:
	 * xalign = location to store X alignment of
	 * frame's label, or NULL. [out][allow-none]
	 * yalign = location to store X alignment of
	 * frame's label, or NULL. [out][allow-none]
	 */
	public void getLabelAlign(out float xalign, out float yalign)
	{
		// void gtk_frame_get_label_align (GtkFrame *frame,  gfloat *xalign,  gfloat *yalign);
		gtk_frame_get_label_align(gtkFrame, &xalign, &yalign);
	}
	
	/**
	 * Retrieves the label widget for the frame. See
	 * gtk_frame_set_label_widget().
	 * Returns: the label widget, or NULL if there is none. [transfer none]
	 */
	public Widget getLabelWidget()
	{
		// GtkWidget * gtk_frame_get_label_widget (GtkFrame *frame);
		auto p = gtk_frame_get_label_widget(gtkFrame);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Retrieves the shadow type of the frame. See
	 * gtk_frame_set_shadow_type().
	 * Returns: the current shadow type of the frame.
	 */
	public GtkShadowType getShadowType()
	{
		// GtkShadowType gtk_frame_get_shadow_type (GtkFrame *frame);
		return gtk_frame_get_shadow_type(gtkFrame);
	}
}
