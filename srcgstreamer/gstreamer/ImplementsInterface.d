/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * 	- gst_
 * 	- gst_element_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * 	- GstElement* -> Element
 * module aliases:
 * local aliases:
 */

module gstreamer.ImplementsInterface;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;






/**
 * Description
 * Provides interface functionality on per instance basis and not per class
 * basis, which is the case for gobject.
 */
public class ImplementsInterface
{
	/+TODO
	 
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
		version(noAssert)
		{
			if ( gstImplementsInterface is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gstImplementsInterface is null on constructor").newline;
				}
				else
				{
					printf("struct gstImplementsInterface is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gstImplementsInterface !is null, "struct gstImplementsInterface is null on constructor");
		}
		this.gstImplementsInterface = gstImplementsInterface;
	}
	
	/**
	 */
	
	
	/**
	 * Test whether the given element implements a certain interface of type
	 * iface_type, and test whether it is supported for this specific instance.
	 * element:
	 *  GstElement to check for the implementation of the interface
	 * iface_type:
	 *  (final) type of the interface which we want to be implemented
	 * Returns:
	 *  whether or not the element implements the interface.
	 */
	public static int elementImplementsInterface(Element element, GType ifaceType)
	{
		// gboolean gst_element_implements_interface  (GstElement *element,  GType iface_type);
		return gst_element_implements_interface((element is null) ? null : element.getElementStruct(), ifaceType);
	}
	
	/**
	 * cast a given object to an interface type, and check whether this
	 * interface is supported for this specific instance.
	 * from:
	 *  the object (any sort) from which to cast to the interface
	 * type:
	 *  the interface type to cast to
	 * Returns:
	 *  a gpointer to the interface type
	 */
	public static void* implementsInterfaceCast(void* from, GType type)
	{
		// gpointer gst_implements_interface_cast (gpointer from,  GType type);
		return gst_implements_interface_cast(from, type);
	}
	
	/**
	 * check a given object for an interface implementation, and check
	 * whether this interface is supported for this specific instance.
	 * from:
	 *  the object (any sort) from which to check from for the interface
	 * type:
	 *  the interface type to check for
	 * Returns:
	 *  whether or not the object implements the given interface
	 * See Also
	 * GstElement
	 */
	public static int implementsInterfaceCheck(void* from, GType type)
	{
		// gboolean gst_implements_interface_check (gpointer from,  GType type);
		return gst_implements_interface_check(from, type);
	}
	+/
}
