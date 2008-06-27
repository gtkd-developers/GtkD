/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkAspectFrame.html
 * outPack = gtk
 * outFile = AspectFrame
 * strct   = GtkAspectFrame
 * realStrct=
 * ctorStrct=
 * clss    = AspectFrame
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_aspect_frame_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.AspectFrame;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;



private import gtk.Frame;

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
public class AspectFrame : Frame
{
	
	/** the main Gtk struct */
	protected GtkAspectFrame* gtkAspectFrame;
	
	
	public GtkAspectFrame* getAspectFrameStruct()
	{
		return gtkAspectFrame;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAspectFrame;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAspectFrame* gtkAspectFrame)
	{
		if(gtkAspectFrame is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkAspectFrame passed to constructor.");
			else return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkAspectFrame);
		if( ptr !is null )
		{
			this = cast(AspectFrame)ptr;
			return;
		}
		super(cast(GtkFrame*)gtkAspectFrame);
		this.gtkAspectFrame = gtkAspectFrame;
	}
	
	/**
	 */
	
	/**
	 * Create a new GtkAspectFrame.
	 * Params:
	 * label = Label text.
	 * xalign = Horizontal alignment of the child within the allocation of
	 * the GtkAspectFrame. This ranges from 0.0 (left aligned)
	 * to 1.0 (right aligned)
	 * yalign = Vertical alignment of the child within the allocation of
	 * the GtkAspectFrame. This ranges from 0.0 (left aligned)
	 * to 1.0 (right aligned)
	 * ratio = The desired aspect ratio.
	 * obeyChild = If TRUE, ratio is ignored, and the aspect
	 *  ratio is taken from the requistion of the child.
	 */
	public this (string label, float xalign, float yalign, float ratio, int obeyChild)
	{
		// GtkWidget* gtk_aspect_frame_new (const gchar *label,  gfloat xalign,  gfloat yalign,  gfloat ratio,  gboolean obey_child);
		auto p = gtk_aspect_frame_new(Str.toStringz(label), xalign, yalign, ratio, obeyChild);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkAspectFrame*) p);
	}
	
	/**
	 * Set parameters for an existing GtkAspectFrame.
	 * Params:
	 * xalign = Horizontal alignment of the child within the allocation of
	 * the GtkAspectFrame. This ranges from 0.0 (left aligned)
	 * to 1.0 (right aligned)
	 * yalign = Vertical alignment of the child within the allocation of
	 * the GtkAspectFrame. This ranges from 0.0 (left aligned)
	 * to 1.0 (right aligned)
	 * ratio = The desired aspect ratio.
	 * obeyChild = If TRUE, ratio is ignored, and the aspect
	 *  ratio is taken from the requistion of the child.
	 */
	public void set(float xalign, float yalign, float ratio, int obeyChild)
	{
		// void gtk_aspect_frame_set (GtkAspectFrame *aspect_frame,  gfloat xalign,  gfloat yalign,  gfloat ratio,  gboolean obey_child);
		gtk_aspect_frame_set(gtkAspectFrame, xalign, yalign, ratio, obeyChild);
	}
}
