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

module dui.ScrolledWindow;

private import def.Constants;
private import def.Types;
private import dui.Widget;
private import dui.Bin;
private import dui.Adjustment;

alias GtkBin GtkScrolledWindow;

//public: enum PolicyType
//{
//	ALWAYS,
//	AUTOMATIC,
//	NEVER
//};

alias PolicyType GtkPolicyType;
alias int GtkCornerType;
alias int GtkShadowType;

private:

extern (C) GType gtk_scrolled_window_get_type();
extern (C) GtkWidget * gtk_scrolled_window_new(GtkAdjustment * hadjustment, GtkAdjustment * vadjustment);
extern (C) void gtk_scrolled_window_set_hadjustment(GtkScrolledWindow * scrolled_window, GtkAdjustment * hadjustment);
extern (C) void gtk_scrolled_window_set_vadjustment(GtkScrolledWindow * scrolled_window, GtkAdjustment * hadjustment);
extern (C) GtkAdjustment * gtk_scrolled_window_get_hadjustment(GtkScrolledWindow * scrolled_window);
extern (C) GtkAdjustment * gtk_scrolled_window_get_vadjustment(GtkScrolledWindow * scrolled_window);
extern (C) void gtk_scrolled_window_set_policy(GtkScrolledWindow * scrolled_window, GtkPolicyType hscrollbar_policy, GtkPolicyType vscrollbar_policy);
extern (C) void gtk_scrolled_window_get_policy(GtkScrolledWindow * scrolled_window, GtkPolicyType * hscrollbar_policy, GtkPolicyType * vscrollbar_policy);
extern (C) void gtk_scrolled_window_set_placement(GtkScrolledWindow * scrolled_window, GtkCornerType window_placement);
extern (C) GtkCornerType gtk_scrolled_window_get_placement(GtkScrolledWindow * scrolled_window);
extern (C) void gtk_scrolled_window_set_shadow_type(GtkScrolledWindow * scrolled_window, GtkShadowType type);
extern (C) GtkShadowType gtk_scrolled_window_get_shadow_type(GtkScrolledWindow * scrolled_window);
extern (C) void gtk_scrolled_window_add_with_viewport(GtkScrolledWindow * scrolled_window, GtkWidget * child);

/**
 * A container to display a widget larger then the available display space.
 * This is not a top level window, this is a widget that must have to have a parent widget.
 */
public:
class ScrolledWindow : Bin
{

	public:

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A container to display a widget larger then the available display space";}
		char[] author(){return "Antonio";}
	}
	
	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_scrolled_window_get_type();
	}
	
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * Creates a new ScrolledWindow
	 */
	this()
	{
		this(null,null);
	}

	/**
	 * Creates a new ScrolledWindow with horizontal and vertical adjustments
	 * @param hAdjustment the horizontal adjustment
	 * @param vAdjustment the vertical adjustment
	 */
	this(Adjustment hAdjustment, Adjustment vAdjustment)
	{
		GtkAdjustment *h = (hAdjustment === null) ? null : hAdjustment.gtkO();
		GtkAdjustment *v = (vAdjustment === null) ? null : vAdjustment.gtkO();

		this(gtk_scrolled_window_new(h, v));
	}

	/**
	 * Creates a new Scrolled window and set the policy type
	 * @param hPolicy the horizontal policy
	 * @param vPolicy the vertical policy
	 */
	this(PolicyType hPolicy, PolicyType vPolicy)
	{
		this();
		setPolicy(hPolicy, vPolicy);
	}
	/**
	 * Sets the horizontal adjustment
	 * @param hadjustment the new horizontal adjustment
	 */
	void setHAdjustment(Adjustment hadjustment)
	{
		gtk_scrolled_window_set_hadjustment(cast(GtkScrolledWindow*)gtkW(), hadjustment.gtkO());
	}
	
	/**
	 * Sets the vertical adjustment
	 * @param vadjustment the new vertical adjustment
	 */
	void setVAdjustment(Adjustment vadjustment)
	{
		gtk_scrolled_window_set_vadjustment(cast(GtkScrolledWindow*)gtkW(), vadjustment.gtkO());
	}
	
	/**
	 * Gets the horizontal adjustment
	 * @return the current horizontal adjustment
	 */
	Adjustment getHAdjustment()
	{
		return  new Adjustment(gtk_scrolled_window_get_hadjustment(cast(GtkScrolledWindow*)gtkW()));
	}
	
	/**
	 * Gets the vertical adjustment
	 * @return the current vertical adjustment
	 */
	Adjustment getVAdjustmetn()
	{
		return  new Adjustment(gtk_scrolled_window_get_vadjustment(cast(GtkScrolledWindow*)gtkW()));
	}
	
	/**
	 * Sets the scrollbars display policy
	 * @param hscrollbar_policy
	 * @param vscrollbar_policy
	 */
	void setPolicy(GtkPolicyType hscrollbar_policy, GtkPolicyType vscrollbar_policy)
	{
		gtk_scrolled_window_set_policy(cast(GtkScrolledWindow*)gtkW(), hscrollbar_policy, vscrollbar_policy);
	}
	
	/**
	 * Gets the scrollbars display policy
	 * @param hscrollbar_policy
	 * @param vscrollbar_policy
	 */
	void getPolicy(GtkPolicyType * hscrollbar_policy, GtkPolicyType * vscrollbar_policy)
	{
		gtk_scrolled_window_get_policy(cast(GtkScrolledWindow*)gtkW(), hscrollbar_policy, vscrollbar_policy);
	}
	
	/**
	 * Sets some kind of placement ???
	 * @param window_placement
	 */
	void setPlacement(GtkCornerType window_placement)
	{
		gtk_scrolled_window_set_placement(cast(GtkScrolledWindow*)gtkW(), window_placement);
	}
	
	/**
	 * Gets the current placement
	 */
	GtkCornerType getPlacement()
	{
		return gtk_scrolled_window_get_placement(cast(GtkScrolledWindow*)gtkW());
	}
	
	/**
	 * Sets the shadow type
	 * @param type the shadow type
	 */
	void setShadow(GtkShadowType type)
	{
		gtk_scrolled_window_set_shadow_type(cast(GtkScrolledWindow*)gtkW(), type);
	}
	
	/**
	 * Gets the shadow type
	 * @return the shadow type
	 */
	GtkShadowType geShadow()
	{
		return gtk_scrolled_window_get_shadow_type(cast(GtkScrolledWindow*)gtkW());
	}
	
	/**
	 * Adds a widget child createing a viewport with scrollbars
	 * @param child the widget to add
	 */
	void addWithViewport(Widget child)
	{
		gtk_scrolled_window_add_with_viewport(cast(GtkScrolledWindow*)gtkW(), child.gtkW());
	}

}
