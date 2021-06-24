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


module harfbuzz.c.functions;

import std.stdio;
import harfbuzz.c.types;
version (Windows)
	static immutable LIBRARY_HARFBUZZ = ["gobject-0.dll;gobject.dll;gobject.dll"];
else version (OSX)
	static immutable LIBRARY_HARFBUZZ = ["gobject.0.dylib"];
else
	static immutable LIBRARY_HARFBUZZ = ["libharfbuzz-gobject.so.0"];

__gshared extern(C)
{

	// harfbuzz.blob_t

	GType hb_gobject_blob_get_type();

	// harfbuzz.buffer_t

	GType hb_gobject_buffer_get_type();

	// harfbuzz.face_t

	GType hb_gobject_face_get_type();

	// harfbuzz.feature_t

	GType hb_gobject_feature_get_type();
	void hb_feature_to_string(hb_feature_t* feature, char* buf, uint size);

	// harfbuzz.font_funcs_t

	GType hb_gobject_font_funcs_get_type();

	// harfbuzz.font_t

	GType hb_gobject_font_get_type();

	// harfbuzz.glyph_info_t

	GType hb_gobject_glyph_info_get_type();

	// harfbuzz.glyph_position_t

	GType hb_gobject_glyph_position_get_type();

	// harfbuzz.language_t

	const(char)* hb_language_to_string(hb_language_t language);

	// harfbuzz.map_t

	GType hb_gobject_map_get_type();

	// harfbuzz.ot_math_glyph_part_t

	GType hb_gobject_ot_math_glyph_part_get_type();

	// harfbuzz.ot_math_glyph_variant_t

	GType hb_gobject_ot_math_glyph_variant_get_type();

	// harfbuzz.segment_properties_t

	GType hb_gobject_segment_properties_get_type();

	// harfbuzz.set_t

	GType hb_gobject_set_get_type();

	// harfbuzz.shape_plan_t

	GType hb_gobject_shape_plan_get_type();

	// harfbuzz.unicode_funcs_t

	GType hb_gobject_unicode_funcs_get_type();

	// harfbuzz.user_data_key_t

	GType hb_gobject_user_data_key_get_type();

	// harfbuzz.variation_t

	void hb_variation_to_string(hb_variation_t* variation, char* buf, uint size);
}