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


module gsv.SourceStyle;

private import gobject.ObjectG;
private import gsvc.gsv;
public  import gsvc.gsvtypes;


/** */
public class SourceStyle : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceStyle* gtkSourceStyle;

	/** Get the main Gtk struct */
	public GtkSourceStyle* getSourceStyleStruct()
	{
		return gtkSourceStyle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceStyle;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkSourceStyle = cast(GtkSourceStyle*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceStyle* gtkSourceStyle, bool ownedRef = false)
	{
		this.gtkSourceStyle = gtkSourceStyle;
		super(cast(GObject*)gtkSourceStyle, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_style_get_type();
	}

	/**
	 * Creates a copy of @style, that is a new #GtkSourceStyle instance which
	 * has the same attributes set.
	 *
	 * Return: copy of @style, call g_object_unref()
	 *     when you are done with it.
	 *
	 * Since: 2.0
	 */
	public SourceStyle copy()
	{
		auto p = gtk_source_style_copy(gtkSourceStyle);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceStyle)(cast(GtkSourceStyle*) p, true);
	}
}
