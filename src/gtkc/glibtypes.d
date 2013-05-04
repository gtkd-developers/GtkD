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

module gtkc.glibtypes;

/* The GLib Basic Types */
public alias int gint;
public alias uint guint;
public alias int gboolean;
public alias void* gpointer;
public alias void* gconstpointer;
public alias char gchar;
public alias char guchar;
public alias short gshort;
public alias ushort gushort;
public alias byte gint8;
public alias ubyte guint8;
public alias short gint16;
public alias ushort guint16;
public alias int gint32;
public alias long gint64;
public alias uint guint32;
public alias ulong guint64;
public alias float gfloat;
public alias double gdouble;
public alias size_t gsize;
public alias ptrdiff_t gssize;
public alias size_t guintptr;
public alias long goffset;
public alias void* va_list;
public alias dchar unichar;
public alias wchar unichar2;
public alias uint time_t;
public alias uint XID;
public alias uint uid_t;
public alias int pid_t;


version(Tango)
{
	//avoid some conflicts with other string aliases.
	static if( !is(string) )
	alias char[] string;
}

version( Windows )
{
	alias int glong;
	alias uint gulong;
}
else version( X86_64 )
{
	alias long glong;
	alias ulong gulong;
}
else
{
	alias int glong;
	alias uint gulong;
}

version(D_Version2)
{
	mixin("enum _shared = \"shared \";");
	mixin("enum gshared = \"__gshared \";");
	
	version( Windows )
	mixin("enum _utfPostfix = \"_utf8\";");
	else
	mixin("enum _utfPostfix = \"\";");
}
else
{
	const char[] _shared = "";
	const char[] gshared = "";
	
	version( Windows )
	const char[] _utfPostfix = "_utf8";
	else
	const char[] _utfPostfix = "";
}

version (Windows)
{
	version(Tango)
	{
		private import tango.stdc.stdio;
		
		//Phobos defines this function in std.c.stdio
		extern (C) FILE*  fdopen(int, char*);
	}
	version(D_Version2)
	{
		private import core.stdc.stdio;
		
		static if( !is(typeof(fdopen(0, null))) )
		{
			extern (C) FILE*  fdopen(int, char*);
		}
	}
}

const uint G_MAXUINT = 4294967295;


/**
 * typedef int GPid;
 * A type which is used to hold a process identification.
 * On UNIX, processes are identified by a process id (an integer),
 * while Windows uses process handles (which are pointers).
 * GPid is used in GLib only for descendant processes spawned with
 * the g_spawn functions.
 */
public alias int GPid;

/**
 * typedef guint32 gunichar;
 * A type which can hold any UTF-32 or UCS-4 character code,
 * also known as a Unicode code point.
 * If you want to produce the UTF-8 representation of a gunichar,
 * use g_ucs4_to_utf8(). See also g_utf8_to_ucs4() for the reverse
 * process.
 * To print/scan values of this type as integer, use
 * G_GINT32_MODIFIER and/or G_GUINT32_FORMAT.
 * The notation to express a Unicode code point in running text is
 * as a hexadecimal number with four to six digits and uppercase
 * letters, prefixed by the string "U+". Leading zeros are omitted,
 * unless the code point would have fewer than four hexadecimal digits.
 * For example, "U+0041 LATIN CAPITAL LETTER A". To print a code point
 * in the U+-notation, use the format string "U+%04"G_GINT32_FORMAT"X".
 * To scan, use the format string "U+%06"G_GINT32_FORMAT"X".
 * $(DDOC_COMMENT example)
 */
public alias uint gunichar;

/**
 * typedef guint16 gunichar2;
 * A type which can hold any UTF-16 code
 * point[4].
 * To print/scan values of this type to/from text you need to convert
 * to/from UTF-8, using g_utf16_to_utf8()/g_utf8_to_utf16().
 * To print/scan values of this type as integer, use
 * G_GINT16_MODIFIER and/or G_GUINT16_FORMAT.
 */
public alias ushort gunichar2;

/**
 * typedef gint32 GTime;
 * Simply a replacement for time_t. It has been deprecated
 * since it is not equivalent to time_t
 * on 64-bit platforms with a 64-bit time_t.
 * Unrelated to GTimer.
 * Note that GTime is defined to always be a 32bit integer,
 * unlike time_t which may be 64bit on some systems.
 * Therefore, GTime will overflow in the year 2038, and
 * you cannot use the address of a GTime variable as argument
 * to the UNIX time() function. Instead, do the following:
 * $(DDOC_COMMENT example)
 */
public alias int GTime;

/**
 * typedef guint8 GDateDay; /+* day of the month +/
 * Integer representing a day of the month; between 1 and
 * 31. G_DATE_BAD_DAY represents an invalid day of the month.
 */
public alias ubyte GDateDay;

/**
 * typedef guint16 GDateYear;
 * Integer representing a year; G_DATE_BAD_YEAR is the invalid
 * value. The year must be 1 or higher; negative (BC) years are not
 * allowed. The year is represented with four digits.
 */
public alias ushort GDateYear;

/**
 * typedef gint64 GTimeSpan;
 * A value representing an interval of time, in microseconds.
 * Since 2.26
 */
public alias long GTimeSpan;

/**
 * typedef guint32 GQuark;
 * A GQuark is a non-zero integer which uniquely identifies a
 * particular string. A GQuark value of zero is associated to NULL.
 */
public alias uint GQuark;

enum GPriority
{
	HIGH = -100,
	DEFAULT = 0,
	HIGH_IDLE = 100,
	DEFAULT_IDLE = 200,
	LOW = 300
}

/**
 * Flags passed to g_module_open().
 * Note that these flags are not supported on all platforms.
 * G_MODULE_BIND_LAZY
 * specifies that symbols are only resolved when
 *  needed. The default action is to bind all symbols when the module
 *  is loaded.
 * G_MODULE_BIND_LOCAL
 * specifies that symbols in the module should
 *  not be added to the global name space. The default action on most
 *  platforms is to place symbols in the module in the global name space,
 *  which may cause conflicts with existing symbols.
 * G_MODULE_BIND_MASK
 * mask for all flags.
 */
public enum GModuleFlags
{
	BIND_LAZY = 1 << 0,
	BIND_LOCAL = 1 << 1,
	BIND_MASK = 0x03
}
alias GModuleFlags ModuleFlags;

/**
 * An enumeration specifying the base position for a
 * g_io_channel_seek_position() operation.
 * G_SEEK_CUR
 * the current position in the file.
 * G_SEEK_SET
 * the start of the file.
 * G_SEEK_END
 * the end of the file.
 */
public enum GSeekType
{
	CUR,
	SET,
	END
}
alias GSeekType SeekType;

/**
 * Stati returned by most of the GIOFuncs functions.
 * G_IO_STATUS_ERROR
 * An error occurred.
 * G_IO_STATUS_NORMAL
 * Success.
 * G_IO_STATUS_EOF
 * End of file.
 * G_IO_STATUS_AGAIN
 * Resource temporarily unavailable.
 */
public enum GIOStatus
{
	ERROR,
	NORMAL,
	EOF,
	AGAIN
}
alias GIOStatus IOStatus;

/**
 * Error codes returned by GIOChannel operations.
 * G_IO_CHANNEL_ERROR_FBIG
 * File too large.
 * G_IO_CHANNEL_ERROR_INVAL
 * Invalid argument.
 * G_IO_CHANNEL_ERROR_IO
 * IO error.
 * G_IO_CHANNEL_ERROR_ISDIR
 * File is a directory.
 * G_IO_CHANNEL_ERROR_NOSPC
 * No space left on device.
 * G_IO_CHANNEL_ERROR_NXIO
 * No such device or address.
 * G_IO_CHANNEL_ERROR_OVERFLOW
 * Value too large for defined datatype.
 * G_IO_CHANNEL_ERROR_PIPE
 * Broken pipe.
 * G_IO_CHANNEL_ERROR_FAILED
 * Some other error.
 */
public enum GIOChannelError
{
	FBIG,
	INVAL,
	IO,
	ISDIR,
	NOSPC,
	NXIO,
	OVERFLOW,
	PIPE,
	/+* Other +/
	FAILED
}
alias GIOChannelError IOChannelError;

/**
 * A bitwise combination representing a condition to watch for on an
 * event source.
 * G_IO_IN
 * There is data to read.
 * G_IO_OUT
 * Data can be written (without blocking).
 * G_IO_PRI
 * There is urgent data to read.
 * G_IO_ERR
 * Error condition.
 * G_IO_HUP
 * Hung up (the connection has been broken, usually for
 *  pipes and sockets).
 * G_IO_NVAL
 * Invalid request. The file descriptor is not open.
 */
public enum GIOCondition
{
	IN = 1,
	OUT = 4,
	PRI = 2,
	ERR = 8,
	HUP = 16,
	NVAL = 32
}
alias GIOCondition IOCondition;

/**
 * Specifies properties of a GIOChannel. Some of the flags can only be
 * read with g_io_channel_get_flags(), but not changed with
 * g_io_channel_set_flags().
 * G_IO_FLAG_APPEND
 * turns on append mode, corresponds to O_APPEND
 *  (see the documentation of the UNIX open()
 *  syscall).
 * G_IO_FLAG_NONBLOCK
 * turns on nonblocking mode, corresponds to
 *  O_NONBLOCK/O_NDELAY
 *  (see the documentation of the UNIX open() syscall).
 * G_IO_FLAG_IS_READABLE
 * indicates that the io channel is readable.
 *  This flag cannot be changed.
 * G_IO_FLAG_IS_WRITABLE
 * indicates that the io channel is writable.
 *  This flag cannot be changed.
 * G_IO_FLAG_IS_WRITEABLE
 * G_IO_FLAG_IS_SEEKABLE
 * indicates that the io channel is seekable,
 *  i.e. that g_io_channel_seek_position() can
 *  be used on it. This flag cannot be changed.
 * G_IO_FLAG_MASK
 * the mask that specifies all the valid flags.
 * G_IO_FLAG_GET_MASK
 * the mask of the flags that are returned from
 *  g_io_channel_get_flags().
 * G_IO_FLAG_SET_MASK
 * the mask of the flags that the user can modify
 *  with g_io_channel_set_flags().
 */
public enum GIOFlags
{
	APPEND = 1 << 0,
	NONBLOCK = 1 << 1,
	IS_READABLE = 1 << 2, /+* Read only flag +/
	IS_WRITABLE = 1 << 3, /+* Read only flag +/
	IS_WRITEABLE = 1 << 3, /+* Misspelling inn 2.29.10 and earlier +/
	IS_SEEKABLE = 1 << 4, /+* Read only flag +/
	MASK = (1 << 5) - 1,
	GET_MASK = MASK,
	SET_MASK = APPEND | NONBLOCK
}
alias GIOFlags IOFlags;

/**
 * GIOError is only used by the deprecated functions
 * g_io_channel_read(), g_io_channel_write(), and g_io_channel_seek().
 * G_IO_ERROR_NONE
 * no error
 * G_IO_ERROR_AGAIN
 * an EAGAIN error occurred
 * G_IO_ERROR_INVAL
 * an EINVAL error occurred
 * G_IO_ERROR_UNKNOWN
 * another error occurred
 */
public enum GIOError
{
	NONE,
	AGAIN,
	INVAL,
	UNKNOWN
}
alias GIOError IOError;

/**
 * Flags specifying the level of log messages.
 * It is possible to change how GLib treats messages of the various
 * levels using g_log_set_handler() and g_log_set_fatal_mask().
 * G_LOG_FLAG_RECURSION
 * internal flag
 * G_LOG_FLAG_FATAL
 * internal flag
 * G_LOG_LEVEL_ERROR
 * log level for errors, see g_error().
 *  This level is also used for messages produced by g_assert().
 * G_LOG_LEVEL_CRITICAL
 * log level for critical messages, see g_critical().
 *  This level is also used for messages produced by g_return_if_fail()
 *  and g_return_val_if_fail().
 * G_LOG_LEVEL_WARNING
 * log level for warnings, see g_warning()
 * G_LOG_LEVEL_MESSAGE
 * log level for messages, see g_message()
 * G_LOG_LEVEL_INFO
 * log level for informational messages
 * G_LOG_LEVEL_DEBUG
 * log level for debug messages, see g_debug()
 * G_LOG_LEVEL_MASK
 * a mask including all log levels
 */
public enum GLogLevelFlags
{
	FLAG_RECURSION = 1 << 0,
	FLAG_FATAL = 1 << 1,
	/+* GLib log levels +/
	LEVEL_ERROR = 1 << 2, /+* always fatal +/
	LEVEL_CRITICAL = 1 << 3,
	LEVEL_WARNING = 1 << 4,
	LEVEL_MESSAGE = 1 << 5,
	LEVEL_INFO = 1 << 6,
	LEVEL_DEBUG = 1 << 7,
	LEVEL_MASK = ~(FLAG_RECURSION | FLAG_FATAL)
}
alias GLogLevelFlags LogLevelFlags;

/**
 * Error codes returned by character set conversion routines.
 * G_CONVERT_ERROR_NO_CONVERSION
 * Conversion between the requested character
 *  sets is not supported.
 * G_CONVERT_ERROR_ILLEGAL_SEQUENCE
 * Invalid byte sequence in conversion input.
 * G_CONVERT_ERROR_FAILED
 * Conversion failed for some reason.
 * G_CONVERT_ERROR_PARTIAL_INPUT
 * Partial character sequence at end of input.
 * G_CONVERT_ERROR_BAD_URI
 * URI is invalid.
 * G_CONVERT_ERROR_NOT_ABSOLUTE_PATH
 * Pathname is not an absolute path.
 */
public enum GConvertError
{
	NO_CONVERSION,
	ILLEGAL_SEQUENCE,
	FAILED,
	PARTIAL_INPUT,
	BAD_URI,
	NOT_ABSOLUTE_PATH
}
alias GConvertError ConvertError;

/**
 * These are the possible character classifications from the
 * Unicode specification.
 * See http://www.unicode.org/Public/UNIDATA/UnicodeData.html.
 * G_UNICODE_CONTROL
 * General category "Other, Control" (Cc)
 * G_UNICODE_FORMAT
 * General category "Other, Format" (Cf)
 * G_UNICODE_UNASSIGNED
 * General category "Other, Not Assigned" (Cn)
 * G_UNICODE_PRIVATE_USE
 * General category "Other, Private Use" (Co)
 * G_UNICODE_SURROGATE
 * General category "Other, Surrogate" (Cs)
 * G_UNICODE_LOWERCASE_LETTER
 * General category "Letter, Lowercase" (Ll)
 * G_UNICODE_MODIFIER_LETTER
 * General category "Letter, Modifier" (Lm)
 * G_UNICODE_OTHER_LETTER
 * General category "Letter, Other" (Lo)
 * G_UNICODE_TITLECASE_LETTER
 * General category "Letter, Titlecase" (Lt)
 * G_UNICODE_UPPERCASE_LETTER
 * General category "Letter, Uppercase" (Lu)
 * G_UNICODE_SPACING_MARK
 * General category "Mark, Spacing" (Mc)
 * G_UNICODE_ENCLOSING_MARK
 * General category "Mark, Enclosing" (Me)
 * G_UNICODE_NON_SPACING_MARK
 * General category "Mark, Nonspacing" (Mn)
 * G_UNICODE_DECIMAL_NUMBER
 * General category "Number, Decimal Digit" (Nd)
 * G_UNICODE_LETTER_NUMBER
 * General category "Number, Letter" (Nl)
 * G_UNICODE_OTHER_NUMBER
 * General category "Number, Other" (No)
 * G_UNICODE_CONNECT_PUNCTUATION
 * General category "Punctuation, Connector" (Pc)
 * G_UNICODE_DASH_PUNCTUATION
 * General category "Punctuation, Dash" (Pd)
 * G_UNICODE_CLOSE_PUNCTUATION
 * General category "Punctuation, Close" (Pe)
 * G_UNICODE_FINAL_PUNCTUATION
 * General category "Punctuation, Final quote" (Pf)
 * G_UNICODE_INITIAL_PUNCTUATION
 * General category "Punctuation, Initial quote" (Pi)
 * G_UNICODE_OTHER_PUNCTUATION
 * General category "Punctuation, Other" (Po)
 * G_UNICODE_OPEN_PUNCTUATION
 * General category "Punctuation, Open" (Ps)
 * G_UNICODE_CURRENCY_SYMBOL
 * General category "Symbol, Currency" (Sc)
 * G_UNICODE_MODIFIER_SYMBOL
 * General category "Symbol, Modifier" (Sk)
 * G_UNICODE_MATH_SYMBOL
 * General category "Symbol, Math" (Sm)
 * G_UNICODE_OTHER_SYMBOL
 * General category "Symbol, Other" (So)
 * G_UNICODE_LINE_SEPARATOR
 * General category "Separator, Line" (Zl)
 * G_UNICODE_PARAGRAPH_SEPARATOR
 * General category "Separator, Paragraph" (Zp)
 * G_UNICODE_SPACE_SEPARATOR
 * General category "Separator, Space" (Zs)
 */
public enum GUnicodeType
{
	CONTROL,
	FORMAT,
	UNASSIGNED,
	PRIVATE_USE,
	SURROGATE,
	LOWERCASE_LETTER,
	MODIFIER_LETTER,
	OTHER_LETTER,
	TITLECASE_LETTER,
	UPPERCASE_LETTER,
	SPACING_MARK,
	ENCLOSING_MARK,
	NON_SPACING_MARK,
	DECIMAL_NUMBER,
	LETTER_NUMBER,
	OTHER_NUMBER,
	CONNECT_PUNCTUATION,
	DASH_PUNCTUATION,
	CLOSE_PUNCTUATION,
	FINAL_PUNCTUATION,
	INITIAL_PUNCTUATION,
	OTHER_PUNCTUATION,
	OPEN_PUNCTUATION,
	CURRENCY_SYMBOL,
	MODIFIER_SYMBOL,
	MATH_SYMBOL,
	OTHER_SYMBOL,
	LINE_SEPARATOR,
	PARAGRAPH_SEPARATOR,
	SPACE_SEPARATOR
}
alias GUnicodeType UnicodeType;

/**
 * These are the possible line break classifications.
 * Since new unicode versions may add new types here, applications should be ready
 * to handle unknown values. They may be regarded as G_UNICODE_BREAK_UNKNOWN.
 * See http://www.unicode.org/unicode/reports/tr14/.
 * G_UNICODE_BREAK_MANDATORY
 * Mandatory Break (BK)
 * G_UNICODE_BREAK_CARRIAGE_RETURN
 * Carriage Return (CR)
 * G_UNICODE_BREAK_LINE_FEED
 * Line Feed (LF)
 * G_UNICODE_BREAK_COMBINING_MARK
 * Attached Characters and Combining Marks (CM)
 * G_UNICODE_BREAK_SURROGATE
 * Surrogates (SG)
 * G_UNICODE_BREAK_ZERO_WIDTH_SPACE
 * Zero Width Space (ZW)
 * G_UNICODE_BREAK_INSEPARABLE
 * Inseparable (IN)
 * G_UNICODE_BREAK_NON_BREAKING_GLUE
 * Non-breaking ("Glue") (GL)
 * G_UNICODE_BREAK_CONTINGENT
 * Contingent Break Opportunity (CB)
 * G_UNICODE_BREAK_SPACE
 * Space (SP)
 * G_UNICODE_BREAK_AFTER
 * Break Opportunity After (BA)
 * G_UNICODE_BREAK_BEFORE
 * Break Opportunity Before (BB)
 * G_UNICODE_BREAK_BEFORE_AND_AFTER
 * Break Opportunity Before and After (B2)
 * G_UNICODE_BREAK_HYPHEN
 * Hyphen (HY)
 * G_UNICODE_BREAK_NON_STARTER
 * Nonstarter (NS)
 * G_UNICODE_BREAK_OPEN_PUNCTUATION
 * Opening Punctuation (OP)
 * G_UNICODE_BREAK_CLOSE_PUNCTUATION
 * Closing Punctuation (CL)
 * G_UNICODE_BREAK_QUOTATION
 * Ambiguous Quotation (QU)
 * G_UNICODE_BREAK_EXCLAMATION
 * Exclamation/Interrogation (EX)
 * G_UNICODE_BREAK_IDEOGRAPHIC
 * Ideographic (ID)
 * G_UNICODE_BREAK_NUMERIC
 * Numeric (NU)
 * G_UNICODE_BREAK_INFIX_SEPARATOR
 * Infix Separator (Numeric) (IS)
 * G_UNICODE_BREAK_SYMBOL
 * Symbols Allowing Break After (SY)
 * G_UNICODE_BREAK_ALPHABETIC
 * Ordinary Alphabetic and Symbol Characters (AL)
 * G_UNICODE_BREAK_PREFIX
 * Prefix (Numeric) (PR)
 * G_UNICODE_BREAK_POSTFIX
 * Postfix (Numeric) (PO)
 * G_UNICODE_BREAK_COMPLEX_CONTEXT
 * Complex Content Dependent (South East Asian) (SA)
 * G_UNICODE_BREAK_AMBIGUOUS
 * Ambiguous (Alphabetic or Ideographic) (AI)
 * G_UNICODE_BREAK_UNKNOWN
 * Unknown (XX)
 * G_UNICODE_BREAK_NEXT_LINE
 * Next Line (NL)
 * G_UNICODE_BREAK_WORD_JOINER
 * Word Joiner (WJ)
 * G_UNICODE_BREAK_HANGUL_L_JAMO
 * Hangul L Jamo (JL)
 * G_UNICODE_BREAK_HANGUL_V_JAMO
 * Hangul V Jamo (JV)
 * G_UNICODE_BREAK_HANGUL_T_JAMO
 * Hangul T Jamo (JT)
 * G_UNICODE_BREAK_HANGUL_LV_SYLLABLE
 * Hangul LV Syllable (H2)
 * G_UNICODE_BREAK_HANGUL_LVT_SYLLABLE
 * Hangul LVT Syllable (H3)
 * G_UNICODE_BREAK_CLOSE_PARANTHESIS
 * Closing Parenthesis (CP). Since 2.28
 * G_UNICODE_BREAK_CONDITIONAL_JAPANESE_STARTER
 * Conditional Japanese Starter (CJ). Since: 2.32
 * G_UNICODE_BREAK_HEBREW_LETTER
 * Hebrew Letter (HL). Since: 2.32
 * G_UNICODE_BREAK_REGIONAL_INDICATOR
 * Regional Indicator (RI). Since: 2.36
 */
public enum GUnicodeBreakType
{
	MANDATORY,
	CARRIAGE_RETURN,
	LINE_FEED,
	COMBINING_MARK,
	SURROGATE,
	ZERO_WIDTH_SPACE,
	INSEPARABLE,
	NON_BREAKING_GLUE,
	CONTINGENT,
	SPACE,
	AFTER,
	BEFORE,
	BEFORE_AND_AFTER,
	HYPHEN,
	NON_STARTER,
	OPEN_PUNCTUATION,
	CLOSE_PUNCTUATION,
	QUOTATION,
	EXCLAMATION,
	IDEOGRAPHIC,
	NUMERIC,
	INFIX_SEPARATOR,
	SYMBOL,
	ALPHABETIC,
	PREFIX,
	POSTFIX,
	COMPLEX_CONTEXT,
	AMBIGUOUS,
	UNKNOWN,
	NEXT_LINE,
	WORD_JOINER,
	HANGUL_L_JAMO,
	HANGUL_V_JAMO,
	HANGUL_T_JAMO,
	HANGUL_LV_SYLLABLE,
	HANGUL_LVT_SYLLABLE,
	CLOSE_PARANTHESIS,
	CONDITIONAL_JAPANESE_STARTER,
	HEBREW_LETTER,
	REGIONAL_INDICATOR
}
alias GUnicodeBreakType UnicodeBreakType;

/**
 * The GUnicodeScript enumeration identifies different writing
 * systems. The values correspond to the names as defined in the
 * Unicode standard. The enumeration has been added in GLib 2.14,
 * and is interchangeable with PangoScript.
 * Note that new types may be added in the future. Applications
 * should be ready to handle unknown values.
 * See Unicode Standard Annex
 * #24: Script names.
 * G_UNICODE_SCRIPT_INVALID_CODE
 *  a value never returned from g_unichar_get_script()
 * G_UNICODE_SCRIPT_COMMON
 * a character used by multiple different scripts
 * G_UNICODE_SCRIPT_INHERITED
 * a mark glyph that takes its script from the
 * i base glyph to which it is attached
 * G_UNICODE_SCRIPT_ARABIC
 * Arabic
 * G_UNICODE_SCRIPT_ARMENIAN
 * Armenian
 * G_UNICODE_SCRIPT_BENGALI
 * Bengali
 * G_UNICODE_SCRIPT_BOPOMOFO
 * Bopomofo
 * G_UNICODE_SCRIPT_CHEROKEE
 * Cherokee
 * G_UNICODE_SCRIPT_COPTIC
 * Coptic
 * G_UNICODE_SCRIPT_CYRILLIC
 * Cyrillic
 * G_UNICODE_SCRIPT_DESERET
 * Deseret
 * G_UNICODE_SCRIPT_DEVANAGARI
 * Devanagari
 * G_UNICODE_SCRIPT_ETHIOPIC
 * Ethiopic
 * G_UNICODE_SCRIPT_GEORGIAN
 * Georgian
 * G_UNICODE_SCRIPT_GOTHIC
 * Gothic
 * G_UNICODE_SCRIPT_GREEK
 * Greek
 * G_UNICODE_SCRIPT_GUJARATI
 * Gujarati
 * G_UNICODE_SCRIPT_GURMUKHI
 * Gurmukhi
 * G_UNICODE_SCRIPT_HAN
 * Han
 * G_UNICODE_SCRIPT_HANGUL
 * Hangul
 * G_UNICODE_SCRIPT_HEBREW
 * Hebrew
 * G_UNICODE_SCRIPT_HIRAGANA
 * Hiragana
 * G_UNICODE_SCRIPT_KANNADA
 * Kannada
 * G_UNICODE_SCRIPT_KATAKANA
 * Katakana
 * G_UNICODE_SCRIPT_KHMER
 * Khmer
 * G_UNICODE_SCRIPT_LAO
 * Lao
 * G_UNICODE_SCRIPT_LATIN
 * Latin
 * G_UNICODE_SCRIPT_MALAYALAM
 * Malayalam
 * G_UNICODE_SCRIPT_MONGOLIAN
 * Mongolian
 * G_UNICODE_SCRIPT_MYANMAR
 * Myanmar
 * G_UNICODE_SCRIPT_OGHAM
 * Ogham
 * G_UNICODE_SCRIPT_OLD_ITALIC
 * Old Italic
 * G_UNICODE_SCRIPT_ORIYA
 * Oriya
 * G_UNICODE_SCRIPT_RUNIC
 * Runic
 * G_UNICODE_SCRIPT_SINHALA
 * Sinhala
 * G_UNICODE_SCRIPT_SYRIAC
 * Syriac
 * G_UNICODE_SCRIPT_TAMIL
 * Tamil
 * G_UNICODE_SCRIPT_TELUGU
 * Telugu
 * G_UNICODE_SCRIPT_THAANA
 * Thaana
 * G_UNICODE_SCRIPT_THAI
 * Thai
 * G_UNICODE_SCRIPT_TIBETAN
 * Tibetan
 * G_UNICODE_SCRIPT_CANADIAN_ABORIGINAL
 *  Canadian Aboriginal
 * G_UNICODE_SCRIPT_YI
 * Yi
 * G_UNICODE_SCRIPT_TAGALOG
 * Tagalog
 * G_UNICODE_SCRIPT_HANUNOO
 * Hanunoo
 * G_UNICODE_SCRIPT_BUHID
 * Buhid
 * G_UNICODE_SCRIPT_TAGBANWA
 * Tagbanwa
 * G_UNICODE_SCRIPT_BRAILLE
 * Braille
 * G_UNICODE_SCRIPT_CYPRIOT
 * Cypriot
 * G_UNICODE_SCRIPT_LIMBU
 * Limbu
 * G_UNICODE_SCRIPT_OSMANYA
 * Osmanya
 * G_UNICODE_SCRIPT_SHAVIAN
 * Shavian
 * G_UNICODE_SCRIPT_LINEAR_B
 * Linear B
 * G_UNICODE_SCRIPT_TAI_LE
 * Tai Le
 * G_UNICODE_SCRIPT_UGARITIC
 * Ugaritic
 * G_UNICODE_SCRIPT_NEW_TAI_LUE
 *  New Tai Lue
 * G_UNICODE_SCRIPT_BUGINESE
 * Buginese
 * G_UNICODE_SCRIPT_GLAGOLITIC
 * Glagolitic
 * G_UNICODE_SCRIPT_TIFINAGH
 * Tifinagh
 * G_UNICODE_SCRIPT_SYLOTI_NAGRI
 *  Syloti Nagri
 * G_UNICODE_SCRIPT_OLD_PERSIAN
 *  Old Persian
 * G_UNICODE_SCRIPT_KHAROSHTHI
 * Kharoshthi
 * G_UNICODE_SCRIPT_UNKNOWN
 * an unassigned code point
 * G_UNICODE_SCRIPT_BALINESE
 * Balinese
 * G_UNICODE_SCRIPT_CUNEIFORM
 * Cuneiform
 * G_UNICODE_SCRIPT_PHOENICIAN
 * Phoenician
 * G_UNICODE_SCRIPT_PHAGS_PA
 * Phags-pa
 * G_UNICODE_SCRIPT_NKO
 * N'Ko
 * G_UNICODE_SCRIPT_KAYAH_LI
 * Kayah Li. Since 2.16.3
 * G_UNICODE_SCRIPT_LEPCHA
 * Lepcha. Since 2.16.3
 * G_UNICODE_SCRIPT_REJANG
 * Rejang. Since 2.16.3
 * G_UNICODE_SCRIPT_SUNDANESE
 * Sundanese. Since 2.16.3
 * G_UNICODE_SCRIPT_SAURASHTRA
 * Saurashtra. Since 2.16.3
 * G_UNICODE_SCRIPT_CHAM
 * Cham. Since 2.16.3
 * G_UNICODE_SCRIPT_OL_CHIKI
 * Ol Chiki. Since 2.16.3
 * G_UNICODE_SCRIPT_VAI
 * Vai. Since 2.16.3
 * G_UNICODE_SCRIPT_CARIAN
 * Carian. Since 2.16.3
 * G_UNICODE_SCRIPT_LYCIAN
 * Lycian. Since 2.16.3
 * G_UNICODE_SCRIPT_LYDIAN
 * Lydian. Since 2.16.3
 * G_UNICODE_SCRIPT_AVESTAN
 * Avestan. Since 2.26
 * G_UNICODE_SCRIPT_BAMUM
 * Bamum. Since 2.26
 * G_UNICODE_SCRIPT_EGYPTIAN_HIEROGLYPHS
 *  Egyptian Hieroglpyhs. Since 2.26
 * G_UNICODE_SCRIPT_IMPERIAL_ARAMAIC
 *  Imperial Aramaic. Since 2.26
 * G_UNICODE_SCRIPT_INSCRIPTIONAL_PAHLAVI
 *  Inscriptional Pahlavi. Since 2.26
 * G_UNICODE_SCRIPT_INSCRIPTIONAL_PARTHIAN
 *  Inscriptional Parthian. Since 2.26
 * G_UNICODE_SCRIPT_JAVANESE
 * Javanese. Since 2.26
 * G_UNICODE_SCRIPT_KAITHI
 * Kaithi. Since 2.26
 * G_UNICODE_SCRIPT_LISU
 * Lisu. Since 2.26
 * G_UNICODE_SCRIPT_MEETEI_MAYEK
 *  Meetei Mayek. Since 2.26
 * G_UNICODE_SCRIPT_OLD_SOUTH_ARABIAN
 *  Old South Arabian. Since 2.26
 * G_UNICODE_SCRIPT_OLD_TURKIC
 * Old Turkic. Since 2.28
 * G_UNICODE_SCRIPT_SAMARITAN
 * Samaritan. Since 2.26
 * G_UNICODE_SCRIPT_TAI_THAM
 * Tai Tham. Since 2.26
 * G_UNICODE_SCRIPT_TAI_VIET
 * Tai Viet. Since 2.26
 * G_UNICODE_SCRIPT_BATAK
 * Batak. Since 2.28
 * G_UNICODE_SCRIPT_BRAHMI
 * Brahmi. Since 2.28
 * G_UNICODE_SCRIPT_MANDAIC
 * Mandaic. Since 2.28
 * G_UNICODE_SCRIPT_CHAKMA
 * Chakma. Since: 2.32
 * G_UNICODE_SCRIPT_MEROITIC_CURSIVE
 * Meroitic Cursive. Since: 2.32
 * G_UNICODE_SCRIPT_MEROITIC_HIEROGLYPHS
 * Meroitic Hieroglyphs. Since: 2.32
 * G_UNICODE_SCRIPT_MIAO
 * Miao. Since: 2.32
 * G_UNICODE_SCRIPT_SHARADA
 * Sharada. Since: 2.32
 * G_UNICODE_SCRIPT_SORA_SOMPENG
 * Sora Sompeng. Since: 2.32
 * G_UNICODE_SCRIPT_TAKRI
 * Takri. Since: 2.32
 */
public enum GUnicodeScript
{
	INVALID_CODE = -1,
	COMMON = 0, /+* Zyyy +/
	INHERITED, /+* Zinh (Qaai) +/
	ARABIC, /+* Arab +/
	ARMENIAN, /+* Armn +/
	BENGALI, /+* Beng +/
	BOPOMOFO, /+* Bopo +/
	CHEROKEE, /+* Cher +/
	COPTIC, /+* Copt (Qaac) +/
	CYRILLIC, /+* Cyrl (Cyrs) +/
	DESERET, /+* Dsrt +/
	DEVANAGARI, /+* Deva +/
	ETHIOPIC, /+* Ethi +/
	GEORGIAN, /+* Geor (Geon, Geoa) +/
	GOTHIC, /+* Goth +/
	GREEK, /+* Grek +/
	GUJARATI, /+* Gujr +/
	GURMUKHI, /+* Guru +/
	HAN, /+* Hani +/
	HANGUL, /+* Hang +/
	HEBREW, /+* Hebr +/
	HIRAGANA, /+* Hira +/
	KANNADA, /+* Knda +/
	KATAKANA, /+* Kana +/
	KHMER, /+* Khmr +/
	LAO, /+* Laoo +/
	LATIN, /+* Latn (Latf, Latg) +/
	MALAYALAM, /+* Mlym +/
	MONGOLIAN, /+* Mong +/
	MYANMAR, /+* Mymr +/
	OGHAM, /+* Ogam +/
	OLD_ITALIC, /+* Ital +/
	ORIYA, /+* Orya +/
	RUNIC, /+* Runr +/
	SINHALA, /+* Sinh +/
	SYRIAC, /+* Syrc (Syrj, Syrn, Syre) +/
	TAMIL, /+* Taml +/
	TELUGU, /+* Telu +/
	THAANA, /+* Thaa +/
	THAI, /+* Thai +/
	TIBETAN, /+* Tibt +/
	CANADIAN_ABORIGINAL, /+* Cans +/
	YI, /+* Yiii +/
	TAGALOG, /+* Tglg +/
	HANUNOO, /+* Hano +/
	BUHID, /+* Buhd +/
	TAGBANWA, /+* Tagb +/
	/+* Unicode-4.0 additions +/
	BRAILLE, /+* Brai +/
	CYPRIOT, /+* Cprt +/
	LIMBU, /+* Limb +/
	OSMANYA, /+* Osma +/
	SHAVIAN, /+* Shaw +/
	LINEAR_B, /+* Linb +/
	TAI_LE, /+* Tale +/
	UGARITIC, /+* Ugar +/
	/+* Unicode-4.1 additions +/
	NEW_TAI_LUE, /+* Talu +/
	BUGINESE, /+* Bugi +/
	GLAGOLITIC, /+* Glag +/
	TIFINAGH, /+* Tfng +/
	SYLOTI_NAGRI, /+* Sylo +/
	OLD_PERSIAN, /+* Xpeo +/
	KHAROSHTHI, /+* Khar +/
	/+* Unicode-5.0 additions +/
	UNKNOWN, /+* Zzzz +/
	BALINESE, /+* Bali +/
	CUNEIFORM, /+* Xsux +/
	PHOENICIAN, /+* Phnx +/
	PHAGS_PA, /+* Phag +/
	NKO, /+* Nkoo +/
	/+* Unicode-5.1 additions +/
	KAYAH_LI, /+* Kali +/
	LEPCHA, /+* Lepc +/
	REJANG, /+* Rjng +/
	SUNDANESE, /+* Sund +/
	SAURASHTRA, /+* Saur +/
	CHAM, /+* Cham +/
	OL_CHIKI, /+* Olck +/
	VAI, /+* Vaii +/
	CARIAN, /+* Cari +/
	LYCIAN, /+* Lyci +/
	LYDIAN, /+* Lydi +/
	/+* Unicode-5.2 additions +/
	AVESTAN, /+* Avst +/
	BAMUM, /+* Bamu +/
	EGYPTIAN_HIEROGLYPHS, /+* Egyp +/
	IMPERIAL_ARAMAIC, /+* Armi +/
	INSCRIPTIONAL_PAHLAVI, /+* Phli +/
	INSCRIPTIONAL_PARTHIAN, /+* Prti +/
	JAVANESE, /+* Java +/
	KAITHI, /+* Kthi +/
	LISU, /+* Lisu +/
	MEETEI_MAYEK, /+* Mtei +/
	OLD_SOUTH_ARABIAN, /+* Sarb +/
	OLD_TURKIC, /+* Orkh +/
	SAMARITAN, /+* Samr +/
	TAI_THAM, /+* Lana +/
	TAI_VIET, /+* Tavt +/
	/+* Unicode-6.0 additions +/
	BATAK, /+* Batk +/
	BRAHMI, /+* Brah +/
	MANDAIC, /+* Mand +/
	/+* Unicode-6.1 additions +/
	CHAKMA, /+* Cakm +/
	MEROITIC_CURSIVE, /+* Merc +/
	MEROITIC_HIEROGLYPHS, /+* Mero +/
	MIAO, /+* Plrd +/
	SHARADA, /+* Shrd +/
	SORA_SOMPENG, /+* Sora +/
	TAKRI /+* Takr +/
}
alias GUnicodeScript UnicodeScript;

/**
 * Defines how a Unicode string is transformed in a canonical
 * form, standardizing such issues as whether a character with
 * an accent is represented as a base character and combining
 * accent or as a single precomposed character. Unicode strings
 * should generally be normalized before comparing them.
 * G_NORMALIZE_DEFAULT
 * standardize differences that do not affect the
 *  text content, such as the above-mentioned accent representation
 * G_NORMALIZE_NFD
 * another name for G_NORMALIZE_DEFAULT
 * G_NORMALIZE_DEFAULT_COMPOSE
 * like G_NORMALIZE_DEFAULT, but with
 *  composed forms rather than a maximally decomposed form
 * G_NORMALIZE_NFC
 * another name for G_NORMALIZE_DEFAULT_COMPOSE
 * G_NORMALIZE_ALL
 * beyond G_NORMALIZE_DEFAULT also standardize the
 *  "compatibility" characters in Unicode, such as SUPERSCRIPT THREE
 *  to the standard forms (in this case DIGIT THREE). Formatting
 *  information may be lost but for most text operations such
 *  characters should be considered the same
 * G_NORMALIZE_NFKD
 * another name for G_NORMALIZE_ALL
 * G_NORMALIZE_ALL_COMPOSE
 * like G_NORMALIZE_ALL, but with composed
 *  forms rather than a maximally decomposed form
 * G_NORMALIZE_NFKC
 * another name for G_NORMALIZE_ALL_COMPOSE
 */
public enum GNormalizeMode
{
	DEFAULT,
	NFD = DEFAULT,
	DEFAULT_COMPOSE,
	NFC = DEFAULT_COMPOSE,
	ALL,
	NFKD = ALL,
	ALL_COMPOSE,
	NFKC = ALL_COMPOSE
}
alias GNormalizeMode NormalizeMode;

/**
 * The hashing algorithm to be used by GChecksum when performing the
 * digest of some data.
 * Note that the GChecksumType enumeration may be extended at a later
 * date to include new hashing algorithm types.
 * G_CHECKSUM_MD5
 * Use the MD5 hashing algorithm
 * G_CHECKSUM_SHA1
 * Use the SHA-1 hashing algorithm
 * G_CHECKSUM_SHA256
 * Use the SHA-256 hashing algorithm
 * G_CHECKSUM_SHA512
 * Use the SHA-512 hashing algorithm
 * Since 2.16
 */
public enum GChecksumType
{
	MD5,
	SHA1,
	SHA256,
	SHA512
}
alias GChecksumType ChecksumType;

/**
 * This enumeration isn't used in the API, but may be useful if you need
 * to mark a number as a day, month, or year.
 * G_DATE_DAY
 * a day
 * G_DATE_MONTH
 * a month
 * G_DATE_YEAR
 * a year
 */
public enum GDateDMY
{
	DAY = 0,
	MONTH = 1,
	YEAR = 2
}
alias GDateDMY DateDMY;

/**
 * Enumeration representing a month; values are G_DATE_JANUARY,
 * G_DATE_FEBRUARY, etc. G_DATE_BAD_MONTH is the invalid value.
 * G_DATE_BAD_MONTH
 * invalid value
 * G_DATE_JANUARY
 * January
 * G_DATE_FEBRUARY
 * February
 * G_DATE_MARCH
 * March
 * G_DATE_APRIL
 * April
 * G_DATE_MAY
 * May
 * G_DATE_JUNE
 * June
 * G_DATE_JULY
 * July
 * G_DATE_AUGUST
 * August
 * G_DATE_SEPTEMBER
 * September
 * G_DATE_OCTOBER
 * October
 * G_DATE_NOVEMBER
 * November
 * G_DATE_DECEMBER
 * December
 */
public enum GDateMonth
{
	BAD_MONTH = 0,
	JANUARY = 1,
	FEBRUARY = 2,
	MARCH = 3,
	APRIL = 4,
	MAY = 5,
	JUNE = 6,
	JULY = 7,
	AUGUST = 8,
	SEPTEMBER = 9,
	OCTOBER = 10,
	NOVEMBER = 11,
	DECEMBER = 12
}
alias GDateMonth DateMonth;

/**
 * Enumeration representing a day of the week; G_DATE_MONDAY,
 * G_DATE_TUESDAY, etc. G_DATE_BAD_WEEKDAY is an invalid weekday.
 * G_DATE_BAD_WEEKDAY
 * invalid value
 * G_DATE_MONDAY
 * Monday
 * G_DATE_TUESDAY
 * Tuesday
 * G_DATE_WEDNESDAY
 * Wednesday
 * G_DATE_THURSDAY
 * Thursday
 * G_DATE_FRIDAY
 * Friday
 * G_DATE_SATURDAY
 * Saturday
 * G_DATE_SUNDAY
 * Sunday
 */
public enum GDateWeekday
{
	BAD_WEEKDAY = 0,
	MONDAY = 1,
	TUESDAY = 2,
	WEDNESDAY = 3,
	THURSDAY = 4,
	FRIDAY = 5,
	SATURDAY = 6,
	SUNDAY = 7
}
alias GDateWeekday DateWeekday;

/**
 * Disambiguates a given time in two ways.
 * First, specifies if the given time is in universal or local time.
 * Second, if the time is in local time, specifies if it is local
 * standard time or local daylight time. This is important for the case
 * where the same local time occurs twice (during daylight savings time
 * transitions, for example).
 * G_TIME_TYPE_STANDARD
 * the time is in local standard time
 * G_TIME_TYPE_DAYLIGHT
 * the time is in local daylight time
 * G_TIME_TYPE_UNIVERSAL
 * the time is in UTC
 */
public enum GTimeType
{
	TYPE_STANDARD,
	TYPE_DAYLIGHT,
	TYPE_UNIVERSAL
}
alias GTimeType TimeType;

/**
 * These are logical ids for special directories which are defined
 * depending on the platform used. You should use g_get_user_special_dir()
 * to retrieve the full path associated to the logical id.
 * The GUserDirectory enumeration can be extended at later date. Not
 * every platform has a directory for every logical id in this
 * enumeration.
 * G_USER_DIRECTORY_DESKTOP
 * the user's Desktop directory
 * G_USER_DIRECTORY_DOCUMENTS
 * the user's Documents directory
 * G_USER_DIRECTORY_DOWNLOAD
 * the user's Downloads directory
 * G_USER_DIRECTORY_MUSIC
 * the user's Music directory
 * G_USER_DIRECTORY_PICTURES
 * the user's Pictures directory
 * G_USER_DIRECTORY_PUBLIC_SHARE
 * the user's shared directory
 * G_USER_DIRECTORY_TEMPLATES
 * the user's Templates directory
 * G_USER_DIRECTORY_VIDEOS
 * the user's Movies directory
 * G_USER_N_DIRECTORIES
 * the number of enum values
 * Since 2.14
 */
public enum GUserDirectory
{
	DESKTOP,
	DOCUMENTS,
	DOWNLOAD,
	MUSIC,
	PICTURES,
	PUBLIC_SHARE,
	TEMPLATES,
	VIDEOS,
	G_USER_N_DIRECTORIES
}
alias GUserDirectory UserDirectory;

/**
 * Flags to modify the format of the string returned by g_format_size_full().
 * G_FORMAT_SIZE_DEFAULT
 * behave the same as g_format_size()
 * G_FORMAT_SIZE_LONG_FORMAT
 * include the exact number of bytes as part
 *  of the returned string. For example, "45.6 kB (45,612 bytes)".
 * G_FORMAT_SIZE_IEC_UNITS
 * use IEC (base 1024) units with "KiB"-style
 *  suffixes. IEC units should only be used for reporting things with
 *  a strong "power of 2" basis, like RAM sizes or RAID stripe sizes.
 *  Network and storage sizes should be reported in the normal SI units.
 */
public enum GFormatSizeFlags
{
	DEFAULT = 0,
	LONG_FORMAT = 1 << 0,
	IEC_UNITS = 1 << 1
}
alias GFormatSizeFlags FormatSizeFlags;

/**
 * The possible types of token returned from each
 * g_scanner_get_next_token() call.
 * G_TOKEN_EOF
 * the end of the file
 * G_TOKEN_LEFT_PAREN
 * a '(' character
 * G_TOKEN_RIGHT_PAREN
 * a ')' character
 * G_TOKEN_LEFT_CURLY
 * a '{' character
 * G_TOKEN_RIGHT_CURLY
 * a '}' character
 */
public enum GTokenType
{
	EOF = 0,
	LEFT_PAREN = '(',
	RIGHT_PAREN = ')',
	LEFT_CURLY = '{',
	RIGHT_CURLY = '}',
	LEFT_BRACE = '[',
	RIGHT_BRACE = ']',
	EQUAL_SIGN = '=',
	COMMA = ',',
	NONE = 256,
	ERROR,
	CHAR,
	BINARY,
	OCTAL,
	INT,
	HEX,
	FLOAT,
	STRING,
	SYMBOL,
	IDENTIFIER,
	IDENTIFIER_NULL,
	COMMENT_SINGLE,
	COMMENT_MULTI,
	LAST
}
alias GTokenType TokenType;

/**
 * The possible errors, used in the v_error field
 * of GTokenValue, when the token is a G_TOKEN_ERROR.
 * G_ERR_UNKNOWN
 * unknown error
 * G_ERR_UNEXP_EOF
 * unexpected end of file
 * G_ERR_UNEXP_EOF_IN_STRING
 * unterminated string constant
 * G_ERR_UNEXP_EOF_IN_COMMENT
 * unterminated comment
 * G_ERR_NON_DIGIT_IN_CONST
 * non-digit character in a number
 * G_ERR_DIGIT_RADIX
 * digit beyond radix in a number
 * G_ERR_FLOAT_RADIX
 * non-decimal floating point number
 * G_ERR_FLOAT_MALFORMED
 * malformed floating point number
 */
public enum GErrorType
{
	UNKNOWN,
	UNEXP_EOF,
	UNEXP_EOF_IN_STRING,
	UNEXP_EOF_IN_COMMENT,
	NON_DIGIT_IN_CONST,
	DIGIT_RADIX,
	FLOAT_RADIX,
	FLOAT_MALFORMED
}
alias GErrorType ErrorType;

/**
 * Error codes returned by spawning processes.
 * G_SPAWN_ERROR_FORK
 * Fork failed due to lack of memory.
 * G_SPAWN_ERROR_READ
 * Read or select on pipes failed.
 * G_SPAWN_ERROR_CHDIR
 * Changing to working directory failed.
 * G_SPAWN_ERROR_ACCES
 * execv() returned EACCES
 * G_SPAWN_ERROR_PERM
 * execv() returned EPERM
 * G_SPAWN_ERROR_TOO_BIG
 * execv() returned E2BIG
 * G_SPAWN_ERROR_2BIG
 * deprecated alias for G_SPAWN_ERROR_TOO_BIG
 * G_SPAWN_ERROR_NOEXEC
 * execv() returned ENOEXEC
 * G_SPAWN_ERROR_NAMETOOLONG
 * execv() returned ENAMETOOLONG
 * G_SPAWN_ERROR_NOENT
 * execv() returned ENOENT
 * G_SPAWN_ERROR_NOMEM
 * execv() returned ENOMEM
 * G_SPAWN_ERROR_NOTDIR
 * execv() returned ENOTDIR
 * G_SPAWN_ERROR_LOOP
 * execv() returned ELOOP
 * G_SPAWN_ERROR_TXTBUSY
 * execv() returned ETXTBUSY
 * G_SPAWN_ERROR_IO
 * execv() returned EIO
 * G_SPAWN_ERROR_NFILE
 * execv() returned ENFILE
 * G_SPAWN_ERROR_MFILE
 * execv() returned EMFILE
 * G_SPAWN_ERROR_INVAL
 * execv() returned EINVAL
 * G_SPAWN_ERROR_ISDIR
 * execv() returned EISDIR
 * G_SPAWN_ERROR_LIBBAD
 * execv() returned ELIBBAD
 * G_SPAWN_ERROR_FAILED
 * Some other fatal failure,
 *  error->message should explain.
 */
public enum GSpawnError
{
	FORK, /+* fork failed due to lack of memory +/
	READ, /+* read or select on pipes failed +/
	CHDIR, /+* changing to working dir failed +/
	ACCES, /+* execv() returned EACCES +/
	PERM, /+* execv() returned EPERM +/
	TOO_BIG,/+* execv() returned E2BIG +/
	
	NOEXEC, /+* execv() returned ENOEXEC +/
	NAMETOOLONG, /+* "" "" ENAMETOOLONG +/
	NOENT, /+* "" "" ENOENT +/
	NOMEM, /+* "" "" ENOMEM +/
	NOTDIR, /+* "" "" ENOTDIR +/
	LOOP, /+* "" "" ELOOP +/
	TXTBUSY, /+* "" "" ETXTBUSY +/
	IO, /+* "" "" EIO +/
	NFILE, /+* "" "" ENFILE +/
	MFILE, /+* "" "" EMFLE +/
	INVAL, /+* "" "" EINVAL +/
	ISDIR, /+* "" "" EISDIR +/
	LIBBAD, /+* "" "" ELIBBAD +/
	FAILED /+* other fatal failure, error->message
	 * should explain
	+/
}
alias GSpawnError SpawnError;

/**
 * Flags passed to g_spawn_sync(), g_spawn_async() and g_spawn_async_with_pipes().
 * G_SPAWN_LEAVE_DESCRIPTORS_OPEN
 * the parent's open file descriptors will be
 *  inherited by the child; otherwise all descriptors except stdin/stdout/stderr
 *  will be closed before calling exec() in the child.
 * G_SPAWN_DO_NOT_REAP_CHILD
 * the child will not be automatically reaped; you
 *  must use g_child_watch_add() yourself (or call waitpid()
 *  or handle SIGCHLD yourself), or the child will become a zombie.
 * G_SPAWN_SEARCH_PATH
 * argv[0] need not be an absolute path,
 *  it will be looked for in the user's PATH.
 * G_SPAWN_STDOUT_TO_DEV_NULL
 * the child's standard output will be discarded,
 *  instead of going to the same location as the parent's standard output.
 * G_SPAWN_STDERR_TO_DEV_NULL
 * the child's standard error will be discarded.
 * G_SPAWN_CHILD_INHERITS_STDIN
 * the child will inherit the parent's standard
 *  input (by default, the child's standard input is attached to
 *  /dev/null).
 * G_SPAWN_FILE_AND_ARGV_ZERO
 * the first element of argv is
 *  the file to execute, while the remaining elements are the actual argument
 *  vector to pass to the file. Normally g_spawn_async_with_pipes() uses
 *  argv[0] as the file to execute, and passes all of
 *  argv to the child.
 * G_SPAWN_SEARCH_PATH_FROM_ENVP
 * if argv[0] is not an abolute path,
 *  it will be looked for in the PATH from the passed child
 *  environment. Since: 2.34
 */
public enum GSpawnFlags
{
	LEAVE_DESCRIPTORS_OPEN = 1 << 0,
	DO_NOT_REAP_CHILD = 1 << 1,
	/+* look for argv[0] inn the path i.e. use execvp() +/
	SEARCH_PATH = 1 << 2,
	/+* Dump output to /dev/null +/
	STDOUT_TO_DEV_NULL = 1 << 3,
	STDERR_TO_DEV_NULL = 1 << 4,
	CHILD_INHERITS_STDIN = 1 << 5,
	FILE_AND_ARGV_ZERO = 1 << 6,
	SEARCH_PATH_FROM_ENVP = 1 << 7
}
alias GSpawnFlags SpawnFlags;

/**
 * Values corresponding to errno codes returned from file operations
 * on UNIX. Unlike errno codes, GFileError values are available on
 * all systems, even Windows. The exact meaning of each code depends
 * on what sort of file operation you were performing; the UNIX
 * documentation gives more details. The following error code descriptions
 * come from the GNU C Library manual, and are under the copyright
 * of that manual.
 * It's not very portable to make detailed assumptions about exactly
 * which errors will be returned from a given operation. Some errors
 * don't occur on some systems, etc., sometimes there are subtle
 * differences in when a system will report a given error, etc.
 * G_FILE_ERROR_EXIST
 * Operation not permitted; only the owner of
 *  the file (or other resource) or processes with special privileges
 *  can perform the operation.
 * G_FILE_ERROR_ISDIR
 * File is a directory; you cannot open a directory
 *  for writing, or create or remove hard links to it.
 * G_FILE_ERROR_ACCES
 * Permission denied; the file permissions do not
 *  allow the attempted operation.
 * G_FILE_ERROR_NAMETOOLONG
 * Filename too long.
 * G_FILE_ERROR_NOENT
 * No such file or directory. This is a "file
 *  doesn't exist" error for ordinary files that are referenced in
 *  contexts where they are expected to already exist.
 * G_FILE_ERROR_NOTDIR
 * A file that isn't a directory was specified when
 *  a directory is required.
 * G_FILE_ERROR_NXIO
 * No such device or address. The system tried to
 *  use the device represented by a file you specified, and it
 *  couldn't find the device. This can mean that the device file was
 *  installed incorrectly, or that the physical device is missing or
 *  not correctly attached to the computer.
 * G_FILE_ERROR_NODEV
 * The underlying file system of the specified file
 *  does not support memory mapping.
 * G_FILE_ERROR_ROFS
 * The directory containing the new link can't be
 *  modified because it's on a read-only file system.
 * G_FILE_ERROR_TXTBSY
 * Text file busy.
 * G_FILE_ERROR_FAULT
 * You passed in a pointer to bad memory.
 *  (GLib won't reliably return this, don't pass in pointers to bad
 *  memory.)
 * G_FILE_ERROR_LOOP
 * Too many levels of symbolic links were encountered
 *  in looking up a file name. This often indicates a cycle of symbolic
 *  links.
 * G_FILE_ERROR_NOSPC
 * No space left on device; write operation on a
 *  file failed because the disk is full.
 * G_FILE_ERROR_NOMEM
 * No memory available. The system cannot allocate
 *  more virtual memory because its capacity is full.
 * G_FILE_ERROR_MFILE
 * The current process has too many files open and
 *  can't open any more. Duplicate descriptors do count toward this
 *  limit.
 * G_FILE_ERROR_NFILE
 * There are too many distinct file openings in the
 *  entire system.
 * G_FILE_ERROR_BADF
 * Bad file descriptor; for example, I/O on a
 *  descriptor that has been closed or reading from a descriptor open
 *  only for writing (or vice versa).
 * G_FILE_ERROR_INVAL
 * Invalid argument. This is used to indicate
 *  various kinds of problems with passing the wrong argument to a
 *  library function.
 * G_FILE_ERROR_PIPE
 * Broken pipe; there is no process reading from the
 *  other end of a pipe. Every library function that returns this
 *  error code also generates a `SIGPIPE' signal; this signal
 *  terminates the program if not handled or blocked. Thus, your
 *  program will never actually see this code unless it has handled
 *  or blocked `SIGPIPE'.
 * G_FILE_ERROR_AGAIN
 * Resource temporarily unavailable; the call might
 *  work if you try again later.
 * G_FILE_ERROR_INTR
 * Interrupted function call; an asynchronous signal
 *  occurred and prevented completion of the call. When this
 *  happens, you should try the call again.
 * G_FILE_ERROR_IO
 * Input/output error; usually used for physical read
 *  or write errors. i.e. the disk or other physical device hardware
 *  is returning errors.
 * G_FILE_ERROR_PERM
 * Operation not permitted; only the owner of the
 *  file (or other resource) or processes with special privileges can
 *  perform the operation.
 * G_FILE_ERROR_NOSYS
 * Function not implemented; this indicates that
 *  the system is missing some functionality.
 * G_FILE_ERROR_FAILED
 * Does not correspond to a UNIX error code; this
 *  is the standard "failed for unspecified reason" error code present
 *  in all GError error code enumerations. Returned if no specific
 *  code applies.
 */
public enum GFileError
{
	EXIST,
	ISDIR,
	ACCES,
	NAMETOOLONG,
	NOENT,
	NOTDIR,
	NXIO,
	NODEV,
	ROFS,
	TXTBSY,
	FAULT,
	LOOP,
	NOSPC,
	NOMEM,
	MFILE,
	NFILE,
	BADF,
	INVAL,
	PIPE,
	AGAIN,
	INTR,
	IO,
	PERM,
	NOSYS,
	FAILED
}
alias GFileError FileError;

/**
 * A test to perform on a file using g_file_test().
 * G_FILE_TEST_IS_REGULAR
 * TRUE if the file is a regular file
 *  (not a directory). Note that this test will also return TRUE
 *  if the tested file is a symlink to a regular file.
 * G_FILE_TEST_IS_SYMLINK
 * TRUE if the file is a symlink.
 * G_FILE_TEST_IS_DIR
 * TRUE if the file is a directory.
 * G_FILE_TEST_IS_EXECUTABLE
 * TRUE if the file is executable.
 * G_FILE_TEST_EXISTS
 * TRUE if the file exists. It may or may not
 *  be a regular file.
 */
public enum GFileTest
{
	IS_REGULAR = 1 << 0,
	IS_SYMLINK = 1 << 1,
	IS_DIR = 1 << 2,
	IS_EXECUTABLE = 1 << 3,
	EXISTS = 1 << 4
}
alias GFileTest FileTest;

/**
 * Error codes returned by shell functions.
 * G_SHELL_ERROR_BAD_QUOTING
 * Mismatched or otherwise mangled quoting.
 * G_SHELL_ERROR_EMPTY_STRING
 * String to be parsed was empty.
 * G_SHELL_ERROR_FAILED
 * Some other error.
 */
public enum GShellError
{
	BAD_QUOTING,
	/+* string to be parsed was empty +/
	EMPTY_STRING,
	FAILED
}
alias GShellError ShellError;

/**
 * Error codes returned by option parsing.
 * G_OPTION_ERROR_UNKNOWN_OPTION
 * An option was not known to the parser.
 *  This error will only be reported, if the parser hasn't been instructed
 *  to ignore unknown options, see g_option_context_set_ignore_unknown_options().
 * G_OPTION_ERROR_BAD_VALUE
 * A value couldn't be parsed.
 * G_OPTION_ERROR_FAILED
 * A GOptionArgFunc callback failed.
 */
public enum GOptionError
{
	UNKNOWN_OPTION,
	BAD_VALUE,
	FAILED
}
alias GOptionError OptionError;

/**
 * The GOptionArg enum values determine which type of extra argument the
 * options expect to find. If an option expects an extra argument, it
 * can be specified in several ways; with a short option:
 * -x arg, with a long option: --name arg
 * or combined in a single argument: --name=arg.
 * G_OPTION_ARG_NONE
 * No extra argument. This is useful for simple flags.
 * G_OPTION_ARG_STRING
 * The option takes a string argument.
 * G_OPTION_ARG_INT
 * The option takes an integer argument.
 * G_OPTION_ARG_CALLBACK
 * The option provides a callback to parse the
 *  extra argument.
 * G_OPTION_ARG_FILENAME
 * The option takes a filename as argument.
 * G_OPTION_ARG_STRING_ARRAY
 * The option takes a string argument, multiple
 *  uses of the option are collected into an array of strings.
 * G_OPTION_ARG_FILENAME_ARRAY
 * The option takes a filename as argument,
 *  multiple uses of the option are collected into an array of strings.
 * G_OPTION_ARG_DOUBLE
 * The option takes a double argument. The argument
 *  can be formatted either for the user's locale or for the "C" locale. Since 2.12
 * G_OPTION_ARG_INT64
 * The option takes a 64-bit integer. Like G_OPTION_ARG_INT
 *  but for larger numbers. The number can be in decimal base, or in hexadecimal
 *  (when prefixed with 0x, for example, 0xffffffff).
 *  Since 2.12
 */
public enum GOptionArg
{
	NONE,
	STRING,
	INT,
	CALLBACK,
	FILENAME,
	STRING_ARRAY,
	FILENAME_ARRAY,
	DOUBLE,
	INT64
}
alias GOptionArg OptionArg;

/**
 * Flags which modify individual options.
 * G_OPTION_FLAG_HIDDEN
 * The option doesn't appear in --help
 *  output.
 * G_OPTION_FLAG_IN_MAIN
 * The option appears in the main section of the
 *  --help output, even if it is defined in a group.
 * G_OPTION_FLAG_REVERSE
 * For options of the G_OPTION_ARG_NONE kind, this flag
 *  indicates that the sense of the option is reversed.
 * G_OPTION_FLAG_NO_ARG
 * For options of the G_OPTION_ARG_CALLBACK kind,
 *  this flag indicates that the callback does not take any argument
 *  (like a G_OPTION_ARG_NONE option). Since 2.8
 * G_OPTION_FLAG_FILENAME
 * For options of the G_OPTION_ARG_CALLBACK
 *  kind, this flag indicates that the argument should be passed to the
 *  callback in the GLib filename encoding rather than UTF-8. Since 2.8
 * G_OPTION_FLAG_OPTIONAL_ARG
 * For options of the G_OPTION_ARG_CALLBACK
 *  kind, this flag indicates that the argument supply is optional. If no argument
 *  is given then data of GOptionParseFunc will be set to NULL. Since 2.8
 * G_OPTION_FLAG_NOALIAS
 * This flag turns off the automatic conflict resolution
 *  which prefixes long option names with groupname- if
 *  there is a conflict. This option should only be used in situations where
 *  aliasing is necessary to model some legacy commandline interface. It is
 *  not safe to use this option, unless all option groups are under your
 *  direct control. Since 2.8.
 */
public enum GOptionFlags
{
	HIDDEN = 1 << 0,
	IN_MAIN = 1 << 1,
	REVERSE = 1 << 2,
	NO_ARG = 1 << 3,
	FILENAME = 1 << 4,
	OPTIONAL_ARG = 1 << 5,
	NOALIAS = 1 << 6
}
alias GOptionFlags OptionFlags;

/**
 * Error codes returned by regular expressions functions.
 * G_REGEX_ERROR_COMPILE
 * Compilation of the regular expression failed.
 * G_REGEX_ERROR_OPTIMIZE
 * Optimization of the regular expression failed.
 * G_REGEX_ERROR_REPLACE
 * Replacement failed due to an ill-formed replacement
 *  string.
 * G_REGEX_ERROR_MATCH
 * The match process failed.
 * G_REGEX_ERROR_INTERNAL
 * Internal error of the regular expression engine.
 *  Since 2.16
 * G_REGEX_ERROR_STRAY_BACKSLASH
 * "\\" at end of pattern. Since 2.16
 * G_REGEX_ERROR_MISSING_CONTROL_CHAR
 * "\\c" at end of pattern. Since 2.16
 * G_REGEX_ERROR_UNRECOGNIZED_ESCAPE
 * Unrecognized character follows "\\".
 *  Since 2.16
 * G_REGEX_ERROR_QUANTIFIERS_OUT_OF_ORDER
 * Numbers out of order in "{}"
 *  quantifier. Since 2.16
 * G_REGEX_ERROR_QUANTIFIER_TOO_BIG
 * Number too big in "{}" quantifier.
 *  Since 2.16
 * G_REGEX_ERROR_UNTERMINATED_CHARACTER_CLASS
 * Missing terminating "]" for
 *  character class. Since 2.16
 * G_REGEX_ERROR_INVALID_ESCAPE_IN_CHARACTER_CLASS
 * Invalid escape sequence
 *  in character class. Since 2.16
 * G_REGEX_ERROR_RANGE_OUT_OF_ORDER
 * Range out of order in character class.
 *  Since 2.16
 * G_REGEX_ERROR_NOTHING_TO_REPEAT
 * Nothing to repeat. Since 2.16
 * G_REGEX_ERROR_UNRECOGNIZED_CHARACTER
 * Unrecognized character after "(?",
 *  "(?<" or "(?P". Since 2.16
 * G_REGEX_ERROR_POSIX_NAMED_CLASS_OUTSIDE_CLASS
 * POSIX named classes are
 *  supported only within a class. Since 2.16
 * G_REGEX_ERROR_UNMATCHED_PARENTHESIS
 * Missing terminating ")" or ")"
 *  without opening "(". Since 2.16
 * G_REGEX_ERROR_INEXISTENT_SUBPATTERN_REFERENCE
 * Reference to non-existent
 *  subpattern. Since 2.16
 * G_REGEX_ERROR_UNTERMINATED_COMMENT
 * Missing terminating ")" after comment.
 *  Since 2.16
 * G_REGEX_ERROR_EXPRESSION_TOO_LARGE
 * Regular expression too large.
 *  Since 2.16
 * G_REGEX_ERROR_MEMORY_ERROR
 * Failed to get memory. Since 2.16
 * G_REGEX_ERROR_VARIABLE_LENGTH_LOOKBEHIND
 * Lookbehind assertion is not
 *  fixed length. Since 2.16
 * G_REGEX_ERROR_MALFORMED_CONDITION
 * Malformed number or name after "(?(".
 *  Since 2.16
 * G_REGEX_ERROR_TOO_MANY_CONDITIONAL_BRANCHES
 * Conditional group contains
 *  more than two branches. Since 2.16
 * G_REGEX_ERROR_ASSERTION_EXPECTED
 * Assertion expected after "(?(".
 *  Since 2.16
 * G_REGEX_ERROR_UNKNOWN_POSIX_CLASS_NAME
 * Unknown POSIX class name.
 *  Since 2.16
 * G_REGEX_ERROR_POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED
 * POSIX collating
 *  elements are not supported. Since 2.16
 * G_REGEX_ERROR_HEX_CODE_TOO_LARGE
 * Character value in "\\x{...}" sequence
 *  is too large. Since 2.16
 * G_REGEX_ERROR_INVALID_CONDITION
 * Invalid condition "(?(0)". Since 2.16
 * G_REGEX_ERROR_SINGLE_BYTE_MATCH_IN_LOOKBEHIND
 * \\C not allowed in
 *  lookbehind assertion. Since 2.16
 * G_REGEX_ERROR_INFINITE_LOOP
 * Recursive call could loop indefinitely.
 *  Since 2.16
 * G_REGEX_ERROR_MISSING_SUBPATTERN_NAME_TERMINATOR
 * Missing terminator
 *  in subpattern name. Since 2.16
 * G_REGEX_ERROR_DUPLICATE_SUBPATTERN_NAME
 * Two named subpatterns have
 *  the same name. Since 2.16
 * G_REGEX_ERROR_MALFORMED_PROPERTY
 * Malformed "\\P" or "\\p" sequence.
 *  Since 2.16
 * G_REGEX_ERROR_UNKNOWN_PROPERTY
 * Unknown property name after "\\P" or
 *  "\\p". Since 2.16
 * G_REGEX_ERROR_SUBPATTERN_NAME_TOO_LONG
 * Subpattern name is too long
 *  (maximum 32 characters). Since 2.16
 * G_REGEX_ERROR_TOO_MANY_SUBPATTERNS
 * Too many named subpatterns (maximum
 *  10,000). Since 2.16
 * G_REGEX_ERROR_INVALID_OCTAL_VALUE
 * Octal value is greater than "\\377".
 *  Since 2.16
 * G_REGEX_ERROR_TOO_MANY_BRANCHES_IN_DEFINE
 * "DEFINE" group contains more
 *  than one branch. Since 2.16
 * G_REGEX_ERROR_DEFINE_REPETION
 * Repeating a "DEFINE" group is not allowed.
 *  This error is never raised. Since: 2.16 Deprecated: 2.34
 * G_REGEX_ERROR_INCONSISTENT_NEWLINE_OPTIONS
 * Inconsistent newline options.
 *  Since 2.16
 * G_REGEX_ERROR_MISSING_BACK_REFERENCE
 * "\\g" is not followed by a braced,
 *  angle-bracketed, or quoted name or number, or by a plain number. Since: 2.16
 * G_REGEX_ERROR_INVALID_RELATIVE_REFERENCE
 * relative reference must not be zero. Since: 2.34
 * G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN
 * the backtracing
 *  control verb used does not allow an argument. Since: 2.34
 * G_REGEX_ERROR_UNKNOWN_BACKTRACKING_CONTROL_VERB
 * unknown backtracing
 *  control verb. Since: 2.34
 * G_REGEX_ERROR_NUMBER_TOO_BIG
 * number is too big in escape sequence. Since: 2.34
 * G_REGEX_ERROR_MISSING_SUBPATTERN_NAME
 * Missing subpattern name. Since: 2.34
 * G_REGEX_ERROR_MISSING_DIGIT
 * Missing digit. Since 2.34
 * G_REGEX_ERROR_INVALID_DATA_CHARACTER
 * In JavaScript compatibility mode,
 *  "[" is an invalid data character. Since: 2.34
 * G_REGEX_ERROR_EXTRA_SUBPATTERN_NAME
 * different names for subpatterns of the
 *  same number are not allowed. Since: 2.34
 * G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED
 * the backtracing control
 *  verb requires an argument. Since: 2.34
 * G_REGEX_ERROR_INVALID_CONTROL_CHAR
 * "\\c" must be followed by an ASCII
 *  character. Since: 2.34
 * G_REGEX_ERROR_MISSING_NAME
 * "\\k" is not followed by a braced, angle-bracketed, or
 *  quoted name. Since: 2.34
 * G_REGEX_ERROR_NOT_SUPPORTED_IN_CLASS
 * "\\N" is not supported in a class. Since: 2.34
 * G_REGEX_ERROR_TOO_MANY_FORWARD_REFERENCES
 * too many forward references. Since: 2.34
 * G_REGEX_ERROR_NAME_TOO_LONG
 * the name is too long in "(*MARK)", "(*PRUNE)",
 *  "(*SKIP)", or "(*THEN)". Since: 2.34
 * G_REGEX_ERROR_CHARACTER_VALUE_TOO_LARGE
 * the character value in the \\u sequence is
 *  too large. Since: 2.34
 * Since 2.14
 */
public enum GRegexError
{
	COMPILE,
	OPTIMIZE,
	REPLACE,
	MATCH,
	INTERNAL,
	/+* These are the error codes from PCRE + 100 +/
	STRAY_BACKSLASH = 101,
	MISSING_CONTROL_CHAR = 102,
	UNRECOGNIZED_ESCAPE = 103,
	QUANTIFIERS_OUT_OF_ORDER = 104,
	QUANTIFIER_TOO_BIG = 105,
	UNTERMINATED_CHARACTER_CLASS = 106,
	INVALID_ESCAPE_IN_CHARACTER_CLASS = 107,
	RANGE_OUT_OF_ORDER = 108,
	NOTHING_TO_REPEAT = 109,
	UNRECOGNIZED_CHARACTER = 112,
	POSIX_NAMED_CLASS_OUTSIDE_CLASS = 113,
	UNMATCHED_PARENTHESIS = 114,
	INEXISTENT_SUBPATTERN_REFERENCE = 115,
	UNTERMINATED_COMMENT = 118,
	EXPRESSION_TOO_LARGE = 120,
	MEMORY_ERROR = 121,
	VARIABLE_LENGTH_LOOKBEHIND = 125,
	MALFORMED_CONDITION = 126,
	TOO_MANY_CONDITIONAL_BRANCHES = 127,
	ASSERTION_EXPECTED = 128,
	UNKNOWN_POSIX_CLASS_NAME = 130,
	POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED = 131,
	HEX_CODE_TOO_LARGE = 134,
	INVALID_CONDITION = 135,
	SINGLE_BYTE_MATCH_IN_LOOKBEHIND = 136,
	INFINITE_LOOP = 140,
	MISSING_SUBPATTERN_NAME_TERMINATOR = 142,
	DUPLICATE_SUBPATTERN_NAME = 143,
	MALFORMED_PROPERTY = 146,
	UNKNOWN_PROPERTY = 147,
	SUBPATTERN_NAME_TOO_LONG = 148,
	TOO_MANY_SUBPATTERNS = 149,
	INVALID_OCTAL_VALUE = 151,
	TOO_MANY_BRANCHES_IN_DEFINE = 154,
	DEFINE_REPETION = 155,
	INCONSISTENT_NEWLINE_OPTIONS = 156,
	MISSING_BACK_REFERENCE = 157,
	INVALID_RELATIVE_REFERENCE = 158,
	BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN = 159,
	UNKNOWN_BACKTRACKING_CONTROL_VERB = 160,
	NUMBER_TOO_BIG = 161,
	MISSING_SUBPATTERN_NAME = 162,
	MISSING_DIGIT = 163,
	INVALID_DATA_CHARACTER = 164,
	EXTRA_SUBPATTERN_NAME = 165,
	BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED = 166,
	INVALID_CONTROL_CHAR = 168,
	MISSING_NAME = 169,
	NOT_SUPPORTED_IN_CLASS = 171,
	TOO_MANY_FORWARD_REFERENCES = 172,
	NAME_TOO_LONG = 175,
	CHARACTER_VALUE_TOO_LARGE = 176
}
alias GRegexError RegexError;

/**
 * Flags specifying compile-time options.
 * G_REGEX_CASELESS
 * Letters in the pattern match both upper- and
 *  lowercase letters. This option can be changed within a pattern
 *  by a "(?i)" option setting.
 * G_REGEX_MULTILINE
 * By default, GRegex treats the strings as consisting
 *  of a single line of characters (even if it actually contains
 *  newlines). The "start of line" metacharacter ("^") matches only
 *  at the start of the string, while the "end of line" metacharacter
 *  ("$") matches only at the end of the string, or before a terminating
 *  newline (unless G_REGEX_DOLLAR_ENDONLY is set). When
 *  G_REGEX_MULTILINE is set, the "start of line" and "end of line"
 *  constructs match immediately following or immediately before any
 *  newline in the string, respectively, as well as at the very start
 *  and end. This can be changed within a pattern by a "(?m)" option
 *  setting.
 * G_REGEX_DOTALL
 * A dot metacharater (".") in the pattern matches all
 *  characters, including newlines. Without it, newlines are excluded.
 *  This option can be changed within a pattern by a ("?s") option setting.
 * G_REGEX_EXTENDED
 * Whitespace data characters in the pattern are
 *  totally ignored except when escaped or inside a character class.
 *  Whitespace does not include the VT character (code 11). In addition,
 *  characters between an unescaped "#" outside a character class and
 *  the next newline character, inclusive, are also ignored. This can
 *  be changed within a pattern by a "(?x)" option setting.
 * G_REGEX_ANCHORED
 * The pattern is forced to be "anchored", that is,
 *  it is constrained to match only at the first matching point in the
 *  string that is being searched. This effect can also be achieved by
 *  appropriate constructs in the pattern itself such as the "^"
 *  metacharater.
 * G_REGEX_DOLLAR_ENDONLY
 * A dollar metacharacter ("$") in the pattern
 *  matches only at the end of the string. Without this option, a
 *  dollar also matches immediately before the final character if
 *  it is a newline (but not before any other newlines). This option
 *  is ignored if G_REGEX_MULTILINE is set.
 * G_REGEX_UNGREEDY
 * Inverts the "greediness" of the quantifiers so that
 *  they are not greedy by default, but become greedy if followed by "?".
 *  It can also be set by a "(?U)" option setting within the pattern.
 * G_REGEX_RAW
 * Usually strings must be valid UTF-8 strings, using this
 *  flag they are considered as a raw sequence of bytes.
 * G_REGEX_NO_AUTO_CAPTURE
 * Disables the use of numbered capturing
 *  parentheses in the pattern. Any opening parenthesis that is not
 *  followed by "?" behaves as if it were followed by "?:" but named
 *  parentheses can still be used for capturing (and they acquire numbers
 *  in the usual way).
 * G_REGEX_OPTIMIZE
 * Optimize the regular expression. If the pattern will
 *  be used many times, then it may be worth the effort to optimize it
 *  to improve the speed of matches.
 * G_REGEX_FIRSTLINE
 * Limits an unanchored pattern to match before (or at) the
 *  first newline. Since: 2.34
 * G_REGEX_DUPNAMES
 * Names used to identify capturing subpatterns need not
 *  be unique. This can be helpful for certain types of pattern when it
 *  is known that only one instance of the named subpattern can ever be
 *  matched.
 * G_REGEX_NEWLINE_CR
 * Usually any newline character or character sequence is
 *  recognized. If this option is set, the only recognized newline character
 *  is '\r'.
 * G_REGEX_NEWLINE_LF
 * Usually any newline character or character sequence is
 *  recognized. If this option is set, the only recognized newline character
 *  is '\n'.
 * G_REGEX_NEWLINE_CRLF
 * Usually any newline character or character sequence is
 *  recognized. If this option is set, the only recognized newline character
 *  sequence is '\r\n'.
 * G_REGEX_NEWLINE_ANYCRLF
 * Usually any newline character or character sequence
 *  is recognized. If this option is set, the only recognized newline character
 *  sequences are '\r', '\n', and '\r\n'. Since: 2.34
 * G_REGEX_BSR_ANYCRLF
 * Usually any newline character or character sequence
 *  is recognised. If this option is set, then "\R" only recognizes the newline
 *  characters '\r', '\n' and '\r\n'. Since: 2.34
 * G_REGEX_JAVASCRIPT_COMPAT
 * Changes behaviour so that it is compatible with
 *  JavaScript rather than PCRE. Since: 2.34
 * Since 2.14
 */
public enum GRegexCompileFlags
{
	CASELESS = 1 << 0,
	MULTILINE = 1 << 1,
	DOTALL = 1 << 2,
	EXTENDED = 1 << 3,
	ANCHORED = 1 << 4,
	DOLLAR_ENDONLY = 1 << 5,
	UNGREEDY = 1 << 9,
	RAW = 1 << 11,
	NO_AUTO_CAPTURE = 1 << 12,
	OPTIMIZE = 1 << 13,
	FIRSTLINE = 1 << 18,
	DUPNAMES = 1 << 19,
	NEWLINE_CR = 1 << 20,
	NEWLINE_LF = 1 << 21,
	NEWLINE_CRLF = NEWLINE_CR | NEWLINE_LF,
	NEWLINE_ANYCRLF = NEWLINE_CR | 1 << 22,
	BSR_ANYCRLF = 1 << 23,
	JAVASCRIPT_COMPAT = 1 << 25
}
alias GRegexCompileFlags RegexCompileFlags;

/**
 * Flags specifying match-time options.
 * G_REGEX_MATCH_ANCHORED
 * The pattern is forced to be "anchored", that is,
 *  it is constrained to match only at the first matching point in the
 *  string that is being searched. This effect can also be achieved by
 *  appropriate constructs in the pattern itself such as the "^"
 *  metacharater.
 * G_REGEX_MATCH_NOTBOL
 * Specifies that first character of the string is
 *  not the beginning of a line, so the circumflex metacharacter should
 *  not match before it. Setting this without G_REGEX_MULTILINE (at
 *  compile time) causes circumflex never to match. This option affects
 *  only the behaviour of the circumflex metacharacter, it does not
 *  affect "\A".
 * G_REGEX_MATCH_NOTEOL
 * Specifies that the end of the subject string is
 *  not the end of a line, so the dollar metacharacter should not match
 *  it nor (except in multiline mode) a newline immediately before it.
 *  Setting this without G_REGEX_MULTILINE (at compile time) causes
 *  dollar never to match. This option affects only the behaviour of
 *  the dollar metacharacter, it does not affect "\Z" or "\z".
 * G_REGEX_MATCH_NOTEMPTY
 * An empty string is not considered to be a valid
 *  match if this option is set. If there are alternatives in the pattern,
 *  they are tried. If all the alternatives match the empty string, the
 *  entire match fails. For example, if the pattern "a?b?" is applied to
 *  a string not beginning with "a" or "b", it matches the empty string
 *  at the start of the string. With this flag set, this match is not
 *  valid, so GRegex searches further into the string for occurrences
 *  of "a" or "b".
 * G_REGEX_MATCH_PARTIAL
 * Turns on the partial matching feature, for more
 *  documentation on partial matching see g_match_info_is_partial_match().
 * G_REGEX_MATCH_NEWLINE_CR
 * Overrides the newline definition set when
 *  creating a new GRegex, setting the '\r' character as line terminator.
 * G_REGEX_MATCH_NEWLINE_LF
 * Overrides the newline definition set when
 *  creating a new GRegex, setting the '\n' character as line terminator.
 * G_REGEX_MATCH_NEWLINE_CRLF
 * Overrides the newline definition set when
 *  creating a new GRegex, setting the '\r\n' characters sequence as line terminator.
 * G_REGEX_MATCH_NEWLINE_ANY
 * Overrides the newline definition set when
 *  creating a new GRegex, any Unicode newline sequence
 *  is recognised as a newline. These are '\r', '\n' and '\rn', and the
 *  single characters U+000B LINE TABULATION, U+000C FORM FEED (FF),
 *  U+0085 NEXT LINE (NEL), U+2028 LINE SEPARATOR and
 *  U+2029 PARAGRAPH SEPARATOR.
 * G_REGEX_MATCH_NEWLINE_ANYCRLF
 * Overrides the newline definition set when
 *  creating a new GRegex; any '\r', '\n', or '\r\n' character sequence
 *  is recognized as a newline. Since: 2.34
 * G_REGEX_MATCH_BSR_ANYCRLF
 * Overrides the newline definition for "\R" set when
 *  creating a new GRegex; only '\r', '\n', or '\r\n' character sequences
 *  are recognized as a newline by "\R". Since: 2.34
 * G_REGEX_MATCH_BSR_ANY
 * Overrides the newline definition for "\R" set when
 *  creating a new GRegex; any Unicode newline character or character sequence
 *  are recognized as a newline by "\R". These are '\r', '\n' and '\rn', and the
 *  single characters U+000B LINE TABULATION, U+000C FORM FEED (FF),
 *  U+0085 NEXT LINE (NEL), U+2028 LINE SEPARATOR and
 *  U+2029 PARAGRAPH SEPARATOR. Since: 2.34
 * G_REGEX_MATCH_PARTIAL_SOFT
 * An alias for G_REGEX_MATCH_PARTIAL. Since: 2.34
 * G_REGEX_MATCH_PARTIAL_HARD
 * Turns on the partial matching feature. In contrast to
 *  to G_REGEX_MATCH_PARTIAL_SOFT, this stops matching as soon as a partial match
 *  is found, without continuing to search for a possible complete match. See
 *  see g_match_info_is_partial_match() for more information. Since: 2.34
 * G_REGEX_MATCH_NOTEMPTY_ATSTART
 * Like G_REGEX_MATCH_NOTEMPTY, but only applied to
 *  the start of the matched string. For anchored
 *  patterns this can only happen for pattern containing "\K". Since: 2.34
 * Since 2.14
 */
public enum GRegexMatchFlags
{
	ANCHORED = 1 << 4,
	NOTBOL = 1 << 7,
	NOTEOL = 1 << 8,
	NOTEMPTY = 1 << 10,
	PARTIAL = 1 << 15,
	NEWLINE_CR = 1 << 20,
	NEWLINE_LF = 1 << 21,
	NEWLINE_CRLF = NEWLINE_CR | NEWLINE_LF,
	NEWLINE_ANY = 1 << 22,
	NEWLINE_ANYCRLF = NEWLINE_CR | NEWLINE_ANY,
	BSR_ANYCRLF = 1 << 23,
	BSR_ANY = 1 << 24,
	PARTIAL_SOFT = PARTIAL,
	PARTIAL_HARD = 1 << 27,
	NOTEMPTY_ATSTART = 1 << 28
}
alias GRegexMatchFlags RegexMatchFlags;

/**
 * Error codes returned by markup parsing.
 * G_MARKUP_ERROR_BAD_UTF8
 * text being parsed was not valid UTF-8
 * G_MARKUP_ERROR_EMPTY
 * document contained nothing, or only whitespace
 * G_MARKUP_ERROR_PARSE
 * document was ill-formed
 * G_MARKUP_ERROR_UNKNOWN_ELEMENT
 * error should be set by GMarkupParser
 *  functions; element wasn't known
 * G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE
 * error should be set by GMarkupParser
 *  functions; attribute wasn't known
 * G_MARKUP_ERROR_INVALID_CONTENT
 * error should be set by GMarkupParser
 *  functions; content was invalid
 * G_MARKUP_ERROR_MISSING_ATTRIBUTE
 * error should be set by GMarkupParser
 *  functions; a required attribute was missing
 */
public enum GMarkupError
{
	BAD_UTF8,
	EMPTY,
	PARSE,
	/+* The following are primarily intended for specific GMarkupParser
	 * implementations to set.
	+/
	UNKNOWN_ELEMENT,
	UNKNOWN_ATTRIBUTE,
	INVALID_CONTENT,
	MISSING_ATTRIBUTE
}
alias GMarkupError MarkupError;

/**
 * Flags that affect the behaviour of the parser.
 * G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG
 * flag you should not use
 * G_MARKUP_TREAT_CDATA_AS_TEXT
 * When this flag is set, CDATA marked
 *  sections are not passed literally to the passthrough function of
 *  the parser. Instead, the content of the section (without the
 *  <![CDATA[ and ]]>) is
 *  passed to the text function. This flag was added in GLib 2.12
 * G_MARKUP_PREFIX_ERROR_POSITION
 * Normally errors caught by GMarkup
 *  itself have line/column information prefixed to them to let the
 *  caller know the location of the error. When this flag is set the
 *  location information is also prefixed to errors generated by the
 *  GMarkupParser implementation functions
 */
public enum GMarkupParseFlags
{
	DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1 << 0,
	TREAT_CDATA_AS_TEXT = 1 << 1,
	PREFIX_ERROR_POSITION = 1 << 2
}
alias GMarkupParseFlags MarkupParseFlags;

/**
 * A mixed enumerated type and flags field. You must specify one type
 * (string, strdup, boolean, tristate). Additionally, you may optionally
 * bitwise OR the type with the flag G_MARKUP_COLLECT_OPTIONAL.
 * It is likely that this enum will be extended in the future to
 * support other types.
 * G_MARKUP_COLLECT_INVALID
 * used to terminate the list of attributes
 *  to collect
 * G_MARKUP_COLLECT_STRING
 * collect the string pointer directly from
 *  the attribute_values[] array. Expects a parameter of type (const
 *  char **). If G_MARKUP_COLLECT_OPTIONAL is specified and the
 *  attribute isn't present then the pointer will be set to NULL
 * G_MARKUP_COLLECT_STRDUP
 * as with G_MARKUP_COLLECT_STRING, but
 *  expects a parameter of type (char **) and g_strdup()s the
 *  returned pointer. The pointer must be freed with g_free()
 * G_MARKUP_COLLECT_BOOLEAN
 * expects a parameter of type (gboolean *)
 *  and parses the attribute value as a boolean. Sets FALSE if the
 *  attribute isn't present. Valid boolean values consist of
 *  (case-insensitive) "false", "f", "no", "n", "0" and "true", "t",
 *  "yes", "y", "1"
 * G_MARKUP_COLLECT_TRISTATE
 * as with G_MARKUP_COLLECT_BOOLEAN, but
 *  in the case of a missing attribute a value is set that compares
 *  equal to neither FALSE nor TRUE G_MARKUP_COLLECT_OPTIONAL is
 *  implied
 * G_MARKUP_COLLECT_OPTIONAL
 * can be bitwise ORed with the other fields.
 *  If present, allows the attribute not to appear. A default value
 *  is set depending on what value type is used
 */
public enum GMarkupCollectType
{
	INVALID,
	STRING,
	STRDUP,
	BOOLEAN,
	TRISTATE,
	OPTIONAL = (1 << 16)
}
alias GMarkupCollectType MarkupCollectType;

/**
 * Error codes returned by key file parsing.
 * G_KEY_FILE_ERROR_UNKNOWN_ENCODING
 * the text being parsed was in
 *  an unknown encoding
 * G_KEY_FILE_ERROR_PARSE
 * document was ill-formed
 * G_KEY_FILE_ERROR_NOT_FOUND
 * the file was not found
 * G_KEY_FILE_ERROR_KEY_NOT_FOUND
 * a requested key was not found
 * G_KEY_FILE_ERROR_GROUP_NOT_FOUND
 * a requested group was not found
 * G_KEY_FILE_ERROR_INVALID_VALUE
 * a value could not be parsed
 */
public enum GKeyFileError
{
	UNKNOWN_ENCODING,
	PARSE,
	NOT_FOUND,
	KEY_NOT_FOUND,
	GROUP_NOT_FOUND,
	INVALID_VALUE
}
alias GKeyFileError KeyFileError;

/**
 * Flags which influence the parsing.
 * G_KEY_FILE_NONE
 * No flags, default behaviour
 * G_KEY_FILE_KEEP_COMMENTS
 * Use this flag if you plan to write the
 *  (possibly modified) contents of the key file back to a file;
 *  otherwise all comments will be lost when the key file is
 *  written back.
 * G_KEY_FILE_KEEP_TRANSLATIONS
 * Use this flag if you plan to write the
 *  (possibly modified) contents of the key file back to a file;
 *  otherwise only the translations for the current language will be
 *  written back.
 */
public enum GKeyFileFlags
{
	NONE = 0,
	KEEP_COMMENTS = 1 << 0,
	KEEP_TRANSLATIONS = 1 << 1
}
alias GKeyFileFlags KeyFileFlags;

/**
 * Error codes returned by bookmark file parsing.
 * G_BOOKMARK_FILE_ERROR_INVALID_URI
 * URI was ill-formed
 * G_BOOKMARK_FILE_ERROR_INVALID_VALUE
 * a requested field was not found
 * G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED
 * a requested application did
 *  not register a bookmark
 * G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND
 * a requested URI was not found
 * G_BOOKMARK_FILE_ERROR_READ
 * document was ill formed
 * G_BOOKMARK_FILE_ERROR_UNKNOWN_ENCODING
 * the text being parsed was
 *  in an unknown encoding
 * G_BOOKMARK_FILE_ERROR_WRITE
 * an error occurred while writing
 * G_BOOKMARK_FILE_ERROR_FILE_NOT_FOUND
 * requested file was not found
 */
public enum GBookmarkFileError
{
	INVALID_URI,
	INVALID_VALUE,
	APP_NOT_REGISTERED,
	URI_NOT_FOUND,
	READ,
	UNKNOWN_ENCODING,
	WRITE,
	FILE_NOT_FOUND
}
alias GBookmarkFileError BookmarkFileError;

/**
 * Specifies the type of traveral performed by g_tree_traverse(),
 * g_node_traverse() and g_node_find().
 * G_IN_ORDER
 * vists a node's left child first, then the node itself,
 *  then its right child. This is the one to use if you
 *  want the output sorted according to the compare
 *  function.
 * G_PRE_ORDER
 * visits a node, then its children.
 * G_POST_ORDER
 * visits the node's children, then the node itself.
 * G_LEVEL_ORDER
 * is not implemented for Balanced Binary
 *  Trees. For N-ary Trees, it
 *  vists the root node first, then its children, then
 *  its grandchildren, and so on. Note that this is less
 *  efficient than the other orders.
 */
public enum GTraverseType
{
	IN_ORDER,
	PRE_ORDER,
	POST_ORDER,
	LEVEL_ORDER
}
alias GTraverseType TraverseType;

/**
 * Specifies which nodes are visited during several of the tree
 * functions, including g_node_traverse() and g_node_find().
 * G_TRAVERSE_LEAVES
 * only leaf nodes should be visited. This name has
 *  been introduced in 2.6, for older version use
 *  G_TRAVERSE_LEAFS.
 * G_TRAVERSE_NON_LEAVES
 * only non-leaf nodes should be visited. This
 *  name has been introduced in 2.6, for older
 *  version use G_TRAVERSE_NON_LEAFS.
 * G_TRAVERSE_ALL
 * all nodes should be visited.
 * G_TRAVERSE_MASK
 * a mask of all traverse flags.
 * G_TRAVERSE_LEAFS
 * identical to G_TRAVERSE_LEAVES.
 * G_TRAVERSE_NON_LEAFS
 * identical to G_TRAVERSE_NON_LEAVES.
 */
public enum GTraverseFlags
{
	LEAVES = 1 << 0,
	NON_LEAVES = 1 << 1,
	ALL = LEAVES | NON_LEAVES,
	MASK = 0x03,
	LEAFS = LEAVES,
	NON_LEAFS = NON_LEAVES
}
alias GTraverseFlags TraverseFlags;

/**
 * The range of possible top-level types of GVariant instances.
 * G_VARIANT_CLASS_BOOLEAN
 * The GVariant is a boolean.
 * G_VARIANT_CLASS_BYTE
 * The GVariant is a byte.
 * G_VARIANT_CLASS_INT16
 * The GVariant is a signed 16 bit integer.
 * G_VARIANT_CLASS_UINT16
 * The GVariant is an unsigned 16 bit integer.
 * G_VARIANT_CLASS_INT32
 * The GVariant is a signed 32 bit integer.
 * G_VARIANT_CLASS_UINT32
 * The GVariant is an unsigned 32 bit integer.
 * G_VARIANT_CLASS_INT64
 * The GVariant is a signed 64 bit integer.
 * G_VARIANT_CLASS_UINT64
 * The GVariant is an unsigned 64 bit integer.
 * G_VARIANT_CLASS_HANDLE
 * The GVariant is a file handle index.
 * G_VARIANT_CLASS_DOUBLE
 * The GVariant is a double precision floating
 *  point value.
 * G_VARIANT_CLASS_STRING
 * The GVariant is a normal string.
 * G_VARIANT_CLASS_OBJECT_PATH
 * The GVariant is a D-Bus object path
 *  string.
 * G_VARIANT_CLASS_SIGNATURE
 * The GVariant is a D-Bus signature string.
 * G_VARIANT_CLASS_VARIANT
 * The GVariant is a variant.
 * G_VARIANT_CLASS_MAYBE
 * The GVariant is a maybe-typed value.
 * G_VARIANT_CLASS_ARRAY
 * The GVariant is an array.
 * G_VARIANT_CLASS_TUPLE
 * The GVariant is a tuple.
 * G_VARIANT_CLASS_DICT_ENTRY
 * The GVariant is a dictionary entry.
 * Since 2.24
 */
public enum GVariantClass
{
	BOOLEAN = 'b',
	BYTE = 'y',
	INT16 = 'n',
	UINT16 = 'q',
	INT32 = 'i',
	UINT32 = 'u',
	INT64 = 'x',
	UINT64 = 't',
	HANDLE = 'h',
	DOUBLE = 'd',
	STRING = 's',
	OBJECT_PATH = 'o',
	SIGNATURE = 'g',
	VARIANT = 'v',
	MAYBE = 'm',
	ARRAY = 'a',
	TUPLE = '(',
	DICT_ENTRY = '{'
}
alias GVariantClass VariantClass;

/**
 * Error codes returned by parsing text-format GVariants.
 * G_VARIANT_PARSE_ERROR_FAILED
 * generic error (unused)
 * G_VARIANT_PARSE_ERROR_BASIC_TYPE_EXPECTED
 * a non-basic GVariantType was given where a basic type was expected
 * G_VARIANT_PARSE_ERROR_CANNOT_INFER_TYPE
 * cannot infer the GVariantType
 * G_VARIANT_PARSE_ERROR_DEFINITE_TYPE_EXPECTED
 * an indefinite GVariantType was given where a definite type was expected
 * G_VARIANT_PARSE_ERROR_INPUT_NOT_AT_END
 * extra data after parsing finished
 * G_VARIANT_PARSE_ERROR_INVALID_CHARACTER
 * invalid character in number or unicode escape
 * G_VARIANT_PARSE_ERROR_INVALID_FORMAT_STRING
 * not a valid GVariant format string
 * G_VARIANT_PARSE_ERROR_INVALID_OBJECT_PATH
 * not a valid object path
 * G_VARIANT_PARSE_ERROR_INVALID_SIGNATURE
 * not a valid type signature
 * G_VARIANT_PARSE_ERROR_INVALID_TYPE_STRING
 * not a valid GVariant type string
 * G_VARIANT_PARSE_ERROR_NO_COMMON_TYPE
 * could not find a common type for array entries
 * G_VARIANT_PARSE_ERROR_NUMBER_OUT_OF_RANGE
 * the numerical value is out of range of the given type
 * G_VARIANT_PARSE_ERROR_NUMBER_TOO_BIG
 * the numerical value is out of range for any type
 * G_VARIANT_PARSE_ERROR_TYPE_ERROR
 * cannot parse as variant of the specified type
 * G_VARIANT_PARSE_ERROR_UNEXPECTED_TOKEN
 * an unexpected token was encountered
 * G_VARIANT_PARSE_ERROR_UNKNOWN_KEYWORD
 * an unknown keyword was encountered
 * G_VARIANT_PARSE_ERROR_UNTERMINATED_STRING_CONSTANT
 * unterminated string constant
 * G_VARIANT_PARSE_ERROR_VALUE_EXPECTED
 * no value given
 */
public enum GVariantParseError
{
	FAILED,
	BASIC_TYPE_EXPECTED,
	CANNOT_INFER_TYPE,
	DEFINITE_TYPE_EXPECTED,
	INPUT_NOT_AT_END,
	INVALID_CHARACTER,
	INVALID_FORMAT_STRING,
	INVALID_OBJECT_PATH,
	INVALID_SIGNATURE,
	INVALID_TYPE_STRING,
	NO_COMMON_TYPE,
	NUMBER_OUT_OF_RANGE,
	NUMBER_TOO_BIG,
	TYPE_ERROR,
	UNEXPECTED_TOKEN,
	UNKNOWN_KEYWORD,
	UNTERMINATED_STRING_CONSTANT,
	VALUE_EXPECTED
}
alias GVariantParseError VariantParseError;

public struct GSocketControlMessageClass{}
public struct GInetSocketAddressClass{}

/**
 * Main Gtk struct.
 * The GMainLoop struct is an opaque data type
 * representing the main event loop of a GLib or GTK+ application.
 */
public struct GMainLoop{}


/**
 * The GMainContext struct is an opaque data
 * type representing a set of sources to be handled in a main loop.
 */
public struct GMainContext{}


/**
 * Represents a file descriptor, which events to poll for, and which events
 * occurred.
 * gint64 fd;
 * the file descriptor to poll (or a HANDLE on Win32)
 * gint fd;
 * gushort events;
 * a bitwise combination from GIOCondition, specifying which
 * events should be polled for. Typically for reading from a file
 * descriptor you would use G_IO_IN | G_IO_HUP | G_IO_ERR, and
 * for writing you would use G_IO_OUT | G_IO_ERR.
 * gushort revents;
 * a bitwise combination of flags from GIOCondition, returned
 * from the poll() function to indicate which events occurred.
 */
public struct GPollFD
{
	version(Win64)
	{
		long fd;
	}
	else
	{
		int fd;
	}
	ushort events;
	ushort revents;
}


/**
 * The GSource struct is an opaque data type
 * representing an event source.
 */
public struct GSource{}


/**
 * prepare ()
 * Called before all the file descriptors are polled. If the
 * source can determine that it is ready here (without waiting for the
 * results of the poll() call) it should return TRUE. It can also return
 * a timeout_ value which should be the maximum timeout (in milliseconds)
 * which should be passed to the poll() call. The actual timeout used will
 * be -1 if all sources returned -1, or it will be the minimum of all the
 * timeout_ values returned which were >= 0. Since 2.36 this may
 * be NULL, in which case the effect is as if the function always
 * check ()
 * dispatch ()
 * finalize ()
 */
public struct GSourceFuncs
{
	extern(C) int function(GSource* source, int* timeout) prepare;
	extern(C) int function(GSource* source) check;
	extern(C) int function(GSource* source, GSourceFunc callback, void* userData) dispatch;
	extern(C) void function(GSource* source) finalize; /+* Can be NULL +/
}


/**
 * The GSourceCallbackFuncs struct contains
 * functions for managing callback objects.
 * ref ()
 * Called when a reference is added to the callback object
 * unref ()
 * Called when a reference to the callback object is dropped
 * get ()
 * Called to extract the callback function and data from the
 * callback object.
 */
public struct GSourceCallbackFuncs
{
	extern(C) void function(void* cbData) doref;
	extern(C) void function(void* cbData) unref;
	extern(C) void function(void* cbData, GSource* source, GSourceFunc* func, void** data) get;
}


/**
 * Main Gtk struct.
 * The GThreadPool struct represents a thread pool. It has three
 * public read-only members, but the underlying struct is bigger,
 * so you must not copy this struct.
 * GFunc func;
 * the function to execute in the threads of this pool
 * gpointer user_data;
 * the user data for the threads of this pool
 * gboolean exclusive;
 * are all threads exclusive to this pool
 */
public struct GThreadPool
{
	GFunc func;
	void* userData;
	int exclusive;
}


/**
 * Main Gtk struct.
 * The GAsyncQueue struct is an opaque data structure which represents
 * an asynchronous queue. It should only be accessed through the
 * g_async_queue_* functions.
 */
public struct GAsyncQueue{}


/**
 * Main Gtk struct.
 * The GModule struct is an opaque data structure to represent a
 * Dynamically-Loaded
 * Module. It should only be accessed via the following functions.
 */
public struct GModule{}


/**
 * A set of functions used to perform memory allocation. The same GMemVTable must
 * be used for all allocations in the same program; a call to g_mem_set_vtable(),
 * if it exists, should be prior to any use of GLib.
 * malloc ()
 * function to use for allocating memory.
 * realloc ()
 * function to use for reallocating memory.
 * free ()
 * function to use to free memory.
 * calloc ()
 * function to use for allocating zero-filled memory.
 * try_malloc ()
 * function to use for allocating memory without a default error handler.
 * try_realloc ()
 * function to use for reallocating memory without a default error handler.
 */
public struct GMemVTable
{
	extern(C) void* function(gsize nBytes) malloc;
	extern(C) void* function(void* mem, gsize nBytes) realloc;
	extern(C) void function(void* mem) free;
	/+* optional; set to NULL if not used ! +/
	extern(C) void* function(gsize nBlocks, gsize nBlockBytes) calloc;
	extern(C) void* function(gsize nBytes) tryMalloc;
	extern(C) void* function(void* mem, gsize nBytes) tryRealloc;
}


/**
 * Main Gtk struct.
 * A data structure representing an IO Channel. The fields should be
 * considered private and should only be accessed with the following
 * functions.
 */
public struct GIOChannel{}


/**
 * A table of functions used to handle different types of GIOChannel
 * in a generic way.
 * io_read ()
 * reads raw bytes from the channel. This is called from
 * various functions such as g_io_channel_read_chars() to
 * read raw bytes from the channel. Encoding and buffering
 * issues are dealt with at a higher level.
 * io_write ()
 * writes raw bytes to the channel. This is called from
 * various functions such as g_io_channel_write_chars() to
 * write raw bytes to the channel. Encoding and buffering
 * issues are dealt with at a higher level.
 * io_seek ()
 * (optional) seeks the channel. This is called from
 * g_io_channel_seek() on channels that support it.
 * io_close ()
 * closes the channel. This is called from
 * g_io_channel_close() after flushing the buffers.
 * io_create_watch ()
 * creates a watch on the channel. This call
 * corresponds directly to g_io_create_watch().
 * io_free ()
 * called from g_io_channel_unref() when the channel needs to
 * be freed. This function must free the memory associated
 * with the channel, including freeing the GIOChannel
 * structure itself. The channel buffers have been flushed
 * and possibly io_close has been called by the time this
 * function is called.
 * io_set_flags ()
 * sets the GIOFlags on the channel. This is called
 * from g_io_channel_set_flags() with all flags except
 * for G_IO_FLAG_APPEND and G_IO_FLAG_NONBLOCK masked
 * out.
 * io_get_flags ()
 * gets the GIOFlags for the channel. This function
 * need only return the G_IO_FLAG_APPEND and
 * G_IO_FLAG_NONBLOCK flags; g_io_channel_get_flags()
 * automatically adds the others as appropriate.
 */
public struct GIOFuncs
{
	extern(C) GIOStatus function(GIOChannel* channel, char* buf, gsize count, gsize* bytesRead, GError** err) ioRead;
	extern(C) GIOStatus function(GIOChannel* channel, char* buf, gsize count, gsize* bytesWritten, GError** err) ioWrite;
	extern(C) GIOStatus function(GIOChannel* channel, long offset, GSeekType type, GError** err) ioSeek;
	extern(C) GIOStatus function(GIOChannel* channel, GError** err) ioClose;
	extern(C) GSource* function(GIOChannel* channel, GIOCondition condition) ioCreateWatch;
	extern(C) void function(GIOChannel* channel) ioFree;
	extern(C) GIOStatus function(GIOChannel* channel, GIOFlags flags, GError** err) ioSetFlags;
	extern(C) GIOFlags function(GIOChannel* channel) ioGetFlags;
}


/**
 * Main Gtk struct.
 * The GError structure contains
 * information about an error that has occurred.
 * GQuark domain;
 * error domain, e.g. G_FILE_ERROR
 * gint code;
 * error code, e.g. G_FILE_ERROR_NOENT
 * gchar *message;
 * human-readable informative error message
 */
public struct GError
{
	GQuark domain;
	int code;
	char *message;
}


public struct GIConv{}


/**
 * Main Gtk struct.
 * An opaque structure representing a checksumming operation.
 * To create a new GChecksum, use g_checksum_new(). To free
 * a GChecksum, use g_checksum_free().
 * Since 2.16
 */
public struct GChecksum{}


/**
 * Main Gtk struct.
 * An opaque structure representing a HMAC operation.
 * To create a new GHmac, use g_hmac_new(). To free
 * a GHmac, use g_hmac_unref().
 * Since 2.30
 */
public struct GHmac{}


/**
 * Represents a precise time, with seconds and microseconds.
 * Similar to the struct timeval returned by
 * the gettimeofday() UNIX system call.
 * GLib is attempting to unify around the use of 64bit integers to
 * represent microsecond-precision time. As such, this type will be
 * removed from a future version of GLib.
 * glong tv_sec;
 * seconds
 * glong tv_usec;
 * microseconds
 */
public struct GTimeVal
{
	glong tvSec;
	glong tvUsec;
}


/**
 * Represents a day between January 1, Year 1 and a few thousand years in
 * the future. None of its members should be accessed directly. If the
 * GDate is obtained from g_date_new(), it will
 * be safe to mutate but invalid and thus not safe for calendrical
 * computations. If it's declared on the stack, it will contain garbage
 * so must be initialized with g_date_clear(). g_date_clear() makes the
 * date invalid but sane. An invalid date doesn't represent a day, it's
 * "empty." A date becomes valid after you set it to a Julian day or you
 * set a day, month, and year.
 * guint julian_days : 32;
 * the Julian representation of the date
 * guint julian : 1;
 * this bit is set if julian_days is valid
 * guint dmy : 1;
 * this is set if day, month and year are valid
 * guint day : 6;
 * the day of the day-month-year representation of the date,
 * as a number between 1 and 31
 * guint month : 4;
 * the day of the day-month-year representation of the date,
 * as a number between 1 and 12
 * guint year : 16;
 * the day of the day-month-year representation of the date
 */
public struct GDate
{
	uint bitfield0;
	//uint julianDays : 32;
	/+* julian days representation - we use a
	 * bitfield hoping that 64 bit platforms
	 * will pack this whole struct inn one big
	 * int
	+/
	uint bitfield1;
	//uint julian : 1; /+* julian is valid +/
	//uint dmy : 1; /+* dmy is valid +/
	/+* DMY representation +/
	//uint day : 6;
	//uint month : 4;
	//uint year : 16;
}


/**
 * Main Gtk struct.
 * GDateTime is an opaque structure whose members cannot be accessed
 * directly.
 * Since 2.26
 */
public struct GTimeZone{}


/**
 * Main Gtk struct.
 * GDateTime is an opaque structure whose members
 * cannot be accessed directly.
 * Since 2.26
 */
public struct GDateTime{}


/**
 * Main Gtk struct.
 * The GRand struct is an opaque data structure. It should only be
 * accessed through the g_rand_* functions.
 */
public struct GRand{}


/**
 * Associates a string with a bit flag.
 * Used in g_parse_debug_string().
 * const gchar *key;
 * the string
 * guint value;
 * the flag
 */
public struct GDebugKey
{
	char *key;
	uint value;
}


/**
 * Main Gtk struct.
 * The data structure representing a lexical scanner.
 * You should set input_name after creating the scanner, since
 * it is used by the default message handler when displaying
 * warnings and errors. If you are scanning a file, the filename
 * would be a good choice.
 * The user_data and max_parse_errors fields are not used.
 * If you need to associate extra data with the scanner you
 * can place them here.
 * If you want to use your own message handler you can set the
 * msg_handler field. The type of the message handler function
 * is declared by GScannerMsgFunc.
 * gpointer user_data;
 * unused
 * guint max_parse_errors;
 * unused
 * guint parse_errors;
 * g_scanner_error() increments this field
 * const gchar *input_name;
 * name of input stream, featured by the default message handler
 * GData *qdata;
 * quarked data
 * GScannerConfig *config;
 * link into the scanner configuration
 * GTokenType token;
 * token parsed by the last g_scanner_get_next_token()
 * GTokenValue value;
 * value of the last token from g_scanner_get_next_token()
 * guint line;
 * line number of the last token from g_scanner_get_next_token()
 * guint position;
 * char number of the last token from g_scanner_get_next_token()
 * GTokenType next_token;
 * token parsed by the last g_scanner_peek_next_token()
 * GTokenValue next_value;
 * value of the last token from g_scanner_peek_next_token()
 * guint next_line;
 * line number of the last token from g_scanner_peek_next_token()
 * guint next_position;
 * char number of the last token from g_scanner_peek_next_token()
 * GScannerMsgFunc msg_handler;
 * handler function for _warn and _error
 */
public struct GScanner
{
	/+* unused fields +/
	void* userData;
	uint maxParseErrors;
	/+* error() increments this field +/
	uint parseErrors;
	/+* name of input stream, featured by the defaulx message handler +/
	char *inputName;
	/+* quarked data +/
	GData *qdata;
	/+* link into the scanner configuration +/
	GScannerConfig *config;
	/+* fields filled inn after getNextToken() +/
	GTokenType token;
	GTokenValue value;
	uint line;
	uint position;
	/+* fields filled inn after peekNextToken() +/
	GTokenType nextToken;
	GTokenValue nextValue;
	uint nextLine;
	uint nextPosition;
	/+* handler funct for _Warn and _Error +/
	GScannerMsgFunc msgHandler;
}


/**
 * Specifies the GScanner parser configuration. Most settings can
 * be changed during the parsing phase and will affect the lexical
 * parsing of the next unpeeked token.
 * gchar *cset_skip_characters;
 * specifies which characters should be skipped
 * by the scanner (the default is the whitespace characters: space,
 * tab, carriage-return and line-feed).
 * gchar *cset_identifier_first;
 * specifies the characters which can start
 * identifiers (the default is G_CSET_a_2_z, "_", and G_CSET_A_2_Z).
 * gchar *cset_identifier_nth;
 * specifies the characters which can be used
 * in identifiers, after the first character (the default is
 * G_CSET_a_2_z, "_0123456789", G_CSET_A_2_Z, G_CSET_LATINS,
 * G_CSET_LATINC).
 * gchar *cpair_comment_single;
 * specifies the characters at the start and
 * end of single-line comments. The default is "#\n" which means
 * that single-line comments start with a '#' and continue until
 * a '\n' (end of line).
 * guint case_sensitive : 1;
 * specifies if symbols are case sensitive (the
 * default is FALSE).
 * guint skip_comment_multi : 1;
 * specifies if multi-line comments are skipped
 * and not returned as tokens (the default is TRUE).
 * guint skip_comment_single : 1;
 * specifies if single-line comments are skipped
 * and not returned as tokens (the default is TRUE).
 * guint scan_comment_multi : 1;
 * specifies if multi-line comments are recognized
 * (the default is TRUE).
 * guint scan_identifier : 1;
 * specifies if identifiers are recognized (the
 * default is TRUE).
 * guint scan_identifier_1char : 1;
 * specifies if single-character
 * identifiers are recognized (the default is FALSE).
 * guint scan_identifier_NULL : 1;
 * specifies if NULL is reported as
 * G_TOKEN_IDENTIFIER_NULL (the default is FALSE).
 * guint scan_symbols : 1;
 * specifies if symbols are recognized (the default
 * is TRUE).
 * guint scan_binary : 1;
 * specifies if binary numbers are recognized (the
 * default is FALSE).
 * guint scan_octal : 1;
 * specifies if octal numbers are recognized (the
 * default is TRUE).
 * guint scan_float : 1;
 * specifies if floating point numbers are recognized
 * (the default is TRUE).
 * guint scan_hex : 1;
 * specifies if hexadecimal numbers are recognized (the
 * default is TRUE).
 * guint scan_hex_dollar : 1;
 * specifies if '$' is recognized as a prefix for
 * hexadecimal numbers (the default is FALSE).
 * guint scan_string_sq : 1;
 * specifies if strings can be enclosed in single
 * quotes (the default is TRUE).
 * guint scan_string_dq : 1;
 * specifies if strings can be enclosed in double
 * quotes (the default is TRUE).
 * guint numbers_2_int : 1;
 * specifies if binary, octal and hexadecimal numbers
 * are reported as G_TOKEN_INT (the default is TRUE).
 * guint int_2_float : 1;
 * specifies if all numbers are reported as G_TOKEN_FLOAT
 * (the default is FALSE).
 * guint identifier_2_string : 1;
 * specifies if identifiers are reported as strings
 * (the default is FALSE).
 * guint char_2_token : 1;
 * specifies if characters are reported by setting
 * token = ch or as G_TOKEN_CHAR (the default
 * is TRUE).
 * guint symbol_2_token : 1;
 * specifies if symbols are reported by setting
 * token = v_symbol or as G_TOKEN_SYMBOL (the
 * default is FALSE).
 * guint scope_0_fallback : 1;
 * specifies if a symbol is searched for in the
 * default scope in addition to the current scope (the default is FALSE).
 * guint store_int64 : 1;
 * use value.v_int64 rather than v_int
 */
public struct GScannerConfig
{
	/+* Character sets
	+/
	char *csetSkipCharacters; /+* default: " \t\n" +/
	char *csetIdentifierFirst;
	char *csetIdentifierNth;
	char *cpairCommentSingle; /+* default: "#\n" +/
	/+* Should symbol lookup work case sensitive?
	+/
	uint bitfield0;
	//uint caseSensitive : 1;
	/+* Boolean values to be adjusted "on the fly"
	 * to configure scanning behaviour.
	+/
	//uint skipCommentMulti : 1; /+* C like comment +/
	//uint skipCommentSingle : 1; /+* single line comment +/
	//uint scanCommentMulti : 1; /+* scan multi line comments? +/
	//uint scanIdentifier : 1;
	//uint scanIdentifier1char : 1;
	//uint scanIdentifierNULL : 1;
	//uint scanSymbols : 1;
	//uint scanBinary : 1;
	//uint scanOctal : 1;
	//uint scanFloat : 1;
	//uint scanHex : 1; /+* `0x0ff0' +/
	//uint scanHexDollar : 1; /+* `$0ff0' +/
	//uint scanStringSq : 1; /+* string: 'anything' +/
	//uint scanStringDq : 1; /+* string: "\\-escapes!\n" +/
	//uint numbers2_Int : 1; /+* bin, octal, hex => int +/
	//uint int2_Float : 1; /+* int => G_TOKEN_FLOAT? +/
	//uint identifier2_String : 1;
	//uint char2_Token : 1; /+* return G_TOKEN_CHAR? +/
	//uint symbol2_Token : 1;
	//uint scope0_Fallback : 1; /+* try scop 0 on lookups? +/
	//uint storeInt64 : 1; /+* use value.vInt64 rather than vInt +/
}


/**
 * Main Gtk struct.
 * Opaque datatype that records a start time.
 */
public struct GTimer{}


/**
 * An opaque structure representing an opened directory.
 */
public struct GDir{}


/**
 * The GMappedFile represents a file mapping created with
 * g_mapped_file_new(). It has only private members and should
 * not be accessed directly.
 */
public struct GMappedFile{}


/**
 * A type corresponding to the appropriate struct type for the stat
 * system call, depending on the platform and/or compiler being used.
 * See g_stat() for more information.
 */
public struct GStatBuf{}


/**
 * Main Gtk struct.
 * A GOptionContext struct defines which options
 * are accepted by the commandline option parser. The struct has only private
 * fields and should not be directly accessed.
 */
public struct GOptionContext{}


/**
 * A GOptionEntry defines a single option.
 * To have an effect, they must be added to a GOptionGroup with
 * g_option_context_add_main_entries() or g_option_group_add_entries().
 * const gchar *long_name;
 * The long name of an option can be used to specify it
 * in a commandline as --long_name. Every
 * option must have a long name. To resolve conflicts if multiple
 * option groups contain the same long name, it is also possible to
 * specify the option as
 * --groupname-long_name.
 * gchar short_name;
 * If an option has a short name, it can be specified
 * -short_name in a commandline. short_name must be
 * a printable ASCII character different from '-', or zero if the option has no
 * short name.
 * gint flags;
 * Flags from GOptionFlags.
 * GOptionArg arg;
 * The type of the option, as a GOptionArg.
 * gpointer arg_data;
 * If the arg type is G_OPTION_ARG_CALLBACK, then arg_data must
 * point to a GOptionArgFunc callback function, which will be called to handle
 * the extra argument. Otherwise, arg_data is a pointer to a location to store
 * the value, the required type of the location depends on the arg type:
 * G_OPTION_ARG_NONE
 * gboolean
 * G_OPTION_ARG_STRING
 * gchar*
 * G_OPTION_ARG_INT
 * gint
 * G_OPTION_ARG_FILENAME
 * gchar*
 * G_OPTION_ARG_STRING_ARRAY
 * gchar**
 * G_OPTION_ARG_FILENAME_ARRAY
 * gchar**
 * G_OPTION_ARG_DOUBLE
 * gdouble
 * If arg type is G_OPTION_ARG_STRING or G_OPTION_ARG_FILENAME the location
 * will contain a newly allocated string if the option was given. That string
 * needs to be freed by the callee using g_free(). Likewise if arg type is
 * G_OPTION_ARG_STRING_ARRAY or G_OPTION_ARG_FILENAME_ARRAY, the data should
 * be freed using g_strfreev().
 * const gchar *description;
 * the description for the option in --help
 * output. The description is translated using the translate_func of the
 * group, see g_option_group_set_translation_domain().
 * const gchar *arg_description;
 * The placeholder to use for the extra argument parsed
 * by the option in --help
 * output. The arg_description is translated using the translate_func of the
 * group, see g_option_group_set_translation_domain().
 */
public struct GOptionEntry
{
	char *longName;
	char shortName;
	int flags;
	GOptionArg arg;
	void* argData;
	char *description;
	char *argDescription;
}


/**
 * A GOptionGroup struct defines the options in a single
 * group. The struct has only private fields and should not be directly accessed.
 * All options in a group share the same translation function. Libraries which
 * need to parse commandline options are expected to provide a function for
 * getting a GOptionGroup holding their options, which
 * the application can then add to its GOptionContext.
 */
public struct GOptionGroup{}


/**
 * Main Gtk struct.
 * A GPatternSpec is the 'compiled' form of a
 * pattern. This structure is opaque and its fields cannot be accessed
 * directly.
 */
public struct GPatternSpec{}


/**
 * Main Gtk struct.
 * A GRegex is the "compiled" form of a regular expression pattern. This
 * structure is opaque and its fields cannot be accessed directly.
 * Since 2.14
 */
public struct GRegex{}


public struct GMatchInfo{}


/**
 * Main Gtk struct.
 * A parse context is used to parse a stream of bytes that
 * you expect to contain marked-up text.
 * See g_markup_parse_context_new(), GMarkupParser, and so
 * on for more details.
 */
public struct GMarkupParseContext{}


/**
 * Any of the fields in GMarkupParser can be NULL, in which case they
 * will be ignored. Except for the error function, any of these callbacks
 * can set an error; in particular the G_MARKUP_ERROR_UNKNOWN_ELEMENT,
 * G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE, and G_MARKUP_ERROR_INVALID_CONTENT
 * errors are intended to be set from these callbacks. If you set an error
 * from a callback, g_markup_parse_context_parse() will report that error
 * back to its caller.
 * start_element ()
 * Callback to invoke when the opening tag of an element
 * is seen.
 * end_element ()
 * Callback to invoke when the closing tag of an element
 * is seen. Note that this is also called for empty tags like
 * <empty/>.
 * text ()
 * Callback to invoke when some text is seen (text is always
 * inside an element). Note that the text of an element may be spread
 * over multiple calls of this function. If the
 * G_MARKUP_TREAT_CDATA_AS_TEXT flag is set, this function is also
 * called for the content of CDATA marked sections.
 * passthrough ()
 * Callback to invoke for comments, processing instructions
 * and doctype declarations; if you're re-writing the parsed document,
 * write the passthrough text back out in the same position. If the
 * G_MARKUP_TREAT_CDATA_AS_TEXT flag is not set, this function is also
 * called for CDATA marked sections.
 * error ()
 * Callback to invoke when an error occurs.
 */
public struct GMarkupParser
{
	/+* Called for open tags <foo bar="baz"> +/
	extern(C) void function(GMarkupParseContext* context, char* elementName, char** attributeNames, char** attributeValues, void* userData, GError** error) startElement;
	/+* Called for close tags </foo> +/
	extern(C) void function(GMarkupParseContext* context, char* elementName, void* userData, GError** error) endElement;
	/+* Called for character data +/
	/+* text is not nul-terminated +/
	extern(C) void function(GMarkupParseContext* context, char* text, gsize textLen, void* userData, GError** error) text;
	/+* Called for strings that should be re-saved verbatim inn this same
	 * position, but are not otherwise interpretable. At the moment
	 * this includes comments and processing instructions.
	+/
	/+* text is not nul-terminated. +/
	extern(C) void function(GMarkupParseContext* context, char* passthroughText, gsize textLen, void* userData, GError** error) passthrough;
	/+* Called on error, including one set by other
	 * methods inn the vtable. The GError should not be freed.
	+/
	extern(C) void function(GMarkupParseContext* context, GError* error, void* userData) error;
}


/**
 * Main Gtk struct.
 * The GKeyFile struct contains only private data
 * and should not be accessed directly.
 */
public struct GKeyFile{}


/**
 * Main Gtk struct.
 * The GBookmarkFile struct contains only
 * private data and should not be directly accessed.
 */
public struct GBookmarkFile{}


/**
 * Main Gtk struct.
 * The GList struct is used for each element in a doubly-linked list.
 * gpointer data;
 * holds the element's data, which can be a pointer to any kind
 * of data, or any integer value using the Type Conversion
 * Macros.
 * GList *next;
 * contains the link to the next element in the list.
 * GList *prev;
 * contains the link to the previous element in the list.
 */
public struct GList
{
	void* data;
	GList *next;
	GList *prev;
}


/**
 * Main Gtk struct.
 * The GSList struct is used for each element in the singly-linked
 * list.
 * gpointer data;
 * holds the element's data, which can be a pointer to any kind
 * of data, or any integer value using the Type Conversion
 * Macros.
 * GSList *next;
 * contains the link to the next element in the list.
 */
public struct GSList
{
	void* data;
	GSList *next;
}


/**
 * Main Gtk struct.
 * Contains the public fields of a
 * Queue.
 * GList *head;
 * a pointer to the first element of the queue
 * GList *tail;
 * a pointer to the last element of the queue
 * guint length;
 * the number of elements in the queue
 */
public struct GQueue
{
	GList *head;
	GList *tail;
	uint length;
}


/**
 * Main Gtk struct.
 * The GSequence struct is an opaque data type representing a
 * Sequence data type.
 */
public struct GSequence{}


/**
 * The GSequenceIter struct is an opaque data type representing an
 * iterator pointing into a GSequence.
 */
public struct GSequenceIter{}


/**
 * Main Gtk struct.
 * Each piece of memory that is pushed onto the stack
 * is cast to a GTrashStack*.
 * GTrashStack *next;
 * pointer to the previous element of the stack,
 * gets stored in the first sizeof (gpointer)
 * bytes of the element
 */
public struct GTrashStack
{
	GTrashStack *next;
}


/**
 * Main Gtk struct.
 * The GHashTable struct is an opaque data structure to represent a
 * Hash Table. It should only be
 * accessed via the following functions.
 */
public struct GHashTable{}


/**
 * A GHashTableIter structure represents an iterator that can be used
 * to iterate over the elements of a GHashTable. GHashTableIter
 * structures are typically allocated on the stack and then initialized
 * with g_hash_table_iter_init().
 */
public struct GHashTableIter{}


/**
 * Main Gtk struct.
 * The GString struct contains the public fields of a GString.
 * gchar *str;
 * points to the character data. It may move as text is added.
 * The str field is null-terminated and so
 * can be used as an ordinary C string.
 * gsize len;
 * contains the length of the string, not including the
 * terminating nul byte.
 * gsize allocated_len;
 * the number of bytes that can be stored in the
 * string before it needs to be reallocated. May be larger than len.
 */
public struct GString
{
	char *str;
	gsize len;
	gsize allocatedLen;
}


/**
 * Main Gtk struct.
 * An opaque data structure representing String Chunks.
 * It should only be accessed by using the following functions.
 */
public struct GStringChunk{}


/**
 * Main Gtk struct.
 * Contains the public fields of an Array.
 * gchar *data;
 * a pointer to the element data. The data may be moved as
 * elements are added to the GArray.
 * guint len;
 * the number of elements in the GArray not including the
 * possible terminating zero element.
 */
public struct GArray
{
	char *data;
	uint len;
}


/**
 * Main Gtk struct.
 * Contains the public fields of a pointer array.
 * gpointer *pdata;
 * points to the array of pointers, which may be moved when the
 * array grows.
 * guint len;
 * number of pointers in the array.
 */
public struct GPtrArray
{
	void* *pdata;
	uint len;
}


/**
 * Main Gtk struct.
 * The GByteArray struct allows access to the
 * public fields of a GByteArray.
 * guint8 *data;
 * a pointer to the element data. The data may be moved as
 * elements are added to the GByteArray.
 * guint len;
 * the number of elements in the GByteArray.
 */
public struct GByteArray
{
	ubyte *data;
	uint len;
}


/**
 * A simple refcounted data type representing an immutable byte sequence
 * from an unspecified origin.
 * The purpose of a GBytes is to keep the memory region that it holds
 * alive for as long as anyone holds a reference to the bytes. When
 * the last reference count is dropped, the memory is released. Multiple
 * unrelated callers can use byte data in the GBytes without coordinating
 * their activities, resting assured that the byte data will not change or
 * move while they hold a reference.
 * A GBytes can come from many different origins that may have
 * different procedures for freeing the memory region. Examples are
 * memory from g_malloc(), from memory slices, from a GMappedFile or
 * memory from other allocators.
 * GBytes work well as keys in GHashTable. Use g_bytes_equal() and
 * g_bytes_hash() as parameters to g_hash_table_new() or g_hash_table_new_full().
 * GBytes can also be used as keys in a GTree by passing the g_bytes_compare()
 * function to g_tree_new().
 * The data pointed to by this bytes must not be modified. For a mutable
 * array of bytes see GByteArray. Use g_bytes_unref_to_array() to create a
 * mutable array for a GBytes sequence. To create an immutable GBytes from
 * a mutable GByteArray, use the g_byte_array_free_to_bytes() function.
 * Since 2.32
 */
public struct GBytes{}


/**
 * Main Gtk struct.
 * The GTree struct is an opaque data
 * structure representing a Balanced Binary Tree. It
 * should be accessed only by using the following functions.
 */
public struct GTree{}


/**
 * Main Gtk struct.
 * The GNode struct represents one node in a
 * N-ary Tree. fields
 * gpointer data;
 * contains the actual data of the node.
 * GNode *next;
 * points to the node's next sibling (a sibling is another
 * GNode with the same parent).
 * GNode *prev;
 * points to the node's previous sibling.
 * GNode *parent;
 * points to the parent of the GNode, or is NULL if the
 * GNode is the root of the tree.
 * GNode *children;
 * points to the first child of the GNode. The other
 * children are accessed by using the next pointer of each
 * child.
 */
public struct GNode
{
	void* data;
	GNode *next;
	GNode *prev;
	GNode *parent;
	GNode *children;
}


/**
 * Main Gtk struct.
 * The GData struct is an opaque data structure to represent a Keyed Data List. It should
 * only be accessed via the following functions.
 */
public struct GData{}


/**
 * Main Gtk struct.
 * A type in the GVariant type system.
 * Two types may not be compared by value; use g_variant_type_equal() or
 * g_variant_type_is_subtype_of(). May be copied using
 * g_variant_type_copy() and freed using g_variant_type_free().
 */
public struct GVariantType{}


/**
 * Main Gtk struct.
 * GVariant is an opaque data structure and can only be accessed
 * using the following functions.
 * Since 2.24
 */
public struct GVariant{}


/**
 * GVariantIter is an opaque data structure and can only be accessed
 * using the following functions.
 */
public struct GVariantIter{}


/**
 * A utility type for constructing container-type GVariant instances.
 * This is an opaque structure and may only be accessed using the
 * following functions.
 * GVariantBuilder is not threadsafe in any way. Do not attempt to
 * access it from more than one thread.
 */
public struct GVariantBuilder{}


/**
 * Main Gtk struct.
 * Warning
 * GCache has been deprecated since version 2.32 and should not be used in newly-written code. Use a GHashTable instead
 * The GCache struct is an opaque data structure containing
 * information about a GCache. It should only be accessed via the
 * following functions.
 */
public struct GCache{}


/**
 * Main Gtk struct.
 * The GRelation struct is an opaque data structure to represent a
 * Relation. It should
 * only be accessed via the following functions.
 */
public struct GRelation{}


/**
 * The GTuples struct is used to return records (or tuples) from the
 * GRelation by g_relation_select(). It only contains one public
 * member - the number of records that matched. To access the matched
 * records, you must use g_tuples_index().
 * guint len;
 * the number of records that matched.
 */
public struct GTuples
{
	uint len;
}


/**
 * Main Gtk struct.
 * The data structure used for automatic completion.
 * GList *items;
 * list of target items (strings or data structures).
 * GCompletionFunc func;
 * function which is called to get the string associated with a
 * target item. It is NULL if the target items are strings.
 * gchar *prefix;
 * the last prefix passed to g_completion_complete() or
 * g_completion_complete_utf8().
 * GList *cache;
 * the list of items which begin with prefix.
 * GCompletionStrncmpFunc strncmp_func;
 * The function to use when comparing strings. Use
 * g_completion_set_compare() to modify this function.
 */
public struct GCompletion
{
	GList* items;
	GCompletionFunc func;
	char* prefix;
	GList* cache;
	GCompletionStrncmpFunc strncmpFunc;
}


/*
 * Checks the version of the GLib library that is being compiled
 * against.
 * $(DDOC_COMMENT example)
 * See glib_check_version() for a runtime check.
 * major :
 * the major version to check for
 * minor :
 * the minor version to check for
 * micro :
 * the micro version to check for
 * Returns :
 * TRUE if the version of the GLib header files
 * is the same as or newer than the passed-in version.
 */
// TODO
// #define GLIB_CHECK_VERSION(major,minor,micro)

/*
 * Warning
 * g_main_new has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_loop_new() instead
 * Creates a new GMainLoop for th default main context.
 * is_running :
 * set to TRUE to indicate that the loop is running. This
 * is not very important since calling g_main_run() will set this
 * to TRUE anyway.
 * Returns :
 * a new GMainLoop
 */
// TODO
// #define g_main_new(is_running)

/*
 * Warning
 * g_main_destroy has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_loop_unref() instead
 * Frees the memory allocated for the GMainLoop.
 * loop :
 * a GMainLoop
 */
// TODO
// #define g_main_destroy(loop)

/*
 * Warning
 * g_main_run has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_loop_run() instead
 * Runs a main loop until it stops running.
 * loop :
 * a GMainLoop
 */
// TODO
// #define g_main_run(loop)

/*
 * Warning
 * g_main_quit has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_loop_quit() instead
 * Stops the GMainLoop.
 * If g_main_run() was called to run the GMainLoop, it will now return.
 * loop :
 * a GMainLoop
 */
// TODO
// #define g_main_quit(loop)

/*
 * Warning
 * g_main_is_running has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_loop_is_running() instead
 * Checks if the main loop is running.
 * loop :
 * a GMainLoop
 * Returns :
 * TRUE if the main loop is running
 */
// TODO
// #define g_main_is_running(loop)

/*
 * Warning
 * g_main_iteration has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_context_iteration() instead.
 * Runs a single iteration for the default GMainContext.
 * may_block :
 * set to TRUE if it should block (i.e. wait) until an event
 * source becomes ready. It will return after an event source has been
 * processed. If set to FALSE it will return immediately if no event
 * source is ready to be processed.
 * Returns :
 * TRUE if more events are pending.
 */
// TODO
// #define g_main_iteration(may_block)

/*
 * Warning
 * g_main_set_poll_func has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_context_set_poll_func() again
 * Sets the function to use for the handle polling of file descriptors
 * for the default main context.
 * func :
 * the function to call to poll all file descriptors
 */
// TODO
// #define g_main_set_poll_func(func)

/*
 * Allocates n_structs elements of type struct_type.
 * The returned pointer is cast to a pointer to the given type.
 * If n_structs is 0 it returns NULL.
 * Care is taken to avoid overflow when calculating the size of the allocated block.
 * Since the returned pointer is already casted to the right type,
 * it is normally unnecessary to cast it explicitly, and doing
 * so might hide memory allocation errors.
 * struct_type :
 * the type of the elements to allocate
 * n_structs :
 * the number of elements to allocate
 * Returns :
 * a pointer to the allocated memory, cast to a pointer to struct_type
 */
// TODO
// #define g_new(struct_type, n_structs)

/*
 * Allocates n_structs elements of type struct_type, initialized to 0's.
 * The returned pointer is cast to a pointer to the given type.
 * If n_structs is 0 it returns NULL.
 * Care is taken to avoid overflow when calculating the size of the allocated block.
 * Since the returned pointer is already casted to the right type,
 * it is normally unnecessary to cast it explicitly, and doing
 * so might hide memory allocation errors.
 * struct_type :
 * the type of the elements to allocate.
 * n_structs :
 * the number of elements to allocate.
 * Returns :
 * a pointer to the allocated memory, cast to a pointer to struct_type.
 */
// TODO
// #define g_new0(struct_type, n_structs)

/*
 * Reallocates the memory pointed to by mem, so that it now has space for
 * n_structs elements of type struct_type. It returns the new address of
 * the memory, which may have been moved.
 * Care is taken to avoid overflow when calculating the size of the allocated block.
 * struct_type :
 * the type of the elements to allocate
 * mem :
 * the currently allocated memory
 * n_structs :
 * the number of elements to allocate
 * Returns :
 * a pointer to the new allocated memory, cast to a pointer to struct_type
 */
// TODO
// #define g_renew(struct_type, mem, n_structs)

/*
 * Attempts to allocate n_structs elements of type struct_type, and returns
 * NULL on failure. Contrast with g_new(), which aborts the program on failure.
 * The returned pointer is cast to a pointer to the given type.
 * The function returns NULL when n_structs is 0 of if an overflow occurs.
 * struct_type :
 * the type of the elements to allocate
 * n_structs :
 * the number of elements to allocate
 * Returns :
 * a pointer to the allocated memory, cast to a pointer to struct_type
 * Since 2.8
 */
// TODO
// #define g_try_new(struct_type, n_structs)

/*
 * Attempts to allocate n_structs elements of type struct_type, initialized
 * to 0's, and returns NULL on failure. Contrast with g_new0(), which aborts
 * the program on failure.
 * The returned pointer is cast to a pointer to the given type.
 * The function returns NULL when n_structs is 0 of if an overflow occurs.
 * struct_type :
 * the type of the elements to allocate
 * n_structs :
 * the number of elements to allocate
 * Returns :
 * a pointer to the allocated memory, cast to a pointer to struct_type
 * Since 2.8
 */
// TODO
// #define g_try_new0(struct_type, n_structs)

/*
 * Attempts to reallocate the memory pointed to by mem, so that it now has
 * space for n_structs elements of type struct_type, and returns NULL on
 * failure. Contrast with g_renew(), which aborts the program on failure.
 * It returns the new address of the memory, which may have been moved.
 * The function returns NULL if an overflow occurs.
 * struct_type :
 * the type of the elements to allocate
 * mem :
 * the currently allocated memory
 * n_structs :
 * the number of elements to allocate
 * Returns :
 * a pointer to the new allocated memory, cast to a pointer to struct_type
 * Since 2.8
 */
// TODO
// #define g_try_renew(struct_type, mem, n_structs)

/*
 * Allocates size bytes on the stack; these bytes will be freed when the current
 * stack frame is cleaned up. This macro essentially just wraps the alloca()
 * function present on most UNIX variants.
 * Thus it provides the same advantages and pitfalls as alloca():
 *  + alloca() is very fast, as on most systems it's implemented by just adjusting
 *  the stack pointer register.
 *  + It doesn't cause any memory fragmentation, within its scope, separate alloca()
 *  blocks just build up and are released together at function end.
 *  - Allocation sizes have to fit into the current stack frame. For instance in a
 *  threaded environment on Linux, the per-thread stack size is limited to 2 Megabytes,
 *  so be sparse with alloca() uses.
 *  - Allocation failure due to insufficient stack space is not indicated with a NULL
 *  return like e.g. with malloc(). Instead, most systems probably handle it the same
 *  way as out of stack space situations from infinite function recursion, i.e.
 *  with a segmentation fault.
 *  - Special care has to be taken when mixing alloca() with GNU C variable sized arrays.
 *  Stack space allocated with alloca() in the same scope as a variable sized array
 *  will be freed together with the variable sized array upon exit of that scope, and
 *  not upon exit of the enclosing function scope.
 * size :
 * number of bytes to allocate.
 * Returns :
 * space for size bytes, allocated on the stack
 */
// TODO
// #define g_alloca(size)

/*
 * Wraps g_alloca() in a more typesafe manner.
 * struct_type :
 * Type of memory chunks to be allocated
 * n_structs :
 * Number of chunks to be allocated
 * Returns :
 * Pointer to stack space for n_structs chunks of type struct_type
 */
// TODO
// #define g_newa(struct_type, n_structs)

/*
 * Copies a block of memory len bytes long, from src to dest.
 * The source and destination areas may overlap.
 * In order to use this function, you must include
 * string.h yourself, because this macro will
 * typically simply resolve to memmove() and GLib does not include
 * string.h for you.
 * dest :
 * the destination address to copy the bytes to.
 * src :
 * the source address to copy the bytes from.
 * len :
 * the number of bytes to copy.
 */
// TODO
// #define g_memmove(dest,src,len)

/*
 * A convenience macro to allocate a block of memory from the
 * slice allocator.
 * It calls g_slice_alloc() with sizeof (type)
 * and casts the returned pointer to a pointer of the given type,
 * avoiding a type cast in the source code.
 * Note that the underlying slice allocation mechanism can
 * be changed with the G_SLICE=always-malloc
 * environment variable.
 * type :
 * the type to allocate, typically a structure name
 * Returns :
 * a pointer to the allocated block, cast to a pointer to type
 * Since 2.10
 */
// TODO
// #define g_slice_new(type)

/*
 * A convenience macro to allocate a block of memory from the
 * slice allocator and set the memory to 0.
 * It calls g_slice_alloc0() with sizeof (type)
 * and casts the returned pointer to a pointer of the given type,
 * avoiding a type cast in the source code.
 * Note that the underlying slice allocation mechanism can
 * be changed with the G_SLICE=always-malloc
 * environment variable.
 * type :
 * the type to allocate, typically a structure name
 * Since 2.10
 */
// TODO
// #define g_slice_new0(type)

/*
 * A convenience macro to duplicate a block of memory using
 * the slice allocator.
 * It calls g_slice_copy() with sizeof (type)
 * and casts the returned pointer to a pointer of the given type,
 * avoiding a type cast in the source code.
 * Note that the underlying slice allocation mechanism can
 * be changed with the G_SLICE=always-malloc
 * environment variable.
 * type :
 * the type to duplicate, typically a structure name
 * mem :
 * the memory to copy into the allocated block
 * Returns :
 * a pointer to the allocated block, cast to a pointer to type
 * Since 2.14
 */
// TODO
// #define g_slice_dup(type, mem)

/*
 * A convenience macro to free a block of memory that has
 * been allocated from the slice allocator.
 * It calls g_slice_free1() using sizeof (type)
 * as the block size.
 * Note that the exact release behaviour can be changed with the
 * G_DEBUG=gc-friendly environment
 * variable, also see G_SLICE for
 * related debugging options.
 * type :
 * the type of the block to free, typically a structure name
 * mem :
 * a pointer to the block to free
 * Since 2.10
 */
// TODO
// #define g_slice_free(type, mem)

/*
 * Frees a linked list of memory blocks of structure type type.
 * The memory blocks must be equal-sized, allocated via
 * g_slice_alloc() or g_slice_alloc0() and linked together by
 * a next pointer (similar to GSList). The name of the
 * next field in type is passed as third argument.
 * Note that the exact release behaviour can be changed with the
 * G_DEBUG=gc-friendly environment
 * variable, also see G_SLICE for
 * related debugging options.
 * type :
 * the type of the mem_chain blocks
 * mem_chain :
 * a pointer to the first block of the chain
 * next :
 * the field name of the next pointer in type
 * Since 2.10
 * [1]
 * [Bonwick94] Jeff Bonwick, The slab allocator: An object-caching kernel
 * memory allocator. USENIX 1994, and
 * [Bonwick01] Bonwick and Jonathan Adams, Magazines and vmem: Extending the
 * slab allocator to many cpu's and arbitrary resources. USENIX 2001
 */
// TODO
// #define g_slice_free_chain(type, mem_chain, next)

/*
 * Verifies that the expression evaluates to TRUE. If the expression
 * evaluates to FALSE, a critical message is logged and the current
 * function returns. This can only be used in functions which do not
 * return a value.
 * If G_DISABLE_CHECKS is defined then the check is not performed. You
 * should therefore not depend on any side effects of expr.
 * expr :
 * the expression to check
 */
// TODO
// #define g_return_if_fail(expr)

/*
 * Verifies that the expression evaluates to TRUE. If the expression
 * evaluates to FALSE, a critical message is logged and val is
 * returned from the current function.
 * If G_DISABLE_CHECKS is defined then the check is not performed. You
 * should therefore not depend on any side effects of expr.
 * expr :
 * the expression to check
 * val :
 * the value to return from the current function
 * if the expression is not true
 */
// TODO
// #define g_return_val_if_fail(expr,val)

/*
 * Logs a critical message and returns val.
 * val :
 * the value to return from the current function
 */
// TODO
// #define g_return_val_if_reached(val)

/*
 * Logs a warning if the expression is not true.
 * expr :
 * the expression to check
 * Since 2.16
 */
// TODO
// #define g_warn_if_fail(expr)

/*
 * A convenience function/macro to log a normal message.
 * ... :
 * format string, followed by parameters to insert
 * into the format string (as with printf())
 */
// TODO
// #define g_message(...)

/*
 * A convenience function/macro to log a warning message.
 * You can make warnings fatal at runtime by setting the
 * G_DEBUG environment variable (see
 * Running GLib Applications).
 * ... :
 * format string, followed by parameters to insert
 * into the format string (as with printf())
 */
// TODO
// #define g_warning(...)

/*
 * Logs a "critical warning" (G_LOG_LEVEL_CRITICAL).
 * It's more or less application-defined what constitutes
 * a critical vs. a regular warning. You could call
 * g_log_set_always_fatal() to make critical warnings exit
 * the program, then use g_critical() for fatal errors, for
 * example.
 * You can also make critical warnings fatal at runtime by
 * setting the G_DEBUG environment variable (see
 * Running GLib Applications).
 * ... :
 * format string, followed by parameters to insert
 * into the format string (as with printf())
 */
// TODO
// #define g_critical(...)

/*
 * A convenience function/macro to log an error message.
 * Error messages are always fatal, resulting in a call to
 * abort() to terminate the application. This function will
 * result in a core dump; don't use it for errors you expect.
 * Using this function indicates a bug in your program, i.e.
 * an assertion failure.
 * ... :
 * format string, followed by parameters to insert
 * into the format string (as with printf())
 */
// TODO
// #define g_error(...)

/*
 * A convenience function/macro to log a debug message.
 * ... :
 * format string, followed by parameters to insert
 * into the format string (as with printf())
 * Since 2.6
 */
// TODO
// #define g_debug(...)

/*
 * Removes leading and trailing whitespace from a string.
 * See g_strchomp() and g_strchug().
 * string :
 * a string to remove the leading and trailing whitespace from
 * Returns :
 * string
 */
// TODO
// #define g_strstrip( string )

/*
 * Skips to the next character in a UTF-8 string. The string must be
 * valid; this macro is as fast as possible, and has no error-checking.
 * You would use this macro to iterate over a string character by
 * character. The macro returns the start of the next UTF-8 character.
 * Before using this macro, use g_utf8_validate() to validate strings
 * that may contain invalid UTF-8.
 * p :
 * Pointer to the start of a valid UTF-8 character
 */
// TODO
// #define g_utf8_next_char(p)

/*
 * Marks a string for translation, gets replaced with the translated string
 * at runtime.
 * String :
 * the string to be translated
 * Since 2.4
 */
// TODO
// #define _(String)

/*
 * Like _(), but handles context in message ids. This has the advantage
 * that the string can be adorned with a prefix to guarantee uniqueness
 * and provide context to the translator.
 * One use case given in the gettext manual is GUI translation, where one
 * could e.g. disambiguate two "Open" menu entries as "File|Open" and
 * "Printer|Open". Another use case is the string "Russian" which may
 * have to be translated differently depending on whether it's the name
 * of a character set or a language. This could be solved by using
 * "charset|Russian" and "language|Russian".
 * See the C_() macro for a different way to mark up translatable strings
 * with context.
 * Note
 * If you are using the Q_() macro, you need to make sure
 * that you pass --keyword=Q_ to xgettext when extracting
 * messages. If you are using GNU gettext >= 0.15, you can also use
 * --keyword=Q_:1g to let xgettext split the context
 * string off into a msgctxt line in the po file.
 * String :
 * the string to be translated, with a '|'-separated prefix
 * which must not be translated
 * Returns :
 * the translated message
 * Since 2.4
 */
// TODO
// #define Q_(String)

/*
 * Uses gettext to get the translation for String. Context is
 * used as a context. This is mainly useful for short strings which
 * may need different translations, depending on the context in which
 * they are used.
 * $(DDOC_COMMENT example)
 * Note
 * If you are using the C_() macro, you need to make sure
 * that you pass --keyword=C_:1c,2 to xgettext when
 * extracting messages. Note that this only works with GNU
 * gettext >= 0.15.
 * Context :
 * a message context, must be a string literal
 * String :
 * a message id, must be a string literal
 * Returns :
 * the translated message
 * Since 2.16
 */
// TODO
// #define C_(Context,String)

/*
 * Only marks a string for translation. This is useful in situations
 * where the translated strings can't be directly used, e.g. in string
 * array initializers. To get the translated string, call gettext()
 * at runtime.
 * $(DDOC_COMMENT example)
 * String :
 * the string to be translated
 * Since 2.4
 */
// TODO
// #define N_(String)

/*
 * Only marks a string for translation, with context.
 * This is useful in situations where the translated strings can't
 * be directly used, e.g. in string array initializers. To get the
 * translated string, you should call g_dpgettext2() at runtime.
 * $(DDOC_COMMENT example)
 * Note
 * If you are using the NC_() macro, you need to make sure
 * that you pass --keyword=NC_:1c,2 to xgettext when
 * extracting messages. Note that this only works with GNU gettext >= 0.15.
 * Intltool has support for the NC_() macro since version 0.40.1.
 * Context :
 * a message context, must be a string literal
 * String :
 * a message id, must be a string literal
 * Since 2.18
 */
// TODO
// #define NC_(Context, String)

/*
 * Returns a random gboolean from rand_. This corresponds to a
 * unbiased coin toss.
 * rand_ :
 * a GRand.
 * Returns :
 * a random gboolean.
 */
// TODO
// #define g_rand_boolean(rand_)

/*
 * Warning
 * g_scanner_add_symbol has been deprecated since version 2.2 and should not be used in newly-written code. Use g_scanner_scope_add_symbol() instead.
 * Adds a symbol to the default scope.
 * scanner :
 * a GScanner
 * symbol :
 * the symbol to add
 * value :
 * the value of the symbol
 */
// TODO
// #define g_scanner_add_symbol( scanner, symbol, value )

/*
 * Warning
 * g_scanner_remove_symbol has been deprecated since version 2.2 and should not be used in newly-written code. Use g_scanner_scope_remove_symbol() instead.
 * Removes a symbol from the default scope.
 * scanner :
 * a GScanner
 * symbol :
 * the symbol to remove
 */
// TODO
// #define g_scanner_remove_symbol( scanner, symbol )

/*
 * Warning
 * g_scanner_foreach_symbol has been deprecated since version 2.2 and should not be used in newly-written code. Use g_scanner_scope_foreach_symbol() instead.
 * Calls a function for each symbol in the default scope.
 * scanner :
 * a GScanner
 * func :
 * the function to call with each symbol
 * data :
 * data to pass to the function
 */
// TODO
// #define g_scanner_foreach_symbol( scanner, func, data )

/*
 * Warning
 * g_scanner_freeze_symbol_table has been deprecated since version 2.2 and should not be used in newly-written code. This macro does nothing.
 * There is no reason to use this macro, since it does nothing.
 * scanner :
 * a GScanner
 */
// TODO
// #define g_scanner_freeze_symbol_table(scanner)

/*
 * Warning
 * g_scanner_thaw_symbol_table has been deprecated since version 2.2 and should not be used in newly-written code. This macro does nothing.
 * There is no reason to use this macro, since it does nothing.
 * scanner :
 * a GScanner
 */
// TODO
// #define g_scanner_thaw_symbol_table(scanner)

/*
 */
// TODO
// # define G_WIN32_DLLMAIN_FOR_DLL_NAME(static, dll_name) Warning G_WIN32_DLLMAIN_FOR_DLL_NAME is deprecated and should not be used in newly-written code. On Windows, this macro defines a DllMain() function that stores the actual DLL name that the code being compiled will be included in. On non-Windows platforms, expands to nothing. static : empty or "static" dll_name : the name of the (pointer to the) char array where the DLL name will be stored. If this is used, you must also include windows.h. If you need a more complex DLL entry point function, you cannot use this

/*
 * A convenience macro to get the previous element in a GList.
 * list :
 * an element in a GList.
 * Returns :
 * the previous element, or NULL if there are no previous
 * elements.
 */
// TODO
// #define g_list_previous(list)

/*
 * A convenience macro to get the next element in a GList.
 * list :
 * an element in a GList.
 * Returns :
 * the next element, or NULL if there are no more elements.
 */
// TODO
// #define g_list_next(list)

/*
 * A convenience macro to get the next element in a GSList.
 * slist :
 * an element in a GSList.
 * Returns :
 * the next element, or NULL if there are no more elements.
 */
// TODO
// #define g_slist_next(slist)

/*
 * Warning
 * g_hash_table_freeze is deprecated and should not be used in newly-written code.
 * This function is deprecated and will be removed in the next major
 * release of GLib. It does nothing.
 * hash_table :
 * a GHashTable
 */
// TODO
// #define g_hash_table_freeze(hash_table)

/*
 * Warning
 * g_hash_table_thaw is deprecated and should not be used in newly-written code.
 * This function is deprecated and will be removed in the next major
 * release of GLib. It does nothing.
 * hash_table :
 * a GHashTable
 */
// TODO
// #define g_hash_table_thaw(hash_table)

/*
 * Adds the value on to the end of the array. The array will grow in
 * size automatically if necessary.
 * Note
 * g_array_append_val() is a macro which uses a reference
 * to the value parameter v. This means that you cannot use it with
 * literal values such as "27". You must use variables.
 * a :
 * a GArray.
 * v :
 * the value to append to the GArray.
 * Returns :
 * the GArray.
 */
// TODO
// #define g_array_append_val(a,v)

/*
 * Adds the value on to the start of the array. The array will grow in
 * size automatically if necessary.
 * This operation is slower than g_array_append_val() since the
 * existing elements in the array have to be moved to make space for
 * the new element.
 * Note
 * g_array_prepend_val() is a macro which uses a reference
 * to the value parameter v. This means that you cannot use it with
 * literal values such as "27". You must use variables.
 * a :
 * a GArray.
 * v :
 * the value to prepend to the GArray.
 * Returns :
 * the GArray.
 */
// TODO
// #define g_array_prepend_val(a,v)

/*
 * Inserts an element into an array at the given index.
 * Note
 * g_array_insert_val() is a macro which uses a reference
 * to the value parameter v. This means that you cannot use it with
 * literal values such as "27". You must use variables.
 * a :
 * a GArray.
 * i :
 * the index to place the element at.
 * v :
 * the value to insert into the array.
 * Returns :
 * the GArray.
 */
// TODO
// #define g_array_insert_val(a,i,v)

/*
 * Returns the element of a GArray at the given index. The return
 * value is cast to the given type.
 * $(DDOC_COMMENT example)
 * a :
 * a GArray.
 * t :
 * the type of the elements.
 * i :
 * the index of the element to return.
 * Returns :
 * the element of the GArray at the index given by i.
 */
// TODO
// #define g_array_index(a,t,i)

/*
 * Returns the pointer at the given index of the pointer array.
 * array :
 * a GPtrArray.
 * index_ :
 * the index of the pointer to return.
 * Returns :
 * the pointer at the given index.
 */
// TODO
// #define g_ptr_array_index(array,index_)

/*
 * Inserts a GNode as the last child of the given parent.
 * parent :
 * the GNode to place the new GNode under
 * node :
 * the GNode to insert
 * Returns :
 * the inserted GNode
 */
// TODO
// #define g_node_append(parent, node)

/*
 * Inserts a new GNode at the given position.
 * parent :
 * the GNode to place the new GNode under
 * position :
 * the position to place the new GNode at. If position is -1,
 * the new GNode is inserted as the last child of parent
 * data :
 * the data for the new GNode
 * Returns :
 * the new GNode
 */
// TODO
// #define g_node_insert_data(parent, position, data)

/*
 * Inserts a new GNode after the given sibling.
 * parent :
 * the GNode to place the new GNode under
 * sibling :
 * the sibling GNode to place the new GNode after
 * data :
 * the data for the new GNode
 * Returns :
 * the new GNode
 */
// TODO
// #define g_node_insert_data_after(parent, sibling, data)

/*
 * Inserts a new GNode before the given sibling.
 * parent :
 * the GNode to place the new GNode under
 * sibling :
 * the sibling GNode to place the new GNode before
 * data :
 * the data for the new GNode
 * Returns :
 * the new GNode
 */
// TODO
// #define g_node_insert_data_before(parent, sibling, data)

/*
 * Inserts a new GNode as the last child of the given parent.
 * parent :
 * the GNode to place the new GNode under
 * data :
 * the data for the new GNode
 * Returns :
 * the new GNode
 */
// TODO
// #define g_node_append_data(parent, data)

/*
 * Inserts a new GNode as the first child of the given parent.
 * parent :
 * the GNode to place the new GNode under
 * data :
 * the data for the new GNode
 * Returns :
 * the new GNode
 */
// TODO
// #define g_node_prepend_data(parent, data)

/*
 * Gets the first child of a GNode.
 * node :
 * a GNode
 * Returns :
 * the first child of node, or NULL if node is NULL
 * or has no children
 */
// TODO
// #define g_node_first_child(node)

/*
 * Gets the next sibling of a GNode.
 * node :
 * a GNode
 * Returns :
 * the next sibling of node, or NULL if node is the last node
 * or NULL
 */
// TODO
// #define g_node_next_sibling(node)

/*
 * Gets the previous sibling of a GNode.
 * node :
 * a GNode
 * Returns :
 * the previous sibling of node, or NULL if node is the first
 * node or NULL
 */
// TODO
// #define g_node_prev_sibling(node)

/*
 * Returns TRUE if a GNode is a leaf node.
 * node :
 * a GNode
 * Returns :
 * TRUE if the GNode is a leaf node
 * (i.e. it has no children)
 */
// TODO
// #define	 G_NODE_IS_LEAF(node) (((GNode*) (node))->children == NULL)

/*
 * Returns TRUE if a GNode is the root of a tree.
 * node :
 * a GNode
 * Returns :
 * TRUE if the GNode is the root of a tree
 * (i.e. it has no parent or siblings)
 */
// TODO
// #define G_NODE_IS_ROOT(node)

/*
 * A convenience macro which defines a function returning the
 * GQuark for the name QN. The function will be named
 * q_n_quark().
 * Note that the quark name will be stringified automatically in the
 * macro, so you shouldn't use double quotes.
 * QN :
 * the name to return a GQuark for
 * q_n :
 * prefix for the function name
 * Since 2.34
 */
// TODO
// #define G_DEFINE_QUARK(QN, q_n)

/*
 * Sets the data corresponding to the given GQuark id. Any previous
 * data with the same key is removed, and its destroy function is
 * called.
 * dl :
 * a datalist.
 * q :
 * the GQuark to identify the data element.
 * d :
 * the data element, or NULL to remove any previous element
 * corresponding to q. [allow-none]
 */
// TODO
// #define g_datalist_id_set_data(dl, q, d)

/*
 * Removes an element, using its GQuark identifier.
 * dl :
 * a datalist.
 * q :
 * the GQuark identifying the data element.
 */
// TODO
// #define g_datalist_id_remove_data(dl, q)

/*
 * Sets the data element corresponding to the given string identifier.
 * dl :
 * a datalist.
 * k :
 * the string to identify the data element.
 * d :
 * the data element, or NULL to remove any previous element
 * corresponding to k. [allow-none]
 */
// TODO
// #define g_datalist_set_data(dl, k, d)

/*
 * Sets the data element corresponding to the given string identifier,
 * and the function to be called when the data element is removed.
 * dl :
 * a datalist.
 * k :
 * the string to identify the data element.
 * d :
 * the data element, or NULL to remove any previous element
 * corresponding to k. [allow-none]
 * f :
 * the function to call when the data element is removed. This
 * function will be called with the data element and can be used to
 * free any memory allocated for it. If d is NULL, then f must
 * also be NULL.
 */
// TODO
// #define g_datalist_set_data_full(dl, k, d, f)

/*
 * Removes an element using its string identifier. The data element's
 * destroy function is called if it has been set.
 * dl :
 * a datalist.
 * k :
 * the string identifying the data element.
 */
// TODO
// #define g_datalist_remove_data(dl, k)

/*
 * Removes an element, without calling its destroy notifier.
 * dl :
 * a datalist.
 * k :
 * the string identifying the data element.
 */
// TODO
// #define g_datalist_remove_no_notify(dl, k)

/*
 * Sets the data element associated with the given GQuark id. Any
 * previous data with the same key is removed, and its destroy function
 * is called.
 * l :
 * the location identifying the dataset.
 * k :
 * the GQuark id to identify the data element.
 * d :
 * the data element.
 */
// TODO
// #define g_dataset_id_set_data(l, k, d)

/*
 * Removes a data element from a dataset. The data element's destroy
 * function is called if it has been set.
 * l :
 * the location identifying the dataset.
 * k :
 * the GQuark id identifying the data element.
 */
// TODO
// #define g_dataset_id_remove_data(l, k)

/*
 * Sets the data corresponding to the given string identifier.
 * l :
 * the location identifying the dataset.
 * k :
 * the string to identify the data element.
 * d :
 * the data element.
 */
// TODO
// #define g_dataset_set_data(l, k, d)

/*
 * Sets the data corresponding to the given string identifier, and the
 * function to call when the data element is destroyed.
 * l :
 * the location identifying the dataset.
 * k :
 * the string to identify the data element.
 * d :
 * the data element.
 * f :
 * the function to call when the data element is removed. This
 * function will be called with the data element and can be used to
 * free any memory allocated for it.
 */
// TODO
// #define g_dataset_set_data_full(l, k, d, f)

/*
 * Gets the data element corresponding to a string.
 * l :
 * the location identifying the dataset.
 * k :
 * the string identifying the data element.
 * Returns :
 * the data element corresponding to the string, or NULL if
 * it is not found.
 */
// TODO
// #define g_dataset_get_data(l, k)

/*
 * Removes a data element corresponding to a string. Its destroy
 * function is called if it has been set.
 * l :
 * the location identifying the dataset.
 * k :
 * the string identifying the data element.
 */
// TODO
// #define g_dataset_remove_data(l, k)

/*
 * Removes an element, without calling its destroy notifier.
 * l :
 * the location identifying the dataset.
 * k :
 * the string identifying the data element.
 */
// TODO
// #define g_dataset_remove_no_notify(l, k)

/*
 */
// TODO
// # define G_VARIANT_TYPE(type_string) (g_variant_type_checked_ ((type_string))) Converts a string to a const GVariantType. Depending on the current debugging level, this function may perform a runtime check to ensure that string is a valid GVariant type string. It is always a programmer error to use this macro with an invalid type string. If in doubt, use g_variant_type_string_is_valid() to check if the string is valid. Since 2.24 type_string : a well-formed GVariantType type string

/*
 * Specifies the type of function passed to g_main_context_set_poll_func().
 * The semantics of the function should match those of the poll() system call.
 * ufds :
 * an array of GPollFD elements
 * nfsd :
 * the number of elements in ufds
 * timeout_ :
 * the maximum time to wait for an event of the file descriptors.
 * A negative value indicates an infinite timeout.
 * Returns :
 * the number of GPollFD elements which have events or errors
 * reported, or -1 if an error occurred.
 */
// gint (*GPollFunc) (GPollFD *ufds,  guint nfsd,  gint timeout_);
public alias extern(C) int function(GPollFD* ufds, uint nfsd, int timeout) GPollFunc;

/*
 * Prototype of a GChildWatchSource callback, called when a child
 * process has exited. To interpret status, see the documentation
 * for g_spawn_check_exit_status().
 * pid :
 * the process id of the child process
 * status :
 * Status information about the child process, encoded
 * in a platform-specific manner
 * user_data :
 * user data passed to g_child_watch_add()
 */
// void (*GChildWatchFunc) (GPid pid,  gint status,  gpointer user_data);
public alias extern(C) void function(GPid pid, int status, void* userData) GChildWatchFunc;

/*
 * This is just a placeholder for GClosureMarshal,
 * which cannot be used here for dependency reasons.
 */
// void (*GSourceDummyMarshal) (void);
public alias extern(C) void function() GSourceDummyMarshal;

/*
 * Specifies the type of function passed to g_timeout_add(),
 * g_timeout_add_full(), g_idle_add(), and g_idle_add_full().
 * user_data :
 * data passed to the function, set when the source was
 * created with one of the above functions
 * Returns :
 * FALSE if the source should be removed
 */
// gboolean (*GSourceFunc) (gpointer user_data);
public alias extern(C) int function(void* userData) GSourceFunc;

/*
 * Specifies the type of the module initialization function.
 * If a module contains a function named g_module_check_init() it is called
 * automatically when the module is loaded. It is passed the GModule structure
 * and should return NULL on success or a string describing the initialization
 * error.
 * module :
 * the GModule corresponding to the module which has just been loaded
 * Returns :
 * NULL on success, or a string describing the initialization error
 */
// const gchar * (*GModuleCheckInit) (GModule *module);
public alias extern(C) char * function(GModule* modul) GModuleCheckInit;

/*
 * Specifies the type of the module function called when it is unloaded.
 * If a module contains a function named g_module_unload() it is called
 * automatically when the module is unloaded.
 * It is passed the GModule structure.
 * module :
 * the GModule about to be unloaded
 */
// void (*GModuleUnload) (GModule *module);
public alias extern(C) void function(GModule* modul) GModuleUnload;

/*
 * Specifies the type of function passed to g_io_add_watch() or
 * g_io_add_watch_full(), which is called when the requested condition
 * on a GIOChannel is satisfied.
 * source :
 * the GIOChannel event source
 * condition :
 * the condition which has been satisfied
 * data :
 * user data set in g_io_add_watch() or g_io_add_watch_full()
 * Returns :
 * the function should return FALSE if the event source
 * should be removed
 */
// gboolean (*GIOFunc) (GIOChannel *source,  GIOCondition condition,  gpointer data);
public alias extern(C) int function(GIOChannel* source, GIOCondition condition, void* data) GIOFunc;

/*
 * Specifies the type of the print handler functions.
 * These are called with the complete formatted string to output.
 * string :
 * the message to output
 */
// void (*GPrintFunc) (const gchar *string);
public alias extern(C) void function(char* string) GPrintFunc;

/*
 * Specifies the prototype of log handler functions.
 * log_domain :
 * the log domain of the message
 * log_level :
 * the log level of the message (including the
 * fatal and recursion flags)
 * message :
 * the message to process
 * user_data :
 * user data, set in g_log_set_handler()
 */
// void (*GLogFunc) (const gchar *log_domain,  GLogLevelFlags log_level,  const gchar *message,  gpointer user_data);
public alias extern(C) void function(char* logDomain, GLogLevelFlags logLevel, char* message, void* userData) GLogFunc;

/*
 * Warning
 * GVoidFunc is deprecated and should not be used in newly-written code.
 * Declares a type of function which takes no arguments
 * and has no return value. It is used to specify the type
 * function passed to g_atexit().
 */
// void (*GVoidFunc) (void);
public alias extern(C) void function() GVoidFunc;

/*
 * Declares a type of function which takes an arbitrary
 * data pointer argument and has no return value. It is
 * not currently used in GLib or GTK+.
 * data :
 * a data pointer
 */
// void (*GFreeFunc) (gpointer data);
public alias extern(C) void function(void* data) GFreeFunc;

/*
 * Specifies the type of the message handler function.
 * scanner :
 * a GScanner
 * message :
 * the message
 * error :
 * TRUE if the message signals an error,
 * FALSE if it signals a warning.
 */
// void (*GScannerMsgFunc) (GScanner *scanner,  gchar *message,  gboolean error);
public alias extern(C) void function(GScanner* scanner, char* message, int error) GScannerMsgFunc;

/*
 * Specifies the type of the setup function passed to g_spawn_async(),
 * g_spawn_sync() and g_spawn_async_with_pipes(), which can, in very
 * limited ways, be used to affect the child's execution.
 * On POSIX platforms, the function is called in the child after GLib
 * has performed all the setup it plans to perform, but before calling
 * exec(). Actions taken in this function will only affect the child,
 * not the parent.
 * On Windows, the function is called in the parent. Its usefulness on
 * Windows is thus questionable. In many cases executing the child setup
 * function in the parent can have ill effects, and you should be very
 * careful when porting software to Windows that uses child setup
 * functions.
 * However, even on POSIX, you are extremely limited in what you can
 * safely do from a GSpawnChildSetupFunc, because any mutexes that
 * were held by other threads in the parent process at the time of the
 * fork() will still be locked in the child process, and they will
 * never be unlocked (since the threads that held them don't exist in
 * the child). POSIX allows only async-signal-safe functions (see
 * signal(7))
 * to be called in the child between fork() and exec(), which
 * drastically limits the usefulness of child setup functions.
 * In particular, it is not safe to call any function which may
 * call malloc(), which includes POSIX functions such as setenv().
 * If you need to set up the child environment differently from
 * the parent, you should use g_get_environ(), g_environ_setenv(),
 * and g_environ_unsetenv(), and then pass the complete environment
 * list to the g_spawn... function.
 * user_data :
 * user data to pass to the function.
 */
// void (*GSpawnChildSetupFunc) (gpointer user_data);
public alias extern(C) void function(void* userData) GSpawnChildSetupFunc;

/*
 * The type of function to be passed as callback for G_OPTION_ARG_CALLBACK
 * options.
 * option_name :
 * The name of the option being parsed. This will be either a
 * single dash followed by a single letter (for a short name) or two dashes
 * followed by a long option name.
 * value :
 * The value to be parsed.
 * data :
 * User data added to the GOptionGroup containing the option when it
 * was created with g_option_group_new()
 * error :
 * A return location for errors. The error code G_OPTION_ERROR_FAILED
 * is intended to be used for errors in GOptionArgFunc callbacks.
 * Returns :
 * TRUE if the option was successfully parsed, FALSE if an error
 * occurred, in which case error should be set with g_set_error()
 */
// gboolean (*GOptionArgFunc) (const gchar *option_name,  const gchar *value,  gpointer data,  GError **error);
public alias extern(C) int function(char* optionName, char* value, void* data, GError** error) GOptionArgFunc;

/*
 * The type of functions which are used to translate user-visible
 * strings, for --help output.
 * str :
 * the untranslated string
 * data :
 * user data specified when installing the function, e.g.
 * in g_option_group_set_translate_func()
 * Returns :
 * a translation of the string for the current locale.
 * The returned string is owned by GLib and must not be freed.
 */
// const gchar * (*GTranslateFunc) (const gchar *str,  gpointer data);
public alias extern(C) char * function(char* str, void* data) GTranslateFunc;

/*
 * The type of function that can be called before and after parsing.
 * context :
 * The active GOptionContext
 * group :
 * The group to which the function belongs
 * data :
 * User data added to the GOptionGroup containing the option when it
 * was created with g_option_group_new()
 * error :
 * A return location for error details
 * Returns :
 * TRUE if the function completed successfully, FALSE if an error
 * occurred, in which case error should be set with g_set_error()
 */
// gboolean (*GOptionParseFunc) (GOptionContext *context,  GOptionGroup *group,  gpointer data,  GError **error);
public alias extern(C) int function(GOptionContext* context, GOptionGroup* group, void* data, GError** error) GOptionParseFunc;

/*
 * The type of function to be used as callback when a parse error occurs.
 * context :
 * The active GOptionContext
 * group :
 * The group to which the function belongs
 * data :
 * User data added to the GOptionGroup containing the option when it
 * was created with g_option_group_new()
 * error :
 * The GError containing details about the parse error
 */
// void (*GOptionErrorFunc) (GOptionContext *context,  GOptionGroup *group,  gpointer data,  GError **error);
public alias extern(C) void function(GOptionContext* context, GOptionGroup* group, void* data, GError** error) GOptionErrorFunc;

/*
 * Specifies the type of the function passed to g_regex_replace_eval().
 * It is called for each occurrence of the pattern in the string passed
 * to g_regex_replace_eval(), and it should append the replacement to
 * result.
 * match_info :
 * the GMatchInfo generated by the match.
 * Use g_match_info_get_regex() and g_match_info_get_string() if you
 * need the GRegex or the matched string.
 * result :
 * a GString containing the new string
 * user_data :
 * user data passed to g_regex_replace_eval()
 * Returns :
 * FALSE to continue the replacement process, TRUE to stop it
 * Since 2.14
 */
// gboolean (*GRegexEvalCallback) (const GMatchInfo *match_info,  GString *result,  gpointer user_data);
public alias extern(C) int function(GMatchInfo* matchInfo, GString* result, void* userData) GRegexEvalCallback;

/*
 * The type of functions to be called when a UNIX fd watch source
 * triggers.
 * fd :
 * the fd that triggered the event
 * condition :
 * the IO conditions reported on fd
 * user_data :
 * user data passed to g_unix_fd_add()
 * Returns :
 * FALSE if the source should be removed
 */
// gboolean (*GUnixFDSourceFunc) (gint fd,  GIOCondition condition,  gpointer user_data);
public alias extern(C) int function(int fd, GIOCondition condition, void* userData) GUnixFDSourceFunc;

/*
 * Specifies the type of a comparison function used to compare two
 * values. The function should return a negative integer if the first
 * value comes before the second, 0 if they are equal, or a positive
 * integer if the first value comes after the second.
 * a :
 * a value.
 * b :
 * a value to compare with.
 * Returns :
 * negative value if a < b; zero if a = b; positive
 * value if a > b.
 */
// gint (*GCompareFunc) (gconstpointer a,  gconstpointer b);
public alias extern(C) int function(void* a, void* b) GCompareFunc;

/*
 * Specifies the type of a comparison function used to compare two
 * values. The function should return a negative integer if the first
 * value comes before the second, 0 if they are equal, or a positive
 * integer if the first value comes after the second.
 * a :
 * a value.
 * b :
 * a value to compare with.
 * user_data :
 * user data to pass to comparison function.
 * Returns :
 * negative value if a < b; zero if a = b; positive
 * value if a > b.
 */
// gint (*GCompareDataFunc) (gconstpointer a,  gconstpointer b,  gpointer user_data);
public alias extern(C) int function(void* a, void* b, void* userData) GCompareDataFunc;

/*
 * Specifies the type of functions passed to g_list_foreach() and
 * g_slist_foreach().
 * data :
 * the element's data.
 * user_data :
 * user data passed to g_list_foreach() or
 * g_slist_foreach().
 */
// void (*GFunc) (gpointer data,  gpointer user_data);
public alias extern(C) void function(void* data, void* userData) GFunc;

/*
 * A GSequenceIterCompareFunc is a function used to compare iterators.
 * It must return zero if the iterators compare equal, a negative value
 * if a comes before b, and a positive value if b comes before a.
 * a :
 * a GSequenceIter
 * b :
 * a GSequenceIter
 * data :
 * user data
 * Returns :
 * zero if the iterators are equal, a negative value if a
 * comes before b, and a positive value if b comes before
 * a.
 */
// gint (*GSequenceIterCompareFunc) (GSequenceIter *a,  GSequenceIter *b,  gpointer data);
public alias extern(C) int function(GSequenceIter* a, GSequenceIter* b, void* data) GSequenceIterCompareFunc;

/*
 * Specifies the type of the hash function which is passed to
 * g_hash_table_new() when a GHashTable is created.
 * The function is passed a key and should return a guint hash value.
 * The functions g_direct_hash(), g_int_hash() and g_str_hash() provide
 * hash functions which can be used when the key is a gpointer, gint*,
 * and gchar* respectively.
 * g_direct_hash() is also the appropriate hash function for keys
 * of the form GINT_TO_POINTER (n) (or similar macros).
 *  A good hash functions should produce
 * hash values that are evenly distributed over a fairly large range.
 * The modulus is taken with the hash table size (a prime number) to
 * find the 'bucket' to place each key into. The function should also
 * be very fast, since it is called for each key lookup.
 * Note that the hash functions provided by GLib have these qualities,
 * but are not particularly robust against manufactured keys that
 * cause hash collisions. Therefore, you should consider choosing
 * a more secure hash function when using a GHashTable with keys
 * that originate in untrusted data (such as HTTP requests).
 * Using g_str_hash() in that situation might make your application
 * vulerable to Algorithmic Complexity Attacks.
 * The key to choosing a good hash is unpredictability. Even
 * cryptographic hashes are very easy to find collisions for when the
 * remainder is taken modulo a somewhat predictable prime number. There
 * must be an element of randomness that an attacker is unable to guess.
 * key :
 * a key
 * Returns :
 * the hash value corresponding to the key
 */
// guint (*GHashFunc) (gconstpointer key);
public alias extern(C) uint function(void* key) GHashFunc;

/*
 * Specifies the type of a function used to test two values for
 * equality. The function should return TRUE if both values are equal
 * and FALSE otherwise.
 * a :
 * a value
 * b :
 * a value to compare with
 * Returns :
 * TRUE if a = b; FALSE otherwise
 */
// gboolean (*GEqualFunc) (gconstpointer a,  gconstpointer b);
public alias extern(C) int function(void* a, void* b) GEqualFunc;

/*
 * Specifies the type of the function passed to g_hash_table_foreach().
 * It is called with each key/value pair, together with the user_data
 * parameter which is passed to g_hash_table_foreach().
 * key :
 * a key
 * value :
 * the value corresponding to the key
 * user_data :
 * user data passed to g_hash_table_foreach()
 */
// void (*GHFunc) (gpointer key,  gpointer value,  gpointer user_data);
public alias extern(C) void function(void* key, void* value, void* userData) GHFunc;

/*
 * Specifies the type of the function passed to
 * g_hash_table_foreach_remove(). It is called with each key/value
 * pair, together with the user_data parameter passed to
 * g_hash_table_foreach_remove(). It should return TRUE if the
 * key/value pair should be removed from the GHashTable.
 * key :
 * a key
 * value :
 * the value associated with the key
 * user_data :
 * user data passed to g_hash_table_remove()
 * Returns :
 * TRUE if the key/value pair should be removed from the
 * GHashTable
 */
// gboolean (*GHRFunc) (gpointer key,  gpointer value,  gpointer user_data);
public alias extern(C) int function(void* key, void* value, void* userData) GHRFunc;

/*
 * Specifies the type of function passed to g_tree_traverse(). It is
 * passed the key and value of each node, together with the user_data
 * parameter passed to g_tree_traverse(). If the function returns
 * TRUE, the traversal is stopped.
 * key :
 * a key of a GTree node.
 * value :
 * the value corresponding to the key.
 * data :
 * user data passed to g_tree_traverse().
 * Returns :
 * TRUE to stop the traversal.
 */
// gboolean (*GTraverseFunc) (gpointer key,  gpointer value,  gpointer data);
public alias extern(C) int function(void* key, void* value, void* data) GTraverseFunc;

/*
 * A function of this signature is used to copy the node data
 * when doing a deep-copy of a tree.
 * src :
 * A pointer to the data which should be copied
 * data :
 * Additional data
 * Returns :
 * A pointer to the copy
 * Since 2.4
 */
// gpointer (*GCopyFunc) (gconstpointer src,  gpointer data);
public alias extern(C) void* function(void* src, void* data) GCopyFunc;

/*
 * Specifies the type of function passed to g_node_traverse(). The
 * function is called with each of the nodes visited, together with the
 * user data passed to g_node_traverse(). If the function returns
 * TRUE, then the traversal is stopped.
 * node :
 * a GNode.
 * data :
 * user data passed to g_node_traverse().
 * Returns :
 * TRUE to stop the traversal.
 */
// gboolean (*GNodeTraverseFunc) (GNode *node,  gpointer data);
public alias extern(C) int function(GNode* node, void* data) GNodeTraverseFunc;

/*
 * Specifies the type of function passed to g_node_children_foreach().
 * The function is called with each child node, together with the user
 * data passed to g_node_children_foreach().
 * node :
 * a GNode.
 * data :
 * user data passed to g_node_children_foreach().
 */
// void (*GNodeForeachFunc) (GNode *node,  gpointer data);
public alias extern(C) void function(GNode* node, void* data) GNodeForeachFunc;

/*
 * The type of functions that are used to 'duplicate' an object.
 * What this means depends on the context, it could just be
 * incrementing the reference count, if data is a ref-counted
 * object.
 * data :
 * the data to duplicate
 * user_data :
 * user data that was specified in g_datalist_id_dup_data()
 * Returns :
 * a duplicate of data
 */
// gpointer (*GDuplicateFunc) (gpointer data,  gpointer user_data);
public alias extern(C) void* function(void* data, void* userData) GDuplicateFunc;

/*
 * Specifies the type of function which is called when a data element
 * is destroyed. It is passed the pointer to the data element and
 * should free any memory and resources allocated for it.
 * data :
 * the data element.
 */
// void (*GDestroyNotify) (gpointer data);
public alias extern(C) void function(void* data) GDestroyNotify;

/*
 * Specifies the type of function passed to g_dataset_foreach(). It is
 * called with each GQuark id and associated data element, together
 * with the user_data parameter supplied to g_dataset_foreach().
 * key_id :
 * the GQuark id to identifying the data element.
 * data :
 * the data element.
 * user_data :
 * user data passed to g_dataset_foreach().
 */
// void (*GDataForeachFunc) (GQuark key_id,  gpointer data,  gpointer user_data);
public alias extern(C) void function(GQuark keyId, void* data, void* userData) GDataForeachFunc;

/*
 * Specifies the type of the value_destroy_func and key_destroy_func
 * functions passed to g_cache_new(). The functions are passed a
 * pointer to the GCache key or GCache value and should free any
 * memory and other resources associated with it.
 * value :
 * the GCache value to destroy
 */
// void (*GCacheDestroyFunc) (gpointer value);
public alias extern(C) void function(void* value) GCacheDestroyFunc;

/*
 * Specifies the type of the key_dup_func function passed to
 * g_cache_new(). The function is passed a key
 * (not a value as the prototype implies) and
 * should return a duplicate of the key.
 * value :
 * the GCache key to destroy (not a
 * GCache value as it seems)
 * Returns :
 * a copy of the GCache key
 */
// gpointer (*GCacheDupFunc) (gpointer value);
public alias extern(C) void* function(void* value) GCacheDupFunc;

/*
 * Specifies the type of the value_new_func function passed to
 * g_cache_new(). It is passed a GCache key and should create the
 * value corresponding to the key.
 * key :
 * a GCache key
 * Returns :
 * a new GCache value corresponding to the key.
 */
// gpointer (*GCacheNewFunc) (gpointer key);
public alias extern(C) void* function(void* key) GCacheNewFunc;

/*
 * Specifies the type of the function passed to g_completion_new(). It
 * should return the string corresponding to the given target item.
 * This is used when you use data structures as GCompletion items.
 * Param1 :
 * the completion item.
 * Returns :
 * the string corresponding to the item.
 */
// gchar * (*GCompletionFunc) (gpointer Param1);
public alias extern(C) char * function(void* Param1) GCompletionFunc;

/*
 * Specifies the type of the function passed to
 * g_completion_set_compare(). This is used when you use strings as
 * GCompletion items.
 * s1 :
 * string to compare with s2.
 * s2 :
 * string to compare with s1.
 * n :
 * maximal number of bytes to compare.
 * Returns :
 * an integer less than, equal to, or greater than zero if
 * the first n bytes of s1 is found, respectively, to be
 * less than, to match, or to be greater than the first n
 * bytes of s2.
 */
// gint (*GCompletionStrncmpFunc) (const gchar *s1,  const gchar *s2,  gsize n);
public alias extern(C) int function(char* s1, char* s2, gsize n) GCompletionStrncmpFunc;
/**
 * A union holding the value of the token.
 * gpointer v_symbol;
 * token symbol value
 * gchar *v_identifier;
 * token identifier value
 * gulong v_binary;
 * token binary integer value
 * gulong v_octal;
 * octal integer value
 * gulong v_int;
 * integer value
 * guint64 v_int64;
 * 64-bit integer value
 * gdouble v_float;
 * floating point value
 * gulong v_hex;
 * hex integer value
 * gchar *v_string;
 * string value
 * gchar *v_comment;
 * comment value
 * guchar v_char;
 * character value
 * guint v_error;
 * error value
 */
public struct GTokenValue
{
	union
	{
		void* vSymbol;
		char *vIdentifier;
		gulong vBinary;
		gulong vOctal;
		gulong vInt;
		ulong vInt64;
		double vFloat;
		gulong vHex;
		char *vString;
		char *vComment;
		char vChar;
		uint vError;
	}
}
