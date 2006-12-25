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

module glib.glibtypes;

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
public alias int glong;
public alias uint gulong;
public alias byte gint8;
public alias byte guint8;
public alias short gint16;
public alias ushort guint16;
public alias int gint32;
public alias long gint64;
public alias uint guint32;
public alias ulong guint64;
public alias float gfloat;
public alias double gdouble;
public alias uint gsize;
public alias int gssize;
public alias void* va_list;
public alias dchar unichar;
public alias wchar unichar2;
//public alias dchar gunichar;
//public alias wchar gunichar2;
public alias int time_t;


const uint G_MAXUINT = 4294967295;


/**
 * typedef int GPid;
 * A type which is used to hold a process identification.
 * On Unix, processes are identified by a process id (an
 * integer), while Windows uses process handles (which are
 * pointers).
 */
public alias int GPid;

/**
 * typedef guint32 gunichar;
 * A type which can hold any UCS-4 character code.
 */
public alias uint gunichar;

/**
 * typedef guint16 gunichar2;
 * A type which can hold any UTF-16 code
 * point[3].
 */
public alias ushort gunichar2;

/**
 * typedef gint32 GTime;
 * Simply a replacement for time_t. It has been deprected
 * since it is not equivalent to time_t
 * on 64-bit platforms with a 64-bit time_t.
 * Unrelated to GTimer.
 * Note that GTime is defined to always be a 32bit integer,
 * unlike time_t which may be 64bit on some systems.
 * Therefore, GTime will overflow in the year 2038, and
 * you cannot use the address of a GTime variable as argument
 * to the UNIX time() function. Instead, do the following:
 * time_t ttime;
 * GTime gtime;
 * time (ttime);
 * gtime = (GTime)ttime;
 */
public alias int GTime;

/**
 * typedef guint8 GDateDay; /+* day of the month +/
 * Integer representing a day of the month; between 1 and
 * 31. G_DATE_BAD_DAY represents an invalid day of the month.
 */
public alias byte GDateDay;

/**
 * typedef guint16 GDateYear;
 * Integer representing a year; G_DATE_BAD_YEAR is the invalid
 * value. The year must be 1 or higher; negative (BC) years are not
 * allowed. The year is represented with four digits.
 */
public alias ushort GDateYear;

/**
 * typedef guint32 GQuark;
 * A GQuark is an integer which uniquely identifies a particular string.
 */
public alias uint GQuark;
/**
 * Flags passed to g_module_open(). Note that these flags are
 * not supported on all platforms.
 * G_MODULE_BIND_LAZY
 * specifies that symbols are only resolved when needed.
 */
public enum GModuleFlags
{
	BIND_LAZY = 1 << 0,
	BIND_LOCAL = 1 << 1,
	BIND_MASK = 0x03
}
alias GModuleFlags ModuleFlags;

/**
 * An enumeration specifying the base position for a g_io_channel_seek_position()
 * operation.
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
	/+* Derived from errno +/
	G_IO_CHANNEL_ERROR_FBIG,
	G_IO_CHANNEL_ERROR_INVAL,
	G_IO_CHANNEL_ERROR_IO,
	G_IO_CHANNEL_ERROR_ISDIR,
	G_IO_CHANNEL_ERROR_NOSPC,
	G_IO_CHANNEL_ERROR_NXIO,
	G_IO_CHANNEL_ERROR_OVERFLOW,
	G_IO_CHANNEL_ERROR_PIPE,
	/+* Other +/
	G_IO_CHANNEL_ERROR_FAILED
}
alias GIOChannelError IOChannelError;

/**
 * A bitwise combination representing a condition to watch for on an event
 * source.
 * G_IO_IN
 * There is data to read.
 * G_IO_OUT
 * Data can be written (without blocking).
 * G_IO_PRI
 * There is urgent data to read.
 * G_IO_ERR
 * Error condition.
 * G_IO_HUP
 * Hung up (the connection has been broken, usually for pipes
 */
public enum GIOCondition
{
	IN =1,
	OUT =4,
	PRI =2,
	ERR =8,
	HUP =16,
	NVAL =32
}
alias GIOCondition IOCondition;

/**
 * Specifies properties of a GIOChannel. Some of the flags can only
 * be read with g_io_channel_get_flags(), but not changed with
 * g_io_channel_set_flags().
 * G_IO_FLAG_APPEND
 * turns on append mode, corresponds to O_APPEND (see the
 */
public enum GIOFlags
{
	APPEND = 1 << 0,
	NONBLOCK = 1 << 1,
	IS_READABLE = 1 << 2, /+* Read only flag +/
	IS_WRITEABLE = 1 << 3, /+* Read only flag +/
	IS_SEEKABLE = 1 << 4, /+* Read only flag +/
	MASK = (1 << 5) - 1,
	GET_MASK = MASK,
	SET_MASK = APPEND | NONBLOCK
}
alias GIOFlags IOFlags;

/**
 * GIOError is only used by the deprecated functions g_io_channel_read(),
 * g_io_channel_write(), and g_io_channel_seek().
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
 */
public enum GLogLevelFlags
{
	/+* log flags +/
	G_LOG_FLAG_RECURSION = 1 << 0,
	G_LOG_FLAG_FATAL = 1 << 1,
	/+* GLib log levels +/
	G_LOG_LEVEL_ERROR = 1 << 2, /+* always fatal +/
	G_LOG_LEVEL_CRITICAL = 1 << 3,
	G_LOG_LEVEL_WARNING = 1 << 4,
	G_LOG_LEVEL_MESSAGE = 1 << 5,
	G_LOG_LEVEL_INFO = 1 << 6,
	G_LOG_LEVEL_DEBUG = 1 << 7,
	G_LOG_LEVEL_MASK = ~(G_LOG_FLAG_RECURSION | G_LOG_FLAG_FATAL)
}
alias GLogLevelFlags LogLevelFlags;

/**
 * Error codes returned by character set conversion routines.
 * G_CONVERT_ERROR_NO_CONVERSION
 * Conversion between the requested character sets
 * is not supported.
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
 * G_UNICODE_COMBINING_MARK
 * General category "Mark, Spacing Combining" (Mc)
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
	COMBINING_MARK,
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
 * The five Hangul types were added in Unicode 4.1, so, has been
 * introduced in GLib 2.10. Note that new types may be added in the future.
 * Applications should be ready to handle unknown values.
 * They may be regarded as G_UNICODE_BREAK_UNKNOWN.
 * See http://www.unicode.org/unicode/reports/tr14/.
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
	HANGUL_LVT_SYLLABLE
}
alias GUnicodeBreakType UnicodeBreakType;

/**
 * The GUnicodeScript enumeration identifies different writing
 * systems. The values correspond to the names as defined in the
 * Unicode standard. The enumeration has been added in GLib 2.14.
 * Note that new types may be added in the future. Applications
 * should be ready to handle unknown values.
 * See Unicode Standard Annex
 * 24: Script names.
 * G_UNICODE_SCRIPT_INVALID_CODE
 * a value never returned from g_unichar_get_script()
 * G_UNICODE_SCRIPT_COMMON
 */
public enum GUnicodeScript
{
	INVALID_CODE = -1,
	COMMON = 0, /+* Zyyy +/
	INHERITED, /+* Qaai +/
	ARABIC, /+* Arab +/
	ARMENIAN, /+* Armn +/
	BENGALI, /+* Beng +/
	BOPOMOFO, /+* Bopo +/
	CHEROKEE, /+* Cher +/
	COPTIC, /+* Qaac +/
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
	NKO /+* Nkoo +/
}
alias GUnicodeScript UnicodeScript;

/**
 * Defines how a Unicode string is transformed in a canonical
 * form, standardizing such issues as whether a character with an accent is
 * represented as a base character and combining accent or as a single precomposed
 * character. Unicode strings should generally be normalized before comparing them.
 * G_NORMALIZE_DEFAULT
 * standardize differences that do not affect the
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
 * invalid value.
 * G_DATE_JANUARY
 * January.
 * G_DATE_FEBRUARY
 * February.
 * G_DATE_MARCH
 * March.
 * G_DATE_APRIL
 * April.
 * G_DATE_MAY
 * May.
 * G_DATE_JUNE
 * June.
 * G_DATE_JULY
 * July.
 * G_DATE_AUGUST
 * August.
 * G_DATE_SEPTEMBER
 * September.
 * G_DATE_OCTOBER
 * October.
 * G_DATE_NOVEMBER
 * November.
 * G_DATE_DECEMBER
 * December.
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
 * invalid value.
 * G_DATE_MONDAY
 * Monday.
 * G_DATE_TUESDAY
 * Tuesday.
 * G_DATE_WEDNESDAY
 * Wednesday.
 * G_DATE_THURSDAY
 * Thursday.
 * G_DATE_FRIDAY
 * Friday.
 * G_DATE_SATURDAY
 * Saturday.
 * G_DATE_SUNDAY
 * Sunday.
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
 * The possible types of token returned from each g_scanner_get_next_token() call.
 * G_TOKEN_EOF
 * the end of the file.
 * G_TOKEN_LEFT_PAREN
 * a '(' character.
 * G_TOKEN_LEFT_CURLY
 * a '{' character.
 * G_TOKEN_RIGHT_CURLY
 * a '}' character.
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
 * unknown error.
 * G_ERR_UNEXP_EOF
 * unexpected end of file.
 * G_ERR_UNEXP_EOF_IN_STRING
 * unterminated string constant.
 * G_ERR_UNEXP_EOF_IN_COMMENT
 * unterminated comment.
 * G_ERR_NON_DIGIT_IN_CONST
 * non-digit character in a number.
 * G_ERR_DIGIT_RADIX
 * digit beyond radix in a number.
 * G_ERR_FLOAT_RADIX
 * non-decimal floating point number.
 * G_ERR_FLOAT_MALFORMED
 * malformed floating point number.
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
 * execv() returned EACCES.
 * G_SPAWN_ERROR_PERM
 * execv() returned EPERM.
 * G_SPAWN_ERROR_2BIG
 * execv() returned E2BIG.
 * G_SPAWN_ERROR_NOEXEC
 * execv() returned ENOEXEC.
 * G_SPAWN_ERROR_NAMETOOLONG
 * execv() returned ENAMETOOLONG.
 * G_SPAWN_ERROR_NOENT
 * execv() returned ENOENT.
 * G_SPAWN_ERROR_NOMEM
 * execv() returned ENOMEM.
 * G_SPAWN_ERROR_NOTDIR
 * execv() returned ENOTDIR.
 * G_SPAWN_ERROR_LOOP
 * execv() returned ELOOP.
 * G_SPAWN_ERROR_TXTBUSY
 * execv() returned ETXTBUSY.
 * G_SPAWN_ERROR_IO
 * execv() returned EIO.
 * G_SPAWN_ERROR_NFILE
 * execv() returned ENFILE.
 * G_SPAWN_ERROR_MFILE
 * execv() returned EMFILE.
 * G_SPAWN_ERROR_INVAL
 * execv() returned EINVAL.
 * G_SPAWN_ERROR_ISDIR
 * execv() returned EISDIR.
 * G_SPAWN_ERROR_LIBBAD
 * execv() returned ELIBBAD.
 * G_SPAWN_ERROR_FAILED
 * Some other fatal failure, error->message should explain.
 */
public enum GSpawnError
{
	FORK, /+* fork failed due to lack of memory +/
	READ, /+* read or select on pipes failed +/
	CHDIR, /+* changing to working dir failed +/
	ACCES, /+* execv() returned EACCES +/
	PERM, /+* execv() returned EPERM +/
	TOO_BIG, /+* execv() returned E2BIG +/
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
	FILE_AND_ARGV_ZERO = 1 << 6
}
alias GSpawnFlags SpawnFlags;

/**
 * Values corresponding to errno codes returned from file operations
 * on UNIX. Unlike errno codes, GFileError values are available on
 * all systems, even Windows. The exact meaning of each code depends on what
 * sort of file operation you were performing; the UNIX documentation
 * gives more details. The following error code descriptions come
 * from the GNU C Library manual, and are under the copyright
 * of that manual.
 * It's not very portable to make detailed assumptions about exactly
 * which errors will be returned from a given operation. Some errors
 * don't occur on some systems, etc., sometimes there are subtle
 * differences in when a system will report a given error, etc.
 * G_FILE_ERROR_EXIST
 * Operation not permitted; only the owner of the
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
 * TRUE if the file is a regular file (not a symlink or directory)
 * G_FILE_TEST_IS_SYMLINK
 * TRUE if the file is a symlink.
 * G_FILE_TEST_IS_DIR
 * TRUE if the file is a directory.
 * G_FILE_TEST_IS_EXECUTABLE
 * TRUE if the file is executable.
 * G_FILE_TEST_EXISTS
 * TRUE if the file exists. It may or may not be a regular file.
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
	/+* mismatched or otherwise mangled quoting +/
	G_SHELL_ERROR_BAD_QUOTING,
	/+* string to be parsed was empty +/
	G_SHELL_ERROR_EMPTY_STRING,
	G_SHELL_ERROR_FAILED
}
alias GShellError ShellError;

/**
 * Error codes returned by option parsing.
 * G_OPTION_ERROR_UNKNOWN_OPTION
 * An option was not known to the parser.
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
 * Error codes returned by markup parsing.
 * G_MARKUP_ERROR_BAD_UTF8
 * text being parsed was not valid UTF-8
 * G_MARKUP_ERROR_EMPTY
 * document contained nothing, or only whitespace
 * G_MARKUP_ERROR_PARSE
 * document was ill-formed
 * G_MARKUP_ERROR_UNKNOWN_ELEMENT
 * error should be set by GMarkupParser functions; element wasn't known
 * G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE
 * error should be set by GMarkupParser functions; attribute wasn't known
 * G_MARKUP_ERROR_INVALID_CONTENT
 * error should be set by GMarkupParser functions; something was wrong with contents of the document, e.g. invalid attribute value
 */
public enum GMarkupError
{
	BAD_UTF8,
	EMPTY,
	PARSE,
	/+* These three are primarily intended for specific GMarkupParser
	 * implementations to set.
	+/
	UNKNOWN_ELEMENT,
	UNKNOWN_ATTRIBUTE,
	INVALID_CONTENT
}
alias GMarkupError MarkupError;

/**
 * Flags that affect the behaviour of the parser.
 * G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG
 * flag you should not use.
 * G_MARKUP_TREAT_CDATA_AS_TEXT
 * When this flag is set, CDATA marked
 */
public enum GMarkupParseFlags
{
	DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1 << 0,
	TREAT_CDATA_AS_TEXT = 1 << 1
}
alias GMarkupParseFlags MarkupParseFlags;

/**
 * Error codes returned by key file parsing.
 * G_KEY_FILE_ERROR_UNKNOWN_ENCODING
 * the text being parsed was in an unknown encoding
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
 * Use this flag if you plan to write the (possibly modified)
 */
public enum GKeyFileFlags
{
	NONE = 0,
	KEEP_COMMENTS = 1 << 0,
	KEEP_TRANSLATIONS = 1 << 1
}
alias GKeyFileFlags KeyFileFlags;

/**
 * Specifies the type of traveral performed by g_tree_traverse(),
 * g_node_traverse() and g_node_find().
 * G_IN_ORDER
 * vists a node's left child first, then the node itself, then its
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
 * Specifies which nodes are visited during several of the tree functions,
 * including g_node_traverse() and g_node_find().
 * G_TRAVERSE_LEAVES
 * only leaf nodes should be visited. This name has been
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
 * Main Gtk struct.
 * The GMainLoop struct is an opaque data type
 * representing the main event loop of a GLib or GTK+ application.
 */
public struct GMainLoop{}


/**
 * The GMainContext struct is an opaque data type
 * representing a set of sources to be handled in a main loop.
 */
public struct GMainContext{}


/**
 * gint fd;
 * the file descriptor to poll (or a HANDLE on Win32 platforms).
 * gushort events;
 * a bitwise combination of flags from GIOCondition, specifying which
 * events should be polled for. Typically for reading from a file descriptor
 * you would use G_IO_IN | G_IO_HUP | G_IO_ERR, and for writing you would use
 * G_IO_OUT | G_IO_ERR.
 * gushort revents;
 * a bitwise combination of flags from GIOCondition, returned from the
 * poll() function to indicate which events occurred.
 */
public struct GPollFD
{
	int fd;
	ushort events;
	ushort revents;
}


/**
 * The GSource struct is an opaque data type representing
 * an event source.
 */
public struct GSource{}


/**
 * The GSourceFuncs struct contains a table of functions used to handle
 * event sources in a generic manner.
 * prepare
 * Called before all the file descriptors are polled.
 * If the source can determine that it is ready here (without waiting for the
 * results of the poll() call) it should return TRUE.
 * It can also return a timeout_ value which should be the maximum timeout
 * (in milliseconds) which should be passed to the poll() call.
 * The actual timeout used will be -1 if all sources returned -1, or it will
 * be the minimum of all the timeout_ values returned which were >= 0.
 * check
 * Called after all the file descriptors are polled.
 * The source should return TRUE if it is ready to be dispatched.
 * Note that some time may have passed since the previous prepare function was
 * called, so the source should be checked again here.
 * dispatch
 * Called to dispatch the event source, after it has returned TRUE in
 * either its prepare or its check function. The dispatch function is
 * passed in a callback function and data. The callback function may be
 * NULL if the source was never connected to a callback using
 * g_source_set_callback(). The dispatch function should call the
 * callback function with user_data and whatever additional parameters are
 * needed for this type of event source.
 * finalize
 * Called when the source is finalized.
 * For idle sources, the prepare and check functions always return TRUE to
 * indicate that the source is always ready to be processed.
 * The prepare function also returns a timeout value of 0 to ensure that the
 * poll() call doesn't block (since that would be time
 * wasted which could have been spent running the idle function).
 * For timeout sources, the prepare and check functions both return TRUE if the
 * timeout interval has expired. The prepare function also returns a timeout
 * value to ensure that the poll() call doesn't block too
 * long and miss the next timeout.
 * For file descriptor sources, the prepare function typically returns FALSE,
 * since it must wait until poll() has been called before
 * it knows whether any events need to be processed. It sets the returned
 * timeout to -1 to indicate that it doesn't mind how long the
 * poll() call blocks.
 * In the check function, it tests the results of the poll()
 * call to see if the required condition has been met, and returns TRUE if so.
 */
public struct GSourceFuncs{}
// int (*prepare) (GSource *source,
// glib-The-Main-Event-Loop.html
// int *timeout);
// glib-The-Main-Event-Loop.html
// int (*check) (GSource *source);
// glib-The-Main-Event-Loop.html
// int (*dispatch) (GSource *source,
// glib-The-Main-Event-Loop.html
// GSourceFunc callback,
// glib-The-Main-Event-Loop.html
// void* userData);
// glib-The-Main-Event-Loop.html
// void (*finalize) (GSource *source); /+* Can be NULL +/
// glib-The-Main-Event-Loop.html
// /+* For use by gSourceSetClosure +/
// glib-The-Main-Event-Loop.html
// GSourceFunc closureCallback;
// glib-The-Main-Event-Loop.html
// GSourceDummyMarshal closureMarshal; /+* Really is of type GClosureMarshal +/
// glib-The-Main-Event-Loop.html


/**
 * The GSourceCallbackFuncs struct contains
 * functions for managing callback objects.
 * ref()
 * Called when a reference is added to the callback object.
 * unref()
 * Called when a reference to the callback object is dropped.
 * get()
 * Called to extract the callback function and data from the callback object.
 */
public struct GSourceCallbackFuncs{}
// void (*ref) (void* cbData);
// glib-The-Main-Event-Loop.html
// void (*unref) (void* cbData);
// glib-The-Main-Event-Loop.html
// void (*get) (void* cbData,
// glib-The-Main-Event-Loop.html
// GSource *source,
// glib-The-Main-Event-Loop.html
// GSourceFunc *func,
// glib-The-Main-Event-Loop.html
// void* *data);
// glib-The-Main-Event-Loop.html


/**
 * Main Gtk struct.
 * The GThreadPool struct represents a thread pool. It has six public
 * read-only members, but the underlying struct is bigger, so you must not copy
 * this struct.
 * GFuncfunc;
 * the function to execute in the threads of this pool
 * gpointeruser_data;
 * the user data for the threads of this pool
 * gbooleanexclusive;
 * are all threads exclusive to this pool
 */
public struct GThreadPool{}
// GFunc func;
// glib-Thread-Pools.html
// void* userData;
// glib-Thread-Pools.html
// int exclusive;
// glib-Thread-Pools.html


/**
 * Main Gtk struct.
 * The GAsyncQueue struct is an opaque data structure, which represents
 * an asynchronous queue. It should only be accessed through the
 * g_async_queue_* functions.
 */
public struct GAsyncQueue{}


/**
 * Main Gtk struct.
 * The GModule struct is an opaque data structure to represent a
 * Dynamically-Loaded Module.
 * It should only be accessed via the following functions.
 */
public struct GModule{}


/**
 * A set of functions used to perform memory allocation. The same GMemVTable must
 * be used for all allocations in the same program; a call to g_mem_set_vtable(),
 * if it exists, should be prior to any use of GLib.
 * malloc()
 * function to use for allocating memory.
 * realloc()
 * function to use for reallocating memory.
 * free()
 * function to use to free memory.
 * calloc()
 * function to use for allocating zero-filled memory.
 * try_malloc()
 * function to use for allocating memory without a default error handler.
 * try_realloc()
 * function to use for reallocating memory without a default error handler.
 */
public struct GMemVTable{}
// void* (*malloc) (uint nBytes);
// glib-Memory-Allocation.html
// void* (*realloc) (void* mem,
// glib-Memory-Allocation.html
// uint nBytes);
// glib-Memory-Allocation.html
// void (*free) (void* mem);
// glib-Memory-Allocation.html
// /+* optional; set to NULL if not used ! +/
// glib-Memory-Allocation.html
// void* (*calloc) (uint nBlocks,
// glib-Memory-Allocation.html
// uint nBlockBytes);
// glib-Memory-Allocation.html
// void* (*tryMalloc) (uint nBytes);
// glib-Memory-Allocation.html
// void* (*tryRealloc) (void* mem,
// glib-Memory-Allocation.html
// uint nBytes);
// glib-Memory-Allocation.html


/**
 * Main Gtk struct.
 * A data structure representing an IO Channel. The fields should be considered
 * private and should only be accessed with the following functions.
 */
public struct GIOChannel{}


/**
 * A table of functions used to handle different types of GIOChannel in a
 * generic way.
 */
public struct GIOFuncs{}
// GIOStatus (*ioRead) (GIOChannel *channel,
// glib-IO-Channels.html
// char *buf,
// glib-IO-Channels.html
// uint count,
// glib-IO-Channels.html
// uint *bytesRead,
// glib-IO-Channels.html
// GError **err);
// glib-IO-Channels.html
// GIOStatus (*ioWrite) (GIOChannel *channel,
// glib-IO-Channels.html
// char *buf,
// glib-IO-Channels.html
// uint count,
// glib-IO-Channels.html
// uint *bytesWritten,
// glib-IO-Channels.html
// GError **err);
// glib-IO-Channels.html
// GIOStatus (*ioSeek) (GIOChannel *channel,
// glib-IO-Channels.html
// long offset,
// glib-IO-Channels.html
// GSeekType type,
// glib-IO-Channels.html
// GError **err);
// glib-IO-Channels.html
// GIOStatus (*ioClose) (GIOChannel *channel,
// glib-IO-Channels.html
// GError **err);
// glib-IO-Channels.html
// GSource* (*ioCreateWatch) (GIOChannel *channel,
// glib-IO-Channels.html
// GIOCondition condition);
// glib-IO-Channels.html
// void (*ioFree) (GIOChannel *channel);
// glib-IO-Channels.html
// GIOStatus (*ioSetFlags) (GIOChannel *channel,
// glib-IO-Channels.html
// GIOFlags flags,
// glib-IO-Channels.html
// GError **err);
// glib-IO-Channels.html
// GIOFlags (*ioGetFlags) (GIOChannel *channel);
// glib-IO-Channels.html


/**
 * Main Gtk struct.
 * The GError structure contains
 * information about an error that has occurred.
 * GQuarkdomain;
 * error domain, e.g. G_FILE_ERROR.
 * gintcode;
 * error code, e.g. G_FILE_ERROR_NOENT.
 * gchar*message;
 * human-readable informative error message.
 */
public struct GError
{
	GQuark domain;
	int code;
	char *message;
}


/**
 * The GIConv struct wraps an
 * iconv() conversion descriptor. It contains private data
 * and should only be accessed using the following functions.
 */
public struct GIConv{}


/**
 * Represents a precise time, with seconds and microseconds.
 * Similar to the struct timeval returned by
 * the gettimeofday() UNIX call.
 * glongtv_sec;
 * seconds.
 * glongtv_usec;
 * microseconds.
 */
public struct GTimeVal
{
	int tvSec;
	int tvUsec;
}


/**
 * Main Gtk struct.
 * Represents a day between January 1, Year 1 and a few thousand years in
 * the future. None of its members should be accessed directly. If the
 * GDate is obtained from g_date_new(), it will
 * be safe to mutate but invalid and thus not safe for calendrical computations.
 * If it's declared on the stack, it will contain garbage so must be
 * initialized with g_date_clear(). g_date_clear() makes the date invalid
 * but sane. An invalid date doesn't represent a day, it's "empty." A
 * date becomes valid after you set it to a Julian day or you set a day,
 * month, and year.
 * guintjulian_days:32;
 * the Julian representation of the date
 * guintjulian:1;
 * this bit is set if julian_days is valid
 * guintdmy:1;
 * this is set if day, month and year are valid
 * guintday:6;
 * the day of the day-month-year representation of the date, as
 */
public struct GDate{}
// uint julianDays : 32; /+* julian days representation - we use a
// glib-Date-and-Time-Functions.html
// * bitfield hoping that 64 bit platforms
// glib-Date-and-Time-Functions.html
// * will pack this whole struct inn one big
// glib-Date-and-Time-Functions.html
// * int
// glib-Date-and-Time-Functions.html
// +/
// glib-Date-and-Time-Functions.html
// uint julian : 1; /+* julian is valid +/
// glib-Date-and-Time-Functions.html
// uint dmy : 1; /+* dmy is valid +/
// glib-Date-and-Time-Functions.html
// /+* DMY representation +/
// glib-Date-and-Time-Functions.html
// uint day : 6;
// glib-Date-and-Time-Functions.html
// uint month : 4;
// glib-Date-and-Time-Functions.html
// uint year : 16;
// glib-Date-and-Time-Functions.html


/**
 * Main Gtk struct.
 * The GRand struct is an opaque data structure. It should only be
 * accessed through the g_rand_* functions.
 */
public struct GRand{}


/**
 * Associates a string with a bit flag.
 * Used in g_parse_debug_string().
 * gchar*key;
 * the string
 * guintvalue;
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
 * You should set input_name after creating
 * the scanner, since it is used by the default message handler when
 * displaying warnings and errors. If you are scanning a file, the file
 * name would be a good choice.
 * The user_data and
 * max_parse_errors fields are not used.
 * If you need to associate extra data with the scanner you can place them here.
 * If you want to use your own message handler you can set the
 * msg_handler field. The type of the message
 * handler function is declared by GScannerMsgFunc.
 */
public struct GScanner{}
// /+* unused fields +/
// glib-Lexical-Scanner.html
// void* userData;
// glib-Lexical-Scanner.html
// uint maxParseErrors;
// glib-Lexical-Scanner.html
// /+* _Error() increments this field +/
// glib-Lexical-Scanner.html
// uint parseErrors;
// glib-Lexical-Scanner.html
// /+* name of input stream, featured by the defaulx message handler +/
// glib-Lexical-Scanner.html
// char *inputName;
// glib-Lexical-Scanner.html
// /+* quarked data +/
// glib-Lexical-Scanner.html
// GData *qdata;
// glib-Lexical-Scanner.html
// /+* link into the scanner configuration +/
// glib-Lexical-Scanner.html
// GScannerConfig *config;
// glib-Lexical-Scanner.html
// /+* fields filled inn after _GetNextToken() +/
// glib-Lexical-Scanner.html
// GTokenType token;
// glib-Lexical-Scanner.html
// GTokenValue value;
// glib-Lexical-Scanner.html
// uint line;
// glib-Lexical-Scanner.html
// uint position;
// glib-Lexical-Scanner.html
// /+* fields filled inn after _PeekNextToken() +/
// glib-Lexical-Scanner.html
// GTokenType nextToken;
// glib-Lexical-Scanner.html
// GTokenValue nextValue;
// glib-Lexical-Scanner.html
// uint nextLine;
// glib-Lexical-Scanner.html
// uint nextPosition;
// glib-Lexical-Scanner.html
// /+* to be considered private +/
// glib-Lexical-Scanner.html
// GHashTable *symbolTable;
// glib-Lexical-Scanner.html
// int inputFd;
// glib-Lexical-Scanner.html
// char *text;
// glib-Lexical-Scanner.html
// char *textEnd;
// glib-Lexical-Scanner.html
// char *buffer;
// glib-Lexical-Scanner.html
// uint scopeId;
// glib-Lexical-Scanner.html
// /+* handler funct for _Warn and _Error +/
// glib-Lexical-Scanner.html
// GScannerMsgFunc msgHandler;
// glib-Lexical-Scanner.html


/**
 * Specifies the GScanner settings.
 * cset_skip_characters specifies which characters
 * should be skipped by the scanner (the default is the whitespace characters:
 * space, tab, carriage-return and line-feed).
 * cset_identifier_first specifies the characters
 * which can start identifiers (the default is G_CSET_a_2_z, "_", and
 * G_CSET_A_2_Z).
 * cset_identifier_nth specifies the characters
 * which can be used in identifiers, after the first character (the default
 * is G_CSET_a_2_z, "_0123456789", G_CSET_A_2_Z, G_CSET_LATINS,
 * G_CSET_LATINC).
 * cpair_comment_single specifies the characters
 * at the start and end of single-line comments. The default is "#\n" which
 * means that single-line comments start with a '#' and continue until a '\n'
 * (end of line).
 * case_sensitive specifies if symbols are
 * case sensitive (the default is FALSE).
 * skip_comment_multi specifies if multi-line
 * comments are skipped and not returned as tokens (the default is TRUE).
 * skip_comment_single specifies if single-line
 * comments are skipped and not returned as tokens (the default is TRUE).
 * scan_comment_multi specifies if multi-line
 * comments are recognized (the default is TRUE).
 * scan_identifier specifies if identifiers
 * are recognized (the default is TRUE).
 * scan_identifier_1char specifies if single-character
 * identifiers are recognized (the default is FALSE).
 * scan_identifier_NULL specifies if
 * NULL is reported as G_TOKEN_IDENTIFIER_NULL.
 * (the default is FALSE).
 * scan_symbols specifies if symbols are
 * recognized (the default is TRUE).
 * scan_binary specifies if binary numbers
 * are recognized (the default is FALSE).
 * scan_octal specifies if octal numbers
 * are recognized (the default is TRUE).
 * scan_float specifies if floating point numbers
 * are recognized (the default is TRUE).
 * scan_hex specifies if hexadecimal numbers
 * are recognized (the default is TRUE).
 * scan_hex_dollar specifies if '$' is recognized
 * as a prefix for hexadecimal numbers (the default is FALSE).
 * scan_string_sq specifies if strings can be
 * enclosed in single quotes (the default is TRUE).
 * scan_string_dq specifies if strings can be
 * enclosed in double quotes (the default is TRUE).
 * numbers_2_int specifies if binary, octal and
 * hexadecimal numbers are reported as G_TOKEN_INT (the default is TRUE).
 * int_2_float specifies if all numbers are
 * reported as G_TOKEN_FLOAT (the default is FALSE).
 * identifier_2_string specifies if identifiers
 * are reported as strings (the default is FALSE).
 * char_2_token specifies if characters
 * are reported by setting token = ch or as G_TOKEN_CHAR
 * (the default is TRUE).
 * symbol_2_token specifies if symbols
 * are reported by setting token = v_symbol or as
 * G_TOKEN_SYMBOL (the default is FALSE).
 * scope_0_fallback specifies if a symbol
 * is searched for in the default scope in addition to the current scope
 * (the default is FALSE).
 */
public struct GScannerConfig{}
// /+* Character sets
// glib-Lexical-Scanner.html
// +/
// glib-Lexical-Scanner.html
// char *csetSkipCharacters; /+* default: " \t\n" +/
// glib-Lexical-Scanner.html
// char *csetIdentifierFirst;
// glib-Lexical-Scanner.html
// char *csetIdentifierNth;
// glib-Lexical-Scanner.html
// char *cpairCommentSingle; /+* default: "#\n" +/
// glib-Lexical-Scanner.html
// /+* Should symbol lookup work case sensitive?
// glib-Lexical-Scanner.html
// +/
// glib-Lexical-Scanner.html
// uint caseSensitive : 1;
// glib-Lexical-Scanner.html
// /+* Boolean values to be adjusted "on the fly"
// glib-Lexical-Scanner.html
// * to configure scanning behaviour.
// glib-Lexical-Scanner.html
// +/
// glib-Lexical-Scanner.html
// uint skipCommentMulti : 1; /+* C like comment +/
// glib-Lexical-Scanner.html
// uint skipCommentSingle : 1; /+* single line comment +/
// glib-Lexical-Scanner.html
// uint scanCommentMulti : 1; /+* scan multi line comments? +/
// glib-Lexical-Scanner.html
// uint scanIdentifier : 1;
// glib-Lexical-Scanner.html
// uint scanIdentifier1char : 1;
// glib-Lexical-Scanner.html
// uint scanIdentifierNULL : 1;
// glib-Lexical-Scanner.html
// uint scanSymbols : 1;
// glib-Lexical-Scanner.html
// uint scanBinary : 1;
// glib-Lexical-Scanner.html
// uint scanOctal : 1;
// glib-Lexical-Scanner.html
// uint scanFloat : 1;
// glib-Lexical-Scanner.html
// uint scanHex : 1; /+* `0x0ff0' +/
// glib-Lexical-Scanner.html
// uint scanHexDollar : 1; /+* `$0ff0' +/
// glib-Lexical-Scanner.html
// uint scanStringSq : 1; /+* string: 'anything' +/
// glib-Lexical-Scanner.html
// uint scanStringDq : 1; /+* string: "\\-escapes!\n" +/
// glib-Lexical-Scanner.html
// uint numbers2_Int : 1; /+* bin, octal, hex => int +/
// glib-Lexical-Scanner.html
// uint int2_Float : 1; /+* int => G_TOKEN_FLOAT? +/
// glib-Lexical-Scanner.html
// uint identifier2_String : 1;
// glib-Lexical-Scanner.html
// uint char2_Token : 1; /+* return G_TOKEN_CHAR? +/
// glib-Lexical-Scanner.html
// uint symbol2_Token : 1;
// glib-Lexical-Scanner.html
// uint scope0_Fallback : 1; /+* try scope 0 on lookups? +/
// glib-Lexical-Scanner.html
// uint storeInt64 : 1; /+* use value.vInt64 rather than vInt +/
// glib-Lexical-Scanner.html
// uint paddingDummy;
// glib-Lexical-Scanner.html


/**
 * Main Gtk struct.
 * The data structure used for automatic completion.
 * GList*items;
 * list of target items (strings or data structures).
 * GCompletionFuncfunc;
 * function which is called to get the string associated with a target
 */
public struct GCompletion{}
// GList* items;
// glib-Automatic-String-Completion.html
// GCompletionFunc func;
// glib-Automatic-String-Completion.html
// char* prefix;
// glib-Automatic-String-Completion.html
// GList* cache;
// glib-Automatic-String-Completion.html
// GCompletionStrncmpFunc strncmpFunc;
// glib-Automatic-String-Completion.html


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
 * constgchar*long_name;
 * The long name of an option can be used to specify it
 */
public struct GOptionEntry{}
// char *longName;
// glib-Commandline-option-parser.html
// char shortName;
// glib-Commandline-option-parser.html
// int flags;
// glib-Commandline-option-parser.html
// GOptionArg arg;
// glib-Commandline-option-parser.html
// void* argData;
// glib-Commandline-option-parser.html
// char *description;
// glib-Commandline-option-parser.html
// char *argDescription;
// glib-Commandline-option-parser.html


/**
 * A GOptionGroup struct defines the options in a single
 * group. The struct has only private fields and should not be directly accessed.
 * All options in a group share the same translation function. Libaries which
 * need to parse commandline options are expected to provide a function for
 * getting a GOptionGroup holding their options, which
 * the application can then add to its GOptionContext.
 */
public struct GOptionGroup{}


/**
 * Main Gtk struct.
 * A GPatternSpec is the 'compiled' form of a pattern.
 * This structure is opaque and its fields cannot be accessed directly.
 */
public struct GPatternSpec{}


/**
 * Main Gtk struct.
 * A parse context is used to parse a stream of bytes that you expect to
 * contain marked-up text. See g_markup_parse_context_new(),
 * GMarkupParser, and so on for more details.
 */
public struct GMarkupParseContext{}


/**
 * Any of the fields in GMarkupParser can be NULL, in which case they
 * will be ignored. Except for the error function, any of these
 * callbacks can set an error; in particular the
 * G_MARKUP_ERROR_UNKNOWN_ELEMENT, G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE,
 * and G_MARKUP_ERROR_INVALID_CONTENT errors are intended to be set
 * from these callbacks. If you set an error from a callback,
 * g_markup_parse_context_parse() will report that error back to its caller.
 * start_element()
 * Callback to invoke when the opening tag of an element
 */
public struct GMarkupParser{}
// /+* Called for open tags <foo bar="baz"> +/
// glib-Simple-XML-Subset-Parser.html
// void (*startElement) (GMarkupParseContext *context,
// glib-Simple-XML-Subset-Parser.html
// char *elementName,
// glib-Simple-XML-Subset-Parser.html
// char **attributeNames,
// glib-Simple-XML-Subset-Parser.html
// char **attributeValues,
// glib-Simple-XML-Subset-Parser.html
// void* userData,
// glib-Simple-XML-Subset-Parser.html
// GError **error);
// glib-Simple-XML-Subset-Parser.html
// /+* Called for close tags </foo> +/
// glib-Simple-XML-Subset-Parser.html
// void (*endElement) (GMarkupParseContext *context,
// glib-Simple-XML-Subset-Parser.html
// char *elementName,
// glib-Simple-XML-Subset-Parser.html
// void* userData,
// glib-Simple-XML-Subset-Parser.html
// GError **error);
// glib-Simple-XML-Subset-Parser.html
// /+* Called for character data +/
// glib-Simple-XML-Subset-Parser.html
// /+* text is not nul-terminated +/
// glib-Simple-XML-Subset-Parser.html
// void (*text) (GMarkupParseContext *context,
// glib-Simple-XML-Subset-Parser.html
// char *text,
// glib-Simple-XML-Subset-Parser.html
// uint textLen,
// glib-Simple-XML-Subset-Parser.html
// void* userData,
// glib-Simple-XML-Subset-Parser.html
// GError **error);
// glib-Simple-XML-Subset-Parser.html
// /+* Called for strings that should be re-saved verbatim inn this same
// glib-Simple-XML-Subset-Parser.html
// * position, but are not otherwise interpretable. At the moment
// glib-Simple-XML-Subset-Parser.html
// * this includes comments and processing instructions.
// glib-Simple-XML-Subset-Parser.html
// +/
// glib-Simple-XML-Subset-Parser.html
// /+* text is not nul-terminated. +/
// glib-Simple-XML-Subset-Parser.html
// void (*passthrough) (GMarkupParseContext *context,
// glib-Simple-XML-Subset-Parser.html
// char *passthroughText,
// glib-Simple-XML-Subset-Parser.html
// uint textLen,
// glib-Simple-XML-Subset-Parser.html
// void* userData,
// glib-Simple-XML-Subset-Parser.html
// GError **error);
// glib-Simple-XML-Subset-Parser.html
// /+* Called on error, including one set by other
// glib-Simple-XML-Subset-Parser.html
// * methods inn the vtable. The GError should not be freed.
// glib-Simple-XML-Subset-Parser.html
// +/
// glib-Simple-XML-Subset-Parser.html
// void (*error) (GMarkupParseContext *context,
// glib-Simple-XML-Subset-Parser.html
// GError *error,
// glib-Simple-XML-Subset-Parser.html
// void* userData);
// glib-Simple-XML-Subset-Parser.html


/**
 * Main Gtk struct.
 * The GKeyFile struct contains only private fields
 * and should not be used directly.
 */
public struct GKeyFile{}


/**
 * Main Gtk struct.
 * Warning
 * GMemChunk is deprecated and should not be used in newly-written code.
 * The GMemChunk struct is an opaque data structure representing a memory
 * chunk. It should be accessed only through the use of the following functions.
 */
public struct GMemChunk{}


/**
 * Main Gtk struct.
 * The GList struct is used for each element in a doubly-linked list.
 * gpointerdata;
 * holds the element's data, which can be a pointer to any kind of data,
 */
public struct GList{}
// void* data;
// glib-Doubly-Linked-Lists.html
// GList *next;
// glib-Doubly-Linked-Lists.html
// GList *prev;
// glib-Doubly-Linked-Lists.html


/**
 * Main Gtk struct.
 * The GSList struct is used for each element in the singly-linked list.
 * gpointerdata;
 * holds the element's data, which can be a pointer to any kind of data,
 */
public struct GSList{}
// void* data;
// glib-Singly-Linked-Lists.html
// GSList *next;
// glib-Singly-Linked-Lists.html


/**
 * Main Gtk struct.
 * Contains the public fields of a Queue.
 * GList*head;
 * a pointer to the first element of the queue.
 * GList*tail;
 * a pointer to the last element of the queue.
 * guintlength;
 * the number of elements in the queue.
 */
public struct GQueue{}
// GList *head;
// glib-Double-ended-Queues.html
// GList *tail;
// glib-Double-ended-Queues.html
// uint length;
// glib-Double-ended-Queues.html


/**
 * Main Gtk struct.
 * Each piece of memory that is pushed onto the stack
 * is cast to a GTrashStack*.
 * GTrashStack*next;
 * pointer to the previous element of the stack,
 * gets stored in the first sizeof (gpointer)
 * bytes of the element.
 */
public struct GTrashStack{}
// GTrashStack *next;
// glib-Trash-Stacks.html


/**
 * Main Gtk struct.
 * The GHashTable struct is an opaque data structure to represent a
 * Hash Table.
 * It should only be accessed via the following functions.
 */
public struct GHashTable{}


/**
 * Main Gtk struct.
 * The GString struct contains the public fields of a GString.
 * The str field points to the character data.
 * It may move as text is added.
 * The len field contains the length of the string,
 * not including the terminating nul byte.
 * The str field is nul-terminated and so can be used as an ordinary C
 * string. But it may be moved when text is appended or inserted into the
 * string.
 */
public struct GString
{
	char *str;
	uint len;
	uint allocatedLen;
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
 * gchar*data;
 * a pointer to the element data. The data may be moved as elements are
 * added to the GArray.
 * guintlen;
 * the number of elements in the GArray.
 */
public struct GArray
{
	char *data;
	uint len;
}


/**
 * Main Gtk struct.
 * Contains the public fields of a pointer array.
 * gpointer*pdata;
 * points to the array of pointers, which may be moved when the array grows.
 * guintlen;
 * number of pointers in the array.
 */
public struct GPtrArray
{
	void* *pdata;
	uint len;
}


/**
 * Main Gtk struct.
 * The GByteArray struct allows access to the public fields of a GByteArray.
 * guint8*data;
 * a pointer to the element data. The data may be moved as elements are
 * added to the GByteArray.
 * guintlen;
 * the number of elements in the GByteArray.
 */
public struct GByteArray
{
	byte *data;
	uint len;
}


/**
 * Main Gtk struct.
 * The GTree struct is an opaque data structure representing a
 * Balanced Binary Tree.
 * It should be accessed only by using the following functions.
 */
public struct GTree{}


/**
 * Main Gtk struct.
 * The GNode struct represents one node in a
 * N-ary Tree.
 * The data field contains the actual data of the node.
 * The next and prev
 * fields point to the node's siblings (a sibling is another GNode with the
 * same parent).
 * The parent field points to the parent of the GNode,
 * or is NULL if the GNode is the root of the tree.
 * The children field points to the first child of the
 * GNode. The other children are accessed by using the
 * next pointer of each child.
 */
public struct GNode{}
// void* data;
// glib-N-ary-Trees.html
// GNode *next;
// glib-N-ary-Trees.html
// GNode *prev;
// glib-N-ary-Trees.html
// GNode *parent;
// glib-N-ary-Trees.html
// GNode *children;
// glib-N-ary-Trees.html


/**
 * Main Gtk struct.
 * The GData struct is an opaque data structure to represent a
 * Keyed Data List.
 * It should only be accessed via the following functions.
 */
public struct GData{}


/**
 * Main Gtk struct.
 * The GRelation struct is an opaque data structure to represent a
 * Relation.
 * It should only be accessed via the following functions.
 */
public struct GRelation{}


/**
 * The GTuples struct is used to return records (or tuples) from the
 * GRelation by g_relation_select().
 * It only contains one public member - the number of records that matched.
 * To access the matched records, you must use g_tuples_index().
 * guintlen;
 * the number of records that matched.
 */
public struct GTuples
{
	uint len;
}


/**
 * Main Gtk struct.
 * The GCache struct is an opaque data structure containing information about
 * a GCache. It should only be accessed via the following functions.
 */
public struct GCache{}


/**
 * Main Gtk struct.
 * Warning
 * GAllocator is deprecated and should not be used in newly-written code.
 * The GAllocator struct contains private data. and
 * should only be accessed using the following functions.
 */
public struct GAllocator{}


/*
 * Checks the version of the GLib library.
 * Returns TRUE if the version of the GLib header files is the same
 * as or newer than the passed-in version.
 * Example1.Checking the version of the GLib library
 *  if (!GLIB_CHECK_VERSION (1, 2, 0))
 *  g_error ("GLib version 1.2.0 or above is needed");
 * major:
 * the major version number.
 * minor:
 * the minor version number.
 * micro:
 * the micro version number.
 */
// TODO
// #define GLIB_CHECK_VERSION(major,minor,micro)

/*
 * Warning
 * g_main_new has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_loop_new() instead.
 * Creates a new GMainLoop for the default main loop.
 * is_running:
 * set to TRUE to indicate that the loop is running. This is not
 * very important since calling g_main_run() will set this to TRUE anyway.
 * Returns:
 * a new GMainLoop.
 */
// TODO
// #define g_main_new(is_running)

/*
 * Warning
 * g_main_destroy has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_loop_unref() instead.
 * Frees the memory allocated for the GMainLoop.
 * loop:
 * a GMainLoop.
 */
// TODO
// #define g_main_destroy(loop)

/*
 * Warning
 * g_main_run has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_loop_run() instead.
 * Runs a main loop until it stops running.
 * loop:
 * a GMainLoop.
 */
// TODO
// #define g_main_run(loop)

/*
 * Warning
 * g_main_quit has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_loop_quit() instead.
 * Stops the GMainLoop. If g_main_run() was called to run the GMainLoop,
 * it will now return.
 * loop:
 * a GMainLoop.
 */
// TODO
// #define g_main_quit(loop)

/*
 * Warning
 * g_main_is_running has been deprecated since version 2.2 and should not be used in newly-written code. USe g_main_loop_is_running() instead.
 * Checks if the main loop is running.
 * loop:
 * a GMainLoop.
 * Returns:
 * TRUE if the main loop is running.
 */
// TODO
// #define g_main_is_running(loop)

/*
 * Warning
 * g_main_iteration has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_context_iteration() instead.
 * Runs a single iteration for the default GMainContext.
 * may_block:
 * set to TRUE if it should block (i.e. wait) until an event source
 * becomes ready. It will return after an event source has been processed.
 * If set to FALSE it will return immediately if no event source is ready to be
 * processed.
 * Returns:
 * TRUE if more events are pending.
 */
// TODO
// #define g_main_iteration(may_block)

/*
 * Warning
 * g_main_pending has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_context_pending() instead.
 * Checks if any events are pending for the default GMainContext
 * (i.e. ready to be processed).
 * Returns:
 * TRUE if any events are pending.
 */
// TODO
// #define g_main_pending()

/*
 * Warning
 * g_main_set_poll_func has been deprecated since version 2.2 and should not be used in newly-written code. Use g_main_context_set_poll_func() instead.
 * Sets the function to use for the handle polling of file descriptors
 * for the default main context.
 * func:
 * the function to call to poll all file descriptors.
 */
// TODO
// #define g_main_set_poll_func(func)

/*
 * Allocates n_structs elements of type struct_type.
 * The returned pointer is cast to a pointer to the given type.
 * If n_structs is 0 it returns NULL.
 * Since the returned pointer is already casted to the right type,
 * it is normally unnecessary to cast it explicitly, and doing
 * so might hide memory allocation errors.
 * struct_type:
 * the type of the elements to allocate.
 * n_structs:
 * the number of elements to allocate.
 * Returns:
 * a pointer to the allocated memory, cast to a pointer to struct_type.
 */
// TODO
// #define g_new(struct_type, n_structs)

/*
 * Allocates n_structs elements of type struct_type, initialized to 0's.
 * The returned pointer is cast to a pointer to the given type.
 * If n_structs is 0 it returns NULL.
 * Since the returned pointer is already casted to the right type,
 * it is normally unnecessary to cast it explicitly, and doing
 * so might hide memory allocation errors.
 * struct_type:
 * the type of the elements to allocate.
 * n_structs:
 * the number of elements to allocate.
 * Returns:
 * a pointer to the allocated memory, cast to a pointer to struct_type.
 */
// TODO
// #define g_new0(struct_type, n_structs)

/*
 * Reallocates the memory pointed to by mem, so that it now has space for
 * n_structs elements of type struct_type. It returns the new address of
 * the memory, which may have been moved.
 * struct_type:
 * the type of the elements to allocate.
 * mem:
 * the currently allocated memory.
 * n_structs:
 * the number of elements to allocate.
 * Returns:
 * a pointer to the new allocated memory, cast to a pointer to struct_type.
 */
// TODO
// #define g_renew(struct_type, mem, n_structs)

/*
 * Attempts to allocate n_structs elements of type struct_type, and returns
 * NULL on failure. Contrast with g_new(), which aborts the program on failure.
 * The returned pointer is cast to a pointer to the given type.
 * If n_structs is 0 it returns NULL.
 * struct_type:
 * the type of the elements to allocate.
 * n_structs:
 * the number of elements to allocate.
 * Returns:
 * a pointer to the allocated memory, cast to a pointer to struct_type.
 * Since 2.8
 */
// TODO
// #define g_try_new(struct_type, n_structs)

/*
 * Attempts to allocate n_structs elements of type struct_type, initialized
 * to 0's, and returns NULL on failure. Contrast with g_new0(), which aborts
 * the program on failure.
 * The returned pointer is cast to a pointer to the given type.
 * If n_counts is 0 it returns NULL.
 * struct_type:
 * the type of the elements to allocate.
 * n_structs:
 * the number of elements to allocate.
 * Returns:
 * a pointer to the allocated memory, cast to a pointer to struct_type.
 * Since 2.8
 */
// TODO
// #define g_try_new0(struct_type, n_structs)

/*
 * Attempts to reallocate the memory pointed to by mem, so that it now has
 * space for n_structs elements of type struct_type, and returns NULL on
 * failure. Contrast with g_renew(), which aborts the program on failure.
 * It returns the new address of the memory, which may have been moved.
 * struct_type:
 * the type of the elements to allocate.
 * mem:
 * the currently allocated memory.
 * n_structs:
 * the number of elements to allocate.
 * Returns:
 * a pointer to the new allocated memory, cast to a pointer to struct_type.
 * Since 2.8
 */
// TODO
// #define g_try_renew(struct_type, mem, n_structs)

/*
 * Allocates size bytes on the stack; these bytes will be freed when the current
 * stack frame is cleaned up. This macro essentially just wraps the
 * alloca() function present on most UNIX variants.
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
 * size:
 *  number of bytes to allocate.
 * Returns:
 * space for size bytes, allocated on the stack
 */
// TODO
// #define g_alloca(size)

/*
 * Wraps g_alloca() in a more typesafe manner.
 * struct_type:
 * Type of memory chunks to be allocated
 * n_structs:
 *  Number of chunks to be allocated
 * Returns:
 *  Pointer to stack space for n_structs chunks of type struct_type
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
 * dest:
 *  the destination address to copy the bytes to.
 * src:
 *  the source address to copy the bytes from.
 * len:
 *  the number of bytes to copy.
 */
// TODO
// #define g_memmove(dest,src,len)

/*
 * Returns from the current function if the expression is not true.
 * If the expression evaluates to FALSE, a critical message is logged and
 * the function returns. This can only be used in functions which do not return
 * a value.
 * expr:
 * the expression to check.
 */
// TODO
// #define g_return_if_fail(expr)

/*
 * Returns from the current function, returning the value val, if the expression
 * is not true.
 * If the expression evaluates to FALSE, a critical message is logged and
 * val is returned.
 * expr:
 * the expression to check.
 * val:
 * the value to return from the current function if the expression is not
 * true.
 */
// TODO
// #define g_return_val_if_fail(expr,val)

/*
 * Logs a critical message and returns from the current function.
 * This can only be used in functions which do not return a value.
 */
// TODO
// #define g_return_if_reached()

/*
 * Logs a critical message and returns val.
 * val:
 * the value to return from the current function.
 */
// TODO
// #define g_return_val_if_reached(val)

/*
 * Debugging macro to terminate the application if the assertion fails.
 * If the assertion fails (i.e. the expression is not true), an error message
 * is logged and the application is terminated.
 * The macro can be turned off in final releases of code by defining
 * G_DISABLE_ASSERT when compiling the application.
 * expr:
 * the expression to check.
 */
// TODO
// #define g_assert(expr)

/*
 * Debugging macro to terminate the application if it is ever reached.
 * If it is reached, an error message is logged and the application is terminated.
 * The macro can be turned off in final releases of code by defining
 * G_DISABLE_ASSERT when compiling the application.
 */
// TODO
// #define g_assert_not_reached()

/*
 * Inserts a breakpoint instruction into the code (on x86 machines only).
 */
// TODO
// #define G_BREAKPOINT()

/*
 * A convenience function/macro to log a normal message.
 * ...:
 * format string, followed by parameters to insert into the format string (as with printf())
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 */
// TODO
// #define g_message(...)

/*
 * A convenience function/macro to log a warning message.
 * You can make warnings fatal at runtime by setting the G_DEBUG environment
 * variable (see Running GLib Applications).
 * ...:
 * format string, followed by parameters to insert into the format string (as with printf())
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 */
// TODO
// #define g_warning(...)

/*
 * Logs a "critical warning" (G_LOG_LEVEL_CRITICAL). It's more or less
 * application-defined what constitutes a critical vs. a regular
 * warning. You could call g_log_set_always_fatal() to make critical
 * warnings exit the program, then use g_critical() for fatal errors, for
 * example.
 * You can also make critical warnings fatal at runtime by setting
 * the G_DEBUG environment variable (see
 * Running GLib Applications).
 * ...:
 * format string, followed by parameters to insert into the format string (as with printf())
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 */
// TODO
// #define g_critical(...)

/*
 * A convenience function/macro to log an error message.
 * Error messages are always fatal, resulting in a call to
 * abort() to terminate the application.
 * This function will result in a core dump; don't use it for errors you
 * expect. Using this function indicates a bug in your program, i.e. an
 * assertion failure.
 * ...:
 * format string, followed by parameters to insert into the format string (as with printf())
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 */
// TODO
// #define g_error(...)

/*
 * A convenience function/macro to log a debug message.
 * ...:
 * format string, followed by parameters to insert into the format string (as with printf())
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * ...:
 * Since 2.6
 */
// TODO
// #define g_debug(...)

/*
 * Removes leading and trailing whitespace from a string. See g_strchomp() and
 * g_strchug().
 * string:
 * a string to remove the leading and trailing whitespace from.
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
 * p:
 * Pointer to the start of a valid UTF-8 character.
 */
// TODO
// #define g_utf8_next_char(p)

/*
 * Marks a string for translation, gets replaced with the translated string
 * at runtime.
 * String:
 * the string to be translated
 * Since 2.4
 */
// TODO
// #define _(String)

/*
 * Like _(), but applies g_strip_context() to the translation. This has the
 * advantage that the string can be adorned with a prefix to guarantee
 * uniqueness and provide context to the translator.
 * One use case given in the gettext manual is GUI translation, where one could
 * e.g. disambiguate two "Open" menu entries as "File|Open" and "Printer|Open".
 * Another use case is the string "Russian" which may have to be translated
 * differently depending on whether it's the name of a character set or a
 * language. This could be solved by using "charset|Russian" and
 * "language|Russian".
 * String:
 * the string to be translated, with a '|'-separated prefix which
 *  must not be translated
 * Since 2.4
 */
// TODO
// #define Q_(String)

/*
 * Marks a string for translation, gets replaced with the untranslated string
 * at runtime. This is useful in situations where the translated strings can't
 * be directly used, e.g. in string array initializers.
 *  {
	 *  static const char *messages[] = {
		 *  N_("some very meaningful message"),
		 *  N_("and another one")
	 *  };
	 *  const char *string;
	 *  ...
	 *  string
	 *  = index > 1 ? _("a default message") : gettext (messages[index]);
	 *  fputs (string);
	 *  ...
 *  }
 * String:
 * the string to be translated
 * Since 2.4
 */
// TODO
// #define N_(String)

/*
 * Returns a random gboolean from rand_. This corresponds to a unbiased
 * coin toss.
 * rand_:
 * a GRand.
 * Returns:
 * a random gboolean.
 */
// TODO
// #define g_rand_boolean(rand_)

/*
 * Returns a random gboolean. This corresponds to a unbiased coin toss.
 * Returns:
 * a random gboolean.
 */
// TODO
// #define g_random_boolean()

/*
 * Warning
 * g_scanner_freeze_symbol_table has been deprecated since version 2.2 and should not be used in newly-written code. This macro does nothing.
 * scanner:
 * a GScanner.
 */
// TODO
// #define g_scanner_freeze_symbol_table(scanner)

/*
 * Warning
 * g_scanner_thaw_symbol_table has been deprecated since version 2.2 and should not be used in newly-written code. This macro does nothing.
 * scanner:
 * a GScanner.
 */
// TODO
// #define g_scanner_thaw_symbol_table(scanner)

/*
 * Warning
 * g_scanner_add_symbol has been deprecated since version 2.2 and should not be used in newly-written code. Use g_scanner_scope_add_symbol() instead.
 * Adds a symbol to the default scope.
 * scanner:
 * a GScanner.
 * symbol:
 * the symbol to add.
 * value:
 * the value of the symbol.
 */
// TODO
// #define g_scanner_add_symbol( scanner, symbol, value )

/*
 * Warning
 * g_scanner_remove_symbol has been deprecated since version 2.2 and should not be used in newly-written code. Use g_scanner_scope_remove_symbol() instead.
 * Removes a symbol from the default scope.
 * scanner:
 * a GScanner.
 * symbol:
 * the symbol to remove.
 */
// TODO
// #define g_scanner_remove_symbol( scanner, symbol )

/*
 * Warning
 * g_scanner_foreach_symbol has been deprecated since version 2.2 and should not be used in newly-written code. Use g_scanner_scope_foreach_symbol() instead.
 * Calls a function for each symbol in the default scope.
 * scanner:
 * a GScanner.
 * func:
 * the function to call with each symbol.
 * data:
 * data to pass to the function.
 */
// TODO
// #define g_scanner_foreach_symbol( scanner, func, data )

/*
 * Provided for UNIX emulation on Windows; see documentation for pipe()
 * in any UNIX manual.
 * phandles:
 * file descriptors, the first one for reading, the second one for writing.
 */
// TODO
// #define pipe(phandles)	_pipe (phandles, 4096, _O_BINARY)

/*
 * On Windows, this macro defines a DllMain() function
 * that stores the actual DLL name that the code being compiled will be
 * included in.
 * On non-Windows platforms, expands to nothing.
 * static:
 * empty or "static".
 * dll_name:
 * the name of the (pointer to the) char array where the DLL name
 *  will be stored. If this is used, you must also include
 *  windows.h. If you need a more complex DLL entry
 *  point function, you cannot use this.
 */
// TODO
// #define G_WIN32_DLLMAIN_FOR_DLL_NAME(static, dll_name)

/*
 * On Windows, this macro defines an expression which evaluates to TRUE
 * if the code is running on a version of Windows where the wide
 * character versions of the Win32 API functions, and the wide chaacter
 * versions of the C library functions work. (They are always present in
 * the DLLs, but don't work on Windows 9x and Me.)
 * On non-Windows platforms, it is not defined.
 * Since 2.6
 */
// TODO
// #define G_WIN32_HAVE_WIDECHAR_API() TRUE

/*
 * On Windows, this macro defines an expression which evaluates to TRUE
 * if the code is running on an NT-based Windows operating system.
 * On non-Windows platforms, it is not defined.
 * Since 2.6
 */
// TODO
// #define G_WIN32_IS_NT_BASED() TRUE

/*
 * A convenience macro to allocate a block of memory from the slice allocator.
 * It calls g_slice_alloc() with sizeof (type) and casts the returned pointer
 * to a pointer of the given type, avoiding a type cast in the source code.
 * Note that the underlying slice allocation mechanism can
 * be changed with the G_SLICE=always-malloc
 * environment variable.
 * type:
 * the type to allocate, typically a structure name
 * Returns:
 * a pointer to the allocated block, cast to a pointer to type.
 * Since 2.10
 */
// TODO
// #define g_slice_new(type)

/*
 * A convenience macro to allocate a block of memory from the slice allocator
 * and set the memory to 0. It calls g_slice_alloc0() with sizeof (type) and
 * casts the returned pointer to a pointer of the given type, avoiding a type
 * cast in the source code.
 * Note that the underlying slice allocation mechanism can
 * be changed with the G_SLICE=always-malloc
 * environment variable.
 * type:
 * the type to allocate, typically a structure name
 * Returns:
 * a pointer to the allocated block, cast to a pointer to type.
 * Since 2.10
 */
// TODO
// #define g_slice_new0(type)

/*
 * A convenience macro to free a block of memory that has been allocated
 * from the slice allocator. It calls g_slice_free1() using
 * sizeof (type) as the block size.
 * Note that the exact release behaviour can be changed with the
 * G_DEBUG=gc-friendly environment variable.
 * type:
 * the type of the block to free, typically a structure name
 * mem:
 * a pointer to the block to free
 * Since 2.10
 */
// TODO
// #define g_slice_free(type, mem)

/*
 * Frees a linked list of memory blocks of structure type type.
 * The memory blocks must be equal-sized, allocated via
 * g_slice_alloc() or g_slice_alloc0() and linked together by a
 * next pointer (similar to GSList). The name of the
 * next field in type is passed as third argument.
 * Note that the exact release behaviour can be changed with the
 * G_DEBUG=gc-friendly environment variable.
 * type:
 *  the type of the mem_chain blocks
 * mem_chain:
 *  a pointer to the first block of the chain
 * next:
 *  the field name of the next pointer in type
 * Since 2.10
 * [5]
 * [Bonwick94] Jeff Bonwick, The slab allocator: An object-caching kernel
 * memory allocator. USENIX 1994, and
 * [Bonwick01] Bonwick and Jonathan Adams, Magazines and vmem: Extending the
 * slab allocator to many cpu's and arbitrary resources. USENIX 2001
 */
// TODO
// #define g_slice_free_chain(type, mem_chain, next)

/*
 * Warning
 * g_mem_chunk_create has been deprecated since version 2.10 and should not be used in newly-written code. Use the slice
 *  allocator instead
 * A convenience macro for creating a new GMemChunk.
 * It calls g_mem_chunk_new(), using the given type to create the GMemChunk
 * name. The atom size is determined using sizeof(), and the
 * area size is calculated by multiplying the pre_alloc parameter with
 * the atom size.
 * type:
 * the type of the atoms, typically a structure name.
 * pre_alloc:
 * the number of atoms to store in each block of memory.
 * alloc_type:
 * the type of the GMemChunk.
 * G_ALLOC_AND_FREE is used if the atoms will be freed individually.
 * G_ALLOC_ONLY should be used if atoms will never be freed individually.
 * G_ALLOC_ONLY is quicker, since it does not need to track free atoms,
 * but it obviously wastes memory if you no longer need many of the atoms.
 * Returns:
 * the new GMemChunk.
 */
// TODO
// #define g_mem_chunk_create(type, pre_alloc, alloc_type)

/*
 * Warning
 * g_chunk_new has been deprecated since version 2.10 and should not be used in newly-written code. Use g_slice_new() instead
 * A convenience macro to allocate an atom of memory from a GMemChunk.
 * It calls g_mem_chunk_alloc() and casts the returned atom to a pointer to
 * the given type, avoiding a type cast in the source code.
 * type:
 * the type of the GMemChunk atoms, typically a structure name.
 * chunk:
 * a GMemChunk.
 * Returns:
 * a pointer to the allocated atom, cast to a pointer to type.
 */
// TODO
// #define g_chunk_new(type, chunk)

/*
 * Warning
 * g_chunk_new0 has been deprecated since version 2.10 and should not be used in newly-written code. Use g_slice_new0() instead
 * A convenience macro to allocate an atom of memory from a GMemChunk.
 * It calls g_mem_chunk_alloc0() and casts the returned atom to a pointer to
 * the given type, avoiding a type cast in the source code.
 * type:
 * the type of the GMemChunk atoms, typically a structure name.
 * chunk:
 * a GMemChunk.
 * Returns:
 * a pointer to the allocated atom, cast to a pointer to type.
 */
// TODO
// #define g_chunk_new0(type, chunk)

/*
 * Warning
 * g_chunk_free has been deprecated since version 2.10 and should not be used in newly-written code. Use g_slice_free() instead
 * A convenience macro to free an atom of memory from a GMemChunk.
 * It simply switches the arguments and calls g_mem_chunk_free()
 * It is included simply to complement the other convenience macros, g_chunk_new()
 * and g_chunk_new0().
 * mem:
 * a pointer to the atom to be freed.
 * mem_chunk:
 * a GMemChunk.
 */
// TODO
// #define g_chunk_free(mem, mem_chunk)

/*
 * A convenience macro to gets the previous element in a GList.
 * list:
 * an element in a GList.
 * Returns:
 * the previous element, or NULL if there are no previous elements.
 */
// TODO
// #define g_list_previous(list)

/*
 * A convenience macro to gets the next element in a GList.
 * list:
 * an element in a GList.
 * Returns:
 * the next element, or NULL if there are no more elements.
 */
// TODO
// #define g_list_next(list)

/*
 * A convenience macro to gets the next element in a GSList.
 * slist:
 * an element in a GSList.
 * Returns:
 * the next element, or NULL if there are no more elements.
 */
// TODO
// #define g_slist_next(slist)

/*
 * Warning
 * g_hash_table_freeze is deprecated and should not be used in newly-written code.
 * This function is deprecated and will be removed in the next major
 *  release of GLib. It does nothing.
 * hash_table:
 * a GHashTable
 */
// TODO
// #define g_hash_table_freeze(hash_table)

/*
 * Warning
 * g_hash_table_thaw is deprecated and should not be used in newly-written code.
 * This function is deprecated and will be removed in the next major
 *  release of GLib. It does nothing.
 * hash_table:
 * a GHashTable
 */
// TODO
// #define g_hash_table_thaw(hash_table)

/*
 * Adds the value on to the end of the array.
 * The array will grow in size automatically if necessary.
 * Note
 * g_array_append_val() is a macro which uses a reference to the value
 * parameter v. This means that you cannot use it with literal values
 * such as "27". You must use variables.
 * a:
 * a GArray.
 * v:
 * the value to append to the GArray.
 * Returns:
 * the GArray.
 */
// TODO
// #define g_array_append_val(a,v)

/*
 * Adds the value on to the start of the array.
 * The array will grow in size automatically if necessary.
 * This operation is slower than g_array_append_val() since the existing elements
 * in the array have to be moved to make space for the new element.
 * Note
 * g_array_prepend_val() is a macro which uses a reference to the value
 * parameter v. This means that you cannot use it with literal values
 * such as "27". You must use variables.
 * a:
 * a GArray.
 * v:
 * the value to prepend to the GArray.
 * Returns:
 * the GArray.
 */
// TODO
// #define g_array_prepend_val(a,v)

/*
 * Inserts an element into an array at the given index.
 * Note
 * g_array_insert_val() is a macro which uses a reference to the value
 * parameter v. This means that you cannot use it with literal values
 * such as "27". You must use variables.
 * a:
 * a GArray.
 * i:
 * the index to place the element at.
 * v:
 * the value to insert into the array.
 * Returns:
 * the GArray.
 */
// TODO
// #define g_array_insert_val(a,i,v)

/*
 * Returns the element of a GArray at the given index.
 * The return value is cast to the given type.
 * Example6.Getting a pointer to an element in a GArray
 *  EDayViewEvent *event;
 *  /+* This gets a pointer to the 3rd element in the array of EDayViewEvent
 *  structs. +/
 *  event = g_array_index (events, EDayViewEvent, 3);
 * a:
 * a GArray.
 * t:
 * the type of the elements.
 * i:
 * the index of the element to return.
 * Returns:
 * the element of the GArray at the index given by i.
 */
// TODO
// #define g_array_index(a,t,i)

/*
 * Returns the pointer at the given index of the pointer array.
 * array:
 * a GPtrArray.
 * index_:
 * the index of the pointer to return.
 * Returns:
 * the pointer at the given index.
 */
// TODO
// #define g_ptr_array_index(array,index_)

/*
 * Inserts a GNode as the last child of the given parent.
 * parent:
 * the GNode to place the new GNode under.
 * node:
 * the GNode to insert.
 * Returns:
 * the inserted GNode.
 */
// TODO
// #define g_node_append(parent, node)

/*
 * Inserts a new GNode at the given position.
 * parent:
 * the GNode to place the new GNode under.
 * position:
 * the position to place the new GNode at.
 * If position is -1, the new GNode is inserted as the last child of parent.
 * data:
 * the data for the new GNode.
 * Returns:
 * the new GNode.
 */
// TODO
// #define g_node_insert_data(parent, position, data)

/*
 * Inserts a new GNode before the given sibling.
 * parent:
 * the GNode to place the new GNode under.
 * sibling:
 * the sibling GNode to place the new GNode before.
 * data:
 * the data for the new GNode.
 * Returns:
 * the new GNode.
 */
// TODO
// #define g_node_insert_data_before(parent, sibling, data)

/*
 * Inserts a new GNode as the last child of the given parent.
 * parent:
 * the GNode to place the new GNode under.
 * data:
 * the data for the new GNode.
 * Returns:
 * the new GNode.
 */
// TODO
// #define g_node_append_data(parent, data)

/*
 * Inserts a new GNode as the first child of the given parent.
 * parent:
 * the GNode to place the new GNode under.
 * data:
 * the data for the new GNode.
 * Returns:
 * the new GNode.
 */
// TODO
// #define g_node_prepend_data(parent, data)

/*
 * Gets the first child of a GNode.
 * node:
 * a GNode.
 * Returns:
 * the last child of node, or NULL if node is NULL or has no children.
 */
// TODO
// #define g_node_first_child(node)

/*
 * Gets the next sibling of a GNode.
 * node:
 * a GNode.
 * Returns:
 * the next sibling of node, or NULL if node is NULL.
 */
// TODO
// #define g_node_next_sibling(node)

/*
 * Gets the previous sibling of a GNode.
 * node:
 * a GNode.
 * Returns:
 * the previous sibling of node, or NULL if node is NULL.
 */
// TODO
// #define g_node_prev_sibling(node)

/*
 * Returns TRUE if a GNode is a leaf node.
 * node:
 * a GNode.
 * Returns:
 * TRUE if the GNode is a leaf node (i.e. it has no children).
 */
// TODO
// #define	 G_NODE_IS_LEAF(node)	(((GNode*) (node))->children == NULL)

/*
 * Returns TRUE if a GNode is the root of a tree.
 * node:
 * a GNode.
 * Returns:
 * TRUE if the GNode is the root of a tree (i.e. it has no parent
 * or siblings).
 */
// TODO
// #define G_NODE_IS_ROOT(node)

/*
 * Sets the data corresponding to the given GQuark id.
 * Any previous data with the same key is removed, and its
 * destroy function is called.
 * dl:
 * a datalist.
 * q:
 * the GQuark to identify the data element.
 * d:
 * the data element, or NULL to remove any previous element
 * corresponding to q.
 */
// TODO
// #define g_datalist_id_set_data(dl, q, d)

/*
 * Removes an element, using its GQuark identifier.
 * dl:
 * a datalist.
 * q:
 * the GQuark identifying the data element.
 */
// TODO
// #define g_datalist_id_remove_data(dl, q)

/*
 * Sets the data element corresponding to the given string identifier.
 * dl:
 * a datalist.
 * k:
 * the string to identify the data element.
 * d:
 * the data element, or NULL to remove any previous element
 * corresponding to k.
 */
// TODO
// #define g_datalist_set_data(dl, k, d)

/*
 * Sets the data element corresponding to the given string identifier, and the
 * function to be called when the data element is removed.
 * dl:
 * a datalist.
 * k:
 * the string to identify the data element.
 * d:
 * the data element, or NULL to remove any previous element corresponding to
 * k.
 * f:
 * the function to call when the data element is removed. This
 * function will be called with the data element and can be used to free any
 * memory allocated for it. If d is NULL, then f must also be NULL.
 */
// TODO
// #define g_datalist_set_data_full(dl, k, d, f)

/*
 * Gets a data element, using its string identifer.
 * This is slower than g_datalist_id_get_data() because the string is first
 * converted to a GQuark.
 * dl:
 * a datalist.
 * k:
 * the string identifying a data element.
 * Returns:
 * the data element, or NULL if it is not found.
 */
// TODO
// #define g_datalist_get_data(dl, k)

/*
 * Removes an element using its string identifier.
 * The data element's destroy function is called if it has been set.
 * dl:
 * a datalist.
 * k:
 * the string identifying the data element.
 */
// TODO
// #define g_datalist_remove_data(dl, k)

/*
 * Removes an element, without calling its destroy notifier.
 * dl:
 * a datalist.
 * k:
 * the string identifying the data element.
 */
// TODO
// #define g_datalist_remove_no_notify(dl, k)

/*
 * Sets the data element associated with the given GQuark id.
 * Any previous data with the same key is removed, and its destroy function
 * is called.
 * l:
 * the location identifying the dataset.
 * k:
 * the GQuark id to identify the data element.
 * d:
 * the data element.
 */
// TODO
// #define g_dataset_id_set_data(l, k, d)

/*
 * Removes a data element from a dataset.
 * The data element's destroy function is called if it has been set.
 * l:
 * the location identifying the dataset.
 * k:
 * the GQuark id identifying the data element.
 */
// TODO
// #define g_dataset_id_remove_data(l, k)

/*
 * Sets the data corresponding to the given string identifier.
 * l:
 * the location identifying the dataset.
 * k:
 * the string to identify the data element.
 * d:
 * the data element.
 */
// TODO
// #define g_dataset_set_data(l, k, d)

/*
 * Sets the data corresponding to the given string identifier, and the function
 * to call when the data element is destroyed.
 * l:
 * the location identifying the dataset.
 * k:
 * the string to identify the data element.
 * d:
 * the data element.
 * f:
 * the function to call when the data element is removed. This
 * function will be called with the data element and can be used to free any
 * memory allocated for it.
 */
// TODO
// #define g_dataset_set_data_full(l, k, d, f)

/*
 * Gets the data element corresponding to a string.
 * l:
 * the location identifying the dataset.
 * k:
 * the string identifying the data element.
 * Returns:
 * the data element corresponding to the string, or NULL if it is not
 * found.
 */
// TODO
// #define g_dataset_get_data(l, k)

/*
 * Removes a data element corresponding to a string.
 * Its destroy function is called if it has been set.
 * l:
 * the location identifying the dataset.
 * k:
 * the string identifying the data element.
 */
// TODO
// #define g_dataset_remove_data(l, k)

/*
 * Removes an element, without calling its destroy notifier.
 * l:
 * the location identifying the dataset.
 * k:
 * the string identifying the data element.
 */
// TODO
// #define g_dataset_remove_no_notify(l, k)

/*
 * Specifies the type of function passed to g_main_context_set_poll_func().
 * The semantics of the function should match those of the
 * poll() system call.
 * ufds:
 * an array of GPollFD elements.
 * nfsd:
 * the number of elements in ufds.
 * timeout_:
 * the maximum time to wait for an event of the file descriptors.
 *  A negative value indicates an infinite timeout.
 * Returns:
 * the number of GPollFD elements which have events or errors reported,
 * or -1 if an error occurred.
 */
// gint (*GPollFunc) (GPollFD *ufds,  guint nfsd,  gint timeout_);
public typedef extern(C) int  function (GPollFD*, uint, int) GPollFunc;

/*
 * The type of functions to be called when a child exists.
 * pid:
 * the process id of the child process
 * status:
 * Status information about the child process,
 *  see waitpid(2) for more information about this field
 * data:
 * user data passed to g_child_watch_add()
 */
// void (*GChildWatchFunc) (GPid pid,  gint status,  gpointer data);
public typedef extern(C) void  function (GPid, int, void*) GChildWatchFunc;

/*
 * This is just a placeholder for GClosureMarshal, which cannot be used here
 * for dependency reasons.
 */
// void (*GSourceDummyMarshal) (void);
public typedef extern(C) void  function () GSourceDummyMarshal;

/*
 * Specifies the type of function passed to g_timeout_add(), g_timeout_add_full(),
 * g_idle_add(), and g_idle_add_full().
 * data:
 * data passed to the function, set when the source was created with one
 * of the above functions.
 * Returns:
 * it should return FALSE if the source should be removed.
 */
// gboolean (*GSourceFunc) (gpointer data);
public typedef extern(C) int  function (void*) GSourceFunc;

/*
 * Specifies the type of the module initialization function.
 * If a module contains a function named g_module_check_init() it is called
 * automatically when the module is loaded. It is passed the GModule structure
 * and should return NULL on success or a string describing the initialization
 * error.
 * module:
 * the GModule corresponding to the module which has just been loaded.
 * Returns:
 * NULL on success, or a string describing the initialization error.
 */
// const gchar* (*GModuleCheckInit) (GModule *module);
public typedef extern(C) char*  function (GModule*) GModuleCheckInit;

/*
 * Specifies the type of the module function called when it is unloaded.
 * If a module contains a function named g_module_unload() it is called
 * automatically when the module is unloaded.
 * It is passed the GModule structure.
 * module:
 * the GModule about to be unloaded.
 */
// void (*GModuleUnload) (GModule *module);
public typedef extern(C) void  function (GModule*) GModuleUnload;

/*
 * Specifies the type of function passed to g_io_add_watch() or
 * g_io_add_watch_full(), which is called when the requested condition on a
 * GIOChannel is satisfied.
 * source:
 * the GIOChannel event source.
 * condition:
 * the condition which has been satisfied.
 * data:
 * user data set in g_io_add_watch() or g_io_add_watch_full().
 * Returns:
 * the function should return FALSE if the event source should be
 * removed.
 */
// gboolean (*GIOFunc) (GIOChannel *source,  GIOCondition condition,  gpointer data);
public typedef extern(C) int  function (GIOChannel*, GIOCondition, void*) GIOFunc;

/*
 * Specifies the type of the print handler functions.
 * These are called with the complete formatted string to output.
 * string:
 * the message to be output.
 */
// void (*GPrintFunc) (const gchar *string);
public typedef extern(C) void  function (char[]) GPrintFunc;

/*
 * Specifies the prototype of log handler functions.
 * log_domain:
 * the log domain of the message.
 * log_level:
 * the log level of the message (including the fatal and recursion
 * flags).
 * message:
 * the message to process.
 * user_data:
 * user data, set in g_log_set_handler().
 */
// void (*GLogFunc) (const gchar *log_domain,  GLogLevelFlags log_level,  const gchar *message,  gpointer user_data);
public typedef extern(C) void  function (char[], GLogLevelFlags, char[], void*) GLogFunc;

/*
 * Declares a type of function which takes no arguments and has no return value.
 * It is used to specify the type function passed to g_atexit().
 */
// void (*GVoidFunc) (void);
public typedef extern(C) void  function () GVoidFunc;

/*
 * Declares a type of function which takes an arbitrary data pointer argument
 * and has no return value. It is not currently used in GLib or GTK+.
 * data:
 * a data pointer.
 */
// void (*GFreeFunc) (gpointer data);
public typedef extern(C) void  function (void*) GFreeFunc;

/*
 * Specifies the type of the message handler function.
 * scanner:
 * a GScanner.
 * message:
 * the message.
 * error:
 * TRUE if the message signals an error, FALSE if it
 *  signals a warning.
 */
// void (*GScannerMsgFunc) (GScanner *scanner,  gchar *message,  gboolean error);
public typedef extern(C) void  function (GScanner*, char[], int) GScannerMsgFunc;

/*
 * Specifies the type of the function passed to g_completion_new().
 * It should return the string corresponding to the given target item.
 * This is used when you use data structures as GCompletion items.
 * Param1:
 * the completion item.
 * Returns:
 * the string corresponding to the item.
 */
// gchar* (*GCompletionFunc) (gpointer );
public typedef extern(C) char*  function (void*) GCompletionFunc;

/*
 * Specifies the type of the function passed to g_completion_set_compare().
 * This is used when you use strings as GCompletion items.
 * s1:
 * string to compare with s2.
 * s2:
 * string to compare with s1.
 * n:
 * maximal number of bytes to compare.
 * Returns:
 * an integer less than, equal to, or greater than zero if the
 * first n bytes of s1 is found, respectively, to be less than, to match,
 * or to be greater than the first n bytes of s2.
 */
// gint (*GCompletionStrncmpFunc) (const gchar *s1,  const gchar *s2,  gsize n);
public typedef extern(C) int  function (char[], char[], uint) GCompletionStrncmpFunc;

/*
 * Specifies the type of the setup function passed to g_spawn_async(),
 * g_spawn_sync() and g_spawn_async_with_pipes(). On POSIX platforms it
 * is called in the child after GLib has performed all the setup it plans
 * to perform but before calling exec(). On POSIX
 * actions taken in this function will thus only affect the child, not
 * the parent.
 * On Windows the function is called in the parent. Its usefulness on
 * Windows is thus questionable. In many cases executing the child setup
 * function in the parent can have ill effects, and you should be very
 * careful when porting software to Windows that uses child setup
 * functions.
 * user_data:
 * user data to pass to the function.
 */
// void (*GSpawnChildSetupFunc) (gpointer user_data);
public typedef extern(C) void  function (void*) GSpawnChildSetupFunc;

/*
 * The type of function to be passed as callback for G_OPTION_ARG_CALLBACK
 * options.
 * option_name:
 * The name of the option being parsed. This will be either a
 *  single dash followed by a single letter (for a short name) or two dashes
 *  followed by a long option name.
 * value:
 * The value to be parsed.
 * data:
 * User data added to the GOptionGroup containing the option when it
 *  was created with g_option_group_new()
 * error:
 * A return location for errors. The error code G_OPTION_ERROR_FAILED
 *  is intended to be used for errors in GOptionArgFunc callbacks.
 * Returns:
 * TRUE if the option was successfully parsed, FALSE if an error
 *  occurred, in which case error should be set with g_set_error()
 */
// gboolean (*GOptionArgFunc) (const gchar *option_name,  const gchar *value,  gpointer data,  GError **error);
public typedef extern(C) int  function (char[], char[], void*, GError**) GOptionArgFunc;

/*
 * The type of functions which are used to translate user-visible
 * strings, for --help output.
 * str:
 * the untranslated string
 * data:
 * user data specified when installing the function, e.g.
 *  in g_option_group_set_translate_func()
 * Returns:
 * a translation of the string for the current locale.
 *  The returned string is owned by GLib and must not be freed.
 */
// const gchar* (*GTranslateFunc) (const gchar *str,  gpointer data);
public typedef extern(C) char*  function (char[], void*) GTranslateFunc;

/*
 * The type of function that can be called before and after parsing.
 * context:
 * The active GOptionContext
 * group:
 * The group to which the function belongs
 * data:
 * User data added to the GOptionGroup containing the option when it
 *  was created with g_option_group_new()
 * error:
 * A return location for error details
 * Returns:
 * TRUE if the function completed successfully, FALSE if an error
 *  occurred, in which case error should be set with g_set_error()
 */
// gboolean (*GOptionParseFunc) (GOptionContext *context,  GOptionGroup *group,  gpointer data,  GError **error);
public typedef extern(C) int  function (GOptionContext*, GOptionGroup*, void*, GError**) GOptionParseFunc;

/*
 * The type of function to be used as callback when a parse error occurs.
 * context:
 * The active GOptionContext
 * group:
 * The group to which the function belongs
 * data:
 * User data added to the GOptionGroup containing the option when it
 *  was created with g_option_group_new()
 * error:
 * The GError containing details about the parse error
 */
// void (*GOptionErrorFunc) (GOptionContext *context,  GOptionGroup *group,  gpointer data,  GError **error);
public typedef extern(C) void  function (GOptionContext*, GOptionGroup*, void*, GError**) GOptionErrorFunc;

/*
 * Specifies the type of a comparison function used to compare two
 * values. The function should return a negative integer if the first
 * value comes before the second, 0 if they are equal, or a positive
 * integer if the first value comes after the second.
 * a:
 * a value.
 * b:
 * a value to compare with.
 * Returns:
 * negative value if a < b; zero if a = b; positive value
 * if a > b.
 */
// gint (*GCompareFunc) (gconstpointer a,  gconstpointer b);
public typedef extern(C) int  function (void*, void*) GCompareFunc;

/*
 * Specifies the type of a comparison function used to compare two
 * values. The function should return a negative integer if the first
 * value comes before the second, 0 if they are equal, or a positive
 * integer if the first value comes after the second.
 * a:
 * a value.
 * b:
 * a value to compare with.
 * user_data:
 * user data to pass to comparison function.
 * Returns:
 * negative value if a < b; zero if a = b; positive value
 * if a > b.
 */
// gint (*GCompareDataFunc) (gconstpointer a,  gconstpointer b,  gpointer user_data);
public typedef extern(C) int  function (void*, void*, void*) GCompareDataFunc;

/*
 * Specifies the type of functions passed to g_list_foreach() and
 * g_slist_foreach().
 * data:
 * the element's data.
 * user_data:
 * user data passed to g_list_foreach() or g_slist_foreach().
 */
// void (*GFunc) (gpointer data,  gpointer user_data);
public typedef extern(C) void  function (void*, void*) GFunc;

/*
 * Specifies the type of the hash function which is passed to
 * g_hash_table_new() when a GHashTable is created.
 * The function is passed a key and should return a guint hash value.
 * The functions g_direct_hash(), g_int_hash() and g_str_hash() provide
 * hash functions which can be used when the key is a gpointer, gint, and
 * gchar* respectively.
 * FIXME: Need more here.
 * The hash values should be evenly distributed over a fairly large range?
 * The modulus is taken with the hash table size (a prime number)
 * to find the 'bucket' to place each key into.
 * The function should also be very fast, since it is called for each key
 * lookup.
 * key:
 * a key.
 * Returns:
 * the hash value corresponding to the key.
 */
// guint (*GHashFunc) (gconstpointer key);
public typedef extern(C) uint  function (void*) GHashFunc;

/*
 * Specifies the type of a function used to test two values for
 * equality. The function should return TRUE if both values are equal and
 * FALSE otherwise.
 * a:
 * a value.
 * b:
 * a value to compare with.
 * Returns:
 * TRUE if a = b; FALSE otherwise.
 */
// gboolean (*GEqualFunc) (gconstpointer a,  gconstpointer b);
public typedef extern(C) int  function (void*, void*) GEqualFunc;

/*
 * Specifies the type of the function passed to g_hash_table_foreach().
 * It is called with each key/value pair, together with the user_data parameter
 * which is passed to g_hash_table_foreach().
 * key:
 * a key.
 * value:
 * the value corresponding to the key.
 * user_data:
 * user data passed to g_hash_table_foreach().
 */
// void (*GHFunc) (gpointer key,  gpointer value,  gpointer user_data);
public typedef extern(C) void  function (void*, void*, void*) GHFunc;

/*
 * Specifies the type of the function passed to g_hash_table_foreach_remove().
 * It is called with each key/value pair, together with the user_data parameter
 * passed to g_hash_table_foreach_remove().
 * It should return TRUE if the key/value pair should be removed from the
 * GHashTable.
 * key:
 * a key.
 * value:
 * the value associated with the key.
 * user_data:
 * user data passed to g_hash_table_remove().
 * Returns:
 * TRUE if the key/value pair should be removed from the GHashTable.
 */
// gboolean (*GHRFunc) (gpointer key,  gpointer value,  gpointer user_data);
public typedef extern(C) int  function (void*, void*, void*) GHRFunc;

/*
 * Specifies the type of function passed to g_tree_traverse().
 * It is passed the key and value of each node, together with
 * the user_data parameter passed to g_tree_traverse().
 * If the function returns TRUE, the traversal is stopped.
 * key:
 * a key of a GTree node.
 * value:
 * the value corresponding to the key.
 * data:
 * user data passed to g_tree_traverse().
 * Returns:
 * TRUE to stop the traversal.
 */
// gboolean (*GTraverseFunc) (gpointer key,  gpointer value,  gpointer data);
public typedef extern(C) int  function (void*, void*, void*) GTraverseFunc;

/*
 * A function of this signature is used to copy the node data when doing a deep-copy
 * of a tree.
 * src:
 * A pointer to the data which should be copied.
 * data:
 * Additional data.
 * Returns:
 * A pointer to the copy.
 * Since 2.4
 */
// gpointer (*GCopyFunc) (gconstpointer src,  gpointer data);
public typedef extern(C) void*  function (void*, void*) GCopyFunc;

/*
 * Specifies the type of function passed to g_node_traverse().
 * The function is called with each of the nodes visited, together with the
 * user data passed to g_node_traverse().
 * If the function returns TRUE, then the traversal is stopped.
 * node:
 * a GNode.
 * data:
 * user data passed to g_node_traverse().
 * Returns:
 * TRUE to stop the traversal.
 */
// gboolean (*GNodeTraverseFunc) (GNode *node,  gpointer data);
public typedef extern(C) int  function (GNode*, void*) GNodeTraverseFunc;

/*
 * Specifies the type of function passed to g_node_children_foreach().
 * The function is called with each child node, together with the user data
 * passed to g_node_children_foreach().
 * node:
 * a GNode.
 * data:
 * user data passed to g_node_children_foreach().
 */
// void (*GNodeForeachFunc) (GNode *node,  gpointer data);
public typedef extern(C) void  function (GNode*, void*) GNodeForeachFunc;

/*
 * Specifies the type of function which is called when a data element is
 * destroyed. It is passed the pointer to the data element and should free
 * any memory and resources allocated for it.
 * data:
 * the data element.
 */
// void (*GDestroyNotify) (gpointer data);
public typedef extern(C) void  function (void*) GDestroyNotify;

/*
 * Specifies the type of function passed to g_dataset_foreach().
 * It is called with each GQuark id and associated data element,
 * together with the user_data parameter supplied to g_dataset_foreach().
 * key_id:
 * the GQuark id to identifying the data element.
 * data:
 * the data element.
 * user_data:
 * user data passed to g_dataset_foreach().
 */
// void (*GDataForeachFunc) (GQuark key_id,  gpointer data,  gpointer user_data);
public typedef extern(C) void  function (GQuark, void*, void*) GDataForeachFunc;

/*
 * Specifies the type of the value_destroy_func and key_destroy_func functions
 * passed to g_cache_new().
 * The functions are passed a pointer to the GCache key or GCache value and
 * should free any memory and other resources associated with it.
 * value:
 * the GCache value to destroy.
 */
// void (*GCacheDestroyFunc) (gpointer value);
public typedef extern(C) void  function (void*) GCacheDestroyFunc;

/*
 * Specifies the type of the key_dup_func function passed to g_cache_new().
 * The function is passed a key (not a value as the prototype implies) and
 * should return a duplicate of the key.
 * value:
 * the GCache key to destroy (not a GCache value as it seems).
 * Returns:
 * a copy of the GCache key.
 */
// gpointer (*GCacheDupFunc) (gpointer value);
public typedef extern(C) void*  function (void*) GCacheDupFunc;

/*
 * Specifies the type of the value_new_func function passed to g_cache_new().
 * It is passed a GCache key and should create the value corresponding to the
 * key.
 * key:
 * a GCache key.
 * Returns:
 * a new GCache value corresponding to the key.
 */
// gpointer (*GCacheNewFunc) (gpointer key);
public typedef extern(C) void*  function (void*) GCacheNewFunc;
/**
 * A union holding the value of the token.
 */
public struct GTokenValue
{
	union
	{
		void* vSymbol;
		char *vIdentifier;
		uint vBinary;
		uint vOctal;
		uint vInt;
		ulong vInt64;
		double vFloat;
		uint vHex;
		char *vString;
		char *vComment;
		char vChar;
		uint vError;
	}
}
