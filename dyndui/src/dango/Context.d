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

module dango.Context;

private import def.Types;
private import def.Constants;
private import lib.pango;

/**
 * Functions to run the rendering pipeline.
 */
public:
class Context
{

	public:
	PangoContext* pangoContext;
	
	/**
	 * Gets a pointer to the gtk structure
	 * @return void* to pangoContext
	 */
	void* gtk()
	{
		return cast(void*)pangoContext;
	}
	
	/**
	 * Gets the PangoContext structure
	 * @return pangoContext
	 */
	PangoContext* pngC()
	{
		return pangoContext;
	}
	
	/**
	 * Gets the type fro this class
	 * @return GType
	 */
	GType getType()
	{
		return pango_context_get_type();
	}

	/**
	 * Creates a new Context from a PangoContext strcuture
	 */
	this(PangoContext* pangoContext)
	{
		this.pangoContext = pangoContext;
	}
	
	//#ifdef PANGO_ENABLE_BACKEND
	
	/**
	 * Creates a new Context.
	 */
	this()
	{
		this(pango_context_new());
	}
}
