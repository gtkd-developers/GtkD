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


module gtk.TextViewAccessible;

private import atk.EditableTextIF;
private import atk.EditableTextT;
private import atk.StreamableContentIF;
private import atk.StreamableContentT;
private import atk.TextIF;
private import atk.TextT;
private import gtk.ContainerAccessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class TextViewAccessible : ContainerAccessible, EditableTextIF, StreamableContentIF, TextIF
{
	/** the main Gtk struct */
	protected GtkTextViewAccessible* gtkTextViewAccessible;

	/** Get the main Gtk struct */
	public GtkTextViewAccessible* getTextViewAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTextViewAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTextViewAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTextViewAccessible* gtkTextViewAccessible, bool ownedRef = false)
	{
		this.gtkTextViewAccessible = gtkTextViewAccessible;
		super(cast(GtkContainerAccessible*)gtkTextViewAccessible, ownedRef);
	}

	// add the EditableText capabilities
	mixin EditableTextT!(GtkTextViewAccessible);

	// add the StreamableContent capabilities
	mixin StreamableContentT!(GtkTextViewAccessible);

	// add the Text capabilities
	mixin TextT!(GtkTextViewAccessible);


	/** */
	public static GType getType()
	{
		return gtk_text_view_accessible_get_type();
	}
}
