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


module glib.StringG;

private import glib.Bytes;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/**
 * The GString struct contains the public fields of a GString.
 */
public class StringG
{
	/** the main Gtk struct */
	protected GString* gString;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GString* getStringGStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gString;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gString;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GString* gString, bool ownedRef = false)
	{
		this.gString = gString;
		this.ownedRef = ownedRef;
	}


	/**
	 * Creates a new #GString, initialized with the given string.
	 *
	 * Params:
	 *     init = the initial text to copy into the string, or %NULL to
	 *         start with an empty string
	 *
	 * Returns: the new #GString
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string init)
	{
		auto __p = g_string_new(Str.toStringz(init));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GString*) __p);
	}

	/**
	 * Creates a new #GString with @len bytes of the @init buffer.
	 * Because a length is provided, @init need not be nul-terminated,
	 * and can contain embedded nul bytes.
	 *
	 * Since this function does not stop at nul bytes, it is the caller's
	 * responsibility to ensure that @init has at least @len addressable
	 * bytes.
	 *
	 * Params:
	 *     init = initial contents of the string
	 *     len = length of @init to use
	 *
	 * Returns: a new #GString
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string init, ptrdiff_t len)
	{
		auto __p = g_string_new_len(Str.toStringz(init), len);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_len");
		}

		this(cast(GString*) __p);
	}

	/**
	 * Creates a new #GString, with enough space for @dfl_size
	 * bytes. This is useful if you are going to add a lot of
	 * text to the string and don't want it to be reallocated
	 * too often.
	 *
	 * Params:
	 *     dflSize = the default size of the space allocated to hold the string
	 *
	 * Returns: the new #GString
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(size_t dflSize)
	{
		auto __p = g_string_sized_new(dflSize);

		if(__p is null)
		{
			throw new ConstructionException("null returned by sized_new");
		}

		this(cast(GString*) __p);
	}

	/**
	 * Adds a string onto the end of a #GString, expanding
	 * it if necessary.
	 *
	 * Params:
	 *     val = the string to append onto the end of @string
	 *
	 * Returns: @string
	 */
	public StringG append(string val)
	{
		auto __p = g_string_append(gString, Str.toStringz(val));

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Adds a byte onto the end of a #GString, expanding
	 * it if necessary.
	 *
	 * Params:
	 *     c = the byte to append onto the end of @string
	 *
	 * Returns: @string
	 */
	public StringG appendC(char c)
	{
		auto __p = g_string_append_c(gString, c);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Appends @len bytes of @val to @string.
	 *
	 * If @len is positive, @val may contain embedded nuls and need
	 * not be nul-terminated. It is the caller's responsibility to
	 * ensure that @val has at least @len addressable bytes.
	 *
	 * If @len is negative, @val must be nul-terminated and @len
	 * is considered to request the entire string length. This
	 * makes g_string_append_len() equivalent to g_string_append().
	 *
	 * Params:
	 *     val = bytes to append
	 *     len = number of bytes of @val to use, or -1 for all of @val
	 *
	 * Returns: @string
	 */
	public StringG appendLen(string val, ptrdiff_t len)
	{
		auto __p = g_string_append_len(gString, Str.toStringz(val), len);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Converts a Unicode character into UTF-8, and appends it
	 * to the string.
	 *
	 * Params:
	 *     wc = a Unicode character
	 *
	 * Returns: @string
	 */
	public StringG appendUnichar(dchar wc)
	{
		auto __p = g_string_append_unichar(gString, wc);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Appends @unescaped to @string, escaping any characters that
	 * are reserved in URIs using URI-style escape sequences.
	 *
	 * Params:
	 *     unescaped = a string
	 *     reservedCharsAllowed = a string of reserved characters allowed
	 *         to be used, or %NULL
	 *     allowUtf8 = set %TRUE if the escaped string may include UTF8 characters
	 *
	 * Returns: @string
	 *
	 * Since: 2.16
	 */
	public StringG appendUriEscaped(string unescaped, string reservedCharsAllowed, bool allowUtf8)
	{
		auto __p = g_string_append_uri_escaped(gString, Str.toStringz(unescaped), Str.toStringz(reservedCharsAllowed), allowUtf8);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Appends a formatted string onto the end of a #GString.
	 * This function is similar to g_string_append_printf()
	 * except that the arguments to the format string are passed
	 * as a va_list.
	 *
	 * Params:
	 *     format = the string format. See the printf() documentation
	 *     args = the list of arguments to insert in the output
	 *
	 * Since: 2.14
	 */
	public void appendVprintf(string format, void* args)
	{
		g_string_append_vprintf(gString, Str.toStringz(format), args);
	}

	/**
	 * Converts all uppercase ASCII letters to lowercase ASCII letters.
	 *
	 * Returns: passed-in @string pointer, with all the
	 *     uppercase characters converted to lowercase in place,
	 *     with semantics that exactly match g_ascii_tolower().
	 */
	public StringG asciiDown()
	{
		auto __p = g_string_ascii_down(gString);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Converts all lowercase ASCII letters to uppercase ASCII letters.
	 *
	 * Returns: passed-in @string pointer, with all the
	 *     lowercase characters converted to uppercase in place,
	 *     with semantics that exactly match g_ascii_toupper().
	 */
	public StringG asciiUp()
	{
		auto __p = g_string_ascii_up(gString);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Copies the bytes from a string into a #GString,
	 * destroying any previous contents. It is rather like
	 * the standard strcpy() function, except that you do not
	 * have to worry about having enough space to copy the string.
	 *
	 * Params:
	 *     rval = the string to copy into @string
	 *
	 * Returns: @string
	 */
	public StringG assign(string rval)
	{
		auto __p = g_string_assign(gString, Str.toStringz(rval));

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Converts a #GString to lowercase.
	 *
	 * Deprecated: This function uses the locale-specific
	 * tolower() function, which is almost never the right thing.
	 * Use g_string_ascii_down() or g_utf8_strdown() instead.
	 *
	 * Returns: the #GString
	 */
	public StringG down()
	{
		auto __p = g_string_down(gString);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Compares two strings for equality, returning %TRUE if they are equal.
	 * For use with #GHashTable.
	 *
	 * Params:
	 *     v2 = another #GString
	 *
	 * Returns: %TRUE if the strings are the same length and contain the
	 *     same bytes
	 */
	public bool equal(StringG v2)
	{
		return g_string_equal(gString, (v2 is null) ? null : v2.getStringGStruct()) != 0;
	}

	/**
	 * Removes @len bytes from a #GString, starting at position @pos.
	 * The rest of the #GString is shifted down to fill the gap.
	 *
	 * Params:
	 *     pos = the position of the content to remove
	 *     len = the number of bytes to remove, or -1 to remove all
	 *         following bytes
	 *
	 * Returns: @string
	 */
	public StringG erase(ptrdiff_t pos, ptrdiff_t len)
	{
		auto __p = g_string_erase(gString, pos, len);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Frees the memory allocated for the #GString.
	 * If @free_segment is %TRUE it also frees the character data.  If
	 * it's %FALSE, the caller gains ownership of the buffer and must
	 * free it after use with g_free().
	 *
	 * Params:
	 *     freeSegment = if %TRUE, the actual character data is freed as well
	 *
	 * Returns: the character data of @string
	 *     (i.e. %NULL if @free_segment is %TRUE)
	 */
	public string free(bool freeSegment)
	{
		auto retStr = g_string_free(gString, freeSegment);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Transfers ownership of the contents of @string to a newly allocated
	 * #GBytes.  The #GString structure itself is deallocated, and it is
	 * therefore invalid to use @string after invoking this function.
	 *
	 * Note that while #GString ensures that its buffer always has a
	 * trailing nul character (not reflected in its "len"), the returned
	 * #GBytes does not include this extra nul; i.e. it has length exactly
	 * equal to the "len" member.
	 *
	 * Returns: A newly allocated #GBytes containing contents of @string; @string itself is freed
	 *
	 * Since: 2.34
	 */
	public Bytes freeToBytes()
	{
		auto __p = g_string_free_to_bytes(gString);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Creates a hash code for @str; for use with #GHashTable.
	 *
	 * Returns: hash code for @str
	 */
	public uint hash()
	{
		return g_string_hash(gString);
	}

	/**
	 * Inserts a copy of a string into a #GString,
	 * expanding it if necessary.
	 *
	 * Params:
	 *     pos = the position to insert the copy of the string
	 *     val = the string to insert
	 *
	 * Returns: @string
	 */
	public StringG insert(ptrdiff_t pos, string val)
	{
		auto __p = g_string_insert(gString, pos, Str.toStringz(val));

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Inserts a byte into a #GString, expanding it if necessary.
	 *
	 * Params:
	 *     pos = the position to insert the byte
	 *     c = the byte to insert
	 *
	 * Returns: @string
	 */
	public StringG insertC(ptrdiff_t pos, char c)
	{
		auto __p = g_string_insert_c(gString, pos, c);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Inserts @len bytes of @val into @string at @pos.
	 *
	 * If @len is positive, @val may contain embedded nuls and need
	 * not be nul-terminated. It is the caller's responsibility to
	 * ensure that @val has at least @len addressable bytes.
	 *
	 * If @len is negative, @val must be nul-terminated and @len
	 * is considered to request the entire string length.
	 *
	 * If @pos is -1, bytes are inserted at the end of the string.
	 *
	 * Params:
	 *     pos = position in @string where insertion should
	 *         happen, or -1 for at the end
	 *     val = bytes to insert
	 *     len = number of bytes of @val to insert, or -1 for all of @val
	 *
	 * Returns: @string
	 */
	public StringG insertLen(ptrdiff_t pos, string val, ptrdiff_t len)
	{
		auto __p = g_string_insert_len(gString, pos, Str.toStringz(val), len);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Converts a Unicode character into UTF-8, and insert it
	 * into the string at the given position.
	 *
	 * Params:
	 *     pos = the position at which to insert character, or -1
	 *         to append at the end of the string
	 *     wc = a Unicode character
	 *
	 * Returns: @string
	 */
	public StringG insertUnichar(ptrdiff_t pos, dchar wc)
	{
		auto __p = g_string_insert_unichar(gString, pos, wc);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Overwrites part of a string, lengthening it if necessary.
	 *
	 * Params:
	 *     pos = the position at which to start overwriting
	 *     val = the string that will overwrite the @string starting at @pos
	 *
	 * Returns: @string
	 *
	 * Since: 2.14
	 */
	public StringG overwrite(size_t pos, string val)
	{
		auto __p = g_string_overwrite(gString, pos, Str.toStringz(val));

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Overwrites part of a string, lengthening it if necessary.
	 * This function will work with embedded nuls.
	 *
	 * Params:
	 *     pos = the position at which to start overwriting
	 *     val = the string that will overwrite the @string starting at @pos
	 *     len = the number of bytes to write from @val
	 *
	 * Returns: @string
	 *
	 * Since: 2.14
	 */
	public StringG overwriteLen(size_t pos, string val, ptrdiff_t len)
	{
		auto __p = g_string_overwrite_len(gString, pos, Str.toStringz(val), len);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Adds a string on to the start of a #GString,
	 * expanding it if necessary.
	 *
	 * Params:
	 *     val = the string to prepend on the start of @string
	 *
	 * Returns: @string
	 */
	public StringG prepend(string val)
	{
		auto __p = g_string_prepend(gString, Str.toStringz(val));

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Adds a byte onto the start of a #GString,
	 * expanding it if necessary.
	 *
	 * Params:
	 *     c = the byte to prepend on the start of the #GString
	 *
	 * Returns: @string
	 */
	public StringG prependC(char c)
	{
		auto __p = g_string_prepend_c(gString, c);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Prepends @len bytes of @val to @string.
	 *
	 * If @len is positive, @val may contain embedded nuls and need
	 * not be nul-terminated. It is the caller's responsibility to
	 * ensure that @val has at least @len addressable bytes.
	 *
	 * If @len is negative, @val must be nul-terminated and @len
	 * is considered to request the entire string length. This
	 * makes g_string_prepend_len() equivalent to g_string_prepend().
	 *
	 * Params:
	 *     val = bytes to prepend
	 *     len = number of bytes in @val to prepend, or -1 for all of @val
	 *
	 * Returns: @string
	 */
	public StringG prependLen(string val, ptrdiff_t len)
	{
		auto __p = g_string_prepend_len(gString, Str.toStringz(val), len);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Converts a Unicode character into UTF-8, and prepends it
	 * to the string.
	 *
	 * Params:
	 *     wc = a Unicode character
	 *
	 * Returns: @string
	 */
	public StringG prependUnichar(dchar wc)
	{
		auto __p = g_string_prepend_unichar(gString, wc);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Replaces the string @find with the string @replace in a #GString up to
	 * @limit times. If the number of instances of @find in the #GString is
	 * less than @limit, all instances are replaced. If @limit is `0`,
	 * all instances of @find are replaced.
	 *
	 * If @find is the empty string, since versions 2.69.1 and 2.68.4 the
	 * replacement will be inserted no more than once per possible position
	 * (beginning of string, end of string and between characters). This did
	 * not work correctly in earlier versions.
	 *
	 * Params:
	 *     find = the string to find in @string
	 *     replace = the string to insert in place of @find
	 *     limit = the maximum instances of @find to replace with @replace, or `0` for
	 *         no limit
	 *
	 * Returns: the number of find and replace operations performed.
	 *
	 * Since: 2.68
	 */
	public uint replace(string find, string replace, uint limit)
	{
		return g_string_replace(gString, Str.toStringz(find), Str.toStringz(replace), limit);
	}

	/**
	 * Sets the length of a #GString. If the length is less than
	 * the current length, the string will be truncated. If the
	 * length is greater than the current length, the contents
	 * of the newly added area are undefined. (However, as
	 * always, string->str[string->len] will be a nul byte.)
	 *
	 * Params:
	 *     len = the new length
	 *
	 * Returns: @string
	 */
	public StringG setSize(size_t len)
	{
		auto __p = g_string_set_size(gString, len);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Cuts off the end of the GString, leaving the first @len bytes.
	 *
	 * Params:
	 *     len = the new size of @string
	 *
	 * Returns: @string
	 */
	public StringG truncate(size_t len)
	{
		auto __p = g_string_truncate(gString, len);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Converts a #GString to uppercase.
	 *
	 * Deprecated: This function uses the locale-specific
	 * toupper() function, which is almost never the right thing.
	 * Use g_string_ascii_up() or g_utf8_strup() instead.
	 *
	 * Returns: @string
	 */
	public StringG up()
	{
		auto __p = g_string_up(gString);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p);
	}

	/**
	 * Writes a formatted string into a #GString.
	 * This function is similar to g_string_printf() except that
	 * the arguments to the format string are passed as a va_list.
	 *
	 * Params:
	 *     format = the string format. See the printf() documentation
	 *     args = the parameters to insert into the format string
	 *
	 * Since: 2.14
	 */
	public void vprintf(string format, void* args)
	{
		g_string_vprintf(gString, Str.toStringz(format), args);
	}

	/**
	 * Creates a new reference counted string and copies the contents of @str
	 * into it.
	 *
	 * Params:
	 *     str = a NUL-terminated string
	 *
	 * Returns: the newly created reference counted string
	 *
	 * Since: 2.58
	 */
	public static string refStringNew(string str)
	{
		auto retStr = g_ref_string_new(Str.toStringz(str));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Creates a new reference counted string and copies the contents of @str
	 * into it, up to @len bytes.
	 *
	 * Since this function does not stop at nul bytes, it is the caller's
	 * responsibility to ensure that @str has at least @len addressable bytes.
	 *
	 * Params:
	 *     str = a string
	 *     len = length of @str to use, or -1 if @str is nul-terminated
	 *
	 * Returns: the newly created reference counted string
	 *
	 * Since: 2.58
	 */
	public static string refStringNewLen(string str, ptrdiff_t len)
	{
		auto retStr = g_ref_string_new_len(Str.toStringz(str), len);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
