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


module dui.Frame;

private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.Widget;
private import dui.Bin;
private import dui.ObjectG;

public:

alias GtkBin GtkFrame;

private:

alias ShadowType GtkShadowType;

extern (C)
{
	GType gtk_frame_get_type();
	GtkWidget * gtk_frame_new(gchar * label);
	
	void gtk_frame_set_label(GtkFrame * frame, gchar * label);
	gchar * gtk_frame_get_label(GtkFrame * frame);
	
	void gtk_frame_set_label_widget(GtkFrame * frame, GtkWidget * label_widget);
	GtkWidget * gtk_frame_get_label_widget(GtkFrame * frame);
	void gtk_frame_set_label_align(GtkFrame * frame, gfloat xalign, gfloat yalign);
	void gtk_frame_get_label_align(GtkFrame * frame, gfloat * xalign, gfloat * yalign);
	void gtk_frame_set_shadow_type(GtkFrame * frame, GtkShadowType type);
	GtkShadowType gtk_frame_get_shadow_type(GtkFrame * frame);
}


/**
 * A Visual border
 */
public:
class Frame : Bin
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A visual border";}
		char[] author(){return "Antonio";}
	}
	
	
    public:
    /** our defaul shadow type */
    static ShadowType defaultShadow = ShadowType.ETCHED_IN;
    /** our default boder width */
    static int defaultBorder = 0;
    
	protected:
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }

	public:
	
	/**
	 * Gets this class type
	 */
	static GType getType()
	{
		return gtk_frame_get_type();
	}
	

    
    /**
     * Creates a new frame with a label
     * @param label the frame label
     */
    this(char [] label)
    {
		this(gtk_frame_new( cChar(label) ));
		if ( defaultShadow != ShadowType.ETCHED_IN )
		{
			setShadowType(defaultShadow);
		}
		if ( defaultBorder != 0 )
		{
			setBorderWidth(defaultBorder);
		}
    }
    
    /**
     * Creates a new frame width a label for a widget
     * @param child the frame child widget
     * @param label the frame label 
     */
	this(Widget child,char[]label)
	{
		this(label);
		add(child);
	}
    
    /**
     * Sets the frame label
     * @param label the new frame label
     */
    void setlabel(char [] label)
    {
		gtk_frame_set_label(cast(GtkFrame*)gtkW(),cChar(label));
    }
    
    /**
     * Sets the frame label alignment
     * @param xAlign the horizontal alignment
     * @param yAlign the vertical alignment
     */
    void setLabelAlign(float xAlign, float yAlign)
    {
		gtk_frame_set_label_align(cast(GtkFrame*)gtkW(),xAlign,yAlign);
    }

	/**
	 * Gets the currrent label alignment
	 * @param xalign
	 * @param yalign
	 */
	void getabelAlign(gfloat * xalign, gfloat * yalign)
	{
		gtk_frame_get_label_align(cast(GtkFrame*)gtkW(), xalign, yalign);
	}
    
    /**
     * Sets the shadow type
     * @param type the new shadow type
     */
    void setShadowType(ShadowType type)
    {
		gtk_frame_set_shadow_type(cast(GtkFrame*)gtkW(),type);
    }

	/**
	 * Gets the frame current label text
	 * @return the label text
	 */
	String getLabel()
	{
		return String.newz(gtk_frame_get_label(cast(GtkFrame*)gtkW()));
	}
	
	/**
	 * Set the frame label widget
	 * @param widget the new frame label widget
	 */
	void setLabelWidget(Widget widget)
	{
		gtk_frame_set_label_widget(cast(GtkFrame*)gtkW(), widget.gtkW());
	}
	
	/**
	 * Get the current label widget
	 * @return the label widget
	 */
	Widget getLabelWidget()
	{
		void* gw = gtk_frame_get_label_widget(cast(GtkFrame*)gtkW());
		if ( gw === null )
		{
			return null;
		}
		return new Widget(cast(GtkWidget*)gw);
	}
	
	/**
	 * Gets the current shadow type of this frame
	 * @return the shadow type
	 */
	ShadowType getShadowType()
	{
		return gtk_frame_get_shadow_type(cast(GtkFrame*)gtkW());
	}

}
