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

public alias uint uid_t;
public alias int pid_t;

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

version( Windows )
	enum _utfPostfix = "_utf8";
else
	enum _utfPostfix = "";

version (Windows)
{
	private import core.stdc.stdio;
	
	static if( !is(typeof(fdopen(0, null))) )
	{
		extern (C) FILE*  fdopen(int, char*);
	}
}

static if ( __VERSION__ >= 2063 )
{
	public import std.typecons : scoped;
	
	template Scoped(T)
	{
		alias typeof(scoped!T(cast(typeof(T.tupleof[0]))null)) Scoped;
	}
}
else
{
	// I'm getting the following error on the older dmd versions:
	// this for Scoped_store needs to be type Scoped not type inout(Scoped!(T)).
	// Unlike the phobos version this does use GC alocated memory for the object.
	// Within GtkD this is used to make sure destroy is called on the object
	// so it releases the resources it holds.
	struct Scoped(T)
	{
		T payload;
		
		alias payload this;
		
		@disable this();
		@disable this(this);
		
		~this()
		{
			.destroy(payload);
		}
	}
	
	auto scoped(T, Args...)(auto ref Args args) if (is(T == class))
	{
		Scoped!(T) result = void;
		result.payload = new T(args);
		
		return result;
	}
}

/**
 * Get the length of a zero terminated array.
 */
size_t getArrayLength(T)(T* arr)
{
	size_t len;
	
	for ( ; arr[len]; len++ ){}
	
	return len;
}

unittest
{
	assert(getArrayLength("aaaaaaaaa\0".ptr) == 9);
}

Type* gMalloc(Type)()
{
	import gtkc.glib;
	return cast(Type*)g_malloc0(Type.sizeof);
}

alias void* GIConv;

/**
 * Integer representing a day of the month; between 1 and 31.
 * #G_DATE_BAD_DAY represents an invalid day of the month.
 */
public alias ubyte GDateDay;

/**
 * Integer representing a year; #G_DATE_BAD_YEAR is the invalid
 * value. The year must be 1 or higher; negative (BC) years are not
 * allowed. The year is represented with four digits.
 */
public alias ushort GDateYear;

/**
 * Opaque type. See g_mutex_locker_new() for details.
 */
public alias void* GMutexLocker;

/**
 * A type which is used to hold a process identification.
 *
 * On UNIX, processes are identified by a process id (an integer),
 * while Windows uses process handles (which are pointers).
 *
 * GPid is used in GLib only for descendant processes spawned with
 * the g_spawn functions.
 */
public alias int GPid;

/**
 * A GQuark is a non-zero integer which uniquely identifies a
 * particular string. A GQuark value of zero is associated to %NULL.
 */
public alias uint GQuark;

/**
 * A typedef alias for gchar**. This is mostly useful when used together with
 * g_auto().
 */
public alias void* GStrv;

/**
 * Simply a replacement for time_t. It has been deprecated
 * since it is not equivalent to time_t on 64-bit platforms
 * with a 64-bit time_t. Unrelated to #GTimer.
 *
 * Note that #GTime is defined to always be a 32-bit integer,
 * unlike time_t which may be 64-bit on some systems. Therefore,
 * #GTime will overflow in the year 2038, and you cannot use the
 * address of a #GTime variable as argument to the UNIX time()
 * function.
 *
 * Instead, do the following:
 * |[<!-- language="C" -->
 * time_t ttime;
 * GTime gtime;
 *
 * time (&ttime);
 * gtime = (GTime)ttime;
 * ]|
 */
public alias int GTime;

/**
 * A value representing an interval of time, in microseconds.
 */
public alias long GTimeSpan;

enum GPriority
{
	HIGH = -100,
	DEFAULT = 0,
	HIGH_IDLE = 100,
	DEFAULT_IDLE = 200,
	LOW = 300
}


public enum GAsciiType
{
	ALNUM = 1,
	ALPHA = 2,
	CNTRL = 4,
	DIGIT = 8,
	GRAPH = 16,
	LOWER = 32,
	PRINT = 64,
	PUNCT = 128,
	SPACE = 256,
	UPPER = 512,
	XDIGIT = 1024,
}
alias GAsciiType AsciiType;

/**
 * Error codes returned by bookmark file parsing.
 */
public enum GBookmarkFileError
{
	/**
	 * URI was ill-formed
	 */
	INVALID_URI = 0,
	/**
	 * a requested field was not found
	 */
	INVALID_VALUE = 1,
	/**
	 * a requested application did
	 * not register a bookmark
	 */
	APP_NOT_REGISTERED = 2,
	/**
	 * a requested URI was not found
	 */
	URI_NOT_FOUND = 3,
	/**
	 * document was ill formed
	 */
	READ = 4,
	/**
	 * the text being parsed was
	 * in an unknown encoding
	 */
	UNKNOWN_ENCODING = 5,
	/**
	 * an error occurred while writing
	 */
	WRITE = 6,
	/**
	 * requested file was not found
	 */
	FILE_NOT_FOUND = 7,
}
alias GBookmarkFileError BookmarkFileError;

/**
 * The hashing algorithm to be used by #GChecksum when performing the
 * digest of some data.
 *
 * Note that the #GChecksumType enumeration may be extended at a later
 * date to include new hashing algorithm types.
 *
 * Since: 2.16
 */
public enum GChecksumType
{
	/**
	 * Use the MD5 hashing algorithm
	 */
	MD5 = 0,
	/**
	 * Use the SHA-1 hashing algorithm
	 */
	SHA1 = 1,
	/**
	 * Use the SHA-256 hashing algorithm
	 */
	SHA256 = 2,
	/**
	 * Use the SHA-512 hashing algorithm
	 */
	SHA512 = 3,
}
alias GChecksumType ChecksumType;

/**
 * Error codes returned by character set conversion routines.
 */
public enum GConvertError
{
	/**
	 * Conversion between the requested character
	 * sets is not supported.
	 */
	NO_CONVERSION = 0,
	/**
	 * Invalid byte sequence in conversion input.
	 */
	ILLEGAL_SEQUENCE = 1,
	/**
	 * Conversion failed for some reason.
	 */
	FAILED = 2,
	/**
	 * Partial character sequence at end of input.
	 */
	PARTIAL_INPUT = 3,
	/**
	 * URI is invalid.
	 */
	BAD_URI = 4,
	/**
	 * Pathname is not an absolute path.
	 */
	NOT_ABSOLUTE_PATH = 5,
	/**
	 * No memory available. Since: 2.40
	 */
	NO_MEMORY = 6,
}
alias GConvertError ConvertError;

/**
 * This enumeration isn't used in the API, but may be useful if you need
 * to mark a number as a day, month, or year.
 */
public enum GDateDMY
{
	/**
	 * a day
	 */
	DAY = 0,
	/**
	 * a month
	 */
	MONTH = 1,
	/**
	 * a year
	 */
	YEAR = 2,
}
alias GDateDMY DateDMY;

/**
 * Enumeration representing a month; values are #G_DATE_JANUARY,
 * #G_DATE_FEBRUARY, etc. #G_DATE_BAD_MONTH is the invalid value.
 */
public enum GDateMonth
{
	/**
	 * invalid value
	 */
	BAD_MONTH = 0,
	/**
	 * January
	 */
	JANUARY = 1,
	/**
	 * February
	 */
	FEBRUARY = 2,
	/**
	 * March
	 */
	MARCH = 3,
	/**
	 * April
	 */
	APRIL = 4,
	/**
	 * May
	 */
	MAY = 5,
	/**
	 * June
	 */
	JUNE = 6,
	/**
	 * July
	 */
	JULY = 7,
	/**
	 * August
	 */
	AUGUST = 8,
	/**
	 * September
	 */
	SEPTEMBER = 9,
	/**
	 * October
	 */
	OCTOBER = 10,
	/**
	 * November
	 */
	NOVEMBER = 11,
	/**
	 * December
	 */
	DECEMBER = 12,
}
alias GDateMonth DateMonth;

/**
 * Enumeration representing a day of the week; #G_DATE_MONDAY,
 * #G_DATE_TUESDAY, etc. #G_DATE_BAD_WEEKDAY is an invalid weekday.
 */
public enum GDateWeekday
{
	/**
	 * invalid value
	 */
	BAD_WEEKDAY = 0,
	/**
	 * Monday
	 */
	MONDAY = 1,
	/**
	 * Tuesday
	 */
	TUESDAY = 2,
	/**
	 * Wednesday
	 */
	WEDNESDAY = 3,
	/**
	 * Thursday
	 */
	THURSDAY = 4,
	/**
	 * Friday
	 */
	FRIDAY = 5,
	/**
	 * Saturday
	 */
	SATURDAY = 6,
	/**
	 * Sunday
	 */
	SUNDAY = 7,
}
alias GDateWeekday DateWeekday;

/**
 * The possible errors, used in the @v_error field
 * of #GTokenValue, when the token is a %G_TOKEN_ERROR.
 */
public enum GErrorType
{
	/**
	 * unknown error
	 */
	UNKNOWN = 0,
	/**
	 * unexpected end of file
	 */
	UNEXP_EOF = 1,
	/**
	 * unterminated string constant
	 */
	UNEXP_EOF_IN_STRING = 2,
	/**
	 * unterminated comment
	 */
	UNEXP_EOF_IN_COMMENT = 3,
	/**
	 * non-digit character in a number
	 */
	NON_DIGIT_IN_CONST = 4,
	/**
	 * digit beyond radix in a number
	 */
	DIGIT_RADIX = 5,
	/**
	 * non-decimal floating point number
	 */
	FLOAT_RADIX = 6,
	/**
	 * malformed floating point number
	 */
	FLOAT_MALFORMED = 7,
}
alias GErrorType ErrorType;

/**
 * Values corresponding to @errno codes returned from file operations
 * on UNIX. Unlike @errno codes, GFileError values are available on
 * all systems, even Windows. The exact meaning of each code depends
 * on what sort of file operation you were performing; the UNIX
 * documentation gives more details. The following error code descriptions
 * come from the GNU C Library manual, and are under the copyright
 * of that manual.
 *
 * It's not very portable to make detailed assumptions about exactly
 * which errors will be returned from a given operation. Some errors
 * don't occur on some systems, etc., sometimes there are subtle
 * differences in when a system will report a given error, etc.
 */
public enum GFileError
{
	/**
	 * Operation not permitted; only the owner of
	 * the file (or other resource) or processes with special privileges
	 * can perform the operation.
	 */
	EXIST = 0,
	/**
	 * File is a directory; you cannot open a directory
	 * for writing, or create or remove hard links to it.
	 */
	ISDIR = 1,
	/**
	 * Permission denied; the file permissions do not
	 * allow the attempted operation.
	 */
	ACCES = 2,
	/**
	 * Filename too long.
	 */
	NAMETOOLONG = 3,
	/**
	 * No such file or directory. This is a "file
	 * doesn't exist" error for ordinary files that are referenced in
	 * contexts where they are expected to already exist.
	 */
	NOENT = 4,
	/**
	 * A file that isn't a directory was specified when
	 * a directory is required.
	 */
	NOTDIR = 5,
	/**
	 * No such device or address. The system tried to
	 * use the device represented by a file you specified, and it
	 * couldn't find the device. This can mean that the device file was
	 * installed incorrectly, or that the physical device is missing or
	 * not correctly attached to the computer.
	 */
	NXIO = 6,
	/**
	 * The underlying file system of the specified file
	 * does not support memory mapping.
	 */
	NODEV = 7,
	/**
	 * The directory containing the new link can't be
	 * modified because it's on a read-only file system.
	 */
	ROFS = 8,
	/**
	 * Text file busy.
	 */
	TXTBSY = 9,
	/**
	 * You passed in a pointer to bad memory.
	 * (GLib won't reliably return this, don't pass in pointers to bad
	 * memory.)
	 */
	FAULT = 10,
	/**
	 * Too many levels of symbolic links were encountered
	 * in looking up a file name. This often indicates a cycle of symbolic
	 * links.
	 */
	LOOP = 11,
	/**
	 * No space left on device; write operation on a
	 * file failed because the disk is full.
	 */
	NOSPC = 12,
	/**
	 * No memory available. The system cannot allocate
	 * more virtual memory because its capacity is full.
	 */
	NOMEM = 13,
	/**
	 * The current process has too many files open and
	 * can't open any more. Duplicate descriptors do count toward this
	 * limit.
	 */
	MFILE = 14,
	/**
	 * There are too many distinct file openings in the
	 * entire system.
	 */
	NFILE = 15,
	/**
	 * Bad file descriptor; for example, I/O on a
	 * descriptor that has been closed or reading from a descriptor open
	 * only for writing (or vice versa).
	 */
	BADF = 16,
	/**
	 * Invalid argument. This is used to indicate
	 * various kinds of problems with passing the wrong argument to a
	 * library function.
	 */
	INVAL = 17,
	/**
	 * Broken pipe; there is no process reading from the
	 * other end of a pipe. Every library function that returns this
	 * error code also generates a 'SIGPIPE' signal; this signal
	 * terminates the program if not handled or blocked. Thus, your
	 * program will never actually see this code unless it has handled
	 * or blocked 'SIGPIPE'.
	 */
	PIPE = 18,
	/**
	 * Resource temporarily unavailable; the call might
	 * work if you try again later.
	 */
	AGAIN = 19,
	/**
	 * Interrupted function call; an asynchronous signal
	 * occurred and prevented completion of the call. When this
	 * happens, you should try the call again.
	 */
	INTR = 20,
	/**
	 * Input/output error; usually used for physical read
	 * or write errors. i.e. the disk or other physical device hardware
	 * is returning errors.
	 */
	IO = 21,
	/**
	 * Operation not permitted; only the owner of the
	 * file (or other resource) or processes with special privileges can
	 * perform the operation.
	 */
	PERM = 22,
	/**
	 * Function not implemented; this indicates that
	 * the system is missing some functionality.
	 */
	NOSYS = 23,
	/**
	 * Does not correspond to a UNIX error code; this
	 * is the standard "failed for unspecified reason" error code present
	 * in all #GError error code enumerations. Returned if no specific
	 * code applies.
	 */
	FAILED = 24,
}
alias GFileError FileError;

/**
 * A test to perform on a file using g_file_test().
 */
public enum GFileTest
{
	/**
	 * %TRUE if the file is a regular file
	 * (not a directory). Note that this test will also return %TRUE
	 * if the tested file is a symlink to a regular file.
	 */
	IS_REGULAR = 1,
	/**
	 * %TRUE if the file is a symlink.
	 */
	IS_SYMLINK = 2,
	/**
	 * %TRUE if the file is a directory.
	 */
	IS_DIR = 4,
	/**
	 * %TRUE if the file is executable.
	 */
	IS_EXECUTABLE = 8,
	/**
	 * %TRUE if the file exists. It may or may not
	 * be a regular file.
	 */
	EXISTS = 16,
}
alias GFileTest FileTest;

/**
 * Flags to modify the format of the string returned by g_format_size_full().
 */
public enum GFormatSizeFlags
{
	/**
	 * behave the same as g_format_size()
	 */
	DEFAULT = 0,
	/**
	 * include the exact number of bytes as part
	 * of the returned string.  For example, "45.6 kB (45,612 bytes)".
	 */
	LONG_FORMAT = 1,
	/**
	 * use IEC (base 1024) units with "KiB"-style
	 * suffixes. IEC units should only be used for reporting things with
	 * a strong "power of 2" basis, like RAM sizes or RAID stripe sizes.
	 * Network and storage sizes should be reported in the normal SI units.
	 */
	IEC_UNITS = 2,
}
alias GFormatSizeFlags FormatSizeFlags;

/**
 * Flags used internally in the #GHook implementation.
 */
public enum GHookFlagMask
{
	/**
	 * set if the hook has not been destroyed
	 */
	ACTIVE = 1,
	/**
	 * set if the hook is currently being run
	 */
	IN_CALL = 2,
	/**
	 * A mask covering all bits reserved for
	 * hook flags; see %G_HOOK_FLAG_USER_SHIFT
	 */
	MASK = 15,
}
alias GHookFlagMask HookFlagMask;

/**
 * Error codes returned by #GIOChannel operations.
 */
public enum GIOChannelError
{
	/**
	 * File too large.
	 */
	FBIG = 0,
	/**
	 * Invalid argument.
	 */
	INVAL = 1,
	/**
	 * IO error.
	 */
	IO = 2,
	/**
	 * File is a directory.
	 */
	ISDIR = 3,
	/**
	 * No space left on device.
	 */
	NOSPC = 4,
	/**
	 * No such device or address.
	 */
	NXIO = 5,
	/**
	 * Value too large for defined datatype.
	 */
	OVERFLOW = 6,
	/**
	 * Broken pipe.
	 */
	PIPE = 7,
	/**
	 * Some other error.
	 */
	FAILED = 8,
}
alias GIOChannelError IOChannelError;

/**
 * A bitwise combination representing a condition to watch for on an
 * event source.
 */
public enum GIOCondition
{
	/**
	 * There is data to read.
	 */
	IN = 1,
	/**
	 * Data can be written (without blocking).
	 */
	OUT = 4,
	/**
	 * There is urgent data to read.
	 */
	PRI = 2,
	/**
	 * Error condition.
	 */
	ERR = 8,
	/**
	 * Hung up (the connection has been broken, usually for
	 * pipes and sockets).
	 */
	HUP = 16,
	/**
	 * Invalid request. The file descriptor is not open.
	 */
	NVAL = 32,
}
alias GIOCondition IOCondition;

/**
 * #GIOError is only used by the deprecated functions
 * g_io_channel_read(), g_io_channel_write(), and g_io_channel_seek().
 */
public enum GIOError
{
	/**
	 * no error
	 */
	NONE = 0,
	/**
	 * an EAGAIN error occurred
	 */
	AGAIN = 1,
	/**
	 * an EINVAL error occurred
	 */
	INVAL = 2,
	/**
	 * another error occurred
	 */
	UNKNOWN = 3,
}
alias GIOError IOError;

/**
 * Specifies properties of a #GIOChannel. Some of the flags can only be
 * read with g_io_channel_get_flags(), but not changed with
 * g_io_channel_set_flags().
 */
public enum GIOFlags
{
	/**
	 * turns on append mode, corresponds to %O_APPEND
	 * (see the documentation of the UNIX open() syscall)
	 */
	APPEND = 1,
	/**
	 * turns on nonblocking mode, corresponds to
	 * %O_NONBLOCK/%O_NDELAY (see the documentation of the UNIX open()
	 * syscall)
	 */
	NONBLOCK = 2,
	/**
	 * indicates that the io channel is readable.
	 * This flag cannot be changed.
	 */
	IS_READABLE = 4,
	/**
	 * indicates that the io channel is writable.
	 * This flag cannot be changed.
	 */
	IS_WRITABLE = 8,
	/**
	 * a misspelled version of @G_IO_FLAG_IS_WRITABLE
	 * that existed before the spelling was fixed in GLib 2.30. It is kept
	 * here for compatibility reasons. Deprecated since 2.30
	 */
	IS_WRITEABLE = 8,
	/**
	 * indicates that the io channel is seekable,
	 * i.e. that g_io_channel_seek_position() can be used on it.
	 * This flag cannot be changed.
	 */
	IS_SEEKABLE = 16,
	/**
	 * the mask that specifies all the valid flags.
	 */
	MASK = 31,
	/**
	 * the mask of the flags that are returned from
	 * g_io_channel_get_flags()
	 */
	GET_MASK = 31,
	/**
	 * the mask of the flags that the user can modify
	 * with g_io_channel_set_flags()
	 */
	SET_MASK = 3,
}
alias GIOFlags IOFlags;

/**
 * Stati returned by most of the #GIOFuncs functions.
 */
public enum GIOStatus
{
	/**
	 * An error occurred.
	 */
	ERROR = 0,
	/**
	 * Success.
	 */
	NORMAL = 1,
	/**
	 * End of file.
	 */
	EOF = 2,
	/**
	 * Resource temporarily unavailable.
	 */
	AGAIN = 3,
}
alias GIOStatus IOStatus;

/**
 * Error codes returned by key file parsing.
 */
public enum GKeyFileError
{
	/**
	 * the text being parsed was in
	 * an unknown encoding
	 */
	UNKNOWN_ENCODING = 0,
	/**
	 * document was ill-formed
	 */
	PARSE = 1,
	/**
	 * the file was not found
	 */
	NOT_FOUND = 2,
	/**
	 * a requested key was not found
	 */
	KEY_NOT_FOUND = 3,
	/**
	 * a requested group was not found
	 */
	GROUP_NOT_FOUND = 4,
	/**
	 * a value could not be parsed
	 */
	INVALID_VALUE = 5,
}
alias GKeyFileError KeyFileError;

/**
 * Flags which influence the parsing.
 */
public enum GKeyFileFlags
{
	/**
	 * No flags, default behaviour
	 */
	NONE = 0,
	/**
	 * Use this flag if you plan to write the
	 * (possibly modified) contents of the key file back to a file;
	 * otherwise all comments will be lost when the key file is
	 * written back.
	 */
	KEEP_COMMENTS = 1,
	/**
	 * Use this flag if you plan to write the
	 * (possibly modified) contents of the key file back to a file;
	 * otherwise only the translations for the current language will be
	 * written back.
	 */
	KEEP_TRANSLATIONS = 2,
}
alias GKeyFileFlags KeyFileFlags;

/**
 * Flags specifying the level of log messages.
 *
 * It is possible to change how GLib treats messages of the various
 * levels using g_log_set_handler() and g_log_set_fatal_mask().
 */
public enum GLogLevelFlags
{
	/**
	 * internal flag
	 */
	FLAG_RECURSION = 1,
	/**
	 * internal flag
	 */
	FLAG_FATAL = 2,
	/**
	 * log level for errors, see g_error().
	 * This level is also used for messages produced by g_assert().
	 */
	LEVEL_ERROR = 4,
	/**
	 * log level for critical warning messages, see
	 * g_critical().
	 * This level is also used for messages produced by g_return_if_fail()
	 * and g_return_val_if_fail().
	 */
	LEVEL_CRITICAL = 8,
	/**
	 * log level for warnings, see g_warning()
	 */
	LEVEL_WARNING = 16,
	/**
	 * log level for messages, see g_message()
	 */
	LEVEL_MESSAGE = 32,
	/**
	 * log level for informational messages, see g_info()
	 */
	LEVEL_INFO = 64,
	/**
	 * log level for debug messages, see g_debug()
	 */
	LEVEL_DEBUG = 128,
	/**
	 * a mask including all log levels
	 */
	LEVEL_MASK = -4,
}
alias GLogLevelFlags LogLevelFlags;

/**
 * A mixed enumerated type and flags field. You must specify one type
 * (string, strdup, boolean, tristate).  Additionally, you may  optionally
 * bitwise OR the type with the flag %G_MARKUP_COLLECT_OPTIONAL.
 *
 * It is likely that this enum will be extended in the future to
 * support other types.
 */
public enum GMarkupCollectType
{
	/**
	 * used to terminate the list of attributes
	 * to collect
	 */
	INVALID = 0,
	/**
	 * collect the string pointer directly from
	 * the attribute_values[] array. Expects a parameter of type (const
	 * char **). If %G_MARKUP_COLLECT_OPTIONAL is specified and the
	 * attribute isn't present then the pointer will be set to %NULL
	 */
	STRING = 1,
	/**
	 * as with %G_MARKUP_COLLECT_STRING, but
	 * expects a parameter of type (char **) and g_strdup()s the
	 * returned pointer. The pointer must be freed with g_free()
	 */
	STRDUP = 2,
	/**
	 * expects a parameter of type (gboolean *)
	 * and parses the attribute value as a boolean. Sets %FALSE if the
	 * attribute isn't present. Valid boolean values consist of
	 * (case-insensitive) "false", "f", "no", "n", "0" and "true", "t",
	 * "yes", "y", "1"
	 */
	BOOLEAN = 3,
	/**
	 * as with %G_MARKUP_COLLECT_BOOLEAN, but
	 * in the case of a missing attribute a value is set that compares
	 * equal to neither %FALSE nor %TRUE G_MARKUP_COLLECT_OPTIONAL is
	 * implied
	 */
	TRISTATE = 4,
	/**
	 * can be bitwise ORed with the other fields.
	 * If present, allows the attribute not to appear. A default value
	 * is set depending on what value type is used
	 */
	OPTIONAL = 65536,
}
alias GMarkupCollectType MarkupCollectType;

/**
 * Error codes returned by markup parsing.
 */
public enum GMarkupError
{
	/**
	 * text being parsed was not valid UTF-8
	 */
	BAD_UTF8 = 0,
	/**
	 * document contained nothing, or only whitespace
	 */
	EMPTY = 1,
	/**
	 * document was ill-formed
	 */
	PARSE = 2,
	/**
	 * error should be set by #GMarkupParser
	 * functions; element wasn't known
	 */
	UNKNOWN_ELEMENT = 3,
	/**
	 * error should be set by #GMarkupParser
	 * functions; attribute wasn't known
	 */
	UNKNOWN_ATTRIBUTE = 4,
	/**
	 * error should be set by #GMarkupParser
	 * functions; content was invalid
	 */
	INVALID_CONTENT = 5,
	/**
	 * error should be set by #GMarkupParser
	 * functions; a required attribute was missing
	 */
	MISSING_ATTRIBUTE = 6,
}
alias GMarkupError MarkupError;

/**
 * Flags that affect the behaviour of the parser.
 */
public enum GMarkupParseFlags
{
	/**
	 * flag you should not use
	 */
	DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1,
	/**
	 * When this flag is set, CDATA marked
	 * sections are not passed literally to the @passthrough function of
	 * the parser. Instead, the content of the section (without the
	 * `<![CDATA[` and `]]>`) is
	 * passed to the @text function. This flag was added in GLib 2.12
	 */
	TREAT_CDATA_AS_TEXT = 2,
	/**
	 * Normally errors caught by GMarkup
	 * itself have line/column information prefixed to them to let the
	 * caller know the location of the error. When this flag is set the
	 * location information is also prefixed to errors generated by the
	 * #GMarkupParser implementation functions
	 */
	PREFIX_ERROR_POSITION = 4,
	/**
	 * Ignore (don't report) qualified
	 * attributes and tags, along with their contents.  A qualified
	 * attribute or tag is one that contains ':' in its name (ie: is in
	 * another namespace).  Since: 2.40.
	 */
	IGNORE_QUALIFIED = 8,
}
alias GMarkupParseFlags MarkupParseFlags;

/**
 * Defines how a Unicode string is transformed in a canonical
 * form, standardizing such issues as whether a character with
 * an accent is represented as a base character and combining
 * accent or as a single precomposed character. Unicode strings
 * should generally be normalized before comparing them.
 */
public enum GNormalizeMode
{
	/**
	 * standardize differences that do not affect the
	 * text content, such as the above-mentioned accent representation
	 */
	DEFAULT = 0,
	/**
	 * another name for %G_NORMALIZE_DEFAULT
	 */
	NFD = 0,
	/**
	 * like %G_NORMALIZE_DEFAULT, but with
	 * composed forms rather than a maximally decomposed form
	 */
	DEFAULT_COMPOSE = 1,
	/**
	 * another name for %G_NORMALIZE_DEFAULT_COMPOSE
	 */
	NFC = 1,
	/**
	 * beyond %G_NORMALIZE_DEFAULT also standardize the
	 * "compatibility" characters in Unicode, such as SUPERSCRIPT THREE
	 * to the standard forms (in this case DIGIT THREE). Formatting
	 * information may be lost but for most text operations such
	 * characters should be considered the same
	 */
	ALL = 2,
	/**
	 * another name for %G_NORMALIZE_ALL
	 */
	NFKD = 2,
	/**
	 * like %G_NORMALIZE_ALL, but with composed
	 * forms rather than a maximally decomposed form
	 */
	ALL_COMPOSE = 3,
	/**
	 * another name for %G_NORMALIZE_ALL_COMPOSE
	 */
	NFKC = 3,
}
alias GNormalizeMode NormalizeMode;

/**
 * The possible statuses of a one-time initialization function
 * controlled by a #GOnce struct.
 *
 * Since: 2.4
 */
public enum GOnceStatus
{
	/**
	 * the function has not been called yet.
	 */
	NOTCALLED = 0,
	/**
	 * the function call is currently in progress.
	 */
	PROGRESS = 1,
	/**
	 * the function has been called.
	 */
	READY = 2,
}
alias GOnceStatus OnceStatus;

/**
 * The #GOptionArg enum values determine which type of extra argument the
 * options expect to find. If an option expects an extra argument, it can
 * be specified in several ways; with a short option: `-x arg`, with a long
 * option: `--name arg` or combined in a single argument: `--name=arg`.
 */
public enum GOptionArg
{
	/**
	 * No extra argument. This is useful for simple flags.
	 */
	NONE = 0,
	/**
	 * The option takes a string argument.
	 */
	STRING = 1,
	/**
	 * The option takes an integer argument.
	 */
	INT = 2,
	/**
	 * The option provides a callback (of type
	 * #GOptionArgFunc) to parse the extra argument.
	 */
	CALLBACK = 3,
	/**
	 * The option takes a filename as argument.
	 */
	FILENAME = 4,
	/**
	 * The option takes a string argument, multiple
	 * uses of the option are collected into an array of strings.
	 */
	STRING_ARRAY = 5,
	/**
	 * The option takes a filename as argument,
	 * multiple uses of the option are collected into an array of strings.
	 */
	FILENAME_ARRAY = 6,
	/**
	 * The option takes a double argument. The argument
	 * can be formatted either for the user's locale or for the "C" locale.
	 * Since 2.12
	 */
	DOUBLE = 7,
	/**
	 * The option takes a 64-bit integer. Like
	 * %G_OPTION_ARG_INT but for larger numbers. The number can be in
	 * decimal base, or in hexadecimal (when prefixed with `0x`, for
	 * example, `0xffffffff`). Since 2.12
	 */
	INT64 = 8,
}
alias GOptionArg OptionArg;

/**
 * Error codes returned by option parsing.
 */
public enum GOptionError
{
	/**
	 * An option was not known to the parser.
	 * This error will only be reported, if the parser hasn't been instructed
	 * to ignore unknown options, see g_option_context_set_ignore_unknown_options().
	 */
	UNKNOWN_OPTION = 0,
	/**
	 * A value couldn't be parsed.
	 */
	BAD_VALUE = 1,
	/**
	 * A #GOptionArgFunc callback failed.
	 */
	FAILED = 2,
}
alias GOptionError OptionError;

/**
 * Flags which modify individual options.
 */
public enum GOptionFlags
{
	/**
	 * No flags. Since: 2.42.
	 */
	NONE = 0,
	/**
	 * The option doesn't appear in `--help` output.
	 */
	HIDDEN = 1,
	/**
	 * The option appears in the main section of the
	 * `--help` output, even if it is defined in a group.
	 */
	IN_MAIN = 2,
	/**
	 * For options of the %G_OPTION_ARG_NONE kind, this
	 * flag indicates that the sense of the option is reversed.
	 */
	REVERSE = 4,
	/**
	 * For options of the %G_OPTION_ARG_CALLBACK kind,
	 * this flag indicates that the callback does not take any argument
	 * (like a %G_OPTION_ARG_NONE option). Since 2.8
	 */
	NO_ARG = 8,
	/**
	 * For options of the %G_OPTION_ARG_CALLBACK
	 * kind, this flag indicates that the argument should be passed to the
	 * callback in the GLib filename encoding rather than UTF-8. Since 2.8
	 */
	FILENAME = 16,
	/**
	 * For options of the %G_OPTION_ARG_CALLBACK
	 * kind, this flag indicates that the argument supply is optional.
	 * If no argument is given then data of %GOptionParseFunc will be
	 * set to NULL. Since 2.8
	 */
	OPTIONAL_ARG = 32,
	/**
	 * This flag turns off the automatic conflict
	 * resolution which prefixes long option names with `groupname-` if
	 * there is a conflict. This option should only be used in situations
	 * where aliasing is necessary to model some legacy commandline interface.
	 * It is not safe to use this option, unless all option groups are under
	 * your direct control. Since 2.8.
	 */
	NOALIAS = 64,
}
alias GOptionFlags OptionFlags;

/**
 * Flags specifying compile-time options.
 *
 * Since: 2.14
 */
public enum GRegexCompileFlags
{
	/**
	 * Letters in the pattern match both upper- and
	 * lowercase letters. This option can be changed within a pattern
	 * by a "(?i)" option setting.
	 */
	CASELESS = 1,
	/**
	 * By default, GRegex treats the strings as consisting
	 * of a single line of characters (even if it actually contains
	 * newlines). The "start of line" metacharacter ("^") matches only
	 * at the start of the string, while the "end of line" metacharacter
	 * ("$") matches only at the end of the string, or before a terminating
	 * newline (unless #G_REGEX_DOLLAR_ENDONLY is set). When
	 * #G_REGEX_MULTILINE is set, the "start of line" and "end of line"
	 * constructs match immediately following or immediately before any
	 * newline in the string, respectively, as well as at the very start
	 * and end. This can be changed within a pattern by a "(?m)" option
	 * setting.
	 */
	MULTILINE = 2,
	/**
	 * A dot metacharater (".") in the pattern matches all
	 * characters, including newlines. Without it, newlines are excluded.
	 * This option can be changed within a pattern by a ("?s") option setting.
	 */
	DOTALL = 4,
	/**
	 * Whitespace data characters in the pattern are
	 * totally ignored except when escaped or inside a character class.
	 * Whitespace does not include the VT character (code 11). In addition,
	 * characters between an unescaped "#" outside a character class and
	 * the next newline character, inclusive, are also ignored. This can
	 * be changed within a pattern by a "(?x)" option setting.
	 */
	EXTENDED = 8,
	/**
	 * The pattern is forced to be "anchored", that is,
	 * it is constrained to match only at the first matching point in the
	 * string that is being searched. This effect can also be achieved by
	 * appropriate constructs in the pattern itself such as the "^"
	 * metacharater.
	 */
	ANCHORED = 16,
	/**
	 * A dollar metacharacter ("$") in the pattern
	 * matches only at the end of the string. Without this option, a
	 * dollar also matches immediately before the final character if
	 * it is a newline (but not before any other newlines). This option
	 * is ignored if #G_REGEX_MULTILINE is set.
	 */
	DOLLAR_ENDONLY = 32,
	/**
	 * Inverts the "greediness" of the quantifiers so that
	 * they are not greedy by default, but become greedy if followed by "?".
	 * It can also be set by a "(?U)" option setting within the pattern.
	 */
	UNGREEDY = 512,
	/**
	 * Usually strings must be valid UTF-8 strings, using this
	 * flag they are considered as a raw sequence of bytes.
	 */
	RAW = 2048,
	/**
	 * Disables the use of numbered capturing
	 * parentheses in the pattern. Any opening parenthesis that is not
	 * followed by "?" behaves as if it were followed by "?:" but named
	 * parentheses can still be used for capturing (and they acquire numbers
	 * in the usual way).
	 */
	NO_AUTO_CAPTURE = 4096,
	/**
	 * Optimize the regular expression. If the pattern will
	 * be used many times, then it may be worth the effort to optimize it
	 * to improve the speed of matches.
	 */
	OPTIMIZE = 8192,
	/**
	 * Limits an unanchored pattern to match before (or at) the
	 * first newline. Since: 2.34
	 */
	FIRSTLINE = 262144,
	/**
	 * Names used to identify capturing subpatterns need not
	 * be unique. This can be helpful for certain types of pattern when it
	 * is known that only one instance of the named subpattern can ever be
	 * matched.
	 */
	DUPNAMES = 524288,
	/**
	 * Usually any newline character or character sequence is
	 * recognized. If this option is set, the only recognized newline character
	 * is '\r'.
	 */
	NEWLINE_CR = 1048576,
	/**
	 * Usually any newline character or character sequence is
	 * recognized. If this option is set, the only recognized newline character
	 * is '\n'.
	 */
	NEWLINE_LF = 2097152,
	/**
	 * Usually any newline character or character sequence is
	 * recognized. If this option is set, the only recognized newline character
	 * sequence is '\r\n'.
	 */
	NEWLINE_CRLF = 3145728,
	/**
	 * Usually any newline character or character sequence
	 * is recognized. If this option is set, the only recognized newline character
	 * sequences are '\r', '\n', and '\r\n'. Since: 2.34
	 */
	NEWLINE_ANYCRLF = 5242880,
	/**
	 * Usually any newline character or character sequence
	 * is recognised. If this option is set, then "\R" only recognizes the newline
	 * characters '\r', '\n' and '\r\n'. Since: 2.34
	 */
	BSR_ANYCRLF = 8388608,
	/**
	 * Changes behaviour so that it is compatible with
	 * JavaScript rather than PCRE. Since: 2.34
	 */
	JAVASCRIPT_COMPAT = 33554432,
}
alias GRegexCompileFlags RegexCompileFlags;

/**
 * Error codes returned by regular expressions functions.
 *
 * Since: 2.14
 */
public enum GRegexError
{
	/**
	 * Compilation of the regular expression failed.
	 */
	COMPILE = 0,
	/**
	 * Optimization of the regular expression failed.
	 */
	OPTIMIZE = 1,
	/**
	 * Replacement failed due to an ill-formed replacement
	 * string.
	 */
	REPLACE = 2,
	/**
	 * The match process failed.
	 */
	MATCH = 3,
	/**
	 * Internal error of the regular expression engine.
	 * Since 2.16
	 */
	INTERNAL = 4,
	/**
	 * "\\" at end of pattern. Since 2.16
	 */
	STRAY_BACKSLASH = 101,
	/**
	 * "\\c" at end of pattern. Since 2.16
	 */
	MISSING_CONTROL_CHAR = 102,
	/**
	 * Unrecognized character follows "\\".
	 * Since 2.16
	 */
	UNRECOGNIZED_ESCAPE = 103,
	/**
	 * Numbers out of order in "{}"
	 * quantifier. Since 2.16
	 */
	QUANTIFIERS_OUT_OF_ORDER = 104,
	/**
	 * Number too big in "{}" quantifier.
	 * Since 2.16
	 */
	QUANTIFIER_TOO_BIG = 105,
	/**
	 * Missing terminating "]" for
	 * character class. Since 2.16
	 */
	UNTERMINATED_CHARACTER_CLASS = 106,
	/**
	 * Invalid escape sequence
	 * in character class. Since 2.16
	 */
	INVALID_ESCAPE_IN_CHARACTER_CLASS = 107,
	/**
	 * Range out of order in character class.
	 * Since 2.16
	 */
	RANGE_OUT_OF_ORDER = 108,
	/**
	 * Nothing to repeat. Since 2.16
	 */
	NOTHING_TO_REPEAT = 109,
	/**
	 * Unrecognized character after "(?",
	 * "(?&lt;" or "(?P". Since 2.16
	 */
	UNRECOGNIZED_CHARACTER = 112,
	/**
	 * POSIX named classes are
	 * supported only within a class. Since 2.16
	 */
	POSIX_NAMED_CLASS_OUTSIDE_CLASS = 113,
	/**
	 * Missing terminating ")" or ")"
	 * without opening "(". Since 2.16
	 */
	UNMATCHED_PARENTHESIS = 114,
	/**
	 * Reference to non-existent
	 * subpattern. Since 2.16
	 */
	INEXISTENT_SUBPATTERN_REFERENCE = 115,
	/**
	 * Missing terminating ")" after comment.
	 * Since 2.16
	 */
	UNTERMINATED_COMMENT = 118,
	/**
	 * Regular expression too large.
	 * Since 2.16
	 */
	EXPRESSION_TOO_LARGE = 120,
	/**
	 * Failed to get memory. Since 2.16
	 */
	MEMORY_ERROR = 121,
	/**
	 * Lookbehind assertion is not
	 * fixed length. Since 2.16
	 */
	VARIABLE_LENGTH_LOOKBEHIND = 125,
	/**
	 * Malformed number or name after "(?(".
	 * Since 2.16
	 */
	MALFORMED_CONDITION = 126,
	/**
	 * Conditional group contains
	 * more than two branches. Since 2.16
	 */
	TOO_MANY_CONDITIONAL_BRANCHES = 127,
	/**
	 * Assertion expected after "(?(".
	 * Since 2.16
	 */
	ASSERTION_EXPECTED = 128,
	/**
	 * Unknown POSIX class name.
	 * Since 2.16
	 */
	UNKNOWN_POSIX_CLASS_NAME = 130,
	/**
	 * POSIX collating
	 * elements are not supported. Since 2.16
	 */
	POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED = 131,
	/**
	 * Character value in "\\x{...}" sequence
	 * is too large. Since 2.16
	 */
	HEX_CODE_TOO_LARGE = 134,
	/**
	 * Invalid condition "(?(0)". Since 2.16
	 */
	INVALID_CONDITION = 135,
	/**
	 * \\C not allowed in
	 * lookbehind assertion. Since 2.16
	 */
	SINGLE_BYTE_MATCH_IN_LOOKBEHIND = 136,
	/**
	 * Recursive call could loop indefinitely.
	 * Since 2.16
	 */
	INFINITE_LOOP = 140,
	/**
	 * Missing terminator
	 * in subpattern name. Since 2.16
	 */
	MISSING_SUBPATTERN_NAME_TERMINATOR = 142,
	/**
	 * Two named subpatterns have
	 * the same name. Since 2.16
	 */
	DUPLICATE_SUBPATTERN_NAME = 143,
	/**
	 * Malformed "\\P" or "\\p" sequence.
	 * Since 2.16
	 */
	MALFORMED_PROPERTY = 146,
	/**
	 * Unknown property name after "\\P" or
	 * "\\p". Since 2.16
	 */
	UNKNOWN_PROPERTY = 147,
	/**
	 * Subpattern name is too long
	 * (maximum 32 characters). Since 2.16
	 */
	SUBPATTERN_NAME_TOO_LONG = 148,
	/**
	 * Too many named subpatterns (maximum
	 * 10,000). Since 2.16
	 */
	TOO_MANY_SUBPATTERNS = 149,
	/**
	 * Octal value is greater than "\\377".
	 * Since 2.16
	 */
	INVALID_OCTAL_VALUE = 151,
	/**
	 * "DEFINE" group contains more
	 * than one branch. Since 2.16
	 */
	TOO_MANY_BRANCHES_IN_DEFINE = 154,
	/**
	 * Repeating a "DEFINE" group is not allowed.
	 * This error is never raised. Since: 2.16 Deprecated: 2.34
	 */
	DEFINE_REPETION = 155,
	/**
	 * Inconsistent newline options.
	 * Since 2.16
	 */
	INCONSISTENT_NEWLINE_OPTIONS = 156,
	/**
	 * "\\g" is not followed by a braced,
	 * angle-bracketed, or quoted name or number, or by a plain number. Since: 2.16
	 */
	MISSING_BACK_REFERENCE = 157,
	/**
	 * relative reference must not be zero. Since: 2.34
	 */
	INVALID_RELATIVE_REFERENCE = 158,
	/**
	 * the backtracing
	 * control verb used does not allow an argument. Since: 2.34
	 */
	BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN = 159,
	/**
	 * unknown backtracing
	 * control verb. Since: 2.34
	 */
	UNKNOWN_BACKTRACKING_CONTROL_VERB = 160,
	/**
	 * number is too big in escape sequence. Since: 2.34
	 */
	NUMBER_TOO_BIG = 161,
	/**
	 * Missing subpattern name. Since: 2.34
	 */
	MISSING_SUBPATTERN_NAME = 162,
	/**
	 * Missing digit. Since 2.34
	 */
	MISSING_DIGIT = 163,
	/**
	 * In JavaScript compatibility mode,
	 * "[" is an invalid data character. Since: 2.34
	 */
	INVALID_DATA_CHARACTER = 164,
	/**
	 * different names for subpatterns of the
	 * same number are not allowed. Since: 2.34
	 */
	EXTRA_SUBPATTERN_NAME = 165,
	/**
	 * the backtracing control
	 * verb requires an argument. Since: 2.34
	 */
	BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED = 166,
	/**
	 * "\\c" must be followed by an ASCII
	 * character. Since: 2.34
	 */
	INVALID_CONTROL_CHAR = 168,
	/**
	 * "\\k" is not followed by a braced, angle-bracketed, or
	 * quoted name. Since: 2.34
	 */
	MISSING_NAME = 169,
	/**
	 * "\\N" is not supported in a class. Since: 2.34
	 */
	NOT_SUPPORTED_IN_CLASS = 171,
	/**
	 * too many forward references. Since: 2.34
	 */
	TOO_MANY_FORWARD_REFERENCES = 172,
	/**
	 * the name is too long in "(*MARK)", "(*PRUNE)",
	 * "(*SKIP)", or "(*THEN)". Since: 2.34
	 */
	NAME_TOO_LONG = 175,
	/**
	 * the character value in the \\u sequence is
	 * too large. Since: 2.34
	 */
	CHARACTER_VALUE_TOO_LARGE = 176,
}
alias GRegexError RegexError;

/**
 * Flags specifying match-time options.
 *
 * Since: 2.14
 */
public enum GRegexMatchFlags
{
	/**
	 * The pattern is forced to be "anchored", that is,
	 * it is constrained to match only at the first matching point in the
	 * string that is being searched. This effect can also be achieved by
	 * appropriate constructs in the pattern itself such as the "^"
	 * metacharater.
	 */
	ANCHORED = 16,
	/**
	 * Specifies that first character of the string is
	 * not the beginning of a line, so the circumflex metacharacter should
	 * not match before it. Setting this without #G_REGEX_MULTILINE (at
	 * compile time) causes circumflex never to match. This option affects
	 * only the behaviour of the circumflex metacharacter, it does not
	 * affect "\A".
	 */
	NOTBOL = 128,
	/**
	 * Specifies that the end of the subject string is
	 * not the end of a line, so the dollar metacharacter should not match
	 * it nor (except in multiline mode) a newline immediately before it.
	 * Setting this without #G_REGEX_MULTILINE (at compile time) causes
	 * dollar never to match. This option affects only the behaviour of
	 * the dollar metacharacter, it does not affect "\Z" or "\z".
	 */
	NOTEOL = 256,
	/**
	 * An empty string is not considered to be a valid
	 * match if this option is set. If there are alternatives in the pattern,
	 * they are tried. If all the alternatives match the empty string, the
	 * entire match fails. For example, if the pattern "a?b?" is applied to
	 * a string not beginning with "a" or "b", it matches the empty string
	 * at the start of the string. With this flag set, this match is not
	 * valid, so GRegex searches further into the string for occurrences
	 * of "a" or "b".
	 */
	NOTEMPTY = 1024,
	/**
	 * Turns on the partial matching feature, for more
	 * documentation on partial matching see g_match_info_is_partial_match().
	 */
	PARTIAL = 32768,
	/**
	 * Overrides the newline definition set when
	 * creating a new #GRegex, setting the '\r' character as line terminator.
	 */
	NEWLINE_CR = 1048576,
	/**
	 * Overrides the newline definition set when
	 * creating a new #GRegex, setting the '\n' character as line terminator.
	 */
	NEWLINE_LF = 2097152,
	/**
	 * Overrides the newline definition set when
	 * creating a new #GRegex, setting the '\r\n' characters sequence as line terminator.
	 */
	NEWLINE_CRLF = 3145728,
	/**
	 * Overrides the newline definition set when
	 * creating a new #GRegex, any Unicode newline sequence
	 * is recognised as a newline. These are '\r', '\n' and '\rn', and the
	 * single characters U+000B LINE TABULATION, U+000C FORM FEED (FF),
	 * U+0085 NEXT LINE (NEL), U+2028 LINE SEPARATOR and
	 * U+2029 PARAGRAPH SEPARATOR.
	 */
	NEWLINE_ANY = 4194304,
	/**
	 * Overrides the newline definition set when
	 * creating a new #GRegex; any '\r', '\n', or '\r\n' character sequence
	 * is recognized as a newline. Since: 2.34
	 */
	NEWLINE_ANYCRLF = 5242880,
	/**
	 * Overrides the newline definition for "\R" set when
	 * creating a new #GRegex; only '\r', '\n', or '\r\n' character sequences
	 * are recognized as a newline by "\R". Since: 2.34
	 */
	BSR_ANYCRLF = 8388608,
	/**
	 * Overrides the newline definition for "\R" set when
	 * creating a new #GRegex; any Unicode newline character or character sequence
	 * are recognized as a newline by "\R". These are '\r', '\n' and '\rn', and the
	 * single characters U+000B LINE TABULATION, U+000C FORM FEED (FF),
	 * U+0085 NEXT LINE (NEL), U+2028 LINE SEPARATOR and
	 * U+2029 PARAGRAPH SEPARATOR. Since: 2.34
	 */
	BSR_ANY = 16777216,
	/**
	 * An alias for #G_REGEX_MATCH_PARTIAL. Since: 2.34
	 */
	PARTIAL_SOFT = 32768,
	/**
	 * Turns on the partial matching feature. In contrast to
	 * to #G_REGEX_MATCH_PARTIAL_SOFT, this stops matching as soon as a partial match
	 * is found, without continuing to search for a possible complete match. See
	 * g_match_info_is_partial_match() for more information. Since: 2.34
	 */
	PARTIAL_HARD = 134217728,
	/**
	 * Like #G_REGEX_MATCH_NOTEMPTY, but only applied to
	 * the start of the matched string. For anchored
	 * patterns this can only happen for pattern containing "\K". Since: 2.34
	 */
	NOTEMPTY_ATSTART = 268435456,
}
alias GRegexMatchFlags RegexMatchFlags;

/**
 * An enumeration specifying the base position for a
 * g_io_channel_seek_position() operation.
 */
public enum GSeekType
{
	/**
	 * the current position in the file.
	 */
	CUR = 0,
	/**
	 * the start of the file.
	 */
	SET = 1,
	/**
	 * the end of the file.
	 */
	END = 2,
}
alias GSeekType SeekType;

/**
 * Error codes returned by shell functions.
 */
public enum GShellError
{
	/**
	 * Mismatched or otherwise mangled quoting.
	 */
	BAD_QUOTING = 0,
	/**
	 * String to be parsed was empty.
	 */
	EMPTY_STRING = 1,
	/**
	 * Some other error.
	 */
	FAILED = 2,
}
alias GShellError ShellError;

public enum GSliceConfig
{
	ALWAYS_MALLOC = 1,
	BYPASS_MAGAZINES = 2,
	WORKING_SET_MSECS = 3,
	COLOR_INCREMENT = 4,
	CHUNK_SIZES = 5,
	CONTENTION_COUNTER = 6,
}
alias GSliceConfig SliceConfig;

/**
 * Error codes returned by spawning processes.
 */
public enum GSpawnError
{
	/**
	 * Fork failed due to lack of memory.
	 */
	FORK = 0,
	/**
	 * Read or select on pipes failed.
	 */
	READ = 1,
	/**
	 * Changing to working directory failed.
	 */
	CHDIR = 2,
	/**
	 * execv() returned `EACCES`
	 */
	ACCES = 3,
	/**
	 * execv() returned `EPERM`
	 */
	PERM = 4,
	/**
	 * execv() returned `E2BIG`
	 */
	TOO_BIG = 5,
	/**
	 * execv() returned `ENOEXEC`
	 */
	NOEXEC = 6,
	/**
	 * execv() returned `ENAMETOOLONG`
	 */
	NAMETOOLONG = 7,
	/**
	 * execv() returned `ENOENT`
	 */
	NOENT = 8,
	/**
	 * execv() returned `ENOMEM`
	 */
	NOMEM = 9,
	/**
	 * execv() returned `ENOTDIR`
	 */
	NOTDIR = 10,
	/**
	 * execv() returned `ELOOP`
	 */
	LOOP = 11,
	/**
	 * execv() returned `ETXTBUSY`
	 */
	TXTBUSY = 12,
	/**
	 * execv() returned `EIO`
	 */
	IO = 13,
	/**
	 * execv() returned `ENFILE`
	 */
	NFILE = 14,
	/**
	 * execv() returned `EMFILE`
	 */
	MFILE = 15,
	/**
	 * execv() returned `EINVAL`
	 */
	INVAL = 16,
	/**
	 * execv() returned `EISDIR`
	 */
	ISDIR = 17,
	/**
	 * execv() returned `ELIBBAD`
	 */
	LIBBAD = 18,
	/**
	 * Some other fatal failure,
	 * `error->message` should explain.
	 */
	FAILED = 19,
}
alias GSpawnError SpawnError;

/**
 * Flags passed to g_spawn_sync(), g_spawn_async() and g_spawn_async_with_pipes().
 */
public enum GSpawnFlags
{
	/**
	 * no flags, default behaviour
	 */
	DEFAULT = 0,
	/**
	 * the parent's open file descriptors will
	 * be inherited by the child; otherwise all descriptors except stdin,
	 * stdout and stderr will be closed before calling exec() in the child.
	 */
	LEAVE_DESCRIPTORS_OPEN = 1,
	/**
	 * the child will not be automatically reaped;
	 * you must use g_child_watch_add() yourself (or call waitpid() or handle
	 * `SIGCHLD` yourself), or the child will become a zombie.
	 */
	DO_NOT_REAP_CHILD = 2,
	/**
	 * `argv[0]` need not be an absolute path, it will be
	 * looked for in the user's `PATH`.
	 */
	SEARCH_PATH = 4,
	/**
	 * the child's standard output will be discarded,
	 * instead of going to the same location as the parent's standard output.
	 */
	STDOUT_TO_DEV_NULL = 8,
	/**
	 * the child's standard error will be discarded.
	 */
	STDERR_TO_DEV_NULL = 16,
	/**
	 * the child will inherit the parent's standard
	 * input (by default, the child's standard input is attached to `/dev/null`).
	 */
	CHILD_INHERITS_STDIN = 32,
	/**
	 * the first element of `argv` is the file to
	 * execute, while the remaining elements are the actual argument vector
	 * to pass to the file. Normally g_spawn_async_with_pipes() uses `argv[0]`
	 * as the file to execute, and passes all of `argv` to the child.
	 */
	FILE_AND_ARGV_ZERO = 64,
	/**
	 * if `argv[0]` is not an abolute path,
	 * it will be looked for in the `PATH` from the passed child environment.
	 * Since: 2.34
	 */
	SEARCH_PATH_FROM_ENVP = 128,
	/**
	 * create all pipes with the `O_CLOEXEC` flag set.
	 * Since: 2.40
	 */
	CLOEXEC_PIPES = 256,
}
alias GSpawnFlags SpawnFlags;

/**
 * The type of file to return the filename for, when used with
 * g_test_build_filename().
 *
 * These two options correspond rather directly to the 'dist' and
 * 'built' terminology that automake uses and are explicitly used to
 * distinguish between the 'srcdir' and 'builddir' being separate.  All
 * files in your project should either be dist (in the
 * `DIST_EXTRA` or `dist_schema_DATA`
 * sense, in which case they will always be in the srcdir) or built (in
 * the `BUILT_SOURCES` sense, in which case they will
 * always be in the builddir).
 *
 * Note: as a general rule of automake, files that are generated only as
 * part of the build-from-git process (but then are distributed with the
 * tarball) always go in srcdir (even if doing a srcdir != builddir
 * build from git) and are considered as distributed files.
 *
 * Since: 2.38
 */
public enum GTestFileType
{
	/**
	 * a file that was included in the distribution tarball
	 */
	DIST = 0,
	/**
	 * a file that was built on the compiling machine
	 */
	BUILT = 1,
}
alias GTestFileType TestFileType;

public enum GTestLogType
{
	NONE = 0,
	ERROR = 1,
	START_BINARY = 2,
	LIST_CASE = 3,
	SKIP_CASE = 4,
	START_CASE = 5,
	STOP_CASE = 6,
	MIN_RESULT = 7,
	MAX_RESULT = 8,
	MESSAGE = 9,
	START_SUITE = 10,
	STOP_SUITE = 11,
}
alias GTestLogType TestLogType;

/**
 * Flags to pass to g_test_trap_subprocess() to control input and output.
 *
 * Note that in contrast with g_test_trap_fork(), the default is to
 * not show stdout and stderr.
 */
public enum GTestSubprocessFlags
{
	/**
	 * If this flag is given, the child
	 * process will inherit the parent's stdin. Otherwise, the child's
	 * stdin is redirected to `/dev/null`.
	 */
	STDIN = 1,
	/**
	 * If this flag is given, the child
	 * process will inherit the parent's stdout. Otherwise, the child's
	 * stdout will not be visible, but it will be captured to allow
	 * later tests with g_test_trap_assert_stdout().
	 */
	STDOUT = 2,
	/**
	 * If this flag is given, the child
	 * process will inherit the parent's stderr. Otherwise, the child's
	 * stderr will not be visible, but it will be captured to allow
	 * later tests with g_test_trap_assert_stderr().
	 */
	STDERR = 4,
}
alias GTestSubprocessFlags TestSubprocessFlags;

/**
 * Test traps are guards around forked tests.
 * These flags determine what traps to set.
 *
 * Deprecated: #GTestTrapFlags is used only with g_test_trap_fork(),
 * which is deprecated. g_test_trap_subprocess() uses
 * #GTestTrapSubprocessFlags.
 */
public enum GTestTrapFlags
{
	/**
	 * Redirect stdout of the test child to
	 * `/dev/null` so it cannot be observed on the console during test
	 * runs. The actual output is still captured though to allow later
	 * tests with g_test_trap_assert_stdout().
	 */
	SILENCE_STDOUT = 128,
	/**
	 * Redirect stderr of the test child to
	 * `/dev/null` so it cannot be observed on the console during test
	 * runs. The actual output is still captured though to allow later
	 * tests with g_test_trap_assert_stderr().
	 */
	SILENCE_STDERR = 256,
	/**
	 * If this flag is given, stdin of the
	 * child process is shared with stdin of its parent process.
	 * It is redirected to `/dev/null` otherwise.
	 */
	INHERIT_STDIN = 512,
}
alias GTestTrapFlags TestTrapFlags;

/**
 * Possible errors of thread related functions.
 */
public enum GThreadError
{
	/**
	 * a thread couldn't be created due to resource
	 * shortage. Try again later.
	 */
	THREAD_ERROR_AGAIN = 0,
}
alias GThreadError ThreadError;

/**
 * Disambiguates a given time in two ways.
 *
 * First, specifies if the given time is in universal or local time.
 *
 * Second, if the time is in local time, specifies if it is local
 * standard time or local daylight time.  This is important for the case
 * where the same local time occurs twice (during daylight savings time
 * transitions, for example).
 */
public enum GTimeType
{
	/**
	 * the time is in local standard time
	 */
	STANDARD = 0,
	/**
	 * the time is in local daylight time
	 */
	DAYLIGHT = 1,
	/**
	 * the time is in UTC
	 */
	UNIVERSAL = 2,
}
alias GTimeType TimeType;

/**
 * The possible types of token returned from each
 * g_scanner_get_next_token() call.
 */
public enum GTokenType
{
	/**
	 * the end of the file
	 */
	EOF = 0,
	/**
	 * a '(' character
	 */
	LEFT_PAREN = 40,
	/**
	 * a ')' character
	 */
	RIGHT_PAREN = 41,
	/**
	 * a '{' character
	 */
	LEFT_CURLY = 123,
	/**
	 * a '}' character
	 */
	RIGHT_CURLY = 125,
	/**
	 * a '[' character
	 */
	LEFT_BRACE = 91,
	/**
	 * a ']' character
	 */
	RIGHT_BRACE = 93,
	/**
	 * a '=' character
	 */
	EQUAL_SIGN = 61,
	/**
	 * a ',' character
	 */
	COMMA = 44,
	/**
	 * not a token
	 */
	NONE = 256,
	/**
	 * an error occurred
	 */
	ERROR = 257,
	/**
	 * a character
	 */
	CHAR = 258,
	/**
	 * a binary integer
	 */
	BINARY = 259,
	/**
	 * an octal integer
	 */
	OCTAL = 260,
	/**
	 * an integer
	 */
	INT = 261,
	/**
	 * a hex integer
	 */
	HEX = 262,
	/**
	 * a floating point number
	 */
	FLOAT = 263,
	/**
	 * a string
	 */
	STRING = 264,
	/**
	 * a symbol
	 */
	SYMBOL = 265,
	/**
	 * an identifier
	 */
	IDENTIFIER = 266,
	/**
	 * a null identifier
	 */
	IDENTIFIER_NULL = 267,
	/**
	 * one line comment
	 */
	COMMENT_SINGLE = 268,
	/**
	 * multi line comment
	 */
	COMMENT_MULTI = 269,
}
alias GTokenType TokenType;

/**
 * Specifies which nodes are visited during several of the tree
 * functions, including g_node_traverse() and g_node_find().
 */
public enum GTraverseFlags
{
	/**
	 * only leaf nodes should be visited. This name has
	 * been introduced in 2.6, for older version use
	 * %G_TRAVERSE_LEAFS.
	 */
	LEAVES = 1,
	/**
	 * only non-leaf nodes should be visited. This
	 * name has been introduced in 2.6, for older
	 * version use %G_TRAVERSE_NON_LEAFS.
	 */
	NON_LEAVES = 2,
	/**
	 * all nodes should be visited.
	 */
	ALL = 3,
	/**
	 * a mask of all traverse flags.
	 */
	MASK = 3,
	/**
	 * identical to %G_TRAVERSE_LEAVES.
	 */
	LEAFS = 1,
	/**
	 * identical to %G_TRAVERSE_NON_LEAVES.
	 */
	NON_LEAFS = 2,
}
alias GTraverseFlags TraverseFlags;

/**
 * Specifies the type of traveral performed by g_tree_traverse(),
 * g_node_traverse() and g_node_find(). The different orders are
 * illustrated here:
 * - In order: A, B, C, D, E, F, G, H, I
 * ![](Sorted_binary_tree_inorder.svg)
 * - Pre order: F, B, A, D, C, E, G, I, H
 * ![](Sorted_binary_tree_preorder.svg)
 * - Post order: A, C, E, D, B, H, I, G, F
 * ![](Sorted_binary_tree_postorder.svg)
 * - Level order: F, B, G, A, D, I, C, E, H
 * ![](Sorted_binary_tree_breadth-first_traversal.svg)
 */
public enum GTraverseType
{
	/**
	 * vists a node's left child first, then the node itself,
	 * then its right child. This is the one to use if you
	 * want the output sorted according to the compare
	 * function.
	 */
	IN_ORDER = 0,
	/**
	 * visits a node, then its children.
	 */
	PRE_ORDER = 1,
	/**
	 * visits the node's children, then the node itself.
	 */
	POST_ORDER = 2,
	/**
	 * is not implemented for
	 * [balanced binary trees][glib-Balanced-Binary-Trees].
	 * For [n-ary trees][glib-N-ary-Trees], it
	 * vists the root node first, then its children, then
	 * its grandchildren, and so on. Note that this is less
	 * efficient than the other orders.
	 */
	LEVEL_ORDER = 3,
}
alias GTraverseType TraverseType;

/**
 * These are the possible line break classifications.
 *
 * Since new unicode versions may add new types here, applications should be ready
 * to handle unknown values. They may be regarded as %G_UNICODE_BREAK_UNKNOWN.
 *
 * See <ulink url="http://www.unicode.org/unicode/reports/tr14/">http://www.unicode.org/unicode/reports/tr14/</ulink>.
 */
public enum GUnicodeBreakType
{
	/**
	 * Mandatory Break (BK)
	 */
	MANDATORY = 0,
	/**
	 * Carriage Return (CR)
	 */
	CARRIAGE_RETURN = 1,
	/**
	 * Line Feed (LF)
	 */
	LINE_FEED = 2,
	/**
	 * Attached Characters and Combining Marks (CM)
	 */
	COMBINING_MARK = 3,
	/**
	 * Surrogates (SG)
	 */
	SURROGATE = 4,
	/**
	 * Zero Width Space (ZW)
	 */
	ZERO_WIDTH_SPACE = 5,
	/**
	 * Inseparable (IN)
	 */
	INSEPARABLE = 6,
	/**
	 * Non-breaking ("Glue") (GL)
	 */
	NON_BREAKING_GLUE = 7,
	/**
	 * Contingent Break Opportunity (CB)
	 */
	CONTINGENT = 8,
	/**
	 * Space (SP)
	 */
	SPACE = 9,
	/**
	 * Break Opportunity After (BA)
	 */
	AFTER = 10,
	/**
	 * Break Opportunity Before (BB)
	 */
	BEFORE = 11,
	/**
	 * Break Opportunity Before and After (B2)
	 */
	BEFORE_AND_AFTER = 12,
	/**
	 * Hyphen (HY)
	 */
	HYPHEN = 13,
	/**
	 * Nonstarter (NS)
	 */
	NON_STARTER = 14,
	/**
	 * Opening Punctuation (OP)
	 */
	OPEN_PUNCTUATION = 15,
	/**
	 * Closing Punctuation (CL)
	 */
	CLOSE_PUNCTUATION = 16,
	/**
	 * Ambiguous Quotation (QU)
	 */
	QUOTATION = 17,
	/**
	 * Exclamation/Interrogation (EX)
	 */
	EXCLAMATION = 18,
	/**
	 * Ideographic (ID)
	 */
	IDEOGRAPHIC = 19,
	/**
	 * Numeric (NU)
	 */
	NUMERIC = 20,
	/**
	 * Infix Separator (Numeric) (IS)
	 */
	INFIX_SEPARATOR = 21,
	/**
	 * Symbols Allowing Break After (SY)
	 */
	SYMBOL = 22,
	/**
	 * Ordinary Alphabetic and Symbol Characters (AL)
	 */
	ALPHABETIC = 23,
	/**
	 * Prefix (Numeric) (PR)
	 */
	PREFIX = 24,
	/**
	 * Postfix (Numeric) (PO)
	 */
	POSTFIX = 25,
	/**
	 * Complex Content Dependent (South East Asian) (SA)
	 */
	COMPLEX_CONTEXT = 26,
	/**
	 * Ambiguous (Alphabetic or Ideographic) (AI)
	 */
	AMBIGUOUS = 27,
	/**
	 * Unknown (XX)
	 */
	UNKNOWN = 28,
	/**
	 * Next Line (NL)
	 */
	NEXT_LINE = 29,
	/**
	 * Word Joiner (WJ)
	 */
	WORD_JOINER = 30,
	/**
	 * Hangul L Jamo (JL)
	 */
	HANGUL_L_JAMO = 31,
	/**
	 * Hangul V Jamo (JV)
	 */
	HANGUL_V_JAMO = 32,
	/**
	 * Hangul T Jamo (JT)
	 */
	HANGUL_T_JAMO = 33,
	/**
	 * Hangul LV Syllable (H2)
	 */
	HANGUL_LV_SYLLABLE = 34,
	/**
	 * Hangul LVT Syllable (H3)
	 */
	HANGUL_LVT_SYLLABLE = 35,
	/**
	 * Closing Parenthesis (CP). Since 2.28
	 */
	CLOSE_PARANTHESIS = 36,
	/**
	 * Conditional Japanese Starter (CJ). Since: 2.32
	 */
	CONDITIONAL_JAPANESE_STARTER = 37,
	/**
	 * Hebrew Letter (HL). Since: 2.32
	 */
	HEBREW_LETTER = 38,
	/**
	 * Regional Indicator (RI). Since: 2.36
	 */
	REGIONAL_INDICATOR = 39,
}
alias GUnicodeBreakType UnicodeBreakType;

/**
 * The #GUnicodeScript enumeration identifies different writing
 * systems. The values correspond to the names as defined in the
 * Unicode standard. The enumeration has been added in GLib 2.14,
 * and is interchangeable with #PangoScript.
 *
 * Note that new types may be added in the future. Applications
 * should be ready to handle unknown values.
 * See <ulink
 * url="http://www.unicode.org/reports/tr24/">Unicode Standard Annex
 * #24: Script names</ulink>.
 */
public enum GUnicodeScript
{
	/**
	 * a value never returned from g_unichar_get_script()
	 */
	INVALID_CODE = -1,
	/**
	 * a character used by multiple different scripts
	 */
	COMMON = 0,
	/**
	 * a mark glyph that takes its script from the
	 * base glyph to which it is attached
	 */
	INHERITED = 1,
	/**
	 * Arabic
	 */
	ARABIC = 2,
	/**
	 * Armenian
	 */
	ARMENIAN = 3,
	/**
	 * Bengali
	 */
	BENGALI = 4,
	/**
	 * Bopomofo
	 */
	BOPOMOFO = 5,
	/**
	 * Cherokee
	 */
	CHEROKEE = 6,
	/**
	 * Coptic
	 */
	COPTIC = 7,
	/**
	 * Cyrillic
	 */
	CYRILLIC = 8,
	/**
	 * Deseret
	 */
	DESERET = 9,
	/**
	 * Devanagari
	 */
	DEVANAGARI = 10,
	/**
	 * Ethiopic
	 */
	ETHIOPIC = 11,
	/**
	 * Georgian
	 */
	GEORGIAN = 12,
	/**
	 * Gothic
	 */
	GOTHIC = 13,
	/**
	 * Greek
	 */
	GREEK = 14,
	/**
	 * Gujarati
	 */
	GUJARATI = 15,
	/**
	 * Gurmukhi
	 */
	GURMUKHI = 16,
	/**
	 * Han
	 */
	HAN = 17,
	/**
	 * Hangul
	 */
	HANGUL = 18,
	/**
	 * Hebrew
	 */
	HEBREW = 19,
	/**
	 * Hiragana
	 */
	HIRAGANA = 20,
	/**
	 * Kannada
	 */
	KANNADA = 21,
	/**
	 * Katakana
	 */
	KATAKANA = 22,
	/**
	 * Khmer
	 */
	KHMER = 23,
	/**
	 * Lao
	 */
	LAO = 24,
	/**
	 * Latin
	 */
	LATIN = 25,
	/**
	 * Malayalam
	 */
	MALAYALAM = 26,
	/**
	 * Mongolian
	 */
	MONGOLIAN = 27,
	/**
	 * Myanmar
	 */
	MYANMAR = 28,
	/**
	 * Ogham
	 */
	OGHAM = 29,
	/**
	 * Old Italic
	 */
	OLD_ITALIC = 30,
	/**
	 * Oriya
	 */
	ORIYA = 31,
	/**
	 * Runic
	 */
	RUNIC = 32,
	/**
	 * Sinhala
	 */
	SINHALA = 33,
	/**
	 * Syriac
	 */
	SYRIAC = 34,
	/**
	 * Tamil
	 */
	TAMIL = 35,
	/**
	 * Telugu
	 */
	TELUGU = 36,
	/**
	 * Thaana
	 */
	THAANA = 37,
	/**
	 * Thai
	 */
	THAI = 38,
	/**
	 * Tibetan
	 */
	TIBETAN = 39,
	/**
	 * Canadian Aboriginal
	 */
	CANADIAN_ABORIGINAL = 40,
	/**
	 * Yi
	 */
	YI = 41,
	/**
	 * Tagalog
	 */
	TAGALOG = 42,
	/**
	 * Hanunoo
	 */
	HANUNOO = 43,
	/**
	 * Buhid
	 */
	BUHID = 44,
	/**
	 * Tagbanwa
	 */
	TAGBANWA = 45,
	/**
	 * Braille
	 */
	BRAILLE = 46,
	/**
	 * Cypriot
	 */
	CYPRIOT = 47,
	/**
	 * Limbu
	 */
	LIMBU = 48,
	/**
	 * Osmanya
	 */
	OSMANYA = 49,
	/**
	 * Shavian
	 */
	SHAVIAN = 50,
	/**
	 * Linear B
	 */
	LINEAR_B = 51,
	/**
	 * Tai Le
	 */
	TAI_LE = 52,
	/**
	 * Ugaritic
	 */
	UGARITIC = 53,
	/**
	 * New Tai Lue
	 */
	NEW_TAI_LUE = 54,
	/**
	 * Buginese
	 */
	BUGINESE = 55,
	/**
	 * Glagolitic
	 */
	GLAGOLITIC = 56,
	/**
	 * Tifinagh
	 */
	TIFINAGH = 57,
	/**
	 * Syloti Nagri
	 */
	SYLOTI_NAGRI = 58,
	/**
	 * Old Persian
	 */
	OLD_PERSIAN = 59,
	/**
	 * Kharoshthi
	 */
	KHAROSHTHI = 60,
	/**
	 * an unassigned code point
	 */
	UNKNOWN = 61,
	/**
	 * Balinese
	 */
	BALINESE = 62,
	/**
	 * Cuneiform
	 */
	CUNEIFORM = 63,
	/**
	 * Phoenician
	 */
	PHOENICIAN = 64,
	/**
	 * Phags-pa
	 */
	PHAGS_PA = 65,
	/**
	 * N'Ko
	 */
	NKO = 66,
	/**
	 * Kayah Li. Since 2.16.3
	 */
	KAYAH_LI = 67,
	/**
	 * Lepcha. Since 2.16.3
	 */
	LEPCHA = 68,
	/**
	 * Rejang. Since 2.16.3
	 */
	REJANG = 69,
	/**
	 * Sundanese. Since 2.16.3
	 */
	SUNDANESE = 70,
	/**
	 * Saurashtra. Since 2.16.3
	 */
	SAURASHTRA = 71,
	/**
	 * Cham. Since 2.16.3
	 */
	CHAM = 72,
	/**
	 * Ol Chiki. Since 2.16.3
	 */
	OL_CHIKI = 73,
	/**
	 * Vai. Since 2.16.3
	 */
	VAI = 74,
	/**
	 * Carian. Since 2.16.3
	 */
	CARIAN = 75,
	/**
	 * Lycian. Since 2.16.3
	 */
	LYCIAN = 76,
	/**
	 * Lydian. Since 2.16.3
	 */
	LYDIAN = 77,
	/**
	 * Avestan. Since 2.26
	 */
	AVESTAN = 78,
	/**
	 * Bamum. Since 2.26
	 */
	BAMUM = 79,
	/**
	 * Egyptian Hieroglpyhs. Since 2.26
	 */
	EGYPTIAN_HIEROGLYPHS = 80,
	/**
	 * Imperial Aramaic. Since 2.26
	 */
	IMPERIAL_ARAMAIC = 81,
	/**
	 * Inscriptional Pahlavi. Since 2.26
	 */
	INSCRIPTIONAL_PAHLAVI = 82,
	/**
	 * Inscriptional Parthian. Since 2.26
	 */
	INSCRIPTIONAL_PARTHIAN = 83,
	/**
	 * Javanese. Since 2.26
	 */
	JAVANESE = 84,
	/**
	 * Kaithi. Since 2.26
	 */
	KAITHI = 85,
	/**
	 * Lisu. Since 2.26
	 */
	LISU = 86,
	/**
	 * Meetei Mayek. Since 2.26
	 */
	MEETEI_MAYEK = 87,
	/**
	 * Old South Arabian. Since 2.26
	 */
	OLD_SOUTH_ARABIAN = 88,
	/**
	 * Old Turkic. Since 2.28
	 */
	OLD_TURKIC = 89,
	/**
	 * Samaritan. Since 2.26
	 */
	SAMARITAN = 90,
	/**
	 * Tai Tham. Since 2.26
	 */
	TAI_THAM = 91,
	/**
	 * Tai Viet. Since 2.26
	 */
	TAI_VIET = 92,
	/**
	 * Batak. Since 2.28
	 */
	BATAK = 93,
	/**
	 * Brahmi. Since 2.28
	 */
	BRAHMI = 94,
	/**
	 * Mandaic. Since 2.28
	 */
	MANDAIC = 95,
	/**
	 * Chakma. Since: 2.32
	 */
	CHAKMA = 96,
	/**
	 * Meroitic Cursive. Since: 2.32
	 */
	MEROITIC_CURSIVE = 97,
	/**
	 * Meroitic Hieroglyphs. Since: 2.32
	 */
	MEROITIC_HIEROGLYPHS = 98,
	/**
	 * Miao. Since: 2.32
	 */
	MIAO = 99,
	/**
	 * Sharada. Since: 2.32
	 */
	SHARADA = 100,
	/**
	 * Sora Sompeng. Since: 2.32
	 */
	SORA_SOMPENG = 101,
	/**
	 * Takri. Since: 2.32
	 */
	TAKRI = 102,
	/**
	 * Bassa. Since: 2.42
	 */
	BASSA_VAH = 103,
	/**
	 * Caucasian Albanian. Since: 2.42
	 */
	CAUCASIAN_ALBANIAN = 104,
	/**
	 * Duployan. Since: 2.42
	 */
	DUPLOYAN = 105,
	/**
	 * Elbasan. Since: 2.42
	 */
	ELBASAN = 106,
	/**
	 * Grantha. Since: 2.42
	 */
	GRANTHA = 107,
	/**
	 * Kjohki. Since: 2.42
	 */
	KHOJKI = 108,
	/**
	 * Khudawadi, Sindhi. Since: 2.42
	 */
	KHUDAWADI = 109,
	/**
	 * Linear A. Since: 2.42
	 */
	LINEAR_A = 110,
	/**
	 * Mahajani. Since: 2.42
	 */
	MAHAJANI = 111,
	/**
	 * Manichaean. Since: 2.42
	 */
	MANICHAEAN = 112,
	/**
	 * Mende Kikakui. Since: 2.42
	 */
	MENDE_KIKAKUI = 113,
	/**
	 * Modi. Since: 2.42
	 */
	MODI = 114,
	/**
	 * Mro. Since: 2.42
	 */
	MRO = 115,
	/**
	 * Nabataean. Since: 2.42
	 */
	NABATAEAN = 116,
	/**
	 * Old North Arabian. Since: 2.42
	 */
	OLD_NORTH_ARABIAN = 117,
	/**
	 * Old Permic. Since: 2.42
	 */
	OLD_PERMIC = 118,
	/**
	 * Pahawh Hmong. Since: 2.42
	 */
	PAHAWH_HMONG = 119,
	/**
	 * Palmyrene. Since: 2.42
	 */
	PALMYRENE = 120,
	/**
	 * Pau Cin Hau. Since: 2.42
	 */
	PAU_CIN_HAU = 121,
	/**
	 * Psalter Pahlavi. Since: 2.42
	 */
	PSALTER_PAHLAVI = 122,
	/**
	 * Siddham. Since: 2.42
	 */
	SIDDHAM = 123,
	/**
	 * Tirhuta. Since: 2.42
	 */
	TIRHUTA = 124,
	/**
	 * Warang Citi. Since: 2.42
	 */
	WARANG_CITI = 125,
	/**
	 * Ahom. Since: 2.48
	 */
	AHOM = 126,
	/**
	 * Anatolian Hieroglyphs. Since: 2.48
	 */
	ANATOLIAN_HIEROGLYPHS = 127,
	/**
	 * Hatran. Since: 2.48
	 */
	HATRAN = 128,
	/**
	 * Multani. Since: 2.48
	 */
	MULTANI = 129,
	/**
	 * Old Hungarian. Since: 2.48
	 */
	OLD_HUNGARIAN = 130,
	/**
	 * Signwriting. Since: 2.48
	 */
	SIGNWRITING = 131,
}
alias GUnicodeScript UnicodeScript;

/**
 * These are the possible character classifications from the
 * Unicode specification.
 * See <ulink url="http://www.unicode.org/Public/UNIDATA/UnicodeData.html">http://www.unicode.org/Public/UNIDATA/UnicodeData.html</ulink>.
 */
public enum GUnicodeType
{
	/**
	 * General category "Other, Control" (Cc)
	 */
	CONTROL = 0,
	/**
	 * General category "Other, Format" (Cf)
	 */
	FORMAT = 1,
	/**
	 * General category "Other, Not Assigned" (Cn)
	 */
	UNASSIGNED = 2,
	/**
	 * General category "Other, Private Use" (Co)
	 */
	PRIVATE_USE = 3,
	/**
	 * General category "Other, Surrogate" (Cs)
	 */
	SURROGATE = 4,
	/**
	 * General category "Letter, Lowercase" (Ll)
	 */
	LOWERCASE_LETTER = 5,
	/**
	 * General category "Letter, Modifier" (Lm)
	 */
	MODIFIER_LETTER = 6,
	/**
	 * General category "Letter, Other" (Lo)
	 */
	OTHER_LETTER = 7,
	/**
	 * General category "Letter, Titlecase" (Lt)
	 */
	TITLECASE_LETTER = 8,
	/**
	 * General category "Letter, Uppercase" (Lu)
	 */
	UPPERCASE_LETTER = 9,
	/**
	 * General category "Mark, Spacing" (Mc)
	 */
	SPACING_MARK = 10,
	/**
	 * General category "Mark, Enclosing" (Me)
	 */
	ENCLOSING_MARK = 11,
	/**
	 * General category "Mark, Nonspacing" (Mn)
	 */
	NON_SPACING_MARK = 12,
	/**
	 * General category "Number, Decimal Digit" (Nd)
	 */
	DECIMAL_NUMBER = 13,
	/**
	 * General category "Number, Letter" (Nl)
	 */
	LETTER_NUMBER = 14,
	/**
	 * General category "Number, Other" (No)
	 */
	OTHER_NUMBER = 15,
	/**
	 * General category "Punctuation, Connector" (Pc)
	 */
	CONNECT_PUNCTUATION = 16,
	/**
	 * General category "Punctuation, Dash" (Pd)
	 */
	DASH_PUNCTUATION = 17,
	/**
	 * General category "Punctuation, Close" (Pe)
	 */
	CLOSE_PUNCTUATION = 18,
	/**
	 * General category "Punctuation, Final quote" (Pf)
	 */
	FINAL_PUNCTUATION = 19,
	/**
	 * General category "Punctuation, Initial quote" (Pi)
	 */
	INITIAL_PUNCTUATION = 20,
	/**
	 * General category "Punctuation, Other" (Po)
	 */
	OTHER_PUNCTUATION = 21,
	/**
	 * General category "Punctuation, Open" (Ps)
	 */
	OPEN_PUNCTUATION = 22,
	/**
	 * General category "Symbol, Currency" (Sc)
	 */
	CURRENCY_SYMBOL = 23,
	/**
	 * General category "Symbol, Modifier" (Sk)
	 */
	MODIFIER_SYMBOL = 24,
	/**
	 * General category "Symbol, Math" (Sm)
	 */
	MATH_SYMBOL = 25,
	/**
	 * General category "Symbol, Other" (So)
	 */
	OTHER_SYMBOL = 26,
	/**
	 * General category "Separator, Line" (Zl)
	 */
	LINE_SEPARATOR = 27,
	/**
	 * General category "Separator, Paragraph" (Zp)
	 */
	PARAGRAPH_SEPARATOR = 28,
	/**
	 * General category "Separator, Space" (Zs)
	 */
	SPACE_SEPARATOR = 29,
}
alias GUnicodeType UnicodeType;

/**
 * These are logical ids for special directories which are defined
 * depending on the platform used. You should use g_get_user_special_dir()
 * to retrieve the full path associated to the logical id.
 *
 * The #GUserDirectory enumeration can be extended at later date. Not
 * every platform has a directory for every logical id in this
 * enumeration.
 *
 * Since: 2.14
 */
public enum GUserDirectory
{
	/**
	 * the user's Desktop directory
	 */
	DIRECTORY_DESKTOP = 0,
	/**
	 * the user's Documents directory
	 */
	DIRECTORY_DOCUMENTS = 1,
	/**
	 * the user's Downloads directory
	 */
	DIRECTORY_DOWNLOAD = 2,
	/**
	 * the user's Music directory
	 */
	DIRECTORY_MUSIC = 3,
	/**
	 * the user's Pictures directory
	 */
	DIRECTORY_PICTURES = 4,
	/**
	 * the user's shared directory
	 */
	DIRECTORY_PUBLIC_SHARE = 5,
	/**
	 * the user's Templates directory
	 */
	DIRECTORY_TEMPLATES = 6,
	/**
	 * the user's Movies directory
	 */
	DIRECTORY_VIDEOS = 7,
	/**
	 * the number of enum values
	 */
	N_DIRECTORIES = 8,
}
alias GUserDirectory UserDirectory;

/**
 * The range of possible top-level types of #GVariant instances.
 *
 * Since: 2.24
 */
public enum GVariantClass
{
	/**
	 * The #GVariant is a boolean.
	 */
	BOOLEAN = 98,
	/**
	 * The #GVariant is a byte.
	 */
	BYTE = 121,
	/**
	 * The #GVariant is a signed 16 bit integer.
	 */
	INT16 = 110,
	/**
	 * The #GVariant is an unsigned 16 bit integer.
	 */
	UINT16 = 113,
	/**
	 * The #GVariant is a signed 32 bit integer.
	 */
	INT32 = 105,
	/**
	 * The #GVariant is an unsigned 32 bit integer.
	 */
	UINT32 = 117,
	/**
	 * The #GVariant is a signed 64 bit integer.
	 */
	INT64 = 120,
	/**
	 * The #GVariant is an unsigned 64 bit integer.
	 */
	UINT64 = 116,
	/**
	 * The #GVariant is a file handle index.
	 */
	HANDLE = 104,
	/**
	 * The #GVariant is a double precision floating
	 * point value.
	 */
	DOUBLE = 100,
	/**
	 * The #GVariant is a normal string.
	 */
	STRING = 115,
	/**
	 * The #GVariant is a D-Bus object path
	 * string.
	 */
	OBJECT_PATH = 111,
	/**
	 * The #GVariant is a D-Bus signature string.
	 */
	SIGNATURE = 103,
	/**
	 * The #GVariant is a variant.
	 */
	VARIANT = 118,
	/**
	 * The #GVariant is a maybe-typed value.
	 */
	MAYBE = 109,
	/**
	 * The #GVariant is an array.
	 */
	ARRAY = 97,
	/**
	 * The #GVariant is a tuple.
	 */
	TUPLE = 40,
	/**
	 * The #GVariant is a dictionary entry.
	 */
	DICT_ENTRY = 123,
}
alias GVariantClass VariantClass;

/**
 * Error codes returned by parsing text-format GVariants.
 */
public enum GVariantParseError
{
	/**
	 * generic error (unused)
	 */
	FAILED = 0,
	/**
	 * a non-basic #GVariantType was given where a basic type was expected
	 */
	BASIC_TYPE_EXPECTED = 1,
	/**
	 * cannot infer the #GVariantType
	 */
	CANNOT_INFER_TYPE = 2,
	/**
	 * an indefinite #GVariantType was given where a definite type was expected
	 */
	DEFINITE_TYPE_EXPECTED = 3,
	/**
	 * extra data after parsing finished
	 */
	INPUT_NOT_AT_END = 4,
	/**
	 * invalid character in number or unicode escape
	 */
	INVALID_CHARACTER = 5,
	/**
	 * not a valid #GVariant format string
	 */
	INVALID_FORMAT_STRING = 6,
	/**
	 * not a valid object path
	 */
	INVALID_OBJECT_PATH = 7,
	/**
	 * not a valid type signature
	 */
	INVALID_SIGNATURE = 8,
	/**
	 * not a valid #GVariant type string
	 */
	INVALID_TYPE_STRING = 9,
	/**
	 * could not find a common type for array entries
	 */
	NO_COMMON_TYPE = 10,
	/**
	 * the numerical value is out of range of the given type
	 */
	NUMBER_OUT_OF_RANGE = 11,
	/**
	 * the numerical value is out of range for any type
	 */
	NUMBER_TOO_BIG = 12,
	/**
	 * cannot parse as variant of the specified type
	 */
	TYPE_ERROR = 13,
	/**
	 * an unexpected token was encountered
	 */
	UNEXPECTED_TOKEN = 14,
	/**
	 * an unknown keyword was encountered
	 */
	UNKNOWN_KEYWORD = 15,
	/**
	 * unterminated string constant
	 */
	UNTERMINATED_STRING_CONSTANT = 16,
	/**
	 * no value given
	 */
	VALUE_EXPECTED = 17,
}
alias GVariantParseError VariantParseError;

/**
 * Flags passed to g_module_open().
 * Note that these flags are not supported on all platforms.
 */
public enum GModuleFlags
{
	/**
	 * specifies that symbols are only resolved when
	 * needed. The default action is to bind all symbols when the module
	 * is loaded.
	 */
	LAZY = 1,
	/**
	 * specifies that symbols in the module should
	 * not be added to the global name space. The default action on most
	 * platforms is to place symbols in the module in the global name space,
	 * which may cause conflicts with existing symbols.
	 */
	LOCAL = 2,
	/**
	 * mask for all flags.
	 */
	MASK = 3,
}
alias GModuleFlags ModuleFlags;

/**
 * Contains the public fields of a GArray.
 */
struct GArray
{
	/**
	 * a pointer to the element data. The data may be moved as
	 * elements are added to the #GArray.
	 */
	char* data;
	/**
	 * the number of elements in the #GArray not including the
	 * possible terminating zero element.
	 */
	uint len;
}

struct GAsyncQueue;

struct GBookmarkFile;

/**
 * Contains the public fields of a GByteArray.
 */
struct GByteArray
{
	/**
	 * a pointer to the element data. The data may be moved as
	 * elements are added to the #GByteArray
	 */
	ubyte* data;
	/**
	 * the number of elements in the #GByteArray
	 */
	uint len;
}

struct GBytes;

struct GChecksum;

struct GCond
{
	void* p;
	uint[2] i;
}

/**
 * The #GData struct is an opaque data structure to represent a
 * [Keyed Data List][glib-Keyed-Data-Lists]. It should only be
 * accessed via the following functions.
 */
struct GData;

struct GDate
{
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "julianDays", 32,
		uint, "julian", 1,
		uint, "dmy", 1,
		uint, "day", 6,
		uint, "month", 4,
		uint, "year", 16,
		uint, "", 4
	));
}

struct GDateTime;

/**
 * Associates a string with a bit flag.
 * Used in g_parse_debug_string().
 */
struct GDebugKey
{
	/**
	 * the string
	 */
	const(char)* key;
	/**
	 * the flag
	 */
	uint value;
}

struct GDir;

/**
 * The #GFloatIEEE754 and #GDoubleIEEE754 unions are used to access the sign,
 * mantissa and exponent of IEEE floats and doubles. These unions are defined
 * as appropriate for a given platform. IEEE floats and doubles are supported
 * (used for storage) by at least Intel, PPC and Sparc.
 */
struct GDoubleIEEE754
{
	union
	{
		/**
		 * the double value
		 */
		double vDouble;
		struct Mpn
		{
			import std.bitmanip: bitfields;
			mixin(bitfields!(
				uint, "mantissaLow", 32,
				uint, "mantissaHigh", 20,
				uint, "biasedExponent", 11,
				uint, "sign", 1
			));
		}
		Mpn mpn;
	}
}

struct GError
{
	/**
	 * error domain, e.g. #G_FILE_ERROR
	 */
	GQuark domain;
	/**
	 * error code, e.g. %G_FILE_ERROR_NOENT
	 */
	int code;
	/**
	 * human-readable informative error message
	 */
	char* message;
}

/**
 * The #GFloatIEEE754 and #GDoubleIEEE754 unions are used to access the sign,
 * mantissa and exponent of IEEE floats and doubles. These unions are defined
 * as appropriate for a given platform. IEEE floats and doubles are supported
 * (used for storage) by at least Intel, PPC and Sparc.
 */
struct GFloatIEEE754
{
	union
	{
		/**
		 * the double value
		 */
		float vFloat;
		struct Mpn
		{
			import std.bitmanip: bitfields;
			mixin(bitfields!(
				uint, "mantissa", 23,
				uint, "biasedExponent", 8,
				uint, "sign", 1
			));
		}
		Mpn mpn;
	}
}

/**
 * The #GHashTable struct is an opaque data structure to represent a
 * [Hash Table][glib-Hash-Tables]. It should only be accessed via the
 * following functions.
 */
struct GHashTable;

struct GHashTableIter
{
	void* dummy1;
	void* dummy2;
	void* dummy3;
	int dummy4;
	bool dummy5;
	void* dummy6;
}

struct GHmac;

struct GHook
{
	/**
	 * data which is passed to func when this hook is invoked
	 */
	void* data;
	/**
	 * pointer to the next hook in the list
	 */
	GHook* next;
	/**
	 * pointer to the previous hook in the list
	 */
	GHook* prev;
	/**
	 * the reference count of this hook
	 */
	uint refCount;
	/**
	 * the id of this hook, which is unique within its list
	 */
	gulong hookId;
	/**
	 * flags which are set for this hook. See #GHookFlagMask for
	 * predefined flags
	 */
	uint flags;
	/**
	 * the function to call when this hook is invoked. The possible
	 * signatures for this function are #GHookFunc and #GHookCheckFunc
	 */
	void* func;
	/**
	 * the default @finalize_hook function of a #GHookList calls
	 * this member of the hook that is being finalized
	 */
	GDestroyNotify destroy;
}

struct GHookList
{
	/**
	 * the next free #GHook id
	 */
	gulong seqId;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "hookSize", 16,
		uint, "isSetup", 1,
		uint, "", 15
	));
	/**
	 * the first #GHook element in the list
	 */
	GHook* hooks;
	/**
	 * unused
	 */
	void* dummy3;
	/**
	 * the function to call to finalize a #GHook element.
	 * The default behaviour is to call the hooks @destroy function
	 */
	GHookFinalizeFunc finalizeHook;
	/**
	 * unused
	 */
	void*[2] dummy;
}

struct GIOChannel
{
	int refCount;
	GIOFuncs* funcs;
	char* encoding;
	GIConv readCd;
	GIConv writeCd;
	char* lineTerm;
	uint lineTermLen;
	size_t bufSize;
	GString* readBuf;
	GString* encodedReadBuf;
	GString* writeBuf;
	char[6] partialWriteBuf;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "useBuffer", 1,
		uint, "doEncode", 1,
		uint, "closeOnUnref", 1,
		uint, "isReadable", 1,
		uint, "isWriteable", 1,
		uint, "isSeekable", 1,
		uint, "", 26
	));
	void* reserved1;
	void* reserved2;
}

/**
 * A table of functions used to handle different types of #GIOChannel
 * in a generic way.
 */
struct GIOFuncs
{
	/** */
	extern(C) GIOStatus function(GIOChannel* channel, char* buf, size_t count, size_t* bytesRead, GError** err) ioRead;
	/** */
	extern(C) GIOStatus function(GIOChannel* channel, const(char)* buf, size_t count, size_t* bytesWritten, GError** err) ioWrite;
	/** */
	extern(C) GIOStatus function(GIOChannel* channel, long offset, GSeekType type, GError** err) ioSeek;
	/** */
	extern(C) GIOStatus function(GIOChannel* channel, GError** err) ioClose;
	/** */
	extern(C) GSource* function(GIOChannel* channel, GIOCondition condition) ioCreateWatch;
	/** */
	extern(C) void function(GIOChannel* channel) ioFree;
	/** */
	extern(C) GIOStatus function(GIOChannel* channel, GIOFlags flags, GError** err) ioSetFlags;
	/** */
	extern(C) GIOFlags function(GIOChannel* channel) ioGetFlags;
}

struct GKeyFile;

/**
 * The #GList struct is used for each element in a doubly-linked list.
 */
struct GList
{
	/**
	 * holds the element's data, which can be a pointer to any kind
	 * of data, or any integer value using the
	 * [Type Conversion Macros][glib-Type-Conversion-Macros]
	 */
	void* data;
	/**
	 * contains the link to the next element in the list
	 */
	GList* next;
	/**
	 * contains the link to the previous element in the list
	 */
	GList* prev;
}

struct GMainContext;

struct GMainLoop;

struct GMappedFile;

struct GMarkupParseContext;

/**
 * Any of the fields in #GMarkupParser can be %NULL, in which case they
 * will be ignored. Except for the @error function, any of these callbacks
 * can set an error; in particular the %G_MARKUP_ERROR_UNKNOWN_ELEMENT,
 * %G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE, and %G_MARKUP_ERROR_INVALID_CONTENT
 * errors are intended to be set from these callbacks. If you set an error
 * from a callback, g_markup_parse_context_parse() will report that error
 * back to its caller.
 */
struct GMarkupParser
{
	/** */
	extern(C) void function(GMarkupParseContext* context, const(char)* elementName, char** attributeNames, char** attributeValues, void* userData, GError** err) startElement;
	/** */
	extern(C) void function(GMarkupParseContext* context, const(char)* elementName, void* userData, GError** err) endElement;
	/** */
	extern(C) void function(GMarkupParseContext* context, const(char)* text, size_t textLen, void* userData, GError** err) text;
	/** */
	extern(C) void function(GMarkupParseContext* context, const(char)* passthroughText, size_t textLen, void* userData, GError** err) passthrough;
	/** */
	extern(C) void function(GMarkupParseContext* context, GError* error, void* userData) error;
}

struct GMatchInfo;

/**
 * A set of functions used to perform memory allocation. The same #GMemVTable must
 * be used for all allocations in the same program; a call to g_mem_set_vtable(),
 * if it exists, should be prior to any use of GLib.
 *
 * This functions related to this has been deprecated in 2.46, and no longer work.
 */
struct GMemVTable
{
	/** */
	extern(C) void* function(size_t nBytes) malloc;
	/** */
	extern(C) void* function(void* mem, size_t nBytes) realloc;
	/** */
	extern(C) void function(void* mem) free;
	/** */
	extern(C) void* function(size_t nBlocks, size_t nBlockBytes) calloc;
	/** */
	extern(C) void* function(size_t nBytes) tryMalloc;
	/** */
	extern(C) void* function(void* mem, size_t nBytes) tryRealloc;
}

struct GMutex
{
	union
	{
		void* p;
		uint[2] i;
	}
}

struct GNode
{
	/**
	 * contains the actual data of the node.
	 */
	void* data;
	/**
	 * points to the node's next sibling (a sibling is another
	 * #GNode with the same parent).
	 */
	GNode* next;
	/**
	 * points to the node's previous sibling.
	 */
	GNode* prev;
	/**
	 * points to the parent of the #GNode, or is %NULL if the
	 * #GNode is the root of the tree.
	 */
	GNode* parent;
	/**
	 * points to the first child of the #GNode.  The other
	 * children are accessed by using the @next pointer of each
	 * child.
	 */
	GNode* children;
}

struct GOnce
{
	/**
	 * the status of the #GOnce
	 */
	GOnceStatus status;
	/**
	 * the value returned by the call to the function, if @status
	 * is %G_ONCE_STATUS_READY
	 */
	void* retval;
}

struct GOptionContext;

/**
 * A GOptionEntry struct defines a single option. To have an effect, they
 * must be added to a #GOptionGroup with g_option_context_add_main_entries()
 * or g_option_group_add_entries().
 */
struct GOptionEntry
{
	/**
	 * The long name of an option can be used to specify it
	 * in a commandline as `--long_name`. Every option must have a
	 * long name. To resolve conflicts if multiple option groups contain
	 * the same long name, it is also possible to specify the option as
	 * `--groupname-long_name`.
	 */
	const(char)* longName;
	/**
	 * If an option has a short name, it can be specified
	 * `-short_name` in a commandline. @short_name must be  a printable
	 * ASCII character different from '-', or zero if the option has no
	 * short name.
	 */
	char shortName;
	/**
	 * Flags from #GOptionFlags
	 */
	int flags;
	/**
	 * The type of the option, as a #GOptionArg
	 */
	GOptionArg arg;
	/**
	 * If the @arg type is %G_OPTION_ARG_CALLBACK, then @arg_data
	 * must point to a #GOptionArgFunc callback function, which will be
	 * called to handle the extra argument. Otherwise, @arg_data is a
	 * pointer to a location to store the value, the required type of
	 * the location depends on the @arg type:
	 * - %G_OPTION_ARG_NONE: %gboolean
	 * - %G_OPTION_ARG_STRING: %gchar*
	 * - %G_OPTION_ARG_INT: %gint
	 * - %G_OPTION_ARG_FILENAME: %gchar*
	 * - %G_OPTION_ARG_STRING_ARRAY: %gchar**
	 * - %G_OPTION_ARG_FILENAME_ARRAY: %gchar**
	 * - %G_OPTION_ARG_DOUBLE: %gdouble
	 * If @arg type is %G_OPTION_ARG_STRING or %G_OPTION_ARG_FILENAME,
	 * the location will contain a newly allocated string if the option
	 * was given. That string needs to be freed by the callee using g_free().
	 * Likewise if @arg type is %G_OPTION_ARG_STRING_ARRAY or
	 * %G_OPTION_ARG_FILENAME_ARRAY, the data should be freed using g_strfreev().
	 */
	void* argData;
	/**
	 * the description for the option in `--help`
	 * output. The @description is translated using the @translate_func
	 * of the group, see g_option_group_set_translation_domain().
	 */
	const(char)* description;
	/**
	 * The placeholder to use for the extra argument parsed
	 * by the option in `--help` output. The @arg_description is translated
	 * using the @translate_func of the group, see
	 * g_option_group_set_translation_domain().
	 */
	const(char)* argDescription;
}

struct GOptionGroup;

struct GPatternSpec;

/**
 * Represents a file descriptor, which events to poll for, and which events
 * occurred.
 */
struct GPollFD
{
	/**
	 * the file descriptor to poll (or a HANDLE on Win32)
	 */
	int fd;
	/**
	 * a bitwise combination from #GIOCondition, specifying which
	 * events should be polled for. Typically for reading from a file
	 * descriptor you would use %G_IO_IN | %G_IO_HUP | %G_IO_ERR, and
	 * for writing you would use %G_IO_OUT | %G_IO_ERR.
	 */
	ushort events;
	/**
	 * a bitwise combination of flags from #GIOCondition, returned
	 * from the poll() function to indicate which events occurred.
	 */
	ushort revents;
}

struct GPrivate
{
	void* p;
	GDestroyNotify notify;
	void*[2] future;
}

/**
 * Contains the public fields of a pointer array.
 */
struct GPtrArray
{
	/**
	 * points to the array of pointers, which may be moved when the
	 * array grows
	 */
	void** pdata;
	/**
	 * number of pointers in the array
	 */
	uint len;
}

struct GQueue
{
	/**
	 * a pointer to the first element of the queue
	 */
	GList* head;
	/**
	 * a pointer to the last element of the queue
	 */
	GList* tail;
	/**
	 * the number of elements in the queue
	 */
	uint length;
}

struct GRWLock
{
	void* p;
	uint[2] i;
}

struct GRand;

struct GRecMutex
{
	void* p;
	uint[2] i;
}

struct GRegex;

/**
 * The #GSList struct is used for each element in the singly-linked
 * list.
 */
struct GSList
{
	/**
	 * holds the element's data, which can be a pointer to any kind
	 * of data, or any integer value using the
	 * [Type Conversion Macros][glib-Type-Conversion-Macros]
	 */
	void* data;
	/**
	 * contains the link to the next element in the list.
	 */
	GSList* next;
}

struct GScanner
{
	/**
	 * unused
	 */
	void* userData;
	/**
	 * unused
	 */
	uint maxParseErrors;
	/**
	 * g_scanner_error() increments this field
	 */
	uint parseErrors;
	/**
	 * name of input stream, featured by the default message handler
	 */
	const(char)* inputName;
	/**
	 * quarked data
	 */
	GData* qdata;
	/**
	 * link into the scanner configuration
	 */
	GScannerConfig* config;
	/**
	 * token parsed by the last g_scanner_get_next_token()
	 */
	GTokenType token;
	/**
	 * value of the last token from g_scanner_get_next_token()
	 */
	GTokenValue value;
	/**
	 * line number of the last token from g_scanner_get_next_token()
	 */
	uint line;
	/**
	 * char number of the last token from g_scanner_get_next_token()
	 */
	uint position;
	/**
	 * token parsed by the last g_scanner_peek_next_token()
	 */
	GTokenType nextToken;
	/**
	 * value of the last token from g_scanner_peek_next_token()
	 */
	GTokenValue nextValue;
	/**
	 * line number of the last token from g_scanner_peek_next_token()
	 */
	uint nextLine;
	/**
	 * char number of the last token from g_scanner_peek_next_token()
	 */
	uint nextPosition;
	GHashTable* symbolTable;
	int inputFd;
	const(char)* text;
	const(char)* textEnd;
	char* buffer;
	uint scopeId;
	/**
	 * handler function for _warn and _error
	 */
	GScannerMsgFunc msgHandler;
}

/**
 * Specifies the #GScanner parser configuration. Most settings can
 * be changed during the parsing phase and will affect the lexical
 * parsing of the next unpeeked token.
 */
struct GScannerConfig
{
	/**
	 * specifies which characters should be skipped
	 * by the scanner (the default is the whitespace characters: space,
	 * tab, carriage-return and line-feed).
	 */
	char* csetSkipCharacters;
	/**
	 * specifies the characters which can start
	 * identifiers (the default is #G_CSET_a_2_z, "_", and #G_CSET_A_2_Z).
	 */
	char* csetIdentifierFirst;
	/**
	 * specifies the characters which can be used
	 * in identifiers, after the first character (the default is
	 * #G_CSET_a_2_z, "_0123456789", #G_CSET_A_2_Z, #G_CSET_LATINS,
	 * #G_CSET_LATINC).
	 */
	char* csetIdentifierNth;
	/**
	 * specifies the characters at the start and
	 * end of single-line comments. The default is "#\n" which means
	 * that single-line comments start with a '#' and continue until
	 * a '\n' (end of line).
	 */
	char* cpairCommentSingle;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "caseSensitive", 1,
		uint, "skipCommentMulti", 1,
		uint, "skipCommentSingle", 1,
		uint, "scanCommentMulti", 1,
		uint, "scanIdentifier", 1,
		uint, "scanIdentifier1char", 1,
		uint, "scanIdentifierNULL", 1,
		uint, "scanSymbols", 1,
		uint, "scanBinary", 1,
		uint, "scanOctal", 1,
		uint, "scanFloat", 1,
		uint, "scanHex", 1,
		uint, "scanHexDollar", 1,
		uint, "scanStringSq", 1,
		uint, "scanStringDq", 1,
		uint, "numbers2Int", 1,
		uint, "int2Float", 1,
		uint, "identifier2String", 1,
		uint, "char2Token", 1,
		uint, "symbol2Token", 1,
		uint, "scope0Fallback", 1,
		uint, "storeInt64", 1,
		uint, "", 10
	));
	uint paddingDummy;
}

struct GSequence;

struct GSequenceIter;

struct GSource
{
	void* callbackData;
	GSourceCallbackFuncs* callbackFuncs;
	GSourceFuncs* sourceFuncs;
	uint refCount;
	GMainContext* context;
	int priority;
	uint flags;
	uint sourceId;
	GSList* pollFds;
	GSource* prev;
	GSource* next;
	char* name;
	GSourcePrivate* priv;
}

/**
 * The `GSourceCallbackFuncs` struct contains
 * functions for managing callback objects.
 */
struct GSourceCallbackFuncs
{
	/** */
	extern(C) void function(void* cbData) doref;
	/** */
	extern(C) void function(void* cbData) unref;
	/** */
	extern(C) void function(void* cbData, GSource* source, GSourceFunc* func, void** data) get;
}

/**
 * The `GSourceFuncs` struct contains a table of
 * functions used to handle event sources in a generic manner.
 *
 * For idle sources, the prepare and check functions always return %TRUE
 * to indicate that the source is always ready to be processed. The prepare
 * function also returns a timeout value of 0 to ensure that the poll() call
 * doesn't block (since that would be time wasted which could have been spent
 * running the idle function).
 *
 * For timeout sources, the prepare and check functions both return %TRUE
 * if the timeout interval has expired. The prepare function also returns
 * a timeout value to ensure that the poll() call doesn't block too long
 * and miss the next timeout.
 *
 * For file descriptor sources, the prepare function typically returns %FALSE,
 * since it must wait until poll() has been called before it knows whether
 * any events need to be processed. It sets the returned timeout to -1 to
 * indicate that it doesn't mind how long the poll() call blocks. In the
 * check function, it tests the results of the poll() call to see if the
 * required condition has been met, and returns %TRUE if so.
 */
struct GSourceFuncs
{
	/** */
	extern(C) int function(GSource* source, int* timeout) prepare;
	/** */
	extern(C) int function(GSource* source) check;
	/** */
	extern(C) int function(GSource* source, GSourceFunc callback, void* userData) dispatch;
	/** */
	extern(C) void function(GSource* source) finalize;
	GSourceFunc closureCallback;
	GSourceDummyMarshal closureMarshal;
}

struct GSourcePrivate;

/**
 * A type corresponding to the appropriate struct type for the stat()
 * system call, depending on the platform and/or compiler being used.
 *
 * See g_stat() for more information.
 */
struct GStatBuf;

struct GString
{
	/**
	 * points to the character data. It may move as text is added.
	 * The @str field is null-terminated and so
	 * can be used as an ordinary C string.
	 */
	char* str;
	/**
	 * contains the length of the string, not including the
	 * terminating nul byte.
	 */
	size_t len;
	/**
	 * the number of bytes that can be stored in the
	 * string before it needs to be reallocated. May be larger than @len.
	 */
	size_t allocatedLen;
}

struct GStringChunk;

/**
 * An opaque structure representing a test case.
 */
struct GTestCase;

struct GTestConfig
{
	bool testInitialized;
	bool testQuick;
	bool testPerf;
	bool testVerbose;
	bool testQuiet;
	bool testUndefined;
}

struct GTestLogBuffer
{
	GString* data;
	GSList* msgs;
}

struct GTestLogMsg
{
	GTestLogType logType;
	uint nStrings;
	char** strings;
	uint nNums;
	long* nums;
}

struct GTestSuite;

struct GThread;

struct GThreadPool
{
	/**
	 * the function to execute in the threads of this pool
	 */
	GFunc func;
	/**
	 * the user data for the threads of this pool
	 */
	void* userData;
	/**
	 * are all threads exclusive to this pool
	 */
	bool exclusive;
}

struct GTimeVal
{
	/**
	 * seconds
	 */
	glong tvSec;
	/**
	 * microseconds
	 */
	glong tvUsec;
}

struct GTimeZone;

struct GTimer;

/**
 * A union holding the value of the token.
 */
struct GTokenValue
{
	union
	{
		/**
		 * token symbol value
		 */
		void* vSymbol;
		/**
		 * token identifier value
		 */
		char* vIdentifier;
		/**
		 * token binary integer value
		 */
		gulong vBinary;
		/**
		 * octal integer value
		 */
		gulong vOctal;
		/**
		 * integer value
		 */
		gulong vInt;
		/**
		 * 64-bit integer value
		 */
		ulong vInt64;
		/**
		 * floating point value
		 */
		double vFloat;
		/**
		 * hex integer value
		 */
		gulong vHex;
		/**
		 * string value
		 */
		char* vString;
		/**
		 * comment value
		 */
		char* vComment;
		/**
		 * character value
		 */
		char vChar;
		/**
		 * error value
		 */
		uint vError;
	}
}

/**
 * Each piece of memory that is pushed onto the stack
 * is cast to a GTrashStack*.
 *
 * Deprecated: #GTrashStack is deprecated without replacement
 */
struct GTrashStack
{
	/**
	 * pointer to the previous element of the stack,
	 * gets stored in the first `sizeof (gpointer)`
	 * bytes of the element
	 */
	GTrashStack* next;
}

struct GTree;

struct GVariant;

struct GVariantBuilder
{
	size_t[16] x;
}

struct GVariantDict
{
	size_t[16] x;
}

struct GVariantIter
{
	size_t[16] x;
}

struct GVariantType;

struct GModule;

/**
 * Prototype of a #GChildWatchSource callback, called when a child
 * process has exited.  To interpret @status, see the documentation
 * for g_spawn_check_exit_status().
 *
 * Params:
 *     pid = the process id of the child process
 *     status = Status information about the child process, encoded
 *         in a platform-specific manner
 *     userData = user data passed to g_child_watch_add()
 */
public alias extern(C) void function(GPid pid, int status, void* userData) GChildWatchFunc;

/**
 * Specifies the type of a comparison function used to compare two
 * values.  The function should return a negative integer if the first
 * value comes before the second, 0 if they are equal, or a positive
 * integer if the first value comes after the second.
 *
 * Params:
 *     a = a value
 *     b = a value to compare with
 *     userData = user data
 *
 * Return: negative value if @a < @b; zero if @a = @b; positive
 *     value if @a > @b
 */
public alias extern(C) int function(void* a, void* b, void* userData) GCompareDataFunc;

/**
 * Specifies the type of a comparison function used to compare two
 * values.  The function should return a negative integer if the first
 * value comes before the second, 0 if they are equal, or a positive
 * integer if the first value comes after the second.
 *
 * Params:
 *     a = a value
 *     b = a value to compare with
 *
 * Return: negative value if @a < @b; zero if @a = @b; positive
 *     value if @a > @b
 */
public alias extern(C) int function(void* a, void* b) GCompareFunc;

/**
 * A function of this signature is used to copy the node data
 * when doing a deep-copy of a tree.
 *
 * Params:
 *     src = A pointer to the data which should be copied
 *     data = Additional data
 *
 * Return: A pointer to the copy
 *
 * Since: 2.4
 */
public alias extern(C) void* function(void* src, void* data) GCopyFunc;

/**
 * Specifies the type of function passed to g_dataset_foreach(). It is
 * called with each #GQuark id and associated data element, together
 * with the @user_data parameter supplied to g_dataset_foreach().
 *
 * Params:
 *     keyId = the #GQuark id to identifying the data element.
 *     data = the data element.
 *     userData = user data passed to g_dataset_foreach().
 */
public alias extern(C) void function(GQuark keyId, void* data, void* userData) GDataForeachFunc;

/**
 * Specifies the type of function which is called when a data element
 * is destroyed. It is passed the pointer to the data element and
 * should free any memory and resources allocated for it.
 *
 * Params:
 *     data = the data element.
 */
public alias extern(C) void function(void* data) GDestroyNotify;

/**
 * The type of functions that are used to 'duplicate' an object.
 * What this means depends on the context, it could just be
 * incrementing the reference count, if @data is a ref-counted
 * object.
 *
 * Params:
 *     data = the data to duplicate
 *     userData = user data that was specified in g_datalist_id_dup_data()
 *
 * Return: a duplicate of data
 */
public alias extern(C) void* function(void* data, void* userData) GDuplicateFunc;

/**
 * Specifies the type of a function used to test two values for
 * equality. The function should return %TRUE if both values are equal
 * and %FALSE otherwise.
 *
 * Params:
 *     a = a value
 *     b = a value to compare with
 *
 * Return: %TRUE if @a = @b; %FALSE otherwise
 */
public alias extern(C) int function(void* a, void* b) GEqualFunc;

/**
 * Declares a type of function which takes an arbitrary
 * data pointer argument and has no return value. It is
 * not currently used in GLib or GTK+.
 *
 * Params:
 *     data = a data pointer
 */
public alias extern(C) void function(void* data) GFreeFunc;

/**
 * Specifies the type of functions passed to g_list_foreach() and
 * g_slist_foreach().
 *
 * Params:
 *     data = the element's data
 *     userData = user data passed to g_list_foreach() or g_slist_foreach()
 */
public alias extern(C) void function(void* data, void* userData) GFunc;

/**
 * Specifies the type of the function passed to g_hash_table_foreach().
 * It is called with each key/value pair, together with the @user_data
 * parameter which is passed to g_hash_table_foreach().
 *
 * Params:
 *     key = a key
 *     value = the value corresponding to the key
 *     userData = user data passed to g_hash_table_foreach()
 */
public alias extern(C) void function(void* key, void* value, void* userData) GHFunc;

/**
 * Specifies the type of the function passed to
 * g_hash_table_foreach_remove(). It is called with each key/value
 * pair, together with the @user_data parameter passed to
 * g_hash_table_foreach_remove(). It should return %TRUE if the
 * key/value pair should be removed from the #GHashTable.
 *
 * Params:
 *     key = a key
 *     value = the value associated with the key
 *     userData = user data passed to g_hash_table_remove()
 *
 * Return: %TRUE if the key/value pair should be removed from the
 *     #GHashTable
 */
public alias extern(C) int function(void* key, void* value, void* userData) GHRFunc;

/**
 * Specifies the type of the hash function which is passed to
 * g_hash_table_new() when a #GHashTable is created.
 *
 * The function is passed a key and should return a #guint hash value.
 * The functions g_direct_hash(), g_int_hash() and g_str_hash() provide
 * hash functions which can be used when the key is a #gpointer, #gint*,
 * and #gchar* respectively.
 *
 * g_direct_hash() is also the appropriate hash function for keys
 * of the form `GINT_TO_POINTER (n)` (or similar macros).
 *
 * <!-- FIXME: Need more here. --> A good hash functions should produce
 * hash values that are evenly distributed over a fairly large range.
 * The modulus is taken with the hash table size (a prime number) to
 * find the 'bucket' to place each key into. The function should also
 * be very fast, since it is called for each key lookup.
 *
 * Note that the hash functions provided by GLib have these qualities,
 * but are not particularly robust against manufactured keys that
 * cause hash collisions. Therefore, you should consider choosing
 * a more secure hash function when using a GHashTable with keys
 * that originate in untrusted data (such as HTTP requests).
 * Using g_str_hash() in that situation might make your application
 * vulerable to
 * [Algorithmic Complexity Attacks](https://lwn.net/Articles/474912/).
 *
 * The key to choosing a good hash is unpredictability.  Even
 * cryptographic hashes are very easy to find collisions for when the
 * remainder is taken modulo a somewhat predictable prime number.  There
 * must be an element of randomness that an attacker is unable to guess.
 *
 * Params:
 *     key = a key
 *
 * Return: the hash value corresponding to the key
 */
public alias extern(C) uint function(void* key) GHashFunc;

/**
 * Defines the type of a hook function that can be invoked
 * by g_hook_list_invoke_check().
 *
 * Params:
 *     data = the data field of the #GHook is passed to the hook function here
 *
 * Return: %FALSE if the #GHook should be destroyed
 */
public alias extern(C) int function(void* data) GHookCheckFunc;

/**
 * Defines the type of function used by g_hook_list_marshal_check().
 *
 * Params:
 *     hook = a #GHook
 *     marshalData = user data
 *
 * Return: %FALSE if @hook should be destroyed
 */
public alias extern(C) int function(GHook* hook, void* marshalData) GHookCheckMarshaller;

/**
 * Defines the type of function used to compare #GHook elements in
 * g_hook_insert_sorted().
 *
 * Params:
 *     newHook = the #GHook being inserted
 *     sibling = the #GHook to compare with @new_hook
 *
 * Return: a value <= 0 if @new_hook should be before @sibling
 */
public alias extern(C) int function(GHook* newHook, GHook* sibling) GHookCompareFunc;

/**
 * Defines the type of function to be called when a hook in a
 * list of hooks gets finalized.
 *
 * Params:
 *     hookList = a #GHookList
 *     hook = the hook in @hook_list that gets finalized
 */
public alias extern(C) void function(GHookList* hookList, GHook* hook) GHookFinalizeFunc;

/**
 * Defines the type of the function passed to g_hook_find().
 *
 * Params:
 *     hook = a #GHook
 *     data = user data passed to g_hook_find_func()
 *
 * Return: %TRUE if the required #GHook has been found
 */
public alias extern(C) int function(GHook* hook, void* data) GHookFindFunc;

/**
 * Defines the type of a hook function that can be invoked
 * by g_hook_list_invoke().
 *
 * Params:
 *     data = the data field of the #GHook is passed to the hook function here
 */
public alias extern(C) void function(void* data) GHookFunc;

/**
 * Defines the type of function used by g_hook_list_marshal().
 *
 * Params:
 *     hook = a #GHook
 *     marshalData = user data
 */
public alias extern(C) void function(GHook* hook, void* marshalData) GHookMarshaller;

/**
 * Specifies the type of function passed to g_io_add_watch() or
 * g_io_add_watch_full(), which is called when the requested condition
 * on a #GIOChannel is satisfied.
 *
 * Params:
 *     source = the #GIOChannel event source
 *     condition = the condition which has been satisfied
 *     data = user data set in g_io_add_watch() or g_io_add_watch_full()
 *
 * Return: the function should return %FALSE if the event source
 *     should be removed
 */
public alias extern(C) int function(GIOChannel* source, GIOCondition condition, void* data) GIOFunc;

/**
 * Specifies the prototype of log handler functions.
 *
 * The default log handler, g_log_default_handler(), automatically appends a
 * new-line character to @message when printing it. It is advised that any
 * custom log handler functions behave similarly, so that logging calls in user
 * code do not need modifying to add a new-line character to the message if the
 * log handler is changed.
 *
 * Params:
 *     logDomain = the log domain of the message
 *     logLevel = the log level of the message (including the
 *         fatal and recursion flags)
 *     message = the message to process
 *     userData = user data, set in g_log_set_handler()
 */
public alias extern(C) void function(const(char)* logDomain, GLogLevelFlags logLevel, const(char)* message, void* userData) GLogFunc;

/**
 * Specifies the type of function passed to g_node_children_foreach().
 * The function is called with each child node, together with the user
 * data passed to g_node_children_foreach().
 *
 * Params:
 *     node = a #GNode.
 *     data = user data passed to g_node_children_foreach().
 */
public alias extern(C) void function(GNode* node, void* data) GNodeForeachFunc;

/**
 * Specifies the type of function passed to g_node_traverse(). The
 * function is called with each of the nodes visited, together with the
 * user data passed to g_node_traverse(). If the function returns
 * %TRUE, then the traversal is stopped.
 *
 * Params:
 *     node = a #GNode.
 *     data = user data passed to g_node_traverse().
 *
 * Return: %TRUE to stop the traversal.
 */
public alias extern(C) int function(GNode* node, void* data) GNodeTraverseFunc;

/**
 * The type of function to be passed as callback for %G_OPTION_ARG_CALLBACK
 * options.
 *
 * Params:
 *     optionName = The name of the option being parsed. This will be either a
 *         single dash followed by a single letter (for a short name) or two dashes
 *         followed by a long option name.
 *     value = The value to be parsed.
 *     data = User data added to the #GOptionGroup containing the option when it
 *         was created with g_option_group_new()
 *
 * Return: %TRUE if the option was successfully parsed, %FALSE if an error
 *     occurred, in which case @error should be set with g_set_error()
 *
 * Throws: GException on failure.
 */
public alias extern(C) int function(const(char)* optionName, const(char)* value, void* data, GError** err) GOptionArgFunc;

/**
 * The type of function to be used as callback when a parse error occurs.
 *
 * Params:
 *     context = The active #GOptionContext
 *     group = The group to which the function belongs
 *     data = User data added to the #GOptionGroup containing the option when it
 *         was created with g_option_group_new()
 *
 * Throws: GException on failure.
 */
public alias extern(C) void function(GOptionContext* context, GOptionGroup* group, void* data, GError** err) GOptionErrorFunc;

/**
 * The type of function that can be called before and after parsing.
 *
 * Params:
 *     context = The active #GOptionContext
 *     group = The group to which the function belongs
 *     data = User data added to the #GOptionGroup containing the option when it
 *         was created with g_option_group_new()
 *
 * Return: %TRUE if the function completed successfully, %FALSE if an error
 *     occurred, in which case @error should be set with g_set_error()
 *
 * Throws: GException on failure.
 */
public alias extern(C) int function(GOptionContext* context, GOptionGroup* group, void* data, GError** err) GOptionParseFunc;

/**
 * Specifies the type of function passed to g_main_context_set_poll_func().
 * The semantics of the function should match those of the poll() system call.
 *
 * Params:
 *     ufds = an array of #GPollFD elements
 *     nfsd = the number of elements in @ufds
 *     timeout = the maximum time to wait for an event of the file descriptors.
 *         A negative value indicates an infinite timeout.
 *
 * Return: the number of #GPollFD elements which have events or errors
 *     reported, or -1 if an error occurred.
 */
public alias extern(C) int function(GPollFD* ufds, uint nfsd, int timeout) GPollFunc;

/**
 * Specifies the type of the print handler functions.
 * These are called with the complete formatted string to output.
 *
 * Params:
 *     str = the message to output
 */
public alias extern(C) void function(const(char)* str) GPrintFunc;

/**
 * Specifies the type of the function passed to g_regex_replace_eval().
 * It is called for each occurrence of the pattern in the string passed
 * to g_regex_replace_eval(), and it should append the replacement to
 * @result.
 *
 * Params:
 *     matchInfo = the #GMatchInfo generated by the match.
 *         Use g_match_info_get_regex() and g_match_info_get_string() if you
 *         need the #GRegex or the matched string.
 *     result = a #GString containing the new string
 *     userData = user data passed to g_regex_replace_eval()
 *
 * Return: %FALSE to continue the replacement process, %TRUE to stop it
 *
 * Since: 2.14
 */
public alias extern(C) int function(GMatchInfo* matchInfo, GString* result, void* userData) GRegexEvalCallback;

/**
 * Specifies the type of the message handler function.
 *
 * Params:
 *     scanner = a #GScanner
 *     message = the message
 *     error = %TRUE if the message signals an error,
 *         %FALSE if it signals a warning.
 */
public alias extern(C) void function(GScanner* scanner, char* message, int error) GScannerMsgFunc;

/**
 * A #GSequenceIterCompareFunc is a function used to compare iterators.
 * It must return zero if the iterators compare equal, a negative value
 * if @a comes before @b, and a positive value if @b comes before @a.
 *
 * Params:
 *     a = a #GSequenceIter
 *     b = a #GSequenceIter
 *     data = user data
 *
 * Return: zero if the iterators are equal, a negative value if @a
 *     comes before @b, and a positive value if @b comes before @a.
 */
public alias extern(C) int function(GSequenceIter* a, GSequenceIter* b, void* data) GSequenceIterCompareFunc;

/**
 * This is just a placeholder for #GClosureMarshal,
 * which cannot be used here for dependency reasons.
 */
public alias extern(C) void function() GSourceDummyMarshal;

/**
 * Specifies the type of function passed to g_timeout_add(),
 * g_timeout_add_full(), g_idle_add(), and g_idle_add_full().
 *
 * Params:
 *     userData = data passed to the function, set when the source was
 *         created with one of the above functions
 *
 * Return: %FALSE if the source should be removed. #G_SOURCE_CONTINUE and
 *     #G_SOURCE_REMOVE are more memorable names for the return value.
 */
public alias extern(C) int function(void* userData) GSourceFunc;

/**
 * Specifies the type of the setup function passed to g_spawn_async(),
 * g_spawn_sync() and g_spawn_async_with_pipes(), which can, in very
 * limited ways, be used to affect the child's execution.
 *
 * On POSIX platforms, the function is called in the child after GLib
 * has performed all the setup it plans to perform, but before calling
 * exec(). Actions taken in this function will only affect the child,
 * not the parent.
 *
 * On Windows, the function is called in the parent. Its usefulness on
 * Windows is thus questionable. In many cases executing the child setup
 * function in the parent can have ill effects, and you should be very
 * careful when porting software to Windows that uses child setup
 * functions.
 *
 * However, even on POSIX, you are extremely limited in what you can
 * safely do from a #GSpawnChildSetupFunc, because any mutexes that were
 * held by other threads in the parent process at the time of the fork()
 * will still be locked in the child process, and they will never be
 * unlocked (since the threads that held them don't exist in the child).
 * POSIX allows only async-signal-safe functions (see signal(7)) to be
 * called in the child between fork() and exec(), which drastically limits
 * the usefulness of child setup functions.
 *
 * In particular, it is not safe to call any function which may
 * call malloc(), which includes POSIX functions such as setenv().
 * If you need to set up the child environment differently from
 * the parent, you should use g_get_environ(), g_environ_setenv(),
 * and g_environ_unsetenv(), and then pass the complete environment
 * list to the `g_spawn...` function.
 *
 * Params:
 *     userData = user data to pass to the function.
 */
public alias extern(C) void function(void* userData) GSpawnChildSetupFunc;

/**
 * The type used for test case functions that take an extra pointer
 * argument.
 *
 * Params:
 *     userData = the data provided when registering the test
 *
 * Since: 2.28
 */
public alias extern(C) void function(void* userData) GTestDataFunc;

/**
 * The type used for functions that operate on test fixtures.  This is
 * used for the fixture setup and teardown functions as well as for the
 * testcases themselves.
 *
 * @user_data is a pointer to the data that was given when registering
 * the test case.
 *
 * @fixture will be a pointer to the area of memory allocated by the
 * test framework, of the size requested.  If the requested size was
 * zero then @fixture will be equal to @user_data.
 *
 * Params:
 *     fixture = the test fixture
 *     userData = the data provided when registering the test
 *
 * Since: 2.28
 */
public alias extern(C) void function(void* fixture, void* userData) GTestFixtureFunc;

/**
 * The type used for test case functions.
 *
 * Since: 2.28
 */
public alias extern(C) void function() GTestFunc;

/**
 * Specifies the prototype of fatal log handler functions.
 *
 * Params:
 *     logDomain = the log domain of the message
 *     logLevel = the log level of the message (including the fatal and recursion flags)
 *     message = the message to process
 *     userData = user data, set in g_test_log_set_fatal_handler()
 *
 * Return: %TRUE if the program should abort, %FALSE otherwise
 *
 * Since: 2.22
 */
public alias extern(C) int function(const(char)* logDomain, GLogLevelFlags logLevel, const(char)* message, void* userData) GTestLogFatalFunc;

/**
 * Specifies the type of the @func functions passed to g_thread_new()
 * or g_thread_try_new().
 *
 * Params:
 *     data = data passed to the thread
 *
 * Return: the return value of the thread
 */
public alias extern(C) void* function(void* data) GThreadFunc;

/**
 * The type of functions which are used to translate user-visible
 * strings, for <option>--help</option> output.
 *
 * Params:
 *     str = the untranslated string
 *     data = user data specified when installing the function, e.g.
 *         in g_option_group_set_translate_func()
 *
 * Return: a translation of the string for the current locale.
 *     The returned string is owned by GLib and must not be freed.
 */
public alias extern(C) const(char)* function(const(char)* str, void* data) GTranslateFunc;

/**
 * Specifies the type of function passed to g_tree_traverse(). It is
 * passed the key and value of each node, together with the @user_data
 * parameter passed to g_tree_traverse(). If the function returns
 * %TRUE, the traversal is stopped.
 *
 * Params:
 *     key = a key of a #GTree node
 *     value = the value corresponding to the key
 *     data = user data passed to g_tree_traverse()
 *
 * Return: %TRUE to stop the traversal
 */
public alias extern(C) int function(void* key, void* value, void* data) GTraverseFunc;

/**
 * The type of functions to be called when a UNIX fd watch source
 * triggers.
 *
 * Params:
 *     fd = the fd that triggered the event
 *     condition = the IO conditions reported on @fd
 *     userData = user data passed to g_unix_fd_add()
 *
 * Return: %FALSE if the source should be removed
 */
public alias extern(C) int function(int fd, GIOCondition condition, void* userData) GUnixFDSourceFunc;

/**
 * Declares a type of function which takes no arguments
 * and has no return value. It is used to specify the type
 * function passed to g_atexit().
 */
public alias extern(C) void function() GVoidFunc;

/**
 * Specifies the type of the module initialization function.
 * If a module contains a function named g_module_check_init() it is called
 * automatically when the module is loaded. It is passed the #GModule structure
 * and should return %NULL on success or a string describing the initialization
 * error.
 *
 * Params:
 *     modul = the #GModule corresponding to the module which has just been loaded
 *
 * Return: %NULL on success, or a string describing the initialization error
 */
public alias extern(C) const(char)* function(GModule* modul) GModuleCheckInit;

/**
 * Specifies the type of the module function called when it is unloaded.
 * If a module contains a function named g_module_unload() it is called
 * automatically when the module is unloaded.
 * It is passed the #GModule structure.
 *
 * Params:
 *     modul = the #GModule about to be unloaded
 */
public alias extern(C) void function(GModule* modul) GModuleUnload;
