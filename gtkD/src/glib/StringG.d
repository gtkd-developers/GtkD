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
 * inFile  = glib-Strings.html
 * outPack = glib
 * outFile = StringG
 * strct   = GString
 * realStrct=
 * ctorStrct=
 * clss    = StringG
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_string_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GString* -> StringG
 * module aliases:
 * local aliases:
 */

module glib.StringG;

private import gtkc.glibtypes;

private import gtkc.glib;


private import glib.Str;




/**
 * Description
 * A GString is similar to a standard C string, except that it grows automatically
 * as text is appended or inserted. Also, it stores the length of the string, so
 * can be used for binary data with embedded nul bytes.
 */
public class StringG
{
	
	/** the main Gtk struct */
	protected GString* gString;
	
	
	public GString* getStringGStruct()
	{
		return gString;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gString;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GString* gString)
	{
		assert(gString !is null, "struct gString is null on constructor");
		this.gString = gString;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GString, initialized with the given string.
	 * init:
	 *  the initial text to copy into the string.
	 * Returns:
	 *  the new GString.
	 */
	public this (char[] init)
	{
		// GString* g_string_new (const gchar *init);
		this(cast(GString*)g_string_new(Str.toStringz(init)) );
	}
	
	/**
	 * Creates a new GString with len bytes of the
	 * init buffer. Because a length is provided, init
	 * need not be nul-terminated, and can contain embedded
	 * nul bytes.
	 * Since this function does not stop at nul bytes, it is the caller's
	 * responsibility to ensure that init has at least len addressable bytes.
	 * init:
	 *  initial contents of string.
	 * len:
	 *  length of init to use.
	 * Returns:
	 *  a new GString.
	 */
	public this (char[] init, int len)
	{
		// GString* g_string_new_len (const gchar *init,  gssize len);
		this(cast(GString*)g_string_new_len(Str.toStringz(init), len) );
	}
	
	/**
	 * Creates a new GString, with enough space for dfl_size
	 * bytes. This is useful if you are going to add a lot of
	 * text to the string and don't want it to be reallocated
	 * too often.
	 * dfl_size:
	 *  the default size of the space allocated to
	 *  hold the string.
	 * Returns:
	 *  the new GString.
	 */
	public static StringG sizedNew(uint dflSize)
	{
		// GString* g_string_sized_new (gsize dfl_size);
		return new StringG( g_string_sized_new(dflSize) );
	}
	
	/**
	 * Copies the bytes from a string into a GString,
	 * destroying any previous contents. It is rather like
	 * the standard strcpy() function, except that you do not
	 * have to worry about having enough space to copy the string.
	 * string:
	 *  the destination GString. Its current contents
	 *  are destroyed.
	 * rval:
	 *  the string to copy into string
	 * Returns:
	 *  the destination GString.
	 */
	public StringG assign(char[] rval)
	{
		// GString* g_string_assign (GString *string,  const gchar *rval);
		return new StringG( g_string_assign(gString, Str.toStringz(rval)) );
	}
	
	
	
	/**
	 * Writes a formatted string into a GString.
	 * This is similar to the standard sprintf() function,
	 * except that the GString buffer automatically expands
	 * to contain the results. The previous contents of the
	 * GString are destroyed.
	 * string:
	 *  a GString.
	 * format:
	 *  the string format. See the printf() documentation.
	 * ...:
	 *  the parameters to insert into the format string.
	 */
	public void printf(char[] format, ... )
	{
		// void g_string_printf (GString *string,  const gchar *format,  ...);
		g_string_printf(gString, Str.toStringz(format));
	}
	
	/**
	 * Appends a formatted string onto the end of a GString.
	 * This function is is similar to g_string_printf() except
	 * that the text is appended to the GString.
	 * string:
	 *  a GString.
	 * format:
	 *  the string format. See the printf() documentation.
	 * ...:
	 *  the parameters to insert into the format string.
	 */
	public void appendPrintf(char[] format, ... )
	{
		// void g_string_append_printf (GString *string,  const gchar *format,  ...);
		g_string_append_printf(gString, Str.toStringz(format));
	}
	
	/**
	 * Adds a string onto the end of a GString, expanding it if necessary.
	 * string:
	 *  a GString.
	 * val:
	 *  the string to append onto the end of the GString.
	 * Returns:
	 *  the GString.
	 */
	public StringG append(char[] val)
	{
		// GString* g_string_append (GString *string,  const gchar *val);
		return new StringG( g_string_append(gString, Str.toStringz(val)) );
	}
	
	/**
	 * Adds a byte onto the end of a GString, expanding it if necessary.
	 * string:
	 *  a GString.
	 * c:
	 *  the byte to append onto the end of the GString.
	 * Returns:
	 *  the GString.
	 */
	public StringG appendC(char c)
	{
		// GString* g_string_append_c (GString *string,  gchar c);
		return new StringG( g_string_append_c(gString, c) );
	}
	
	/**
	 * Converts a Unicode character into UTF-8, and appends it
	 * to the string.
	 * string:
	 *  a GString
	 * wc:
	 *  a Unicode character
	 * Returns:
	 *  string
	 */
	public StringG appendUnichar(gunichar wc)
	{
		// GString* g_string_append_unichar (GString *string,  gunichar wc);
		return new StringG( g_string_append_unichar(gString, wc) );
	}
	
	/**
	 * Appends len bytes of val to string.
	 * Because len is provided, val may contain
	 * embedded nuls and need not be nul-terminated.
	 * Since this function does not stop at nul bytes, it is the caller's
	 * responsibility to ensure that val has at least len addressable bytes.
	 * string:
	 *  a GString
	 * val:
	 *  bytes to append
	 * len:
	 *  number of bytes of val to use.
	 * Returns:
	 *  the GString
	 */
	public StringG appendLen(char[] val, int len)
	{
		// GString* g_string_append_len (GString *string,  const gchar *val,  gssize len);
		return new StringG( g_string_append_len(gString, Str.toStringz(val), len) );
	}
	
	/**
	 * Adds a string on to the start of a GString,
	 * expanding it if necessary.
	 * string:
	 *  a GString
	 * val:
	 *  the string to prepend on the start of the GString
	 * Returns:
	 *  the GString
	 */
	public StringG prepend(char[] val)
	{
		// GString* g_string_prepend (GString *string,  const gchar *val);
		return new StringG( g_string_prepend(gString, Str.toStringz(val)) );
	}
	
	/**
	 * Adds a byte onto the start of a GString,
	 * expanding it if necessary.
	 * string:
	 *  a GString
	 * c:
	 *  the byte to prepend on the start of the GString
	 * Returns:
	 *  the GString
	 */
	public StringG prependC(char c)
	{
		// GString* g_string_prepend_c (GString *string,  gchar c);
		return new StringG( g_string_prepend_c(gString, c) );
	}
	
	/**
	 * Converts a Unicode character into UTF-8, and prepends it
	 * to the string.
	 * string:
	 *  a GString.
	 * wc:
	 *  a Unicode character.
	 * Returns:
	 *  string.
	 */
	public StringG prependUnichar(gunichar wc)
	{
		// GString* g_string_prepend_unichar (GString *string,  gunichar wc);
		return new StringG( g_string_prepend_unichar(gString, wc) );
	}
	
	/**
	 * Prepends len bytes of val to string.
	 * Because len is provided, val may contain
	 * embedded nuls and need not be nul-terminated.
	 * Since this function does not stop at nul bytes, it is the caller's
	 * responsibility to ensure that val has at least len addressable bytes.
	 * string:
	 *  a GString
	 * val:
	 *  bytes to prepend
	 * len:
	 *  number of bytes in val to prepend
	 * Returns:
	 *  the GString passed in
	 */
	public StringG prependLen(char[] val, int len)
	{
		// GString* g_string_prepend_len (GString *string,  const gchar *val,  gssize len);
		return new StringG( g_string_prepend_len(gString, Str.toStringz(val), len) );
	}
	
	/**
	 * Inserts a copy of a string into a GString,
	 * expanding it if necessary.
	 * string:
	 *  a GString
	 * pos:
	 *  the position to insert the copy of the string
	 * val:
	 *  the string to insert
	 * Returns:
	 *  the GString
	 */
	public StringG insert(int pos, char[] val)
	{
		// GString* g_string_insert (GString *string,  gssize pos,  const gchar *val);
		return new StringG( g_string_insert(gString, pos, Str.toStringz(val)) );
	}
	
	/**
	 * Inserts a byte into a GString, expanding it if necessary.
	 * string:
	 *  a GString
	 * pos:
	 *  the position to insert the byte
	 * c:
	 *  the byte to insert
	 * Returns:
	 *  the GString
	 */
	public StringG insertC(int pos, char c)
	{
		// GString* g_string_insert_c (GString *string,  gssize pos,  gchar c);
		return new StringG( g_string_insert_c(gString, pos, c) );
	}
	
	/**
	 * Converts a Unicode character into UTF-8, and insert it
	 * into the string at the given position.
	 * string:
	 *  a GString
	 * pos:
	 *  the position at which to insert character, or -1 to
	 *  append at the end of the string.
	 * wc:
	 *  a Unicode character
	 * Returns:
	 *  string
	 */
	public StringG insertUnichar(int pos, gunichar wc)
	{
		// GString* g_string_insert_unichar (GString *string,  gssize pos,  gunichar wc);
		return new StringG( g_string_insert_unichar(gString, pos, wc) );
	}
	
	/**
	 * Inserts len bytes of val into string at pos.
	 * Because len is provided, val may contain embedded
	 * nuls and need not be nul-terminated. If pos is -1,
	 * bytes are inserted at the end of the string.
	 * Since this function does not stop at nul bytes, it is the caller's
	 * responsibility to ensure that val has at least len addressable bytes.
	 * string:
	 *  a GString
	 * pos:
	 *  position in string where insertion should
	 *  happen, or -1 for at the end
	 * val:
	 *  bytes to insert
	 * len:
	 *  number of bytes of val to insert
	 * Returns:
	 *  the GString
	 */
	public StringG insertLen(int pos, char[] val, int len)
	{
		// GString* g_string_insert_len (GString *string,  gssize pos,  const gchar *val,  gssize len);
		return new StringG( g_string_insert_len(gString, pos, Str.toStringz(val), len) );
	}
	
	/**
	 * Removes len bytes from a GString, starting at position pos.
	 * The rest of the GString is shifted down to fill the gap.
	 * string:
	 *  a GString
	 * pos:
	 *  the position of the content to remove
	 * len:
	 *  the number of bytes to remove, or -1 to remove all
	 *  following bytes
	 * Returns:
	 *  the GString
	 */
	public StringG erase(int pos, int len)
	{
		// GString* g_string_erase (GString *string,  gssize pos,  gssize len);
		return new StringG( g_string_erase(gString, pos, len) );
	}
	
	/**
	 * Cuts off the end of the GString, leaving the first len bytes.
	 * string:
	 *  a GString
	 * len:
	 *  the new size of the GString
	 * Returns:
	 *  the GString
	 */
	public StringG truncate(uint len)
	{
		// GString* g_string_truncate (GString *string,  gsize len);
		return new StringG( g_string_truncate(gString, len) );
	}
	
	/**
	 * Sets the length of a GString. If the length is less than
	 * the current length, the string will be truncated. If the
	 * length is greater than the current length, the contents
	 * of the newly added area are undefined. (However, as
	 * always, string->str[string->len] will be a nul byte.)
	 * string:
	 *  a GString
	 * len:
	 *  the new length
	 * Returns:
	 *  string
	 */
	public StringG setSize(uint len)
	{
		// GString* g_string_set_size (GString *string,  gsize len);
		return new StringG( g_string_set_size(gString, len) );
	}
	
	/**
	 * Frees the memory allocated for the GString.
	 * If free_segment is TRUE it also frees the character data.
	 * string:
	 *  a GString
	 * free_segment:
	 *  if TRUE the actual character data is freed as well
	 * Returns:
	 *  the character data of string
	 *  (i.e. NULL if free_segment is TRUE)
	 */
	public char[] free(int freeSegment)
	{
		// gchar* g_string_free (GString *string,  gboolean free_segment);
		return Str.toString(g_string_free(gString, freeSegment) );
	}
	
	/**
	 * Warning
	 * g_string_up has been deprecated since version 2.2 and should not be used in newly-written code. This function uses the locale-specific toupper() function,
	 * which is almost never the right thing. Use g_string_ascii_up() or
	 * g_utf8_strup() instead.
	 * Converts a GString to uppercase.
	 * string:
	 *  a GString
	 * Returns:
	 *  the GString
	 */
	public StringG up()
	{
		// GString* g_string_up (GString *string);
		return new StringG( g_string_up(gString) );
	}
	
	/**
	 * Warning
	 * g_string_down has been deprecated since version 2.2 and should not be used in newly-written code. This function uses the locale-specific tolower() function,
	 * which is almost never the right thing. Use g_string_ascii_down() or
	 * g_utf8_strdown() instead.
	 * Converts a GString to lowercase.
	 * string:
	 *  a GString
	 * Returns:
	 *  the GString.
	 */
	public StringG down()
	{
		// GString* g_string_down (GString *string);
		return new StringG( g_string_down(gString) );
	}
	
	/**
	 * Creates a hash code for str; for use with GHashTable.
	 * str:
	 *  a string to hash
	 * Returns:
	 *  hash code for str
	 */
	public uint hash()
	{
		// guint g_string_hash (const GString *str);
		return g_string_hash(gString);
	}
	
	/**
	 * Compares two strings for equality, returning TRUE if they are equal.
	 * For use with GHashTable.
	 * Compares two strings for equality, returning TRUE if they are equal.
	 * For use with GHashTable.
	 * v:
	 *  a GString
	 * v2:
	 *  another GString
	 * Returns:
	 *  TRUE if they strings are the same
	 *  length and contain the same bytes.
	 */
	public int equal(StringG v2)
	{
		// gboolean g_string_equal (const GString *v,  const GString *v2);
		return g_string_equal(gString, (v2 is null) ? null : v2.getStringGStruct());
	}
}
