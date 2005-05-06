/*
 * pango.d
 *
 * Define the exported names for libpango
 * 
 * 2005-02-10: Updated -- JJR
 * 2005-05-05: Released
 */
 
module lib.pango;

private 
{
	import lib.loader;
	import lib.paths;
	
	import def.Types;
	import def.Constants;
	
	debug import std.stdio;
}

private Linker pango_Linker;

/*
 * Static constructor: load Pango shared library and functions prior to main start 
 * If the load or link fails, the loader will throw a new exception and exit
 * application.
 */

static this() 
{	
	pango_Linker = new Linker( lib.paths.libPath ~ lib.paths.importLibs[LIBRARY.PANGO] );
		
	pango_Linker.link( pangoLinks );
	debug writefln("* Finished static this(): pango");
}

/* unload at program termination */

static ~this()
{
	delete pango_Linker;
	debug writefln("* Finished static ~this(): pango");
}
	
debug void main() 
{
	writefln("Running main");
}
	
//
// **** Pango function types *****
// 

extern(C)
{
	// ------  Pango Context ------
	
	GType 					function()
								pango_context_get_type;
	PangoContext * 			function() 
								pango_context_new;
	void 					function(PangoContext*,PangoFontMap*) 
								pango_context_set_font_map;
	void 					function(PangoContext*,PangoFontFamily***,int*) 		
								pango_context_list_families;
	PangoFont* 				function(PangoContext*,PangoFontDescription*) 	
								pango_context_load_font;
	PangoFontset* 			function(PangoContext*,PangoFontDescription*,PangoLanguage*) 
								pango_context_load_fontset;
	PangoFontMetrics* 		function(PangoContext*,PangoFontDescription*,PangoLanguage*) 
								pango_context_get_metrics;
	void 					function(PangoContext*, PangoFontDescription*) 
								pango_context_set_font_description;
	PangoFontDescription* 	function(PangoContext*) 
								pango_context_get_font_description;
	PangoLanguage* 			function(PangoContext*) 
								pango_context_get_language;
	void 					function(PangoContext*, PangoLanguage*) 
								pango_context_set_language;
	void 					function(PangoContext*,PangoDirection) 
								pango_context_set_base_dir;
	PangoDirection 			function(PangoContext*) 
								pango_context_get_base_dir;
	GList* 					function(PangoContext*,char*,int,int,PangoAttrList*,PangoAttrIterator*)
								pango_itemize;
	
	// ------ Pango Font ------
	
	GType 					function() 
								pango_font_description_get_type;
	PangoFontDescription* 	function() 
								pango_font_description_new;
	void 					function(PangoFontDescription*) 
								pango_font_description_free;
	PangoFontDescription*   function(char* str) 
								pango_font_description_from_string;
								
	// ------ Pango Layout ------
	
	GType					function()
								pango_layout_get_type;
	PangoLayout*			function(PangoContext*)
								pango_layout_new;
	PangoLayout*			function(PangoLayout*)
								pango_layout_copy;
	PangoContext*			function(PangoLayout*)
								pango_layout_get_context;
	void					function(PangoLayout*,PangoAttrList*)
								pango_layout_set_attributes;
	PangoAttrList*			function(PangoLayout*)
								pango_layout_get_attributes;
	void					function(PangoLayout*,char*,int)
								pango_layout_set_text;
	char*					function(PangoLayout*)
								pango_layout_get_text;
	void					function(PangoLayout*,char*,int)
								pango_layout_set_markup;
	void					function(PangoLayout*,char*,int,gunichar,gunichar*)
								pango_layout_set_markup_with_accel;
	void					function(PangoLayout*,PangoFontDescription*)
								pango_layout_set_font_description;
	void					function(PangoLayout*,int)
								pango_layout_set_width;
	int						function(PangoLayout*)
								pango_layout_get_width;
	void					function(PangoLayout*,PangoWrapMode)
								pango_layout_set_wrap;
	PangoWrapMode			function(PangoLayout*)
								pango_layout_get_wrap;
	void					function(PangoLayout*,int)
								pango_layout_set_indent;
	int						function(PangoLayout*)
								pango_layout_get_indent;
	void					function(PangoLayout*,int)
								pango_layout_set_spacing;
	int						function(PangoLayout*)
								pango_layout_get_spacing;
	void					function(PangoLayout*,gboolean)
								pango_layout_set_justify;
	gboolean				function(PangoLayout*)
								pango_layout_get_justify;
	void					function(PangoLayout*,PangoAlignment)
								pango_layout_set_alignment;
	PangoAlignment			function(PangoLayout*)
								pango_layout_get_alignment;
	void					function(PangoLayout*,PangoTabArray*)
								pango_layout_set_tabs;
	PangoTabArray*			function(PangoLayout*)
								pango_layout_get_tabs;
	void					function(PangoLayout*,gboolean)
								pango_layout_set_single_paragraph_mode;
	gboolean				function(PangoLayout*)
								pango_layout_get_single_paragraph_mode;
	void					function(PangoLayout*)
								pango_layout_context_changed;
	void					function(PangoLayout*,PangoLogAttr**,gint*)
								pango_layout_get_log_attrs;
	void					function(PangoLayout*,int,PangoRectangle*)
								pango_layout_index_to_pos;
	void					function(PangoLayout*,int,PangoRectangle*,PangoRectangle*)
								pango_layout_get_cursor_pos;
	void					function(PangoLayout*,gboolean,int,int,int,int*,int*)
								pango_layout_move_cursor_visually;
	gboolean				function(PangoLayout*,int,int,int*,int*)
								pango_layout_xy_to_index;
	void					function(PangoLayout*,PangoRectangle*,PangoRectangle*)
								pango_layout_get_extents;
	void					function(PangoLayout*,PangoRectangle*,PangoRectangle*)
								pango_layout_get_pixel_extents;
	void					function(PangoLayout*,int*,int*)
								pango_layout_get_size;
	void					function(PangoLayout*,int*,int*)
								pango_layout_get_pixel_size;
	int						function(PangoLayout*)
								pango_layout_get_line_count;
	PangoLayoutLine*		function(PangoLayout*,int)
								pango_layout_get_line;
	GSList*					function(PangoLayout*)
								pango_layout_get_lines;
	void					function(PangoLayoutLine*)
								pango_layout_line_ref;
	void					function(PangoLayoutLine*)
								pango_layout_line_unref;
	gboolean				function(PangoLayoutLine*,int,int*,int*)
								pango_layout_line_x_to_index;
	void					function(PangoLayoutLine*,int,gboolean,int*)
								pango_layout_line_index_to_x;
	void					function(PangoLayoutLine*,int,int,int**,int*)
								pango_layout_line_get_x_ranges;
	void					function(PangoLayoutLine*,PangoRectangle*,PangoRectangle*)
								pango_layout_line_get_extents;
	void					function(PangoLayoutLine*,PangoRectangle*,PangoRectangle*)
								pango_layout_line_get_pixel_extents;
	PangoLayoutIter*		function(PangoLayout*)
								pango_layout_get_iter;
	void					function(PangoLayoutIter*)
								pango_layout_iter_free;
	int						function(PangoLayoutIter*)
								pango_layout_iter_get_index;
	PangoLayoutRun*			function(PangoLayoutIter*)
								pango_layout_iter_get_run;
	PangoLayoutLine*		function(PangoLayoutIter*)
								pango_layout_iter_get_line;
	gboolean				function(PangoLayoutIter*)
								pango_layout_iter_at_last_line;
	gboolean				function(PangoLayoutIter*)
								pango_layout_iter_next_char;
	gboolean				function(PangoLayoutIter*)
								pango_layout_iter_next_cluster;
	gboolean				function(PangoLayoutIter*)
								pango_layout_iter_next_run;
	gboolean				function(PangoLayoutIter*)
								pango_layout_iter_next_line;
	void					function(PangoLayoutIter*,PangoRectangle*)
								pango_layout_iter_get_char_extents;
	void					function(PangoLayoutIter*,PangoRectangle*,PangoRectangle*)
								pango_layout_iter_get_cluster_extents;
	void					function(PangoLayoutIter*,PangoRectangle*,PangoRectangle*)
								pango_layout_iter_get_run_extents;
	void					function(PangoLayoutIter*,PangoRectangle*,PangoRectangle*)
								pango_layout_iter_get_line_extents;
	void					function(PangoLayoutIter*,int*,int*)
								pango_layout_iter_get_line_yrange;
	void					function(PangoLayoutIter*,PangoRectangle*,PangoRectangle*)
								pango_layout_iter_get_layout_extents;
	int						function(PangoLayoutIter*)
								pango_layout_iter_get_baseline;
	
	// ------ Pango Tab Array ------
	
	PangoTabArray*			function(gint,gboolean)
								pango_tab_array_new;
	PangoTabArray*			function(gint,gboolean,PangoTabAlign,gint,...)
								pango_tab_array_new_with_positions;
	GType					function()
								pango_tab_array_get_type;
	PangoTabArray*			function(PangoTabArray*)
								pango_tab_array_copy;
	void					function(PangoTabArray*)
								pango_tab_array_free;
	gint					function(PangoTabArray*)
								pango_tab_array_get_size;
	void					function(PangoTabArray*,gint)
								pango_tab_array_resize;
	void					function(PangoTabArray*,gint,PangoTabAlign,gint)
								pango_tab_array_set_tab;
	void					function(PangoTabArray*,gint,PangoTabAlign*,gint*)
								pango_tab_array_get_tab;
	void					function(PangoTabArray*,PangoTabAlign**,gint**)
								pango_tab_array_get_tabs;
	gboolean				function(PangoTabArray*)
								pango_tab_array_get_positions_in_pixels;
}

Symbol[] pangoLinks =
[ 
	// dango/Context.d 
	{ "pango_context_get_type",				cast(void**) &pango_context_get_type },
	{ "pango_context_new", 					cast(void**) &pango_context_new },
	{ "pango_context_set_font_map", 		cast(void**) &pango_context_set_font_map },
	{ "pango_context_list_families", 		cast(void**) &pango_context_list_families },
	{ "pango_context_load_font", 			cast(void**) &pango_context_load_font },
	{ "pango_context_load_fontset", 		cast(void**) &pango_context_load_fontset },
	{ "pango_context_get_metrics", 			cast(void**) &pango_context_get_metrics },
	{ "pango_context_set_font_description", cast(void**) &pango_context_set_font_description },
	{ "pango_context_get_font_description", cast(void**) &pango_context_get_font_description },
	{ "pango_context_get_language", 		cast(void**) &pango_context_get_language },
	{ "pango_context_set_language", 		cast(void**) &pango_context_set_language },
	{ "pango_context_set_base_dir", 		cast(void**) &pango_context_set_base_dir },
	{ "pango_context_get_base_dir", 		cast(void**) &pango_context_get_base_dir },
	{ "pango_itemize", 						cast(void**) &pango_itemize },

	// dango/Font.d
	
	{ "pango_font_description_get_type",	cast(void**) &pango_font_description_get_type },
	{ "pango_font_description_new",			cast(void**) &pango_font_description_new },
	{ "pango_font_description_free",		cast(void**) &pango_font_description_free },
	{ "pango_font_description_from_string", cast(void**) &pango_font_description_from_string },
	
	// dango/Layout.d
	
	{ "pango_layout_get_type",				cast(void**) &pango_layout_get_type },
	{ "pango_layout_new",					cast(void**) &pango_layout_new },
	{ "pango_layout_copy",					cast(void**) &pango_layout_copy },
	{ "pango_layout_get_context",			cast(void**) &pango_layout_get_context },
	{ "pango_layout_set_attributes",		cast(void**) &pango_layout_set_attributes },
	{ "pango_layout_get_attributes",		cast(void**) &pango_layout_get_attributes },
	{ "pango_layout_set_text",				cast(void**) &pango_layout_set_text },
	{ "pango_layout_get_text",				cast(void**) &pango_layout_get_text },
	{ "pango_layout_set_markup",			cast(void**) &pango_layout_set_markup },
	{ "pango_layout_set_markup_with_accel",	cast(void**) &pango_layout_set_markup_with_accel },
	{ "pango_layout_set_font_description",	cast(void**) &pango_layout_set_font_description },
	{ "pango_layout_set_width",				cast(void**) &pango_layout_set_width },
	{ "pango_layout_get_width",				cast(void**) &pango_layout_get_width },
	{ "pango_layout_set_wrap",				cast(void**) &pango_layout_set_wrap },
	{ "pango_layout_get_wrap",				cast(void**) &pango_layout_get_wrap },
	{ "pango_layout_set_indent",			cast(void**) &pango_layout_set_indent },
	{ "pango_layout_get_indent",			cast(void**) &pango_layout_get_indent },
	{ "pango_layout_set_spacing",			cast(void**) &pango_layout_set_spacing },
	{ "pango_layout_get_spacing",			cast(void**) &pango_layout_get_spacing },
	{ "pango_layout_set_justify",			cast(void**) &pango_layout_set_justify },
	{ "pango_layout_get_justify",			cast(void**) &pango_layout_get_justify },
	{ "pango_layout_set_alignment",			cast(void**) &pango_layout_set_alignment },
	{ "pango_layout_get_alignment",			cast(void**) &pango_layout_get_alignment },
	{ "pango_layout_set_tabs",				cast(void**) &pango_layout_set_tabs },
	{ "pango_layout_get_tabs",				cast(void**) &pango_layout_get_tabs },
	{ "pango_layout_set_single_paragraph_mode", cast(void**) &pango_layout_set_single_paragraph_mode },
	{ "pango_layout_get_single_paragraph_mode", cast(void**) &pango_layout_get_single_paragraph_mode },
	{ "pango_layout_context_changed",		cast(void**) &pango_layout_context_changed },
	{ "pango_layout_get_log_attrs",			cast(void**) &pango_layout_get_log_attrs },
	{ "pango_layout_index_to_pos",			cast(void**) &pango_layout_index_to_pos },
	{ "pango_layout_get_cursor_pos",		cast(void**) &pango_layout_get_cursor_pos },
	{ "pango_layout_move_cursor_visually",  cast(void**) &pango_layout_move_cursor_visually },
	{ "pango_layout_xy_to_index",			cast(void**) &pango_layout_xy_to_index },
	{ "pango_layout_get_extents",			cast(void**) &pango_layout_get_extents },
	{ "pango_layout_get_pixel_extents",		cast(void**) &pango_layout_get_pixel_extents },
	{ "pango_layout_get_size",				cast(void**) &pango_layout_get_size },
	{ "pango_layout_get_pixel_size",		cast(void**) &pango_layout_get_pixel_size },
	{ "pango_layout_get_line_count",		cast(void**) &pango_layout_get_line_count },
	{ "pango_layout_get_line",			    cast(void**) &pango_layout_get_line },
	{ "pango_layout_get_lines",				cast(void**) &pango_layout_get_lines },
	{ "pango_layout_line_ref",				cast(void**) &pango_layout_line_ref },
	{ "pango_layout_line_unref",			cast(void**) &pango_layout_line_unref },
	{ "pango_layout_line_x_to_index",		cast(void**) &pango_layout_line_x_to_index },
	{ "pango_layout_line_index_to_x",		cast(void**) &pango_layout_line_index_to_x },
	{ "pango_layout_line_get_x_ranges",		cast(void**) &pango_layout_line_get_x_ranges },
	{ "pango_layout_line_get_extents",		cast(void**) &pango_layout_line_get_extents },
	{ "pango_layout_get_pixel_extents",		cast(void**) &pango_layout_get_pixel_extents },
	{ "pango_layout_get_iter",				cast(void**) &pango_layout_get_iter },
	{ "pango_layout_iter_free",				cast(void**) &pango_layout_iter_free },
	{ "pango_layout_iter_get_index",		cast(void**) &pango_layout_iter_get_index },
	{ "pango_layout_iter_get_run",			cast(void**) &pango_layout_iter_get_run },
	{ "pango_layout_iter_get_line",			cast(void**) &pango_layout_iter_get_line },
	{ "pango_layout_iter_at_last_line",		cast(void**) &pango_layout_iter_at_last_line },
	{ "pango_layout_iter_next_char",		cast(void**) &pango_layout_iter_next_char },
	{ "pango_layout_iter_next_cluster",		cast(void**) &pango_layout_iter_next_cluster },
	{ "pango_layout_iter_next_run",			cast(void**) &pango_layout_iter_next_run },
	{ "pango_layout_iter_next_line",		cast(void**) &pango_layout_iter_next_line },
	{ "pango_layout_iter_get_char_extents",	cast(void**) &pango_layout_iter_get_char_extents },
	{ "pango_layout_iter_get_cluster_extents", cast(void**) &pango_layout_iter_get_cluster_extents },
	{ "pango_layout_iter_get_run_extents",  cast(void**) &pango_layout_iter_get_run_extents },
	{ "pango_layout_iter_get_line_extents", cast(void**) &pango_layout_iter_get_line_extents },
	{ "pango_layout_iter_get_line_yrange",	cast(void**) &pango_layout_iter_get_line_yrange },
	{ "pango_layout_iter_get_layout_extents", cast(void**) &pango_layout_iter_get_layout_extents },
	{ "pango_layout_iter_get_baseline",		cast(void**) &pango_layout_iter_get_baseline },
	
	//  dango/tabArray.d
	
	{ "pango_tab_array_new",				cast(void**) &pango_tab_array_new },
	{ "pango_tab_array_new_with_positions", cast(void**) &pango_tab_array_new_with_positions },
	{ "pango_tab_array_get_type",			cast(void**) &pango_tab_array_get_type },
	{ "pango_tab_array_copy",				cast(void**) &pango_tab_array_copy },
	{ "pango_tab_array_free",				cast(void**) &pango_tab_array_free },
	{ "pango_tab_array_get_size",			cast(void**) &pango_tab_array_get_size },
	{ "pango_tab_array_resize",				cast(void**) &pango_tab_array_resize },
	{ "pango_tab_array_set_tab",			cast(void**) &pango_tab_array_set_tab },
	{ "pango_tab_array_get_tab",			cast(void**) &pango_tab_array_get_tab },
	{ "pango_tab_array_get_tabs",			cast(void**) &pango_tab_array_get_tabs },
	{ "pango_tab_array_get_positions_in_pixels", cast(void**) &pango_tab_array_get_positions_in_pixels }
];