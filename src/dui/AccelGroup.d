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

module dui.AccelGroup;

private import def.Types;
private import dui.ObjectG;

public:

alias GObject GtkAccelGroup;

struct GtkAccelKey;
struct GtkAccelGroupEntry;
struct GtkAccelGroupFindFunc;
private:

extern(C)
{
	//gboolean (*GtkAccelGroupActivate)(GtkAccelGroup * accel_group, GObject * acceleratable, guint keyval, GdkModifierType modifier);
	//gboolean (*GtkAccelGroupFindFunc)(GtkAccelKey * key, GClosure * closure, gpointer data);
	gboolean gtk_accel_group_disconnect(GtkAccelGroup * accel_group, GClosure * closure);
	gboolean gtk_accel_group_disconnect_key(GtkAccelGroup * accel_group, guint accel_key, GdkModifierType accel_mods);
	GtkAccelGroupEntry * gtk_accel_group_query(GtkAccelGroup * accel_group, guint accel_key, GdkModifierType accel_mods, guint * n_entries);
	void gtk_accel_group_lock(GtkAccelGroup * accel_group);
	void gtk_accel_group_unlock(GtkAccelGroup * accel_group);
	GtkAccelGroup * gtk_accel_group_from_accel_closure(GClosure * closure);
	gboolean gtk_accel_groups_activate(GObject * object, guint accel_key, GdkModifierType accel_mods);
	GSList * gtk_accel_groups_from_object(GObject * object);
	GtkAccelKey * gtk_accel_group_find(GtkAccelGroup * accel_group, GtkAccelGroupFindFunc find_func, gpointer data);
	gboolean gtk_accelerator_valid(guint keyval, GdkModifierType modifiers);
	void gtk_accelerator_parse(gchar * accelerator, guint * accelerator_key, GdkModifierType * accelerator_mods);
	gchar * gtk_accelerator_name(guint accelerator_key, GdkModifierType accelerator_mods);
	void gtk_accelerator_set_default_mod_mask(GdkModifierType default_mod_mask);
	guint gtk_accelerator_get_default_mod_mask();
};

/**
 * AccelGroup - not implmented yet
 */
public:
class AccelGroup :
		ObjectG
{

	debug(status)
	{
		int complete(){return ST_NOT_YET;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "AccelGroup";}
		char[] author(){return "Antonio";}
	}
	
	package:
	this(GObject * gObject)
	{
		super(cast(GObject *) gObject);
	}

	public:
	void* gtk()
	{
		return cast(void*)gObject;
	}


	/+
	gboolean gtk_accel_group_disconnect(GtkAccelGroup * accel_group, GClosure * closure);
	gboolean gtk_accel_group_disconnect_key(GtkAccelGroup * accel_group, guint accel_key, GdkModifierType accel_mods);
	GtkAccelGroupEntry * gtk_accel_group_query(GtkAccelGroup * accel_group, guint accel_key, GdkModifierType accel_mods, guint * n_entries);
	void gtk_accel_group_lock(GtkAccelGroup * accel_group);
	void gtk_accel_group_unlock(GtkAccelGroup * accel_group);
	GtkAccelGroup * gtk_accel_group_from_accel_closure(GClosure * closure);
	gboolean gtk_accel_groups_activate(GObject * object, guint accel_key, GdkModifierType accel_mods);
	GSList * gtk_accel_groups_from_object(GObject * object);
	GtkAccelKey * gtk_accel_group_find(GtkAccelGroup * accel_group, GtkAccelGroupFindFunc find_func, gpointer data);
	gboolean gtk_accelerator_valid(guint keyval, GdkModifierType modifiers);
	void gtk_accelerator_parse(gchar * accelerator, guint * accelerator_key, GdkModifierType * accelerator_mods);
	gchar * gtk_accelerator_name(guint accelerator_key, GdkModifierType accelerator_mods);
	void gtk_accelerator_set_default_mod_mask(GdkModifierType default_mod_mask);
	guint gtk_accelerator_get_default_mod_mask();
	+/

}
