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
 * outFile = AspectFrame
 * strct   = GtkAspectFrame
 * realStrct=
 * clss    = AspectFrame
 * extend  = 
 * prefixes:
 * 	- gtk_aspect_frame_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.AspectFrame;

private import gtk.typedefs;

private import lib.gtk;


/**
 * Description
 * The GtkAspectFrame is useful when you want
 * pack a widget so that it can resize but always retains
 * the same aspect ratio. For instance, one might be
 * drawing a small preview of a larger image. GtkAspectFrame
 * derives from GtkFrame, so it can draw a label and
 * a frame around the child. The frame will be
 * "shrink-wrapped" to the size of the child.
 */
private import gtk.Frame;
public class AspectFrame : Frame
{
	
	/** the main Gtk struct */
	protected GtkAspectFrame* gtkAspectFrame;
	
	
	public GtkAspectFrame* getAspectFrameStruct()
	{
		return gtkAspectFrame;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkAspectFrame;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAspectFrame* gtkAspectFrame)
	{
		super(cast(GtkFrame*)gtkAspectFrame);
		this.gtkAspectFrame = gtkAspectFrame;
	}
	
	/**
	 */
	
	
	/**
	 * Create a new GtkAspectFrame.
	 * label:
	 * Label text.
	 * xalign:
	 * Horizontal alignment of the child within the allocation of
	 * the GtkAspectFrame. This ranges from 0.0 (left aligned)
	 * to 1.0 (right aligned)
	 * yalign:
	 * Vertical alignment of the child within the allocation of
	 * the GtkAspectFrame. This ranges from 0.0 (left aligned)
	 * to 1.0 (right aligned)
	 * ratio:
	 * The desired aspect ratio.
	 * obey_child:
	 * If TRUE, ratio is ignored, and the aspect
	 *  ratio is taken from the requistion of the child.
	 * Returns:
	 * the new GtkAspectFrame.
	 */
	public this (char[] label, float xalign, float yalign, float ratio, int obeyChild)
	{
		// GtkWidget* gtk_aspect_frame_new (const gchar *label,  gfloat xalign,  gfloat yalign,  gfloat ratio,  gboolean obey_child);
		this(cast(GtkAspectFrame*)gtk_aspect_frame_new(std.string.toStringz(label), xalign, yalign, ratio, obeyChild) );
	}
	
	/**
	 * Set parameters for an existing GtkAspectFrame.
	 * aspect_frame:
	 * a GtkAspectFrame
	 * xalign:
	 * Horizontal alignment of the child within the allocation of
	 * the GtkAspectFrame. This ranges from 0.0 (left aligned)
	 * to 1.0 (right aligned)
	 * yalign:
	 * Vertical alignment of the child within the allocation of
	 * the GtkAspectFrame. This ranges from 0.0 (left aligned)
	 * to 1.0 (right aligned)
	 * ratio:
	 * The desired aspect ratio.
	 * obey_child:
	 * If TRUE, ratio is ignored, and the aspect
	 *  ratio is taken from the requistion of the child.
	 * Property Details
	 * The "obey-child" property
	 *  "obey-child" gboolean : Read / Write
	 * Force aspect ratio to match that of the frame's child.
	 * Default value: TRUE
	 */
	public void set(float xalign, float yalign, float ratio, int obeyChild)
	{
		// void gtk_aspect_frame_set (GtkAspectFrame *aspect_frame,  gfloat xalign,  gfloat yalign,  gfloat ratio,  gboolean obey_child);
		gtk_aspect_frame_set(gtkAspectFrame, xalign, yalign, ratio, obeyChild);
	}
	
	
	
}
