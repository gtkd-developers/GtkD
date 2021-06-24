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


module atk.TextRange;

private import atk.c.functions;
public  import atk.c.types;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;


/**
 * A structure used to describe a text range.
 */
public final class TextRange
{
	/** the main Gtk struct */
	protected AtkTextRange* atkTextRange;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public AtkTextRange* getTextRangeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkTextRange;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkTextRange;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkTextRange* atkTextRange, bool ownedRef = false)
	{
		this.atkTextRange = atkTextRange;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			sliceFree(atkTextRange);
	}


	/**
	 * A rectangle giving the bounds of the text range
	 */
	public @property AtkTextRectangle bounds()
	{
		return atkTextRange.bounds;
	}

	/** Ditto */
	public @property void bounds(AtkTextRectangle value)
	{
		atkTextRange.bounds = value;
	}

	/**
	 * The start offset of a AtkTextRange
	 */
	public @property int startOffset()
	{
		return atkTextRange.startOffset;
	}

	/** Ditto */
	public @property void startOffset(int value)
	{
		atkTextRange.startOffset = value;
	}

	/**
	 * The end offset of a AtkTextRange
	 */
	public @property int endOffset()
	{
		return atkTextRange.endOffset;
	}

	/** Ditto */
	public @property void endOffset(int value)
	{
		atkTextRange.endOffset = value;
	}

	/**
	 * The text in the text range
	 */
	public @property string content()
	{
		return Str.toString(atkTextRange.content);
	}

	/** Ditto */
	public @property void content(string value)
	{
		atkTextRange.content = Str.toStringz(value);
	}

	/** */
	public static GType getType()
	{
		return atk_text_range_get_type();
	}
}
