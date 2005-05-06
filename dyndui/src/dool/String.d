/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 * contains code from phobos, the D runtime library
 * from www.digitalmars.com by Walter Bright
 */
 
/*
 * written or adapted by Antonio Monteiro
 */

module dool.String;

version(linux)
{
	version=CommonUnix;
}
version(Unix)
{
	version=CommonUnix;
}

extern (C)
{
	// Functions from the C library.
	int strlen(char *);
	int strcmp(char *, char *);
	char* strcat(char *, char *);
	int memcmp(void *, void *, uint);
	int memicmp(char *, char *, uint);
	char *strcpy(char *, char *);
	int atoi(char *);
	long atoll(char *);
	double atof(char *);
	char *strstr(char *, char *);
	char *strchr(char *, char);
	char *strrchr(char *, char);
	char *memchr(char *, char, uint);
	void *memcpy(void *, void *, uint);
	void *memmove(void *, void *, uint);
	void *memset(void *, uint, uint);
	
	int wcslen(wchar *);
	int wcscmp(wchar *, wchar *);
}

/**
 * String object are mutable operations will affect the string content.
 * exceptions are the substring and strip methods (strip is just a particular case of substring).
 * To preserve the original String when calling mutator methods just duplicate the String before calling the method,
 * for instance: myString.dup.toLower().
 * Method naming is close to the functions on the phobos string module
 * \todo template for StringD and StringW?
 */
class String
{

	private import dool.util.Utf;

	const char[16] hexdigits = "0123456789ABCDEF";
	const char[10] digits    = "0123456789";
	const char[8]  octdigits = "01234567";
	const char[26] lowercase = "abcdefghijklmnopqrstuvwxyz";
	const char[26] uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	const char[52] letters   = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
				   "abcdefghijklmnopqrstuvwxyz";
	const char[6] whitespace = " \t\v\r\n\f";
	

	// alias so we can change our mind later and create a paremetrizavel class
	alias char CHAR;
	
	protected CHAR[] str;
	
	// some constants
	const CHAR[] EMPTY = "";
	const CHAR[] EMPTY_Z = "\0";

	private static String whiteSpace;
	
	public:
	
	/**
	 * Creates the static variables
	 */
	static this()
	{
		//printf("String.static this\n");
		whiteSpace = new String(cast(char[])whitespace);
	}
	
	public:
	
	/**
	 * Creates a new empty String.
	 */
	this()
	{
		this("");
	}
	
	/**
	 * Creates a new String that contains the array passed.
	 * The array is duplicated.
	 * To make a string point to an existing array create an string string
	 * and them set it with the point() method.
	 * @param str the array that defines the initial value of this String
	 */
	this(CHAR[] str)
	{
		this.str = str.dup;
	}
	
	/**
	 * Copy constructor.
	 * The String to copy is duplicated.
	 * @param string The String to copy
	 */
	this(String string)
	body
	{
		if ( string === null )
		{
		}
		else
		{
			str = string.toString().dup;
		}
	}
	
	/**
	 * Creates a String from a pointer to memory.
	 * The string length will be the length from the pointer until the next null char;
	 * @param str The pointer.
	 */
	this(void* str)
	{
		this.str = str ? (cast(char*)str)[0 .. strlen(cast(char*)str)] : "";
	}

	/**
	 * Create a String from a pointer to chars.
	 * @param str the pointer to chars
	 * @param length the length of the new String
	 */
	this(char* str, int length)
	{
		this.str = str ? str[0 .. length] : "";
	}
	
	/**
	 * Creates a String from the char.
	 * The String will a the lengh of 1
	 * @param c The char
	 */
	this(char c)
	{
		str.length = 1;
		str[0] = c;
	}
	
	/**
	 * creates a String that is the representation of the int passed.
	 * @param i the int to be converted to String
	 */
	this(int i)
	{
		str = toString(i);
	}

	/**
	 * creates a String that is the representation of the uint passed
	 * @param ui the uint to be converted to String
	 */
	this(uint ui)
	{
		str = toString(ui);
	}
	
	/**
	 * creates a String that is the representation of the long passed
	 * @param l the long to be converted to String
	 */
	this(long l)
	{
		str = toString(l);
	}
	
	/**
	 * creates a String that is the representation of the double passed
	 * @param d the double to be converted to String
	 */
	this(double d)
	{
		str = toString(d);
	}
	
	/**
	 * Creates a string that is "0" or "1".
	 * This is to keep compatilility - WILL CHANGE(?) - to "false" or "true"?
	 */
	this(bit b)
	{
		str = toString(b);
	}

	override
	{
		/**
		 * Define the hash value of this String.
		 * \todo refined
		 * \todo probably can't be use like this for mutating hashes?
		 */
		uint toHash()
		{
			if ( length > 0)
			{
				return cast(uint)str[0];
			}
			if ( str.length > 6 )
			{
				return cast(uint)str[0] | cast(uint)str[2] << 8 | cast(uint)str[4] << 16 | cast(uint)str[6] << 24;
			}
			switch ( str.length )
			{
				case 0:	return 0; break;
				case 1: return cast(uint)str[0]; break;
				case 2: return cast(uint)str[0] | cast(uint)str[1] << 8; break;
				case 3: return cast(uint)str[0] | cast(uint)str[1] << 8 | cast(uint)str[2] << 16; break;
				default:
					return cast(uint)str[0] | cast(uint)str[1] << 8 | cast(uint)str[2] << 16 | cast(uint)str[length-1] << 24;
					break;
			}
			return 0;
		}
		
		/**
		 * Compares this String to the toString() value of another Object
		 * @return -1, 0 or 1
		 */
		int opCmp(Object object)
		{
			char[] string = object.toString();
			//printf("String.opCmp %.*s == %.*s ?\n", str, string);
			uint len = length;
			int result;
		
			//printf("cmp('%.*s', '%.*s')\n", s1, s2);
			if (string.length < len)
			{
				len = string.length;
			}
			result = memcmp(toString(), string, len);
			if (result == 0)
			{
				result = cast(int)length - cast(int)string.length;
			}
			//printf("String.opCmp result = %d\n", result);
			return result;
		}
		
	    int opEquals(Object o)
		{
			//printf("String.opEquals %.*s and %.*s = %d\n",str,o.toString(),opEquals(o.toString()));
			return opEquals(o.toString());
		}
	}
	
	/**
	 * Duplicates this String.
	 * The data array will be duplicate.
	 * @return A new String 
	 */
	String dup()
	{
		return new String(this);
	}
	
	/**
	 * Creates a String from a zero terminated pointer to chars
	 * We need this to interface to C style strings
	 */
	static String newz(char* str)
	{
		return new String(str);
	}

	/**
	 * Returns pointer to a null terminated version of string passed in.
	 * @return a null terminated version of string passed in this might or not be a copy of the original string
	 */
	static char* stringz(char[] string)
	in
	{
		if (string)
		{
			// No embedded 0's
			// why not ? some might like it - might be used for some thing else then C
			// for (uint i = 0; i < string.length; i++)
			// assert(string[i] != 0);
		}
	}
	out (result)
	{
		if (result)
		{
			//printf("strlen(result) = %d\n",strlen(result));
			//printf("string.length =  %d\n",string.length);
			// no way
			//assert(strlen(result) == string.length);
			//assert(memcmp(result, string, string.length) == 0);
		}
	}
	body
	{
		char* p;
		char[] copy;
	
		//printf("String.stringz = %.*s\n",string);
	
		if (string.length == 0)
			return "";
	
		p = &string[0] + string.length;
	
		// Peek past end of string[], if it's 0, no conversion necessary.
		// Note that the compiler will put a 0 past the end of static
		// strings, and the storage allocator will put a 0 past the end
		// of newly allocated char[]'s.
		if (*p == 0)
		{
			// correct version
			//return string;
			// my version - works better then the correct version
			p = &string[0];
			return p;
		}
	
		// Need to make a copy
		copy = new char[string.length + 1];
		copy[0..string.length] = string;
		copy[string.length] = '\0';		// this is necessary for dmd 0.93
		
		// correct version
		return copy;
		// my version - works better then the correct version
		//p = &copy[0];
		//return p;
		
	}

	/**
	 * Gets the array of characters of this String
	 * @return the array of characters of this String
	 */
	char[] toString()
	{
		return str;
	}
	
	/**
	 * Gets a null terminated array of char version of this String
	 * @return a null terminated array of char version of this String
	 */
	char* toStringz()
	{
		return stringz(str);
	}
	
	
	/**
	 * Gets this string chars as an void array
	 * @return a null terminated array of char version of this String
	 */
	void[] toVoid()
	{
		return cast(void[])str;
	}
	
	/**
	 * Gets the length of this String
	 * @return The length of this String
	 */
	int length()
	{
		return str.length;
	}
	
	/**
	 * Sets the length of this String
	 * @param The new length for this String
	 */
	void length(int length)
	{
		str.length = length;
	}
	
	/**
	 * Increments or decrements the length of this String.
	 * The resulting length will never be less then zero.
	 * @param increment The length increment
	 */
	void incLength(int increment)
	{
		if ( increment<0 && -increment > str.length )
		{
			str.length = 0;
		}
		else
		{
			str.length = str.length + increment;
		}
	}
	
	/**
	 * Sets this String from another String.
	 * The String array will be duplicated
	 * @param String the String to copy
	 */
	void set(String string)
	{
		str = string.toString().dup;
	}

	/**
	 * Sets this String from an array of chars.
	 * The array will be duplicated
	 * @param str the array to copy
	 */
	void set(char[] str)
	{
		this.str = str.dup;
	}
	
	/**
	 * Sets this String from a pointer to chars and a length.
	 * @param str The array of chars
	 * @param length the length to copy
	 */
	void set(char* str, int length)
	{
		this.str = str[0 .. length];
	}
	
	/**
	 * Sets this String from a pointer to chars terminated ny null.
	 * @param str the pointer to chars
	 */
	void setz(char* str)
	{
		this.str = this.str = str ? str[0 .. strlen(str)] : "";
	}
	
	/**
	 * Makes this string to point to the char array.
	 * the date is not duplicated and is ready for changes.
	 * be awere the D will copy the string if it will change in length breaking the paralel to the original.
	 */
	void point(char[] str)
	{
		this.str = str;
	}
	
	/**
	 * Makes this string to point to the char array.
	 * the date is not duplicated and is ready for changes
	 * be awere the D will copy the string if it will change in length breaking the paralel to the original.
	 */
	void point(void[] str)
	{
		this.str = cast(CHAR[]) str;
	}
	
	/**
	 * Gets the character at the index position.
	 * (first char is at 0)
	 * @param index The index position
	 * @return the character at the index position
	 * @throws assert if index is invalid
	 */
	CHAR charAt(int index)
	in
	{
		//printf("string.charAt %d %.*s %d\n", index, str, str.length);
		assert(index>=0);
		assert(index<str.length);
	}
	body
	{
		return str[index];
	}
	
	////////////////////////////////////////////////////////////
	//// print ourselfs
	////////////////////////////////////////////////////////////

	void print()
	{
		printf("%.*s", toString());
	}

	void println()
	{
		printf("%.*s\n", toString());
	}

	void print(char[] prefix)
	{
		printf("%.*s%.*s", prefix, toString());
	}
	
	void println(char[] prefix)
	{
		printf("%.*s%.*s\n", prefix, toString());
	}
	
	void println(String prefix)
	{
		printf("%.*s%.*s\n", prefix.toString(), toString());
	}
	
	////////////////////////////////////////////////////////////
	//// utilities that create a new String object
	////////////////////////////////////////////////////////////

	/**
	 * Creates a new String from a slice of this string
	 * @param start
	 * @param end
	 */
	String substring(int start, int end)
	in
	{
		//printf("String.substring %.*s %d %d\n", str, start, end);
		assert(start >= 0);
		assert(end >= 0);
		assert(end<=str.length);
		assert(start<=end);
	}
	body
	{
		if ( end<1 ) end = length-end;
		return new String(str[start..end]);
	}
	
	String substring(int start)
	in
	{
		assert(start >= 0);
		assert(start<=str.length);
	}
	body
	{
		//printf("substring >%.*s< from %d\n", str, start);
		if ( start<0) start = 0;
		else if ( start>str.length) start = length;
		return new String(str[start..str.length]);
	}

	String stripl()
	{
		uint i;
	
		for (i = 0; i < str.length; i++)
		{
			if (!isWhite(str[i]))
				break;
		}
		return new String(str[i .. str.length]);
	}
	
	String stripr()
	{
		uint i;
	
		for (i = str.length; i > 0; i--)
		{
			if (!isWhite(str[i - 1]))
				break;
		}
		return new String(str[0 .. i]);
	}

	
	String strip()
	{
		int s = 0;
		int e = str.length-1;
		
		while( s < str.length && isWhite(str[s]) )
		{
			s++;
		}

		while( (e>s) && isWhite(str[e]) )
		{
			e--;
		}

		return new String(str[s .. e+1]);
	}
	
	static
	String join(String[] tokens, CHAR[] sep)
	{
		return join(tokens, new String(sep));
	}
	
	static
	String join(String[] tokens, String sep)
	{
		String string = new String();
		if ( tokens.length > 0 )
		{
			string ~= tokens[0];
			if ( tokens.length > 1 )
			{
				foreach(String s ; tokens[1..tokens.length])
				{
					string ~= sep ~ s;
				}
			}
		}
		return string;
	}

	String[] split()
	{
		String[] words;
		
		uint i;
		uint istart;
		int inword;
	
		inword = 0;
		for (i = 0; i < str.length; i++)
		{
			switch (str[i])
			{
				case ' ', '\t', '\f', '\r', '\n', '\v':
					if (inword)
					{
						words ~= new String(str[istart .. i]);
						inword = 0;
					}
					break;
		
				default:
					if (!inword)
					{   istart = i;
						inword = 1;
					}
					break;
			}
		}
		if (inword)
		words ~= new String(str[istart .. i]);
		return words;
	}
	
	String[] split(String delim)
	{
		return split(delim.toString());
	}
	String[] split(CHAR[] delim)
    {
		return sSplit(str, delim);
	}
	
	static String[] sSplit(char[] s, char[] delim)
	in
	{
		assert(delim.length > 0);
	}
	body
	{
		uint i;
		uint j;
		String[] words;
	
		i = 0;
		if (s.length)
		{
			if (delim.length == 1)
			{	char c = delim[0];
			uint nwords = 0;
			char *p = &s[0];
			char *pend = p + s.length;
	
			while (true)
			{
				nwords++;
				p = memchr(p, c, pend - p);
				if (!p)
				break;
				p++;
				if (p == pend)
				{	nwords++;
				break;
				}
			}
			words.length = nwords;
	
			int wordi = 0;
			i = 0;
			while (true)
			{
				p = memchr(&s[i], c, s.length - i);
				if (!p)
				{
				words[wordi] = new String(s[i .. s.length]);
				break;
				}
				j = p - &s[0];
				words[wordi] = new String(s[i .. j]);
				wordi++;
				i = j + 1;
				if (i == s.length)
				{
					words[wordi] = new String();
					break;
				}
			}
			assert(wordi + 1 == nwords);
			}
			else
			{	uint nwords = 0;
	
			while (true)
			{
				nwords++;
				j = (new String(s[i .. s.length])).find(delim);
				if (j == -1)
				break;
				i += j + delim.length;
				if (i == s.length)
				{	nwords++;
				break;
				}
				assert(i < s.length);
			}
			words.length = nwords;
	
			int wordi = 0;
			i = 0;
			while (true)
			{
				j = (new String(s[i .. s.length])).find(delim);
				if (j == -1)
				{
				words[wordi] = new String(s[i .. s.length]);
				break;
				}
				words[wordi] = new String(s[i .. i + j]);
				wordi++;
				i += j + delim.length;
				if (i == s.length)
				{
				words[wordi] = new String();
				break;
				}
				assert(i < s.length);
			}
			assert(wordi + 1 == nwords);
			}
		}
		return words;
    }

	
	String[] splitLines()
	{
		uint i;
		uint istart;
		uint nlines;
		String[] lines;
	
		nlines = 0;
		for (i = 0; i < str.length; i++)
		{
			char c;
		
			c = str[i];
			if (c == '\r' || c == '\n')
			{
				nlines++;
				istart = i + 1;
				if (c == '\r' && i + 1 < str.length && str[i + 1] == '\n')
				{
				i++;
				istart++;
				}
			}
		}
		if (istart != i)
		{
			nlines++;
		}
		lines.length = nlines;
		nlines = 0;
		istart = 0;
		for (i = 0; i < str.length; i++)
		{
			char c;
		
			c = str[i];
			if (c == '\r' || c == '\n')
			{
				lines[nlines] = new String(str[istart .. i]);
				nlines++;
				istart = i + 1;
				if (c == '\r' && i + 1 < str.length && str[i + 1] == '\n')
				{
					i++;
					istart++;
				}
			}
		}
		if (istart != i)
		{
			lines[nlines] = new String(str[istart .. i]);
			nlines++;
		}
	
		assert(nlines == lines.length);
		return lines;
	}
	
	////////////////////////////////////////////////////////////
	// non mutator utilities
	////////////////////////////////////////////////////////////
	
	int find(dchar c)
	{
		char* p;
	
		if (c <= 0x7F)
		{	// Plain old ASCII
		p = memchr(str, c, str.length);
		if (p)
			return p - cast(char *)str;
		else
			return -1;
		}
	
		// c is a universal character
		char[4] buf;
		char[] t;
		t = Utf.toUTF8(buf, c);
		return find(t);
	}

	bit contains(CHAR[] string)
	{
		return contains(new String(string));
	}
	
	bit contains(String string)
	{
		return find(string) >= 0;
	}
	
	bit contains(CHAR c)
	{
		return find(c) >= 0;
	}
	
	int find(CHAR c, int start=0)
	{
		int i = start;
		bit notFound = true;
		while ( notFound && i < length)
		{
			notFound = c != str[i++];
		}
		--i;
		return notFound ? -1 : i;
	}
	
	int find(char[] sub, int start=0)
	{
		return find(new String(sub), start);
	}
	int find(String sub, int start=0)
	out (result)
	{
		
		if (result == -1)
		{
		}
		else
		{
			assert(0 <= result && result < str.length - sub.length + 1);
			//assert(memcmp(&str[result], sub, sub.length) == 0);
			assert(sub == str[result..result+sub.length]);
		}
	}
	body
	{
		int sublength = sub.length;
	
		if (sublength == 0)
		{
			return 0;
		}
	
		if ( start >= length )
		{
			return -1;
		}
	
		char c = sub[0];
		if (sublength == 1)
		{
			char *p = memchr(&str[start], c, str.length-start);
			if (p)
			{
				//printf("======== Found (%s) at %d on %s\n",sub.toStringz(), p - &str[0], toStringz());
				return p - &str[0];
			}
		}
		else
		{
			int imax = str.length - sublength + 1;
	
			// Remainder of sub[]
			char *q = &sub.str[1];
			sublength--;
	
			for (int i = start; i < imax; i++)
			{
				char *p = memchr(&str[i], c, imax - i);
				if (!p)
					break;
				i = p - &str[0];
				if (memcmp(p + 1, q, sublength) == 0)
				{
					return i;
				}
			}
		}
		return -1;
	}

	int rfind(dchar c, int start=-1)
	{
		int i;
	
		if (c <= 0x7F)
		{	// Plain old ASCII
			if ( start == -1) start = str.length;
			for (i = start; i-- > 0;)
			{
				if (str[i] == c)
				break;
			}
		return i;
		}
	
		// c is a universal character
		char[4] buf;
		char[] t;
		t = Utf.toUTF8(buf, c);
		return rfind(t);
	}

	int rfind(CHAR[] string, int start=-1)
	{
		return rfind(new String(string), start);
	}
	int rfind(String sub, int start=-1)
	out (result)
	{
		if (result == -1)
		{
		}
		else
		{
			assert(0 <= result && result < str.length - sub.length + 1);
		//	assert(memcmp(&str[0] + result, sub, sub.length) == 0);
		}
	}
	body
	{
		char c;
	
		if ( start == -1 ) start = str.length;
	
		if (sub.length == 0)
		{
			return start;
		}
		c = sub[0];
		if (sub.length == 1)
		{
			return rfind( c, start);
		}
		for (int i = start - sub.length; i >= 0; i--)
		{
			if (str[i] == c)
			{
				if (memcmp(&str[i + 1], &sub.str[1], sub.length - 1) == 0)
				{
					return i;
				}
			}
		}
		return -1;
	}

	String getLineText(int pos)
	{
		String text = new String();
		
		int start = rfind("\n", pos)+1;
		int end = find(new String("\n"), pos)-1;
		if ( end < 0 ) end = str.length;
		
		text.set(str[start..end]);

		return text;
	}
	
	/**
	 * counts the number of eol from the begining to pos
	 */
	int countLine(int pos)
	{
		int line = 0;
		int curr = 0;
		String eol = new String("\n");
		while (curr < pos && curr>=0)
		{
			curr = find(eol, curr);
			if ( curr>0 )
			{
				++line;
				++curr;
			}
		}
		return line;
	}

	/**
	 * Tests c is the first chracters on the string
	 * @param c the character to test
	 * @return true if the string starts with the character
	 */
	bit startsWith(CHAR c)
	{
		return str.length > 0 && str[0] == c;
	}
	
	/**
	 * Tests if the passed string is the begining of this string
	 * @param string the String to test
	 * @return true if the string starts with the character
	 */
	bit startsWith(String string)
	{
		return find(string) == 0;
	}
	
	/**
	 * Tests if the passed array is the begining of this string
	 * @param string the array to test
	 * @return true if the string starts with the character
	 */
	bit startsWith(CHAR[] string)
	{
		return startsWith(new String(string));
	}
	
	bit endsWith(CHAR c)
	{
		return str.length > 0 && str[str.length-1] == c;
	}
	
	bit endsWith(String string)//, bit debugNow = false)
	{
//		if ( debugNow )
//		{
//			writefln("String.endsWith ",str," <> ",string);
//			writefln("\trfind(string)=",rfind(string));
//			writefln("\t(length-string.length)=",(length-string.length));
//		}
		
		//return rfind(string) == (length-string.length);
		return string.length() > 0
				&& string.length() <= str.length
				&& string.toString() == str[str.length-string.length()..str.length];
	}
	
	bit endsWith(CHAR[] string)
	{
		return endsWith(new String(string));
	}
	
	static int isWhite(dchar c)
	{
		return whiteSpace.find(c) != -1;
	}
	
//	String join(CHAR[] string)
//	{
//		return new String(str ~ string);
//	}
//	
//	String join(String string)
//	{
//		return new String(str ~ string.toString());
//	}
//	
//	String prejoin(CHAR[] string)
//	{
//		return new String(string ~ str);
//	}
//	
//	String prejoin(String string)
//	{
//		return new String(string.toString() ~ str);
//	}
	
	unittest
	{
		String[] tokens;
		tokens ~= new String("Hello");
		tokens ~= new String("there");
		tokens ~= new String("from");
		tokens ~= new String("dool.");
		assert(join(tokens," ") == "Hello there from dool.");
	}

	bit equals(String string)
	{
		return (this == string) == 0;
	}

	bit equalsIgnoreCase(String string)
	{
		return equalsIgnoreCase(string.toString());
	}
	
	bit equalsIgnoreCase(char[] string)
	{
		uint len = str.length;
		bit result;
		
		if (string.length < len)
		{
			len = string.length;
		}
		version (Win32)
		{
			result = memicmp(str, string, len) == 0;
		}
		version (CommonUnix)
		{
			for (int i = 0; i < len; i++)
			{
				if (str[i] != string[i])
				{
					char c1 = str[i];
					char c2 = string[i];
				
					if (c1 >= 'A' && c1 <= 'Z')
					{
						c1 += cast(int)'a' - cast(int)'A';
					}
					if (c2 >= 'A' && c2 <= 'Z')
					{
						c2 += cast(int)'a' - cast(int)'A';
					}
					result = cast(int)c1 == cast(int)c2;
					if (result)
					{
						break;
					}
				}
			}
		}
		if (result)
		{
			result = cast(int)str.length == cast(int)string.length;
		}
		return result;
	}
	
	////////////////////////////////////////////////////////////
	//// mutator utilities
	////////////////////////////////////////////////////////////

	String toUpper()
	{
		int changed;
		int i;
	
		changed = 0;
		for (i = 0; i < str.length; i++)
		{
			char c = str[i];
			if ('a' <= c && c <= 'z')
			{
				if (!changed)
				{
					char[] r = new char[str.length];
					r[] = str;
					str = r;
					changed = 1;
				}
				str[i] = c - (cast(char)'a' - 'A');
			}
		}
		return this;
	}
	
	String toLower()
	{
		int changed;
		int i;
	
		changed = 0;
		for (i = 0; i < str.length; i++)
		{
			char c = str[i];
			if ('A' <= c && c <= 'Z')
			{
				if (!changed)
				{	char[] r = new char[str.length];
					r[] = str;
					str = r;
					changed = 1;
				}
				str[i] = c + (cast(char)'a' - 'A');
			}
		}
		return this;
	}
	
	String replace(CHAR[] from, CHAR[] to)
	{
		CHAR[] p;
		int i;
		int istart;
	
		//printf("replace('%.*s','%.*s','%.*s')\n", s, from, to);
		istart = 0;
		while (istart < str.length)
		{
		i = (new String(str[istart .. str.length])).find(from);
		if (i == -1)
		{
			p ~= str[istart .. str.length];
			break;
		}
		p ~= str[istart .. istart + i];
		p ~= to;
		istart += i + from.length;
		}
		str = p;
		return this;
	}
	
	String replace(CHAR[] from, String to)
	{
		return replace(from, to.toString());
	}
	
	String replace(String from, CHAR[] to)
	{
		return replace(from.toString(), to);
	}
	
	String replace(String from, String to)
	{
		return replace(from.toString(), to.toString());
	}
	
	String replaceSlice(String slice, String replacement)
	in
	{
		// Verify that slice[] really is a slice of string[]
		int so = cast(char*)slice.toString() - cast(char*)str;
		assert(so >= 0);
		//printf("string.length = %d, so = %d, slice.length = %d\n", string.length, so, slice.length);
		assert(str.length >= so + slice.length);
	}
	body
	{
		char[] result;
		int so = cast(char*)slice.toString() - cast(char*)str;
	
		result.length = str.length - slice.length + replacement.length;
	
		result[0 .. so] = str[0 .. so];
		result[so .. so + replacement.length] = replacement.toString();
		result[so + replacement.length .. result.length] = str[so + slice.length .. str.length];
	
		str = result;
		return this;
	}

	String append(char[] string)
	{
		str ~= string;
		return this;
	}

	String append(String string)
	{
		str ~= string.toString();
		return this;
	}

	String prepend(CHAR[]  string)
	{
		str = string ~ str;
		return this;
	}
	
	String prepend(String string)
	{
		str = string.toString() ~ str;
		return this;
	}
	
	String insert(CHAR[] string, int pos)
	{
		str = str[0..pos] ~ string ~ str[pos..str.length];
		return this;
	}
	
	String insert(String string, int pos)
	in
	{
		if ( (pos < 0) || (pos >= length) )
		{
			printf("String.insert pos=%d, length=%d\n", pos, length);
		}
		assert((pos >= 0) && (pos < length));
	}
	body
	{
		str = str[0..pos] ~ string.toString() ~ str[pos..str.length];
		return this;
	}
	
	String wrap(char[] pre, char[] pos)
	{
		str = pre ~ str ~ pos;
		return this;
	}
	
	////////////////////////////////////////////////////////////
	//// operators
	////////////////////////////////////////////////////////////

	/**
	 * Operator ==
	 * @param string the String to compare to 
	 * @return true if Strings are equal
	 */
	bit opEquals(String string)
	{
		if ( string === null )
		{
			return false;
		}
	
		return str == string.toString();
	}
	
	/**
	 * Operator ==
	 * @param string the array to compare to 
	 * @return true if Strings are equal
	 */
	bit opEquals(CHAR[] string)
	{
		return str == string;
	}

	/**
	 * Operator ++ post.
	 * Increments the String length
	 * @return the new String length
	 */
	int opPostInc()
	{
		str.length = str.length + 1;
		return str.length;
	}
	
	/**
	 * Operator -- post.
	 * Decrements the String length
	 * @return the new String length
	 */
	int opPostDec()
	{
		if ( str.length > 0 )
		{
			str.length = str.length - 1;
		}
		return str.length;
	}
	
	/**
	 * Concatenate an array with this String
	 * @param str The array to concatnate
	 * @return a new String that is the concatenation of this String an the array received
	 */
	String opCat(CHAR[] str)
	{
		return new String(this.str ~ str);
	}
	
	/**
	 * Concatenate a char with this String
	 * @param str The array to concatnate
	 * @return a new String that is the concatenation of this String and the char received
	 */
	String opCat(CHAR t)
	{
		String s = new String(str);
		s.str.length = s.str.length+1;
		s.str[s.str.length-1] = t;
		return s;
		
	}

	char[] toString(bit b)
	{
		char[] str;
		if ( b )
		{
			str = "1";
		}
		else
		{
			str = "0";
		}
		return str;
	}

	char[] toString(int i)
	{
		return toString(cast(long)i);
	}
	
	char[] toString(long i)
	{   char[1 + int.sizeof * 3] buffer;
		char c;
		char[] result;
	
		if (i >= 0)
		{
			return toString(cast(ulong)i);
		}
	
		uint u = -i;
		int ndigits = 1;
		while (u)
		{
		c = (u % 10) + '0';
		u /= 10;
		buffer[buffer.length - ndigits] = c;
		ndigits++;
		}
		buffer[buffer.length - ndigits] = '-';
		result = new char[ndigits];
		result[] = buffer[buffer.length - ndigits .. buffer.length];
		return result;
	}
	
	char[] toString(uint i)
	{
		return toString(cast(ulong)i);
	}
	
	char[] toString(ulong u)
	{   
		char[uint.sizeof * 3] buffer;
		int ndigits;
		char c;
		char[] result;
	
		ndigits = 0;
		if (u < 10)
		// Avoid storage allocation for simple stuff
		result = digits[u .. u + 1];
		else
		{
			while (u)
			{
				c = (u % 10) + '0';
				u /= 10;
				ndigits++;
				buffer[buffer.length - ndigits] = c;
			}
			result = new char[ndigits];
			result[] = buffer[buffer.length - ndigits .. buffer.length];
		}
		return result;
	}

	char[] toString(ubyte ub)
	{
		return toString(cast(uint)ub);
	}
	
	char[] toString(double f)
	{
		//printf("String.toString(float) (1) f = %f\n", f);
		char[] str = toString(cast(int)f);
		//printf("String.toString(float) 1 str = %.*s\n", str);
		f = f - cast(int)f;
		str ~= '.';
		f *= 10;
		while( f > 9 )
		{
			str ~= toString(cast(int)f);
			//printf("String.toString(float) 2 f = %f\n", f);
			//printf("String.toString(float) 2 str = %.*s\n", str);
			f = f - cast(int)f;
			f *= 10;
		}
		if ( str.length > 0 && str[str.length-1] == '.' )
		{
			str ~= '0';
		}
		//printf("String.toString(float) 3 f = %f\n", f);
		//printf("String.toString(float) (3) str = %.*s\n", str);
		return str;
	}

	String opCat(int i)
	{
		return new String(str ~ toString(i));
	}
	
	String opCat(uint i)
	{
		return new String(str ~ toString(i));
	}

	String opCat(ubyte ub)
	{
		return new String(str ~ toString(ub));
	}
	
	String opCat(float f)
	{
		return new String(str ~ toString(f));
	}
	
	String opCat(bit b)
	{
		return new String(str ~ toString(b));
	}
	
	String opCat(Object object)
	{
		if ( object === null )
		{
			return new String(str);
		}
		return new String(str ~ cast(CHAR[])object.toString());
	}
	
	String opCatAssign(CHAR[] str)
	{
		this.str ~= str;
		return this;
	}

	String opCatAssign(int i)
	{
		str ~= toString(i);
		return this;
	}
	
	String opCatAssign(double d)
	{
		str ~= toString(d);
		return this;
	}
	
	String opCatAssign(char c)
	{
		str ~= c;
		return this;
	}
	
	String opCatAssign(Object object)
	{
		str ~= object.toString();
		return this;
	}
	
	CHAR opIndex(int index)
	{
		
		if ( index < length )
		{
			return str[index];
		}
		else
		{
			printf("String.opIndex str=%.*s index = %d\n", str,index);
			if (index >= str.length) *cast(char*)0=0;
			//String s;
			//printf("%s\n", s);
		}
		return '\0';
	}
	
	
	private import std.stdio;
	void opIndexAssign( CHAR t, int index)
	in
	{
		assert(index < str.length);
	}
	body
	{
		str[index] = t;
	}
	
	String opSlice(int start, int end)
	in
	{
		assert(start>=0);
		assert(start<=length);
	}
	body
	{
		if ( end < 0 ) end = length - end;
		if ( end > length ) end = length;
		assert(start<=end);
		assert(end<=length);

		return new String(str[start..end]);
	}

	////////////////////////////////////////////////////////////
	//// get the value as other primitive types
	////////////////////////////////////////////////////////////

	// I guess it wouldn't harm to have here toInt and toDouble
	
	////////////////////////////////////////////////////////////
	//// some other
	////////////////////////////////////////////////////////////
	
	// used by io.Path
	static int wcsLen(wchar * str)
	{
		return wcslen(str);
	}
	// used by io.Path
	static int wcsCmp(wchar * str1, wchar * str2)
	{
		return wcscmp(str1, str2);
	}
	
	// used by io.Path
	static int strLen(char * str)
	{
		return strlen(str);
	}
	// used by io.Path
	static int strCmp(char * str1, char * str2)
	{
		return strcmp(str1, str2);
	}

}
