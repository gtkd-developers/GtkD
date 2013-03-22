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
 * 	- g_string_new
 * 	- g_string_append
 * 	- g_string_prepend
 * 	- g_string_insert
 * 	- g_string_overwrite
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.Bytes
 * structWrap:
 * 	- GBytes* -> Bytes
 * 	- GString* -> StringG
 * module aliases:
 * local aliases:
 * 	- appendLen -> append
 * 	- insertLen -> insert
 * 	- overwriteLen -> overwrite
 * 	- prependLen -> prepend
 * overrides:
 */

module glib.StringG;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.Bytes;




/**
 * A GString is an object that handles the memory management of a C
 * string for you. The emphasis of GString is on text, typically
 * UTF-8. Crucially, the "str" member of a GString is guaranteed to
 * have a trailing nul character, and it is therefore always safe to
 * call functions such as strchr() or g_strdup() on it.
 *
 * However, a GString can also hold arbitrary binary data, because it
 * has a "len" member, which includes any possible embedded nul
 * characters in the data. Conceptually then, GString is like a
 * GByteArray with the addition of many convenience methods for text,
 * and a guaranteed nul terminator.
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
		this.gString = gString;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GString with len bytes of the init buffer.
	 * Because a length is provided, init need not be nul-terminated,
	 * and can contain embedded nul bytes.
	 * Since this function does not stop at nul bytes, it is the caller's
	 * responsibility to ensure that init has at least len addressable
	 * bytes.
	 * Params:
	 * init = initial contents of the string
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string init)
	{
		// GString * g_string_new_len (const gchar *init,  gssize len);
		auto p = g_string_new_len(cast(char*)init.ptr, cast(int) init.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_string_new_len(cast(char*)init.ptr, cast(int) init.length)");
		}
		this(cast(GString*) p);
	}
	
	/**
	 * Creates a new GString, with enough space for dfl_size
	 * bytes. This is useful if you are going to add a lot of
	 * text to the string and don't want it to be reallocated
	 * too often.
	 * Params:
	 * dflSize = the default size of the space allocated to
	 * hold the string
	 * Returns: the new GString
	 */
	public static StringG sizedNew(gsize dflSize)
	{
		// GString * g_string_sized_new (gsize dfl_size);
		auto p = g_string_sized_new(dflSize);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Copies the bytes from a string into a GString,
	 * destroying any previous contents. It is rather like
	 * the standard strcpy() function, except that you do not
	 * have to worry about having enough space to copy the string.
	 * Params:
	 * string = the destination GString. Its current contents
	 * are destroyed.
	 * rval = the string to copy into string
	 * Returns: string
	 */
	public StringG assign(string rval)
	{
		// GString * g_string_assign (GString *string,  const gchar *rval);
		auto p = g_string_assign(gString, Str.toStringz(rval));
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Writes a formatted string into a GString.
	 * This function is similar to g_string_printf() except that
	 * the arguments to the format string are passed as a va_list.
	 * Since 2.14
	 * Params:
	 * string = a GString
	 * format = the string format. See the printf() documentation
	 * args = the parameters to insert into the format string
	 */
	public void vprintf(string format, void* args)
	{
		// void g_string_vprintf (GString *string,  const gchar *format,  va_list args);
		g_string_vprintf(gString, Str.toStringz(format), args);
	}
	
	/**
	 * Appends a formatted string onto the end of a GString.
	 * This function is similar to g_string_append_printf()
	 * except that the arguments to the format string are passed
	 * as a va_list.
	 * Since 2.14
	 * Params:
	 * string = a GString
	 * format = the string format. See the printf() documentation
	 * args = the list of arguments to insert in the output
	 */
	public void appendVprintf(string format, void* args)
	{
		// void g_string_append_vprintf (GString *string,  const gchar *format,  va_list args);
		g_string_append_vprintf(gString, Str.toStringz(format), args);
	}
	
	/**
	 * Adds a byte onto the end of a GString, expanding
	 * it if necessary.
	 * Params:
	 * c = the byte to append onto the end of string
	 * Returns: string
	 */
	public StringG appendC(char c)
	{
		// GString * g_string_append_c (GString *string,  gchar c);
		auto p = g_string_append_c(gString, c);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Converts a Unicode character into UTF-8, and appends it
	 * to the string.
	 * Params:
	 * wc = a Unicode character
	 * Returns: string
	 */
	public StringG appendUnichar(gunichar wc)
	{
		// GString * g_string_append_unichar (GString *string,  gunichar wc);
		auto p = g_string_append_unichar(gString, wc);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Appends len bytes of val to string. Because len is
	 * provided, val may contain embedded nuls and need not
	 * be nul-terminated.
	 * Since this function does not stop at nul bytes, it is
	 * the caller's responsibility to ensure that val has at
	 * least len addressable bytes.
	 * Params:
	 * string = a GString
	 * val = bytes to append
	 * Returns: string
	 */
	public StringG append(string val)
	{
		// GString * g_string_append_len (GString *string,  const gchar *val,  gssize len);
		auto p = g_string_append_len(gString, cast(char*)val.ptr, cast(int) val.length);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Appends unescaped to string, escaped any characters that
	 * are reserved in URIs using URI-style escape sequences.
	 * Since 2.16
	 * Params:
	 * string = a GString
	 * unescaped = a string
	 * reservedCharsAllowed = a string of reserved characters allowed
	 * to be used, or NULL
	 * allowUtf8 = set TRUE if the escaped string may include UTF8 characters
	 * Returns: string
	 */
	public StringG appendUriEscaped(string unescaped, string reservedCharsAllowed, int allowUtf8)
	{
		// GString * g_string_append_uri_escaped (GString *string,  const gchar *unescaped,  const gchar *reserved_chars_allowed,  gboolean allow_utf8);
		auto p = g_string_append_uri_escaped(gString, Str.toStringz(unescaped), Str.toStringz(reservedCharsAllowed), allowUtf8);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Adds a byte onto the start of a GString,
	 * expanding it if necessary.
	 * Params:
	 * c = the byte to prepend on the start of the GString
	 * Returns: string
	 */
	public StringG prependC(char c)
	{
		// GString * g_string_prepend_c (GString *string,  gchar c);
		auto p = g_string_prepend_c(gString, c);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Converts a Unicode character into UTF-8, and prepends it
	 * to the string.
	 * Params:
	 * wc = a Unicode character
	 * Returns: string
	 */
	public StringG prependUnichar(gunichar wc)
	{
		// GString * g_string_prepend_unichar (GString *string,  gunichar wc);
		auto p = g_string_prepend_unichar(gString, wc);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Prepends len bytes of val to string.
	 * Because len is provided, val may contain
	 * embedded nuls and need not be nul-terminated.
	 * Since this function does not stop at nul bytes,
	 * it is the caller's responsibility to ensure that
	 * val has at least len addressable bytes.
	 * Params:
	 * string = a GString
	 * val = bytes to prepend
	 * Returns: string
	 */
	public StringG prepend(string val)
	{
		// GString * g_string_prepend_len (GString *string,  const gchar *val,  gssize len);
		auto p = g_string_prepend_len(gString, cast(char*)val.ptr, cast(int) val.length);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Inserts a byte into a GString, expanding it if necessary.
	 * Params:
	 * pos = the position to insert the byte
	 * c = the byte to insert
	 * Returns: string
	 */
	public StringG insertC(gssize pos, char c)
	{
		// GString * g_string_insert_c (GString *string,  gssize pos,  gchar c);
		auto p = g_string_insert_c(gString, pos, c);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Converts a Unicode character into UTF-8, and insert it
	 * into the string at the given position.
	 * Params:
	 * pos = the position at which to insert character, or -1
	 * to append at the end of the string
	 * wc = a Unicode character
	 * Returns: string
	 */
	public StringG insertUnichar(gssize pos, gunichar wc)
	{
		// GString * g_string_insert_unichar (GString *string,  gssize pos,  gunichar wc);
		auto p = g_string_insert_unichar(gString, pos, wc);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Inserts len bytes of val into string at pos.
	 * Because len is provided, val may contain embedded
	 * nuls and need not be nul-terminated. If pos is -1,
	 * bytes are inserted at the end of the string.
	 * Since this function does not stop at nul bytes, it is
	 * the caller's responsibility to ensure that val has at
	 * least len addressable bytes.
	 * Params:
	 * string = a GString
	 * pos = position in string where insertion should
	 * happen, or -1 for at the end
	 * val = bytes to insert
	 * Returns: string
	 */
	public StringG insert(gssize pos, string val)
	{
		// GString * g_string_insert_len (GString *string,  gssize pos,  const gchar *val,  gssize len);
		auto p = g_string_insert_len(gString, pos, cast(char*)val.ptr, cast(int) val.length);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Overwrites part of a string, lengthening it if necessary.
	 * This function will work with embedded nuls.
	 * Since 2.14
	 * Params:
	 * string = a GString
	 * pos = the position at which to start overwriting
	 * val = the string that will overwrite the string starting at pos
	 * Returns: string
	 */
	public StringG overwrite(gsize pos, string val)
	{
		// GString * g_string_overwrite_len (GString *string,  gsize pos,  const gchar *val,  gssize len);
		auto p = g_string_overwrite_len(gString, pos, cast(char*)val.ptr, cast(int) val.length);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Removes len bytes from a GString, starting at position pos.
	 * The rest of the GString is shifted down to fill the gap.
	 * Params:
	 * pos = the position of the content to remove
	 * len = the number of bytes to remove, or -1 to remove all
	 * following bytes
	 * Returns: string
	 */
	public StringG erase(gssize pos, gssize len)
	{
		// GString * g_string_erase (GString *string,  gssize pos,  gssize len);
		auto p = g_string_erase(gString, pos, len);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Cuts off the end of the GString, leaving the first len bytes.
	 * Params:
	 * len = the new size of string
	 * Returns: string
	 */
	public StringG truncate(gsize len)
	{
		// GString * g_string_truncate (GString *string,  gsize len);
		auto p = g_string_truncate(gString, len);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Sets the length of a GString. If the length is less than
	 * the current length, the string will be truncated. If the
	 * length is greater than the current length, the contents
	 * of the newly added area are undefined. (However, as
	 * always, string->str[string->len] will be a nul byte.)
	 * Params:
	 * len = the new length
	 * Returns: string
	 */
	public StringG setSize(gsize len)
	{
		// GString * g_string_set_size (GString *string,  gsize len);
		auto p = g_string_set_size(gString, len);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Frees the memory allocated for the GString.
	 * If free_segment is TRUE it also frees the character data. If
	 * it's FALSE, the caller gains ownership of the buffer and must
	 * free it after use with g_free().
	 * Params:
	 * string = a GString
	 * freeSegment = if TRUE, the actual character data is freed as well
	 * Returns: the character data of string (i.e. NULL if free_segment is TRUE)
	 */
	public string free(int freeSegment)
	{
		// gchar * g_string_free (GString *string,  gboolean free_segment);
		return Str.toString(g_string_free(gString, freeSegment));
	}
	
	/**
	 * Transfers ownership of the contents of string to a newly allocated
	 * GBytes. The GString structure itself is deallocated, and it is
	 * therefore invalid to use string after invoking this function.
	 * Note that while GString ensures that its buffer always has a
	 * trailing nul character (not reflected in its "len"), the returned
	 * GBytes does not include this extra nul; i.e. it has length exactly
	 * equal to the "len" member.
	 * Since 2.34
	 * Returns: A newly allocated GBytes containing contents of string; string itself is freed
	 */
	public Bytes freeToBytes()
	{
		// GBytes * g_string_free_to_bytes (GString *string);
		auto p = g_string_free_to_bytes(gString);
		
		if(p is null)
		{
			return null;
		}
		
		return new Bytes(cast(GBytes*) p);
	}
	
	/**
	 * Warning
	 * g_string_up has been deprecated since version 2.2 and should not be used in newly-written code. This function uses the locale-specific
	 *  toupper() function, which is almost never the right thing.
	 *  Use g_string_ascii_up() or g_utf8_strup() instead.
	 * Converts a GString to uppercase.
	 * Returns: string
	 */
	public StringG up()
	{
		// GString * g_string_up (GString *string);
		auto p = g_string_up(gString);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Warning
	 * g_string_down has been deprecated since version 2.2 and should not be used in newly-written code. This function uses the locale-specific
	 *  tolower() function, which is almost never the right thing.
	 *  Use g_string_ascii_down() or g_utf8_strdown() instead.
	 * Converts a GString to lowercase.
	 * Returns: the GString
	 */
	public StringG down()
	{
		// GString * g_string_down (GString *string);
		auto p = g_string_down(gString);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Creates a hash code for str; for use with GHashTable.
	 * Returns: hash code for str
	 */
	public uint hash()
	{
		// guint g_string_hash (const GString *str);
		return g_string_hash(gString);
	}
	
	/**
	 * Compares two strings for equality, returning TRUE if they are equal.
	 * For use with GHashTable.
	 * Params:
	 * v = a GString
	 * v2 = another GString
	 * Returns: TRUE if they strings are the same length and contain the same bytes
	 */
	public int equal(StringG v2)
	{
		// gboolean g_string_equal (const GString *v,  const GString *v2);
		return g_string_equal(gString, (v2 is null) ? null : v2.getStringGStruct());
	}
}
