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

module ddi.Pixbuf;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import lib.gdk;

private import dglib.ErrorG;
	
private import ddi.Drawable;
private import ddi.GC;
private import dui.Widget;

alias void* GdkPixbufDestroyNotify;

/**
 * Functions for rendering pixbufs on drawables.
 */
public:
class Pixbuf
{
	GdkPixbuf* gdkPixbuf;
	
	public:
	/**
	 * Gets the type
	 * @return the type
	 */
	GdkPixbuf* gdkP()
	{
		return gdkPixbuf;
	}

	/**
	 * Create a Pixbuf from a GdkPixbuf
	 * @param gdkPixbuf
	 */
	this(GdkPixbuf* gdkPixbuf)
	{
		this.gdkPixbuf = gdkPixbuf;
	}
	
	/**
	 * Creates a new Pixbuf from by copying an existing pixbuf
	 * @param pixbuf the existing pixbuf to copy
	 */
	this(Pixbuf pixbuf)
	{
		this(gdk_pixbuf_copy(pixbuf.gdkP()));
	}
	
	/* Rendering to a drawable */

	//void gdk_pixbuf_render_threshold_alpha(GdkPixbuf * pixbuf, GdkBitmap * bitmap, int src_x, int src_y, int dest_x, int dest_y, int width, int height, int alpha_threshold);
	void renderToDrawable(Drawable drawable, GC gc, int src_x, int src_y, int dest_x, int dest_y, int width, int height, GdkRgbDither dither, int x_dither, int y_dither)
	{
		gdk_pixbuf_render_to_drawable(gdkP(), cast(GdkDrawable*)drawable.obj(), cast(GdkGC*)gc.obj(), src_x, src_y, dest_x, dest_y, width, height, dither, x_dither, y_dither);
	}
	//void gdk_pixbuf_render_to_drawable_alpha(GdkPixbuf * pixbuf, GdkDrawable * drawable, int src_x, int src_y, int dest_x, int dest_y, int width, int height, GdkPixbufAlphaMode alpha_mode, int alpha_threshold, GdkRgbDither dither, int x_dither, int y_dither);

	//void gdk_pixbuf_render_pixmap_and_mask_for_colormap(GdkPixbuf * pixbuf, GdkColormap * colormap, GdkPixmap * *pixmap_return, GdkBitmap * *mask_return, int alpha_threshold);
	//#ifndef GDK_MULTIHEAD_SAFE 
	//void gdk_pixbuf_render_pixmap_and_mask(GdkPixbuf * pixbuf, GdkPixmap * *pixmap_return, GdkBitmap * *mask_return, int alpha_threshold);
	//#endif
	/* Fetching a region from a drawable */
	//GdkPixbuf * gdk_pixbuf_get_from_drawable(GdkPixbuf * dest, GdkDrawable * src, GdkColormap * cmap, int src_x, int src_y, int dest_x, int dest_y, int width, int height);
	
	this(Widget widget)
	{
		this(gdk_pixbuf_get_from_drawable(gdkPixbuf, widget.getWindow(), widget.getColormap(),
			0, 0, 0, 0, widget.getWidth(), widget.getHeight()));
	}

	//GdkPixbuf * gdk_pixbuf_get_from_image(GdkPixbuf * dest, GdkImage * src, GdkColormap * cmap, int src_x, int src_y, int dest_x, int dest_y, int width, int height);

	//private import dui.Image;
	
	//this(Image image)
	//{
	//	this(gdk_pixbuf_get_from_image(gdkPixbuf, image.gtkW(), image.getColorMap(),
	//		0, 0, image.getWidth(), image.getHeight()));
	//}
	
	static GType getType()
	{
		return gdk_pixbuf_get_type();
	}

	/* Reference counting */

	//#ifndef GDK_PIXBUF_DISABLE_DEPRECATED 
	//GdkPixbuf * gdk_pixbuf_ref(GdkPixbuf * pixbuf);
	//void gdk_pixbuf_unref(GdkPixbuf * pixbuf);
	//#endif
	
	/* GdkPixbuf accessors */

	//GdkColorspace gdk_pixbuf_get_colorspace (GdkPixbuf * pixbuf);
	//int gdk_pixbuf_get_n_channels (GdkPixbuf * pixbuf);
	//gboolean gdk_pixbuf_get_has_alpha (GdkPixbuf * pixbuf);
	//int gdk_pixbuf_get_bits_per_sample (GdkPixbuf * pixbuf);
	//guchar * gdk_pixbuf_get_pixels (GdkPixbuf * pixbuf);
	
	/**
	 * Gest the width of this pixbuf
	 * @return the width
	 */
	int getWidth()
	{
		return gdk_pixbuf_get_width(gdkP());
	}
	
	/**
	 * Gets the height of this pixbuf
	 * @return the height
	 */
	int getHeight()
	{
		return gdk_pixbuf_get_height(gdkP());
	}
	
	//int gdk_pixbuf_get_rowstride (gdkP());



	/* Create a blank pixbuf with an optimal rowstride and a new buffer */
	//GdkPixbuf * gdk_pixbuf_new (GdkColorspace colorspace, gboolean has_alpha, int bits_per_sample, int width, int height);

	/* Copy a pixbuf */

	// constructor GdkPixbuf * gdk_pixbuf_copy(gdkP());

	/* Create a pixbuf which points to the pixels of another pixbuf */
	// constructor GdkPixbuf * gdk_pixbuf_new_subpixbuf(GdkPixbuf * src_pixbuf, int src_x, int src_y, int width, int height);
	Pixbuf subPixbuf(int srcX, int srcY, int width, int height)
	{
		printf("PixBuf.subPixbuf 1\n" );
		Pixbuf pix = new Pixbuf(gdk_pixbuf_new_subpixbuf(gdkP(), srcX, srcY, width, height));
		printf("PixBuf.subPixbuf 2\n" );
		return pix;
	}

	Pixbuf trimBorder(int borderSize)
	{
		int w = getWidth();
		int h = getHeight();
		if ( borderSize >0 && borderSize < (w/2) && borderSize<(h/2) )
		{
			return subPixbuf(borderSize, borderSize, w-(borderSize*2), h-(borderSize*2) );
		}
		return this;
	}
	
	Pixbuf trimTo(int width, int height)
	{
printf("Pixbuf.trimTo 1\n" );
		if ( width > 0 && height > 0
			&& width < getWidth() && height < getHeight() 
			)
		{
printf("Pixbuf.trimTo 2\n" );
			int w = getWidth();
			int h = getHeight();
			if ( width > w ) width = w;
			if ( height > h ) height = h;
printf("Pixbuf.trimTo 3\n" );
			return subPixbuf( (w-width)/2, (h-height)/2, width, height);
		}
printf("Pixbuf.trimTo 4\n" );
		return this;
	}
	
	/* Simple loading */

	/**
	 * Creates a new pixbuf from a file
	 * @param fileName
	 * @param error
	 */
	this(char [] fileName, GError ** error)
	{
		
		this(gdk_pixbuf_new_from_file(cChar(fileName),error));
	}

	/**
	 * Creates a new pixbuf from data
	 * @param data
	 * @param colorspace
	 * @param has_alpha
	 * @param bits_per_sample
	 * @param width, height
	 * @param rowstride
	 * @param destroy_fn
	 * @param destroy_fn_data
	 */
	this(guchar * data, GdkColorspace colorspace, gboolean has_alpha, int bits_per_sample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroy_fn, gpointer destroy_fn_data)
	{
		this(gdk_pixbuf_new_from_data(data, colorspace, has_alpha, bits_per_sample, width, height, rowstride, destroy_fn, destroy_fn_data));
	}

	/** 
	 * Creates a new pixbuf from xpm data
	 * @param data
	 */
	this(char** data)
	{
		this(gdk_pixbuf_new_from_xpm_data(data));
	}

	/**
	 * Creates a new pixbuf from inline data
	 * @param data_length
	 * @param data
	 * @param copy_pixels
	 * @param error
	 */
	this(gint data_length, guint8 * data, bit copy_pixels, GError * *error)
	{
		this(gdk_pixbuf_new_from_inline(data_length, data, copy_pixels, error));
	}

	/* Mutations */
	//void gdk_pixbuf_fill (gdkP(), guint32 pixel);

	/* Saving */

	/**
	 * Save this pixbuf
	 * @param filename
	 * @param type
	 * @param error
	 */
	bit save(char[] filename, char[] type, GError * *error)
	{
		return gdk_pixbuf_save(gdkP(), cChar(filename), cChar(type), error, null) == 0 ? false : true;
	}

    //bit savev(char * filename, char * type, char * *option_keys, char * *option_values, GError * *error)
	//{
	//	gdk_pixbuf_savev(gdkP(), char * filename, char * type, char * *option_keys, char * *option_values, GError * *error);
	//}

	/* Adding an alpha channel */
	//GdkPixbuf * gdk_pixbuf_add_alpha (gdkP(), gboolean substitute_color, guchar r, guchar g, guchar b);

	/* Copy an area of a pixbuf onto another one */
	/**
	 * Copies an area from other pixbuf into this one
	 * @param src_pixbuf
	 * @param src_x
	 * @param src_y
	 * @param width
	 * @param height
	 * @param dest_x
	 * @param dest_y
	 */
	void copyAreaFrom(Pixbuf src_pixbuf, int src_x, int src_y, int width, int height, int dest_x, int dest_y)
	{
		gdk_pixbuf_copy_area(src_pixbuf.gdkP(), src_x, src_y, width, height, gdkP(), dest_x, dest_y);
	}

	/* Brighten/darken and optionally make it pixelated-looking */
	//void gdk_pixbuf_saturate_and_pixelate (GdkPixbuf * src, GdkPixbuf * dest, gfloat saturation, gboolean pixelate);



	/* Rendering to a drawable */


	/* Scaling */

	//Pixbuf scale(GdkPixbuf * src, GdkPixbuf * dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, GdkInterpType interp_type)
	//{
	//	Pixbuf pb = new Pixbuf();
	//	gdk_pixbuf_scale(GdkPixbuf * src, GdkPixbuf * dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, GdkInterpType interp_type);
	//}

	//void gdk_pixbuf_composite (GdkPixbuf * src, GdkPixbuf * dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, GdkInterpType interp_type, int overall_alpha);
	//void gdk_pixbuf_composite_color (GdkPixbuf * src, GdkPixbuf * dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, GdkInterpType interp_type, int overall_alpha, int check_x,
	//        int check_y, int check_size, guint32 color1, guint32 color2);

	/**
	 * Creates a scaled version of this pixbuf
	 * @param dest_width
	 * @param dest_height
	 * @param interp_type
	 */
	Pixbuf scaleSimple(int dest_width, int dest_height, InterpType interp_type)
	{
		return new Pixbuf(gdk_pixbuf_scale_simple(gdkP(), dest_width, dest_height, interp_type));
	}

	//GdkPixbuf * gdk_pixbuf_composite_color_simple (GdkPixbuf * src, int dest_width, int dest_height, GdkInterpType interp_type, int overall_alpha, int check_size, guint32 color1, guint32 color2);



	/* Animation support */

	//GType gdk_pixbuf_animation_get_type (void) G_GNUC_CONST;

	//GdkPixbufAnimation * gdk_pixbuf_animation_new_from_file (char * filename, GError * *error);

	//#ifndef GDK_PIXBUF_DISABLE_DEPRECATED GdkPixbufAnimation * gdk_pixbuf_animation_ref (GdkPixbufAnimation * animation);
	//void gdk_pixbuf_animation_unref (GdkPixbufAnimation * animation);
	//#endif
	//int gdk_pixbuf_animation_get_width (GdkPixbufAnimation * animation);
	//int gdk_pixbuf_animation_get_height (GdkPixbufAnimation * animation);
	//gboolean gdk_pixbuf_animation_is_static_image (GdkPixbufAnimation * animation);
	//GdkPixbuf * gdk_pixbuf_animation_get_static_image (GdkPixbufAnimation * animation);

	//GdkPixbufAnimationIter * gdk_pixbuf_animation_get_iter (GdkPixbufAnimation * animation, GTimeVal * start_time);
	//GType gdk_pixbuf_animation_iter_get_type (void) G_GNUC_CONST;
	//int gdk_pixbuf_animation_iter_get_delay_time (GdkPixbufAnimationIter * iter);
	//GdkPixbuf * gdk_pixbuf_animation_iter_get_pixbuf (GdkPixbufAnimationIter * iter);
	//gboolean gdk_pixbuf_animation_iter_on_currently_loading_frame (GdkPixbufAnimationIter * iter);
	//gboolean gdk_pixbuf_animation_iter_advance (GdkPixbufAnimationIter * iter, GTimeVal * current_time);




	//gchar * gdk_pixbuf_get_option (gdkP(), gchar * key);



	//typedef struct _GdkPixbufFormat GdkPixbufFormat;

	//GSList * gdk_pixbuf_get_formats (void);
	//gchar * gdk_pixbuf_format_get_name (GdkPixbufFormat * format);
	//gchar * gdk_pixbuf_format_get_description (GdkPixbufFormat * format);
	//gchar * *gdk_pixbuf_format_get_mime_types (GdkPixbufFormat * format);
	//gchar * *gdk_pixbuf_format_get_extensions (GdkPixbufFormat * format);
	//gboolean gdk_pixbuf_format_is_writable (GdkPixbufFormat * format);
}
