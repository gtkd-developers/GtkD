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

module dui.Container;
private import dui.Utils;
private import def.Types;
private import dui.DUI;
private import dui.ObjectG;
private import dui.DUIObject;
private import def.Constants;
private import dui.Adjustment;
private import dui.Widget;
private import dui.ListG;
private import event.Event;
private import ddi.Value;

private:

extern (C) void gtk_container_set_border_width(GtkContainer * container, guint border_width);
extern (C) guint gtk_container_get_border_width(GtkContainer * container);
extern (C) void gtk_container_add(GtkContainer * container, GtkWidget * widget);
extern (C) void gtk_container_remove(GtkContainer * container, GtkWidget * widget);

extern (C) void gtk_container_set_resize_mode(GtkContainer * container, ResizeMode resize_mode);
extern (C) ResizeMode gtk_container_get_resize_mode(GtkContainer * container);

extern (C) void gtk_container_check_resize(GtkContainer * container);

extern (C) void gtk_container_foreach(GtkContainer * container, GtkCallback callback, gpointer callback_data);
//# ifndef GTK_DISABLE_DEPRECATED 
extern (C) void gtk_container_foreach_full(GtkContainer * container, GtkCallback callback, GtkCallbackMarshal marshal, gpointer callback_data, GtkDestroyNotify notify);
//# endif /*  GTK_DISABLE_DEPRECATED */
extern (C) GList * gtk_container_get_children(GtkContainer * container);

//# ifndef GTK_DISABLE_DEPRECATED 
//# define gtk_container_children gtk_container_get_children 
//# endif 

extern (C) void gtk_container_propagate_expose(GtkContainer * container, GtkWidget * child, GdkEventExpose * event);

extern (C) void gtk_container_set_focus_chain(GtkContainer * container, GList * focusable_widgets);
extern (C) gboolean gtk_container_get_focus_chain(GtkContainer * container, GList * * focusable_widgets);
extern (C) void gtk_container_unset_focus_chain(GtkContainer * container);

/* Widget-level methods */

extern (C) void gtk_container_set_reallocate_redraws(GtkContainer * container, gboolean needs_redraws);
extern (C) void gtk_container_set_focus_child(GtkContainer * container, GtkWidget * child);
extern (C) void gtk_container_set_focus_vadjustment(GtkContainer * container, GtkAdjustment * adjustment);
extern (C) GtkAdjustment * gtk_container_get_focus_vadjustment(GtkContainer * container);
extern (C) void gtk_container_set_focus_hadjustment(GtkContainer * container, GtkAdjustment * adjustment);
extern (C) GtkAdjustment * gtk_container_get_focus_hadjustment(GtkContainer * container);

extern (C) void gtk_container_resize_children(GtkContainer * container);

extern (C) GType gtk_container_child_type(GtkContainer * container);

//extern (C) void gtk_container_class_install_child_property(GtkContainerClass * cclass, guint property_id, GParamSpec * pspec);
//extern (C) GParamSpec * gtk_container_class_find_child_property(GObjectClass * cclass, gchar * property_name);
//extern (C) GParamSpec * * gtk_container_class_list_child_properties(GObjectClass * cclass, guint * n_properties);
extern (C) void gtk_container_add_with_properties(GtkContainer * container, GtkWidget * widget, gchar * first_prop_name,...);
extern (C) void gtk_container_child_set(GtkContainer * container, GtkWidget * child, gchar * first_prop_name,...);
extern (C) void gtk_container_child_get(GtkContainer * container, GtkWidget * child, gchar * first_prop_name,...);
extern (C) void gtk_container_child_set_valist(GtkContainer * container, GtkWidget * child, gchar * first_property_name, vaList var_args);
extern (C) void gtk_container_child_get_valist(GtkContainer * container, GtkWidget * child, gchar * first_property_name, vaList var_args);
extern (C) void gtk_container_child_set_property(GtkContainer * container, GtkWidget * child, gchar * property_name, GValue * value);
extern (C) void gtk_container_child_get_property(GtkContainer * container, GtkWidget * child, gchar * property_name, GValue * value);

//# define GTK_CONTAINER_WARN_INVALID_CHILD_PROPERTY_ID(object, property_id, pspec) \ G_OBJECT_WARN_INVALID_PSPEC((object), "child property id", (property_id), (pspec)) 
extern (C) void gtk_container_forall(GtkContainer * container, GtkCallback callback, gpointer callback_data);

/**
 * Base class for widgets which contain other widgets.
 */
public:
class Container : Widget
{

	private import dool.String;
	
	debug(status)
	{
		int complete(){return 90;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Any widget that can contain other widgets";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	char [] toString()
	{
		return "Container";
	}

	void dump()
	{
		GtkContainer* gtkContainer = cast(GtkContainer*)gtkW();
		super.dump();
		printf("\n\t### Container ### @ %X\n",gtkW());
		printf("\twidget %X\n",gtkContainer.widget);
		printf("\t*focus_child %X\n",gtkContainer.focus_child);
		printf("\tborder_width:16 %X\n",gtkContainer.border_width);
		printf("\tneed_resize:1\n");
		printf("\tresize_mode:2 \n");
		printf("\treallocate_redraws:1 \n");
		printf("\thas_focus_chain:1 \n");

			//struct GtkContainer
			//{
			//  GtkWidget widget;
			//  
			//  GtkWidget *focus_child;
			//  
			//  guint border_width;
			//  guint need_resize;
			//  guint resize_mode;
			//  guint reallocate_redraws ;
			//  guint has_focus_chain ;
			//};
		//dumpStruct(96,gtkW());

	}

	/**
	 * Adds any widget to this container.
	 * @param child the widget to be added
	 */
	void add(Widget child)
	{

		gtk_container_add(cast(GtkContainer*)gtkW(), child.gtkW());
	}

	/**
	 * Set the border width, this is an empty border
	 * @param width the new border width
	 */
	void setBorderWidth(int width)
	{
		gtk_container_set_border_width(cast(GtkContainer*)gtkW(), width);
	}

	/**
	 * Get the border width
	 * @return the border width
	 */
	guint getBorderWidth()
	{
		return gtk_container_get_border_width(cast(GtkContainer*)gtkW());
	}

	/**
	 * Removes a widget from this container
	 * @param child the widget to remove
	 */
	void remove(Widget child)
	{
		gtk_container_remove(cast(GtkContainer*)gtkW(), child.gtkW());
	}

	/**
	 * Removes all widgets from the container
	 */
	void removeAll()
	{
		ListG children = new ListG(gtk_container_get_children(cast(GtkContainer*)gtkW()));
		for ( int i=children.length()-1 ; i>=0 ; i-- )
		{
			gtk_container_remove(cast(GtkContainer*)gtkW(), cast(GtkWidget*)children.nthData(i));
		}
	}

	/**
	 * Sets the resize mode
	 * @param resize_mode the
	 */
	void setResizeMode(ResizeMode resize_mode)
	{
		gtk_container_set_resize_mode(cast(GtkContainer*)gtkW(), resize_mode);
	}

	/**
	 * Gets the resize mode
	 * @return the resize mode
	 */
	ResizeMode getResizeMode()
	{
		return gtk_container_get_resize_mode(cast(GtkContainer*)gtkW());
	}

	/**
	 * Check resize
	 */
	void checkResize()
	{
		gtk_container_check_resize(cast(GtkContainer*)gtkW());
	}


	/**
	 * Adds a callback to each child.
	 * the use of direct call back function is discoureaged.
	 */
	void forEach(GtkCallback callback, gpointer callback_data)
	{
		gtk_container_foreach(cast(GtkContainer*)gtkW(), callback, callback_data);
	}


//	  # ifndef GTK_DISABLE_DEPRECATED 
//	void gtk_container_foreach_full(cast(GtkContainer*)gtkW(), GtkCallback callback, GtkCallbackMarshal marshal, gpointer callback_data, GtkDestroyNotify notify);
//	  # endif /*  GTK_DISABLE_DEPRECATED */

	/**
	 * Returns an array of all children
	 * @return an array of all children
	 */
	Widget[] getChildren()
	{
		ListG listG = new ListG(gtk_container_get_children(cast(GtkContainer*)gtkW()));
		Widget[] children;
		for ( int i=listG.length()-1 ; i>=0 ; i-- )
		{
			children ~= new Widget(cast(GtkObject*)listG.nthData(i));
		}
		return children;
		// old simpler faster return new ListG(gtk_container_get_children(cast(GtkContainer*)gtkW()));
	}

//	  # ifndef GTK_DISABLE_DEPRECATED 
//	  # define gtk_container_children gtk_container_get_children 
//	  # endif 

	/**
	 * When a container receives an expose event, it must send synthetic expose events to all children that don't have their own GdkWindows.
	 * @param child
	 * @param event
	 */
	void propagateExpose(Widget child, EventExpose event)
	{
		gtk_container_propagate_expose(cast(GtkContainer*)gtkW(), child.gtkW(), cast(GdkEventExpose*)event.getE());
	}

	/**
	 * Sets a focus chain, overriding the one computed automatically by GTK+.
	 * In principle each widget in the chain should be a descendant of the container,
	 * but this is not enforced by this method,
	 * since it's allowed to set the focus chain before you pack the widgets,
	 * or have a widget in the chain that isn't always packed.
	 * The necessary checks are done when the focus chain is actually traversed.
	 */
	void setFocusChain(Widget[] widgets)
	{
		setFocusChain(new ListG(widgets));
	}
	void setFocusChain(ListG focusable_widgets)
	{
		gtk_container_set_focus_chain(cast(GtkContainer*)gtkW(), focusable_widgets.obj());
	}

	/**
	 * get the focus sequence for the child widget???
	 */
	bit getFocusChain(ListG focusable_widgets)
	{
		void * o = focusable_widgets.obj();
		return gtk_container_get_focus_chain(cast(GtkContainer*)gtkW(), cast(GList**)&o)==0?false:true;
	}

	/**
	 * Removes a focus chain explicitly set with setFocusChain().
	 * @see setFocusChain
	 */
	void unsetFocusChain()
	{
		gtk_container_unset_focus_chain(cast(GtkContainer*)gtkW());
	}

	/* Widget-level methods */

	/**
	 * Sets the reallocate_redraws flag of the container to the given value.
	 * Containers requesting reallocation redraws get automatically redrawn if any of their children changed allocation.
	 * @param needs_redraws  the new value for the container's reallocate_redraws flag.
	 */
	void setReallocateRedraws(bit needs_redraws)
	{
		gtk_container_set_reallocate_redraws(cast(GtkContainer*)gtkW(), needs_redraws);
	}

	/**
	 * set Focus child
	 * @param child
	 */
	void setFocusChild(Widget child)
	{
		gtk_container_set_focus_child(cast(GtkContainer*)gtkW(), child.gtkW());
	}

	/**
	 * Sets the vertical focus adjustment for the container.
	 */
	void setFocusVAdjustment(Adjustment adjustment)
	{
		gtk_container_set_focus_vadjustment(cast(GtkContainer*)gtkW(), adjustment.gtkO());
	}

	/**
	 * Retrieves the vertical focus adjustment for the container.
	 */
	Adjustment getFocusVAdjustment()
	{
		return new Adjustment(gtk_container_get_focus_vadjustment(cast(GtkContainer*)gtkW()));
	}

	/**
	 * Sets the horizontal focus adjustment for the container.
	 * @param adjustment
	 */
	void setFocusHAdjustment(Adjustment adjustment)
	{
		gtk_container_set_focus_hadjustment(cast(GtkContainer*)gtkW(), adjustment.gtkO());
	}

	/**
	 * 
	 */
	Adjustment getFocusHAdjustment()
	{
		return new Adjustment(gtk_container_get_focus_hadjustment(cast(GtkContainer*)gtkW()));
	}

	/**
	 * Resizes the children
	 */
	void resizeChildren()
	{
		gtk_container_resize_children(cast(GtkContainer*)gtkW());
	}

	/**
	 * Returns the type of the children supported by the container.
	 * Note that this may return TYPE_NONE to indicate that no more children can be added,
	 * e.g. for a Paned which already has two children.
	 * @return the child type
	 */
	GType childType()
	{
		return gtk_container_child_type(cast(GtkContainer*)gtkW());
	}

	/** not implemented */
	/+
	void gtk_container_class_install_child_property(GtkContainerClass * cclass, guint property_id, GParamSpec * pspec);
	+/
	
	/** not implemented */
	/+
	GParamSpec * gtk_container_class_find_child_property(GObjectClass * cclass, gchar * property_name);
	+/
	//GParamSpec * * gtk_container_class_list_child_properties(GObjectClass * cclass, guint * n_properties);
	
	/**
	 * not implemented 
	 */
	/+
	void addWithProperties(Widget child, char [] first_prop_name,...)
	{
		gtk_container_add_with_properties(cast(GtkContainer*)gtkW(), child.gtkW(), cChar(first_prop_name),null);
	}
	+/
	
	/**
	 * not implemented 
	 */
	/+
	void childSet(Widget child, char [] first_prop_name,...)
	{
		gtk_container_child_set(cast(GtkContainer*)gtkW(), child.gtkW(), cChar(first_prop_name),null);
	}
	+/
	
	/**
	 * not implemented
	 */
	/+
	void childGet(Widget  child, char [] first_prop_name,...)
	{
		gtk_container_child_get(cast(GtkContainer*)gtkW(), child.gtkW(), cChar(first_prop_name),null);
	}
	+/
	
	/**
	 * Sets child vaList
	 * @param child
	 * @param first_property_name
	 * @param var_args
	 */
	void setVaList(Widget child, String first_property_name, vaList var_args)
	{
		child.setVaList(first_property_name, var_args);
	}
	
	/**
	 * Gets child vaList
	 * @param child
	 * @param first_property_name
	 * @param var_args
	 */
	void childGetVaList(Widget  child, String first_property_name, vaList var_args)
	{
		child.getVaList(first_property_name, var_args);
	}
	
	/**
	 * Gets property for a child.
	 * Isn't this a bit dumb? we already have the child... I'm missing somthing...
	 * @param child
	 * @param property_name 
	 * @param value the value to be changed
	 * @return the same Value object passed in with the changed values
	 */
	void childSetProperty(Widget child, String property_name, GValue * value)
	{
		child.setProperty(property_name,value);
	}
	
	/**
	 * Gets property for a child.
	 * Isn't this a bit dumb? we already have the child... I'm missing somthing...
	 * @param child
	 * @param property_name 
	 * @param value the value to be changed
	 * @return the same Value object passed in with the changed values
	 */
	Value childGetProperty(Widget child, String property_name, Value value)
	{
		child.getProperty(property_name,value.getV());
		return value;
	}

//	  # define GTK_CONTAINER_WARN_INVALID_CHILD_PROPERTY_ID(object, property_id, pspec) \ G_OBJECT_WARN_INVALID_PSPEC((object), "child property id", (property_id), (pspec)) 
	/**
	 * Probably sets a call back for all the children
	 * using direct callback from gtk is discouraged
	 */
	void forall(GtkCallback callback, gpointer callback_data)
	{
		gtk_container_forall(cast(GtkContainer*)gtkW(), callback, callback_data);
	}

}
