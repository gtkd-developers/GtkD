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

module dui.Misc;
private import def.Types;
private import def.Constants;
private import dui.Widget;

alias GtkWidget GtkMisc;

private:
extern (C) GType gtk_misc_get_type();
extern (C) void gtk_misc_set_alignment(GtkMisc * misc, gfloat xalign, gfloat yalign);
extern (C) void gtk_misc_get_alignment(GtkMisc * misc, gfloat * xalign, gfloat * yalign);
extern (C) void gtk_misc_set_padding(GtkMisc * misc, gint xpad, gint ypad);
extern (C) void gtk_misc_get_padding(GtkMisc * misc, gint * xpad, gint * ypad);

/**
 * Base for many widgets to provide alignment and padding for all it's children
 */
public:
class Misc : Widget
{

	debug(status)
	{
		int complete(){return ST_UNKNOWN;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "base object for the DUI heirarchy";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return type
	 */
	static GType getType()
	{
		return gtk_misc_get_type();
	}
	
	/**
	 * Creates a Misc from a GtkMisc
	 * @param gtkWidget the GtkMisc
	 */
	this(GtkWidget* gtkWidget)
	{
		super(gtkWidget);
	}
	
	public:

	/**
	 * Sets the alignement
	 * @param xalign
	 * @param yalign
	 */
	void setAlignment(gfloat xalign, gfloat yalign)
	{
		gtk_misc_set_alignment(gtkW(), xalign, yalign);
	}

	/**
	 * Gets the alignement
	 * @param xalign
	 * @param yalign
	 */
	void getAlignment(gfloat * xalign, gfloat * yalign)
	{
		gtk_misc_get_alignment(gtkW(), xalign, yalign);
	}

	/**
	 * Sets the pading
	 * @param xpad
	 * @param ypad
	 */
	void setPadding(gint xpad, gint ypad)
	{
		gtk_misc_set_padding(gtkW(), xpad, ypad);
	}

	/**
	 * Gets the pading
	 * @param xpad
	 * @param ypad
	 */
	void getPadding(gint * xpad, gint * ypad)
	{
		gtk_misc_get_padding(gtkW(), xpad, ypad);
	}


}
