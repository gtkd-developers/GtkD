/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.AspectFrame;

private import dui.Utils;
private import def.Types;
private import dui.Frame;

public:

alias GtkFrame GtkAspectFrame;

private:
extern(C)
{
	GtkWidget * gtk_aspect_frame_new(gchar * label, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obey_child);
	void gtk_aspect_frame_set(GtkAspectFrame * aspect_frame, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obey_child);
}
/**
 * A frame that keeps the x, y aspect ratio
 */
public:
class AspectFrame :
		Frame
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] description(){return "A frame that keeps the x, y aspect ratio";}
		char[] gtkName(){return SAME_NAME;}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	/**
	 * Creates a new AspectFrame.
	 * @param label text to use as a title for the fram
	 * @param xalign 0.0 is left 1.0 is right 0.5 is centre (that's canadian for center)
	 * @param yalign 0.0 is top 1.0 is bottom 0.5 is centre
	 * @param ratio x/y 2 is twice as wide as tall
	 * @param obeyChild is true uses the child aspect not ours
	 */
	this(char[] label, gfloat xalign, gfloat yalign, gfloat ratio, bit obeyChild)
	{
		this(gtk_aspect_frame_new(cChar(label), xalign, yalign, ratio, obeyChild));
	}
	
	/**
	 * Sets values for this AspectFrame.
	 * @param xalign 0.0 is left 1.0 is right 0.5 is centre (that's canadian for center)
	 * @param yalign 0.0 is top 1.0 is bottom 0.5 is centre
	 * @param ratio x/y 2 is twice as wide as tall
	 * @param obeyChild is true uses the child aspect not ours
	 */
	void set(gfloat xalign, gfloat yalign, gfloat ratio, gboolean obeyChild)
	{
		gtk_aspect_frame_set(cast(GtkAspectFrame*)gtkW(), xalign, yalign, ratio, obeyChild);
	}

}
