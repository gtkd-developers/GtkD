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
 * inFile  = GstImplementsInterface.html
 * outPack = gstreamer
 * outFile = ImplementsInterface
 * strct   = GstImplementsInterface
 * realStrct=
 * ctorStrct=
 * clss    = ImplementsInterface
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_element_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gstreamer.Element
 * structWrap:
 * 	- GstElement* -> Element
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.ImplementsInterface;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gstreamer.Element;




/**
 * Description
 * Provides interface functionality on per instance basis and not per class
 * basis, which is the case for gobject.
 */
public class ImplementsInterface
{
	
	/** the main Gtk struct */
	protected GstImplementsInterface* gstImplementsInterface;
	
	
	public GstImplementsInterface* getImplementsInterfaceStruct()
	{
		return gstImplementsInterface;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstImplementsInterface;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstImplementsInterface* gstImplementsInterface)
	{
		this.gstImplementsInterface = gstImplementsInterface;
	}
	
	/**
	 */
	
	/**
	 * Test whether the given element implements a certain interface of type
	 * iface_type, and test whether it is supported for this specific instance.
	 * Params:
	 * element = GstElement to check for the implementation of the interface
	 * ifaceType = (final) type of the interface which we want to be implemented
	 * Returns: whether or not the element implements the interface.
	 */
	public static int implementsInterface(Element element, GType ifaceType)
	{
		// gboolean gst_element_implements_interface (GstElement *element,  GType iface_type);
		return gst_element_implements_interface((element is null) ? null : element.getElementStruct(), ifaceType);
	}
	
	/**
	 * cast a given object to an interface type, and check whether this
	 * interface is supported for this specific instance.
	 * Params:
	 * from = the object (any sort) from which to cast to the interface
	 * type = the interface type to cast to
	 * Returns: a gpointer to the interface type
	 */
	public static void* implementsInterfaceCast(void* from, GType type)
	{
		// gpointer gst_implements_interface_cast (gpointer from,  GType type);
		return gst_implements_interface_cast(from, type);
	}
	
	/**
	 * check a given object for an interface implementation, and check
	 * whether this interface is supported for this specific instance.
	 * Params:
	 * from = the object (any sort) from which to check from for the interface
	 * type = the interface type to check for
	 * Returns: whether or not the object implements the given interface
	 */
	public static int implementsInterfaceCheck(void* from, GType type)
	{
		// gboolean gst_implements_interface_check (gpointer from,  GType type);
		return gst_implements_interface_check(from, type);
	}
}
