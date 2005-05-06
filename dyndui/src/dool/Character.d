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
 * adapted by Antonio Monteiro
 */

module dool.Charater;

public class CharacterT(T)
{

	enum
	{
		_SPC =	8,
		_CTL =	0x20,
		_BLK =	0x40,
		_HEX =	0x80,
		_UC  =	1,
		_LC  =	2,
		_PNC =	0x10,
		_DIG =	4,
		_ALP =	_UC|_LC,
	}
	
	static ubyte _ctype[128] =
	[
		_CTL,_CTL,_CTL,_CTL,_CTL,_CTL,_CTL,_CTL,
		_CTL,_CTL|_SPC,_CTL|_SPC,_CTL|_SPC,_CTL|_SPC,_CTL|_SPC,_CTL,_CTL,
		_CTL,_CTL,_CTL,_CTL,_CTL,_CTL,_CTL,_CTL,
		_CTL,_CTL,_CTL,_CTL,_CTL,_CTL,_CTL,_CTL,
		_SPC|_BLK,_PNC,_PNC,_PNC,_PNC,_PNC,_PNC,_PNC,
		_PNC,_PNC,_PNC,_PNC,_PNC,_PNC,_PNC,_PNC,
		_DIG|_HEX,_DIG|_HEX,_DIG|_HEX,_DIG|_HEX,_DIG|_HEX,
		_DIG|_HEX,_DIG|_HEX,_DIG|_HEX,_DIG|_HEX,_DIG|_HEX,
		_PNC,_PNC,_PNC,_PNC,_PNC,_PNC,
		_PNC,_UC|_HEX,_UC|_HEX,_UC|_HEX,_UC|_HEX,_UC|_HEX,_UC|_HEX,_UC,
		_UC,_UC,_UC,_UC,_UC,_UC,_UC,_UC,
		_UC,_UC,_UC,_UC,_UC,_UC,_UC,_UC,
		_UC,_UC,_UC,_PNC,_PNC,_PNC,_PNC,_PNC,
		_PNC,_LC|_HEX,_LC|_HEX,_LC|_HEX,_LC|_HEX,_LC|_HEX,_LC|_HEX,_LC,
		_LC,_LC,_LC,_LC,_LC,_LC,_LC,_LC,
		_LC,_LC,_LC,_LC,_LC,_LC,_LC,_LC,
		_LC,_LC,_LC,_PNC,_PNC,_PNC,_PNC,_CTL
	];
	
	static int isAlnum(T c)  { return (c <= 0x7F) ? _ctype[c] & (_ALP|_DIG) : 0; }
	static int isAlpha(T c)  { return (c <= 0x7F) ? _ctype[c] & (_ALP)      : 0; }
	static int isCntrl(T c)  { return (c <= 0x7F) ? _ctype[c] & (_CTL)      : 0; }
	static int isDigit(T c)  { return (c <= 0x7F) ? _ctype[c] & (_DIG)      : 0; }
	static int isLower(T c)  { return (c <= 0x7F) ? _ctype[c] & (_LC)       : 0; }
	static int isPunct(T c)  { return (c <= 0x7F) ? _ctype[c] & (_PNC)      : 0; }
	static int isSpace(T c)  { return (c <= 0x7F) ? _ctype[c] & (_SPC)      : 0; }
	static int isUpper(T c)  { return (c <= 0x7F) ? _ctype[c] & (_UC)       : 0; }
	static int isXDigit(T c) { return (c <= 0x7F) ? _ctype[c] & (_HEX)      : 0; }
	static int isGraph(T c)  { return (c <= 0x7F) ? _ctype[c] & (_ALP|_DIG|_PNC) : 0; }
	static int isPrint(T c)  { return (c <= 0x7F) ? _ctype[c] & (_ALP|_DIG|_PNC|_BLK) : 0; }
	static int isASCII(T c)  { return c <= 0x7F; }
	
	static T toLower(T c)
	out (result)
	{
		assert(!isUpper(result));
	}
	body
	{
		return isUpper(c) ? c + (cast(T)'a' - 'A') : c;
	}
	
	static T toUpper(T c)
	out (result)
	{
		assert(!isLower(result));
	}
	body
	{
		return isLower(c) ? c - (cast(T)'a' - 'A') : c;
	}

	T c;
	
	public:
	
	this(T c)
	{
		printf("Character.this\n");
		this.c = c;
	}
	
	T value()
	{
		return c;
	}
	
}

alias CharacterT!(char) Character;
alias CharacterT!(dchar) CharacterD;
alias CharacterT!(wchar) CharacterW;
