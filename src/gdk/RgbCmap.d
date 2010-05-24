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
 * inFile  = 
 * outPack = gdk
 * outFile = RgbCmap
 * strct   = GdkRgbCmap
 * realStrct=
 * ctorStrct=
 * clss    = RgbCmap
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_rgb_cmap_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.RgbCmap;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;






/**
 * Description
 * GdkRGB is a low-level module which renders RGB, grayscale, and indexed
 * colormap images to a GdkDrawable. It does this as efficiently as
 * possible, handling issues such as colormaps, visuals, dithering,
 * temporary buffers, and so on. Most code should use the higher-level
 * GdkPixbuf features in place of this module; for example,
 * gdk_draw_pixbuf() uses GdkRGB in its implementation.
 * GdkRGB allocates a color cube to use when rendering images. You can
 * set the threshold for installing colormaps with
 * gdk_rgb_set_min_colors(). The default is 5x5x5 (125). If a colorcube
 * of this size or larger can be allocated in the default colormap, then
 * that's done. Otherwise, GdkRGB creates its own private colormap.
 * Setting it to 0 means that it always tries to use the default
 * colormap, and setting it to 216 means that it always creates a private
 * one if it cannot allocate the 6x6x6 colormap in the default. If you
 * always want a private colormap (to avoid consuming too many colormap
 * entries for other apps, say), you can use
 * gdk_rgb_set_install(TRUE).
 * Setting the value greater than 216 exercises a bug in older versions
 * of GdkRGB. Note, however, that setting it to 0 doesn't let you get
 * away with ignoring the colormap and visual - a colormap is always
 * created in grayscale and direct color modes, and the visual is changed
 * in cases where a "better" visual than the default is available.
 * If GDK is built with the Sun mediaLib library, the GdkRGB functions are
 * accelerated using mediaLib, which provides hardware acceleration on Intel,
 * AMD, and Sparc chipsets. If desired, mediaLib support can be turned off
 * by setting the GDK_DISABLE_MEDIALIB environment variable.
 * Example  4.  A simple example program using GdkRGB
 *  1
 * 2
 * 3
 * 4
 * 5
 * 6
 * 7
 * 8
 * 9
 * 10
 * 11
 * 12
 * 13
 * 14
 * 15
 * 16
 * 17
 * 18
 * 19
 * 20
 * 21
 * 22
 * 23
 * 24
 * 25
 * 26
 * 27
 * 28
 * 29
 * 30
 * 31
 * 32
 * 33
 * 34
 * 35
 * 36
 * 37
 * 38
 * 39
 * 40
 * 41
 * 42
 * 43
 * 44
 * 45
 *  #include <gtk/gtk.h>
 * #define IMAGE_WIDTH	256
 * #define IMAGE_HEIGHT	256
 * guchar rgbbuf[IMAGE_WIDTH * IMAGE_HEIGHT * 3];
 * gboolean on_darea_expose (GtkWidget *widget,
 * 			 GdkEventExpose *event,
 * 			 gpointer user_data);
 * int
 * main (int argc, char *argv[])
 * {
	 *  GtkWidget *window, *darea;
	 *  gint x, y;
	 *  guchar *pos;
	 *  gtk_init (argc, argv);
	 *  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	 *  darea = gtk_drawing_area_new ();
	 *  gtk_widget_set_size_request (darea, IMAGE_WIDTH, IMAGE_HEIGHT);
	 *  gtk_container_add (GTK_CONTAINER (window), darea);
	 *  gtk_signal_connect (GTK_OBJECT (darea), "expose-event",
	 *  GTK_SIGNAL_FUNC (on_darea_expose), NULL);
	 *  gtk_widget_show_all (window);
	 *  /+* Set up the RGB buffer. +/
	 *  pos = rgbbuf;
	 *  for (y = 0; y < IMAGE_HEIGHT; y++)
	 *  {
		 *  for (x = 0; x < IMAGE_WIDTH; x++)
		 * 	{
			 * 	 *pos++ = x - x % 32;			/+* Red. +/
			 * 	 *pos++ = (x / 32) * 4 + y - y % 32;	/+* Green. +/
			 * 	 *pos++ = y - y % 32;			/+* Blue. +/
		 * 	}
	 *  }
	 *  gtk_main ();
	 *  return 0;
 * }
 * gboolean
 * on_darea_expose (GtkWidget *widget,
 * 		 GdkEventExpose *event,
 * 		 gpointer user_data)
 * {
	 *  gdk_draw_rgb_image (widget->window, widget->style->fg_gc[GTK_STATE_NORMAL],
	 * 		 0, 0, IMAGE_WIDTH, IMAGE_HEIGHT,
	 * 		 GDK_RGB_DITHER_MAX, rgbbuf, IMAGE_WIDTH * 3);
	 *  return TRUE;
 * }
 */
public class RgbCmap
{
	
	/** the main Gtk struct */
	protected GdkRgbCmap* gdkRgbCmap;
	
	
	public GdkRgbCmap* getRgbCmapStruct()
	{
		return gdkRgbCmap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkRgbCmap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkRgbCmap* gdkRgbCmap)
	{
		if(gdkRgbCmap is null)
		{
			this = null;
			return;
		}
		this.gdkRgbCmap = gdkRgbCmap;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GdkRgbCmap structure. The cmap maps color indexes to
	 * RGB colors. If n_colors is less than 256, then images containing
	 * color values greater than or equal to n_colors will produce undefined
	 * results, including possibly segfaults.
	 * Params:
	 * colors = The colors, represented as 0xRRGGBB integer values.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (uint[] colors)
	{
		// GdkRgbCmap * gdk_rgb_cmap_new (guint32 *colors,  gint n_colors);
		auto p = gdk_rgb_cmap_new(colors.ptr, colors.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_rgb_cmap_new(colors.ptr, colors.length)");
		}
		this(cast(GdkRgbCmap*) p);
	}
	
	/**
	 * Frees the memory associated with a GdkRgbCmap created by gdk_rgb_cmap_new().
	 */
	public void free()
	{
		// void gdk_rgb_cmap_free (GdkRgbCmap *cmap);
		gdk_rgb_cmap_free(gdkRgbCmap);
	}
}
