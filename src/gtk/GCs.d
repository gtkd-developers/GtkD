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
 * inFile  = gtk-Graphics-Contexts.html
 * outPack = gtk
 * outFile = GCs
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = GCs
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_gc_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.GC
 * 	- gdk.Colormap
 * structWrap:
 * 	- GdkColormap* -> Colormap
 * 	- GdkGC* -> GC
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.GCs;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import gdk.GC;
private import gdk.Colormap;




/**
 * Description
 * These functions provide access to a shared pool of GdkGC objects.
 * When a new GdkGC is needed, gtk_gc_get() is called with the required depth,
 * colormap and GdkGCValues. If a GdkGC with the required properties already
 * exists then that is returned. If not, a new GdkGC is created.
 * When the GdkGC is no longer needed, gtk_gc_release() should be called.
 */
public class GCs
{
	
	/**
	 */
	
	/**
	 * Gets a GdkGC with the given depth, colormap and GdkGCValues.
	 * If a GdkGC with the given properties already exists then it is returned,
	 * otherwise a new GdkGC is created.
	 * The returned GdkGC should be released with gtk_gc_release() when it is no
	 * longer needed.
	 * Params:
	 * depth = the depth of the GdkGC to create.
	 * colormap = the GdkColormap (FIXME: I don't know why this is needed).
	 * values = a GdkGCValues struct containing settings for the GdkGC.
	 * valuesMask = a set of flags indicating which of the fields in values has
	 * been set.
	 * Returns: a GdkGC.
	 */
	public static GC get(int depth, Colormap colormap, GdkGCValues* values, GdkGCValuesMask valuesMask)
	{
		// GdkGC * gtk_gc_get (gint depth,  GdkColormap *colormap,  GdkGCValues *values,  GdkGCValuesMask values_mask);
		auto p = gtk_gc_get(depth, (colormap is null) ? null : colormap.getColormapStruct(), values, valuesMask);
		if(p is null)
		{
			return null;
		}
		return new GC(cast(GdkGC*) p);
	}
	
	/**
	 * Releases a GdkGC allocated using gtk_gc_get().
	 * Params:
	 * gc = a GdkGC.
	 */
	public static void release(GC gc)
	{
		// void gtk_gc_release (GdkGC *gc);
		gtk_gc_release((gc is null) ? null : gc.getGCStruct());
	}
}
