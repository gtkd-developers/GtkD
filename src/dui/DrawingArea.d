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

module dui.DrawingArea;

private import def.Types;
private import def.Constants;
private import dui.Widget;

alias GtkWidget GtkDrawingArea;

private:

extern(C)
{
	GType gtk_drawing_area_get_type();
	GtkWidget* gtk_drawing_area_new ();
}

/**
 * A empty widget used to draw poins, lines, shapes and pictures.
 */
public:
class DrawingArea : Widget
{
    
    protected:
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }
    
	
//	// realize
//	alias EventHandlerAfter!(Widget, Event) OnRealize;
//	alias EventHandlerAfter!(Widget, Event) OnUnrealize;
//	//expose
//	alias EventHandler!(Widget, EventExpose) OnExpose;
//	alias EventHandler!(Widget, Event) OnNoExpose;
	// configure
	alias EventHandlerAfter!(Widget, EventConfigure) OnConfigure;

//	// realize
//	OnRealize onRealize;
//	OnUnrealize onUnrealize;
//	//expose
//	OnExpose onExpose;
//	OnNoExpose onNoExpose;
	// configure
	OnConfigure onConfigure;

    public:
//	/**
//	 * OnRealize
//	 * @param dlg the method to be added to the event calls
//	 */
//	public void addOnRealize(bit delegate(Widget,Event) dlg)
//	{
//		if ( onRealize === null )
//		{
//			onRealize = new OnRealize(this, EventMask.NONE,new String("realize"));
//		}
//		onRealize += dlg;
//	}
//
//	/**
//	 * OnUnrealize
//	 * @param dlg the method to be added to the event calls
//	 */
//	public void addOnUnrealize(bit delegate(Widget,Event) dlg)
//	{
//		if ( onUnrealize === null )
//		onUnrealize = new OnUnrealize(this, EventMask.NONE,new String("unrealize"));
//		onUnrealize += dlg;
//	}
//
//    	/**
//	 * OnExpose
//	 * @param dlg the method to be added to the event calls
//	 */
//	public void addOnExpose(bit delegate(Widget,EventExpose) dlg)
//	{
//		if ( onExpose === null )
//		onExpose = new OnExpose(this, EventMask.NONE,new String("expose_event"));
//		onExpose += dlg;
//	}
//
//	/**
//	 * OnNoExpose
//	 * @param dlg the method to be added to the event calls
//	 */
//	public void addOnNoExpose(bit delegate(Widget,Event) dlg)
//	{
//		if ( onNoExpose === null )
//		onNoExpose = new OnNoExpose(this, EventMask.NONE,new String("no_expose_event"));
//		onNoExpose += dlg;
//	}

	/**
	 * OnConfigure
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnConfigure(bit delegate(Widget,EventConfigure) dlg)
	{
		if ( onConfigure === null )
		onConfigure = new OnConfigure(this, EventMask.NONE,new String("configure_event"));
		onConfigure += dlg;
	}


	/**
	 * Gets this class type
	 */
	static GType getType()
	{
		return gtk_drawing_area_get_type();
	}
	
	/**
	* Creates a new Drawing Area
	*/
	this()
	{
		this(gtk_drawing_area_new ());
	}
	
	this(int width, int height)
	{
		this();
		setSizeRequest(width, height);
	}
	
}
