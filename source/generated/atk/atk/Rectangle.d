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


module atk.Rectangle;

private import atk.c.functions;
public  import atk.c.types;
private import glib.MemorySlice;
private import linker.Loader;


/**
 * A data structure for holding a rectangle. Those coordinates are
 * relative to the component top-level parent.
 */
public final class Rectangle
{
	/** the main Gtk struct */
	protected AtkRectangle* atkRectangle;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public AtkRectangle* getRectangleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkRectangle;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkRectangle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkRectangle* atkRectangle, bool ownedRef = false)
	{
		this.atkRectangle = atkRectangle;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_ATK[0]) && ownedRef )
			sliceFree(atkRectangle);
	}


	/**
	 * X coordinate of the left side of the rectangle.
	 */
	public @property int x()
	{
		return atkRectangle.x;
	}

	/** Ditto */
	public @property void x(int value)
	{
		atkRectangle.x = value;
	}

	/**
	 * Y coordinate of the top side of the rectangle.
	 */
	public @property int y()
	{
		return atkRectangle.y;
	}

	/** Ditto */
	public @property void y(int value)
	{
		atkRectangle.y = value;
	}

	/**
	 * width of the rectangle.
	 */
	public @property int width()
	{
		return atkRectangle.width;
	}

	/** Ditto */
	public @property void width(int value)
	{
		atkRectangle.width = value;
	}

	/**
	 * height of the rectangle.
	 */
	public @property int height()
	{
		return atkRectangle.height;
	}

	/** Ditto */
	public @property void height(int value)
	{
		atkRectangle.height = value;
	}

	/** */
	public static GType getType()
	{
		return atk_rectangle_get_type();
	}
}
