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

module dui.VButtonBox;

private import def.Types;
private import def.Constants;
private import dui.ButtonBox;

private:

extern (C) GType gtk_vbutton_box_get_type();
extern (C) GtkWidget* gtk_vbutton_box_new();

/**
 * A box to display buttons vertically
 */
public:
class VButtonBox : ButtonBox
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A box to display buttons vertically";}
		char[] author(){return "Antonio";}
	}
	
    protected:
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }
    
    public:
    
	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_vbutton_box_get_type();
	}
   
    /**
     * Create a new vertical button box
     */
    this()
    {
    	this(gtk_vbutton_box_new());
    }
    
    /**
     * Creates a new vertical button box and sets standart values for it's comon parameters
     * @return a new vertical button box
     */
	static VButtonBox createActionBox()
	{
		VButtonBox bBox = new VButtonBox();
		bBox.setLayout(ButtonBox.START);
		bBox.setBorderWidth(5);
		bBox.setSpacing(7);
		return bBox;
	}

}
