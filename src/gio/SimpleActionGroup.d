/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GSimpleActionGroup.html
 * outPack = gio
 * outFile = SimpleActionGroup
 * strct   = GSimpleActionGroup
 * realStrct=
 * ctorStrct=
 * clss    = SimpleActionGroup
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ActionGroupIF
 * prefixes:
 * 	- g_simple_action_group_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.Action
 * 	- gio.ActionIF
 * 	- gio.ActionGroupIF
 * 	- gio.ActionGroupT
 * structWrap:
 * 	- GAction* -> ActionIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SimpleActionGroup;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import glib.Str;
private import gio.Action;
private import gio.ActionIF;
private import gio.ActionGroupIF;
private import gio.ActionGroupT;



private import gobject.ObjectG;

/**
 * Description
 * GSimpleActionGroup is a hash table filled with GAction objects,
 * implementing the GActionGroup interface.
 */
public class SimpleActionGroup : ObjectG, ActionGroupIF
{
	
	/** the main Gtk struct */
	protected GSimpleActionGroup* gSimpleActionGroup;
	
	
	public GSimpleActionGroup* getSimpleActionGroupStruct()
	{
		return gSimpleActionGroup;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimpleActionGroup;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSimpleActionGroup* gSimpleActionGroup)
	{
		if(gSimpleActionGroup is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gSimpleActionGroup);
		if( ptr !is null )
		{
			this = cast(SimpleActionGroup)ptr;
			return;
		}
		super(cast(GObject*)gSimpleActionGroup);
		this.gSimpleActionGroup = gSimpleActionGroup;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSimpleActionGroup = cast(GSimpleActionGroup*)obj;
	}
	
	// add the ActionGroup capabilities
	mixin ActionGroupT!(GSimpleActionGroup);
	
	/**
	 */
	
	/**
	 * Creates a new, empty, GSimpleActionGroup.
	 * Since 2.28
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GSimpleActionGroup * g_simple_action_group_new (void);
		auto p = g_simple_action_group_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_simple_action_group_new()");
		}
		this(cast(GSimpleActionGroup*) p);
	}
	
	/**
	 * Looks up the action with the name action_name in the group.
	 * If no such action exists, returns NULL.
	 * Since 2.28
	 * Params:
	 * actionName = the name of an action
	 * Returns: a GAction, or NULL. [transfer none]
	 */
	public ActionIF lookup(string actionName)
	{
		// GAction * g_simple_action_group_lookup (GSimpleActionGroup *simple,  const gchar *action_name);
		auto p = g_simple_action_group_lookup(gSimpleActionGroup, Str.toStringz(actionName));
		if(p is null)
		{
			return null;
		}
		return new Action(cast(GAction*) p);
	}
	
	/**
	 * Adds an action to the action group.
	 * If the action group already contains an action with the same name as
	 * action then the old action is dropped from the group.
	 * The action group takes its own reference on action.
	 * Since 2.28
	 * Params:
	 * action = a GAction
	 */
	public void insert(ActionIF action)
	{
		// void g_simple_action_group_insert (GSimpleActionGroup *simple,  GAction *action);
		g_simple_action_group_insert(gSimpleActionGroup, (action is null) ? null : action.getActionTStruct());
	}
	
	/**
	 * Removes the named action from the action group.
	 * If no action of this name is in the group then nothing happens.
	 * Since 2.28
	 * Params:
	 * actionName = the name of the action
	 */
	public void remove(string actionName)
	{
		// void g_simple_action_group_remove (GSimpleActionGroup *simple,  const gchar *action_name);
		g_simple_action_group_remove(gSimpleActionGroup, Str.toStringz(actionName));
	}
}
