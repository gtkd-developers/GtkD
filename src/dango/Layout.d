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
private:

extern(C)
{
	GType pango_layout_get_type();
	PangoLayout * pango_layout_new(PangoContext * context);
	PangoLayout * pango_layout_copy(PangoLayout * src);

	PangoContext * pango_layout_get_context(PangoLayout * layout);

	void pango_layout_set_attributes(PangoLayout * layout, PangoAttrList * attrs);
	PangoAttrList * pango_layout_get_attributes(PangoLayout * layout);

	void pango_layout_set_text(PangoLayout * layout, char * text, int length);
	char * pango_layout_get_text(PangoLayout * layout);

	void pango_layout_set_markup(PangoLayout * layout, char * markup, int length);

	void pango_layout_set_markup_with_accel(PangoLayout * layout, char * markup, int length, gunichar accel_marker, gunichar * accel_char);

	void pango_layout_set_font_description(PangoLayout * layout, PangoFontDescription * desc);
	void pango_layout_set_width(PangoLayout * layout, int width);
	int pango_layout_get_width(PangoLayout * layout);
	void pango_layout_set_wrap(PangoLayout * layout, PangoWrapMode wrap);
	PangoWrapMode pango_layout_get_wrap(PangoLayout * layout);
	void pango_layout_set_indent(PangoLayout * layout, int indent);
	int pango_layout_get_indent(PangoLayout * layout);
	void pango_layout_set_spacing(PangoLayout * layout, int spacing);
	int pango_layout_get_spacing(PangoLayout * layout);
	void pango_layout_set_justify(PangoLayout * layout, gboolean justify);
	gboolean pango_layout_get_justify(PangoLayout * layout);
	void pango_layout_set_alignment(PangoLayout * layout, PangoAlignment alignment);
	PangoAlignment pango_layout_get_alignment(PangoLayout * layout);

	void pango_layout_set_tabs(PangoLayout * layout, PangoTabArray * tabs);

	PangoTabArray * pango_layout_get_tabs(PangoLayout * layout);

	void pango_layout_set_single_paragraph_mode(PangoLayout * layout, gboolean setting);
	gboolean pango_layout_get_single_paragraph_mode(PangoLayout * layout);

	void pango_layout_context_changed(PangoLayout * layout);

	void pango_layout_get_log_attrs(PangoLayout * layout, PangoLogAttr * *attrs, gint * n_attrs);

	void pango_layout_index_to_pos(PangoLayout * layout, int index_, PangoRectangle * pos);
	void pango_layout_get_cursor_pos(PangoLayout * layout, int index_, PangoRectangle * strong_pos, PangoRectangle * weak_pos);
	void pango_layout_move_cursor_visually(PangoLayout * layout, gboolean strong, int old_index, int old_trailing, int direction, int * new_index, int * new_trailing);
	gboolean pango_layout_xy_to_index(PangoLayout * layout, int x, int y, int * index_, int * trailing);
	void pango_layout_get_extents(PangoLayout * layout, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	void pango_layout_get_pixel_extents(PangoLayout * layout, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	void pango_layout_get_size(PangoLayout * layout, int * width, int * height);
	void pango_layout_get_pixel_size(PangoLayout * layout, int * width, int * height);

	int pango_layout_get_line_count(PangoLayout * layout);
	PangoLayoutLine * pango_layout_get_line(PangoLayout * layout, int line);
	GSList * pango_layout_get_lines(PangoLayout * layout);

	void pango_layout_line_ref(PangoLayoutLine * line);
	void pango_layout_line_unref(PangoLayoutLine * line);
	gboolean pango_layout_line_x_to_index(PangoLayoutLine * line, int x_pos, int * index_, int * trailing);
	void pango_layout_line_index_to_x(PangoLayoutLine * line, int index_, gboolean trailing, int * x_pos);
	void pango_layout_line_get_x_ranges(PangoLayoutLine * line, int start_index, int end_index, int * *ranges, int * n_ranges);
	void pango_layout_line_get_extents(PangoLayoutLine * line, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	void pango_layout_line_get_pixel_extents(PangoLayoutLine * layout_line, PangoRectangle * ink_rect, PangoRectangle * logical_rect);


	PangoLayoutIter * pango_layout_get_iter(PangoLayout * layout);
	void pango_layout_iter_free(PangoLayoutIter * iter);

	int pango_layout_iter_get_index(PangoLayoutIter * iter);
	PangoLayoutRun * pango_layout_iter_get_run(PangoLayoutIter * iter);
	PangoLayoutLine * pango_layout_iter_get_line(PangoLayoutIter * iter);
	gboolean pango_layout_iter_at_last_line(PangoLayoutIter * iter);

	gboolean pango_layout_iter_next_char(PangoLayoutIter * iter);
	gboolean pango_layout_iter_next_cluster(PangoLayoutIter * iter);
	gboolean pango_layout_iter_next_run(PangoLayoutIter * iter);
	gboolean pango_layout_iter_next_line(PangoLayoutIter * iter);

	void pango_layout_iter_get_char_extents(PangoLayoutIter * iter, PangoRectangle * logical_rect);
	void pango_layout_iter_get_cluster_extents(PangoLayoutIter * iter, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	void pango_layout_iter_get_run_extents(PangoLayoutIter * iter, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	void pango_layout_iter_get_line_extents(PangoLayoutIter * iter, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	/* All the yranges meet, unlike the logical_rect's(i.e. the yranges
	 * assign between-line spacing to the nearest line)
	 */
	void pango_layout_iter_get_line_yrange(PangoLayoutIter * iter, int * y0_, int * y1_);
	void pango_layout_iter_get_layout_extents(PangoLayoutIter * iter, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	int pango_layout_iter_get_baseline(PangoLayoutIter * iter);

};

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
	
	/+
	void pango_layout_set_attributes((pngL(), PangoAttrList * attrs);
	PangoAttrList * pango_layout_get_attributes((pngL());

	void pango_layout_set_text((pngL(), char * text, int length);
	char * pango_layout_get_text((pngL());

	void pango_layout_set_markup((pngL(), char * markup, int length);

	void pango_layout_set_markup_with_accel((pngL(), char * markup, int length, gunichar accel_marker, gunichar * accel_char);

	void pango_layout_set_font_description((pngL(), PangoFontDescription * desc);
	void pango_layout_set_width((pngL(), int width);
	int pango_layout_get_width((pngL());
	void pango_layout_set_wrap((pngL(), PangoWrapMode wrap);
	PangoWrapMode pango_layout_get_wrap((pngL());
	void pango_layout_set_indent((pngL(), int indent);
	int pango_layout_get_indent((pngL());
	void pango_layout_set_spacing((pngL(), int spacing);
	int pango_layout_get_spacing((pngL());
	void pango_layout_set_justify((pngL(), gboolean justify);
	gboolean pango_layout_get_justify((pngL());
	void pango_layout_set_alignment((pngL(), PangoAlignment alignment);
	PangoAlignment pango_layout_get_alignment((pngL());

	void pango_layout_set_tabs((pngL(), PangoTabArray * tabs);

	PangoTabArray * pango_layout_get_tabs((pngL());

	void pango_layout_set_single_paragraph_mode((pngL(), gboolean setting);
	gboolean pango_layout_get_single_paragraph_mode((pngL());

	void pango_layout_context_changed((pngL());

	void pango_layout_get_log_attrs((pngL(), PangoLogAttr * *attrs, gint * n_attrs);

	void pango_layout_index_to_pos((pngL(), int index_, PangoRectangle * pos);
	void pango_layout_get_cursor_pos((pngL(), int index_, PangoRectangle * strong_pos, PangoRectangle * weak_pos);
	void pango_layout_move_cursor_visually((pngL(), gboolean strong, int old_index, int old_trailing, int direction, int * new_index, int * new_trailing);
	gboolean pango_layout_xy_to_index((pngL(), int x, int y, int * index_, int * trailing);
	void pango_layout_get_extents((pngL(), PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	void pango_layout_get_pixel_extents((pngL(), PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	void pango_layout_get_size((pngL(), int * width, int * height);
	void pango_layout_get_pixel_size((pngL(), int * width, int * height);

	int pango_layout_get_line_count((pngL());
	PangoLayoutLine * pango_layout_get_line((pngL(), int line);
	GSList * pango_layout_get_lines((pngL());

	void pango_layout_line_ref(PangoLayoutLine * line);
	void pango_layout_line_unref(PangoLayoutLine * line);
	gboolean pango_layout_line_x_to_index(PangoLayoutLine * line, int x_pos, int * index_, int * trailing);
	void pango_layout_line_index_to_x(PangoLayoutLine * line, int index_, gboolean trailing, int * x_pos);
	void pango_layout_line_get_x_ranges(PangoLayoutLine * line, int start_index, int end_index, int * *ranges, int * n_ranges);
	void pango_layout_line_get_extents(PangoLayoutLine * line, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	void pango_layout_line_get_pixel_extents(PangoLayoutLine * layout_line, PangoRectangle * ink_rect, PangoRectangle * logical_rect);


	PangoLayoutIter * pango_layout_get_iter((pngL());
	+/	
	/*
	 * layout iter
	 */
	/*
	void pango_layout_iter_free(PangoLayoutIter * iter);

	int pango_layout_iter_get_index(PangoLayoutIter * iter);
	PangoLayoutRun * pango_layout_iter_get_run(PangoLayoutIter * iter);
	PangoLayoutLine * pango_layout_iter_get_line(PangoLayoutIter * iter);
	gboolean pango_layout_iter_at_last_line(PangoLayoutIter * iter);

	gboolean pango_layout_iter_next_char(PangoLayoutIter * iter);
	gboolean pango_layout_iter_next_cluster(PangoLayoutIter * iter);
	gboolean pango_layout_iter_next_run(PangoLayoutIter * iter);
	gboolean pango_layout_iter_next_line(PangoLayoutIter * iter);

	void pango_layout_iter_get_char_extents(PangoLayoutIter * iter, PangoRectangle * logical_rect);
	void pango_layout_iter_get_cluster_extents(PangoLayoutIter * iter, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	void pango_layout_iter_get_run_extents(PangoLayoutIter * iter, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	void pango_layout_iter_get_line_extents(PangoLayoutIter * iter, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	*/
	/* All the yranges meet, unlike the logical_rect's(i.e. the yranges
	 * assign between-line spacing to the nearest line)
	 */
	/*
	void pango_layout_iter_get_line_yrange(PangoLayoutIter * iter, int * y0_, int * y1_);
	void pango_layout_iter_get_layout_extents(PangoLayoutIter * iter, PangoRectangle * ink_rect, PangoRectangle * logical_rect);
	int pango_layout_iter_get_baseline(PangoLayoutIter * iter);
	*/
}


