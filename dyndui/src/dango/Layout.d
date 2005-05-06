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

module dango.Layout;

private import def.Types;
private import def.Constants;
private import dui.OGTK;
private import dango.Context;
private import lib.pango;

/**
 * Highlevel layout driver objects. While complete access to the layout
 * capabilities of Pango is provided using the detailed interfaces for
 * itemization and shaping, using that functionality directly involves writing a
 * fairly large amount of code. The objects and functions in this structure
 * provide a high-level driver for formatting entire paragraphs of text at once.
 */
public:
class Layout : OGTK
{

	public:
	
	PangoLayout* pangoLayout;
	
	/**
	 * Gets the gtk structure
	 * @return a pointer the the gtk structure
	 */
	void* gtk()
	{
		return cast(void*)pangoLayout;
	}
	
	/**
	 * Gets the pango structure 
	 * @return the pangoLayout struct
	 */
	PangoLayout* pngL()
	{
		return pangoLayout;
	}
	
	/**
	 * Gets the type of this class
	 * @return GType
	 */
	GType getType()
	{
		return pango_layout_get_type();
	}
	
	/**
	 * creates a Layout from a pango layout
	 * @param pangoLayout the pango structure
	 */
	this(PangoLayout* pangoLayout)
	{
	}
	
	/**
	 * Creates a new layot from a context
	 * @param context
	 */
	this(Context context)
	{
		this(pango_layout_new(context.pngC()));
	}
	
	/**
	 * copy constructore
	 * @param src the layout to copy
	 */
	this(Layout src)
	{
		this(pango_layout_copy(src.pngL()));
	}

	/**
	 * gets the context
	 * @return a new Context to wrap the pangocontext
	 */
	Context getContext()
	{
		return new Context(pango_layout_get_context((pngL())));
	}
	
}


