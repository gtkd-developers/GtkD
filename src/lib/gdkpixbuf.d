/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

// Adapted from John Reimer's DUI loader modules


module lib.gdkpixbuf;

private import std.stdio;
private import gdkpixbuf.gdkpixbuftypes;
private import lib.Loader;
private import lib.paths;

private Linker gdkpixbuf_Linker;

static this()
{
	gdkpixbuf_Linker = new Linker(libPath ~ importLibs[LIBRARY.GDKPIXBUF], libPath ~ importLibs[LIBRARY.GDK] );
	gdkpixbuf_Linker.link(gdkpixbufLinks);
	debug writefln("* Finished static this(): gdkpixbuf");
}

static ~this()
{
	delete gdkpixbuf_Linker;
	debug writefln("* Finished static ~this(): gdkpixbuf");
}

extern(C) 
{	
	// gdkpixbuf.Pixdata
	
	gpointer function(GdkPixdata* pixdata, GdkPixbuf* pixbuf, gboolean useRle)gdk_pixdata_from_pixbuf;
	GdkPixbuf* function(GdkPixdata* pixdata, gboolean copyPixels, GError** error)gdk_pixbuf_from_pixdata;
	guint8* function(GdkPixdata* pixdata, guint* streamLengthP)gdk_pixdata_serialize;
	gboolean function(GdkPixdata* pixdata, guint streamLength, guint8* stream, GError** error)gdk_pixdata_deserialize;
	GString* function(GdkPixdata* pixdata, gchar* name, GdkPixdataDumpType dumpType)gdk_pixdata_to_csource;
	
	// gdkpixbuf.PixbufAnimation
	
	GdkPixbufAnimation* function(char* filename, GError** error)gdk_pixbuf_animation_new_from_file;
	GdkPixbufAnimation* function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_ref;
	void function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_unref;
	int function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_get_width;
	int function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_get_height;
	GdkPixbufAnimationIter* function(GdkPixbufAnimation* animation, GTimeVal* startTime)gdk_pixbuf_animation_get_iter;
	gboolean function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_is_static_image;
	GdkPixbuf* function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_get_static_image;
	gboolean function(GdkPixbufAnimationIter* iter, GTimeVal* currentTime)gdk_pixbuf_animation_iter_advance;
	int function(GdkPixbufAnimationIter* iter)gdk_pixbuf_animation_iter_get_delay_time;
	gboolean function(GdkPixbufAnimationIter* iter)gdk_pixbuf_animation_iter_on_currently_loading_frame;
	GdkPixbuf* function(GdkPixbufAnimationIter* iter)gdk_pixbuf_animation_iter_get_pixbuf;
	GdkPixbufSimpleAnim* function(gint width, gint height, gfloat rate)gdk_pixbuf_simple_anim_new;
	void function(GdkPixbufSimpleAnim* animation, GdkPixbuf* pixbuf)gdk_pixbuf_simple_anim_add_frame;
	
	// gdkpixbuf.PixbufLoader
	
	GdkPixbufLoader* function()gdk_pixbuf_loader_new;
	GdkPixbufLoader* function(char* imageType, GError** error)gdk_pixbuf_loader_new_with_type;
	GdkPixbufLoader* function(char* mimeType, GError** error)gdk_pixbuf_loader_new_with_mime_type;
	GdkPixbufFormat* function(GdkPixbufLoader* loader)gdk_pixbuf_loader_get_format;
	gboolean function(GdkPixbufLoader* loader, guchar* buf, gsize count, GError** error)gdk_pixbuf_loader_write;
	void function(GdkPixbufLoader* loader, int width, int height)gdk_pixbuf_loader_set_size;
	GdkPixbuf* function(GdkPixbufLoader* loader)gdk_pixbuf_loader_get_pixbuf;
	GdkPixbufAnimation* function(GdkPixbufLoader* loader)gdk_pixbuf_loader_get_animation;
	gboolean function(GdkPixbufLoader* loader, GError** error)gdk_pixbuf_loader_close;
	
	// gdkpixbuf.PixbufFormat
	
	gboolean function(GdkPixbuf* pixbuf, gchar* key, gchar* value)gdk_pixbuf_set_option;
	GSList* function()gdk_pixbuf_get_formats;
	gchar* function(GdkPixbufFormat* format)gdk_pixbuf_format_get_name;
	gchar* function(GdkPixbufFormat* format)gdk_pixbuf_format_get_description;
	gchar** function(GdkPixbufFormat* format)gdk_pixbuf_format_get_mime_types;
	gchar** function(GdkPixbufFormat* format)gdk_pixbuf_format_get_extensions;
	gboolean function(GdkPixbufFormat* format)gdk_pixbuf_format_is_writable;
	gboolean function(GdkPixbufFormat* format)gdk_pixbuf_format_is_scalable;
	gboolean function(GdkPixbufFormat* format)gdk_pixbuf_format_is_disabled;
	void function(GdkPixbufFormat* format, gboolean disabled)gdk_pixbuf_format_set_disabled;
	gchar* function(GdkPixbufFormat* format)gdk_pixbuf_format_get_license;
	GdkPixbufFormat* function(gchar* filename, gint* width, gint* height)gdk_pixbuf_get_file_info;


}

Symbol[] gdkpixbufLinks = 
[

	{ "gdk_pixdata_from_pixbuf",  cast(void**)& gdk_pixdata_from_pixbuf},
	{ "gdk_pixbuf_from_pixdata",  cast(void**)& gdk_pixbuf_from_pixdata},
	{ "gdk_pixdata_serialize",  cast(void**)& gdk_pixdata_serialize},
	{ "gdk_pixdata_deserialize",  cast(void**)& gdk_pixdata_deserialize},
	{ "gdk_pixdata_to_csource",  cast(void**)& gdk_pixdata_to_csource},
	{ "gdk_pixbuf_animation_new_from_file",  cast(void**)& gdk_pixbuf_animation_new_from_file},
	{ "gdk_pixbuf_animation_ref",  cast(void**)& gdk_pixbuf_animation_ref},
	{ "gdk_pixbuf_animation_unref",  cast(void**)& gdk_pixbuf_animation_unref},
	{ "gdk_pixbuf_animation_get_width",  cast(void**)& gdk_pixbuf_animation_get_width},
	{ "gdk_pixbuf_animation_get_height",  cast(void**)& gdk_pixbuf_animation_get_height},
	{ "gdk_pixbuf_animation_get_iter",  cast(void**)& gdk_pixbuf_animation_get_iter},
	{ "gdk_pixbuf_animation_is_static_image",  cast(void**)& gdk_pixbuf_animation_is_static_image},
	{ "gdk_pixbuf_animation_get_static_image",  cast(void**)& gdk_pixbuf_animation_get_static_image},
	{ "gdk_pixbuf_animation_iter_advance",  cast(void**)& gdk_pixbuf_animation_iter_advance},
	{ "gdk_pixbuf_animation_iter_get_delay_time",  cast(void**)& gdk_pixbuf_animation_iter_get_delay_time},
	{ "gdk_pixbuf_animation_iter_on_currently_loading_frame",  cast(void**)& gdk_pixbuf_animation_iter_on_currently_loading_frame},
	{ "gdk_pixbuf_animation_iter_get_pixbuf",  cast(void**)& gdk_pixbuf_animation_iter_get_pixbuf},
	{ "gdk_pixbuf_simple_anim_new",  cast(void**)& gdk_pixbuf_simple_anim_new},
	{ "gdk_pixbuf_simple_anim_add_frame",  cast(void**)& gdk_pixbuf_simple_anim_add_frame},
	{ "gdk_pixbuf_loader_new",  cast(void**)& gdk_pixbuf_loader_new},
	{ "gdk_pixbuf_loader_new_with_type",  cast(void**)& gdk_pixbuf_loader_new_with_type},
	{ "gdk_pixbuf_loader_new_with_mime_type",  cast(void**)& gdk_pixbuf_loader_new_with_mime_type},
	{ "gdk_pixbuf_loader_get_format",  cast(void**)& gdk_pixbuf_loader_get_format},
	{ "gdk_pixbuf_loader_write",  cast(void**)& gdk_pixbuf_loader_write},
	{ "gdk_pixbuf_loader_set_size",  cast(void**)& gdk_pixbuf_loader_set_size},
	{ "gdk_pixbuf_loader_get_pixbuf",  cast(void**)& gdk_pixbuf_loader_get_pixbuf},
	{ "gdk_pixbuf_loader_get_animation",  cast(void**)& gdk_pixbuf_loader_get_animation},
	{ "gdk_pixbuf_loader_close",  cast(void**)& gdk_pixbuf_loader_close},
	{ "gdk_pixbuf_set_option",  cast(void**)& gdk_pixbuf_set_option},
	{ "gdk_pixbuf_get_formats",  cast(void**)& gdk_pixbuf_get_formats},
	{ "gdk_pixbuf_format_get_name",  cast(void**)& gdk_pixbuf_format_get_name},
	{ "gdk_pixbuf_format_get_description",  cast(void**)& gdk_pixbuf_format_get_description},
	{ "gdk_pixbuf_format_get_mime_types",  cast(void**)& gdk_pixbuf_format_get_mime_types},
	{ "gdk_pixbuf_format_get_extensions",  cast(void**)& gdk_pixbuf_format_get_extensions},
	{ "gdk_pixbuf_format_is_writable",  cast(void**)& gdk_pixbuf_format_is_writable},
	{ "gdk_pixbuf_format_is_scalable",  cast(void**)& gdk_pixbuf_format_is_scalable},
	{ "gdk_pixbuf_format_is_disabled",  cast(void**)& gdk_pixbuf_format_is_disabled},
	{ "gdk_pixbuf_format_set_disabled",  cast(void**)& gdk_pixbuf_format_set_disabled},
	{ "gdk_pixbuf_format_get_license",  cast(void**)& gdk_pixbuf_format_get_license},
	{ "gdk_pixbuf_get_file_info",  cast(void**)& gdk_pixbuf_get_file_info},

];