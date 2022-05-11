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


module gtk.ParamSpecExpression;

private import gobject.ParamSpec;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GParamSpec` for properties holding a `GtkExpression`.
 */
public class ParamSpecExpression : ParamSpec
{
	/** the main Gtk struct */
	protected GtkParamSpecExpression* gtkParamSpecExpression;

	/** Get the main Gtk struct */
	public GtkParamSpecExpression* getParamSpecExpressionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkParamSpecExpression;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkParamSpecExpression;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkParamSpecExpression* gtkParamSpecExpression, bool ownedRef = false)
	{
		this.gtkParamSpecExpression = gtkParamSpecExpression;
		super(cast(GParamSpec*)gtkParamSpecExpression, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_param_expression_get_type();
	}
}
