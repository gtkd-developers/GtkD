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

module ddi.Visual;

private import dui.ObjectG;
private import def.Types;
private import def.Constants;
private import dui.ListG;

private import ddi.Screen;

private import lib.gdk;

/**
 * The representation of the screen
 */
public:
class Visual : ObjectG
{

	debug(status)
	{
		int complete(){return 10;}
		char[] gtkName(){return "GdkVisual";}
		char[] description(){return "";}
		char[] author(){return "Antonio";}
	}
	public:
	
	void* gtk()
	{
		return cast(void*)gObject;
	}

	GdkVisual* gdkV()
	{
		return cast(GdkVisual*)gObject;
	}
		
	this(GdkVisual * gdkVisual)
	{
		super(cast(GdkObject*)gdkVisual);
	}
	
	GType getType()
	{
		return gdk_visual_get_type();
	}
	
	//#ifndef GDK_MULTIHEAD_SAFE 
	/**
	 * getBestDepth
	 * @return 
	 */
	static gint getBestDepth()
	{
		return gdk_visual_get_best_depth();
	}
	/**
	 * getBestType
	 * @return 
	 */
	static VisualType getBestType()
	{
		return gdk_visual_get_best_type();
	}
	/**
	 * getSystem
	 * @return a new Visual
	 */
	static Visual getSystem()
	{
		return new Visual(gdk_visual_get_system());
	}
	/**
	 * getBest
	 * @return a new Visual
	 */
	static Visual getBest()
	{
		return new Visual(gdk_visual_get_best());
	}
	/**
	 * getBestWithDepth
	 * @param depth
	 * @return a new Visual
	 */
	static Visual getBestWithDepth(gint depth)
	{
		return new Visual(gdk_visual_get_best_with_depth(depth));
	}
	/**
	 * getBestWithType
	 * @param visual_type
	 * @return a new Visual
	 */
	static Visual getBestWithType(VisualType visual_type)
	{
		return new Visual(gdk_visual_get_best_with_type(visual_type));
	}
	/**
	 * getBestWithBoth
	 * @param depth
	 * @param visual_type
	 * @return a new Visual
	 */
	static Visual getBestWithBoth(gint depth, VisualType visual_type)
	{
		return new Visual(gdk_visual_get_best_with_both(depth, visual_type));
	}
	
	/**
	 * queryDepths
	 * @param 
	 * @param 
	 */
	static void queryDepths(gint * *depths, gint * count)
	{
		gdk_query_depths(depths, count);
	}
	/**
	 * queryVisualTypes
	 * @param 
	 * @param 
	 */
	static void queryVisualTypes(VisualType * *visual_types, gint * count)
	{
		gdk_query_visual_types(visual_types, count);
	}
	
	/**
	 * listVisuals
	 * @return ListG
	 */
	static ListG listVisuals()
	{
		return new ListG(gdk_list_visuals());
	}
	
	//#endif
	
	/**
	 * gets the screen fro this visual
	 * @return Screen
	 */
	Screen getScreen()
	{
		return new Screen(gdk_visual_get_screen(gdkV()));
	}
	

}
