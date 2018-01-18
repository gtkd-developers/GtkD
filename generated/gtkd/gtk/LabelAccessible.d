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


module gtk.LabelAccessible;

private import atk.HypertextIF;
private import atk.HypertextT;
private import atk.TextIF;
private import atk.TextT;
private import gtk.WidgetAccessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class LabelAccessible : WidgetAccessible, HypertextIF, TextIF
{
	/** the main Gtk struct */
	protected GtkLabelAccessible* gtkLabelAccessible;

	/** Get the main Gtk struct */
	public GtkLabelAccessible* getLabelAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkLabelAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLabelAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkLabelAccessible* gtkLabelAccessible, bool ownedRef = false)
	{
		this.gtkLabelAccessible = gtkLabelAccessible;
		super(cast(GtkWidgetAccessible*)gtkLabelAccessible, ownedRef);
	}

	// add the Hypertext capabilities
	mixin HypertextT!(GtkLabelAccessible);

	// add the Text capabilities
	mixin TextT!(GtkLabelAccessible);


	/** */
	public static GType getType()
	{
		return gtk_label_accessible_get_type();
	}
}
