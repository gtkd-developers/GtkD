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

module dool.Integer;

public import dool.NumberError;

public class Integer
{
	
	private import dool.String;
	
	public static int toInt(String string)
	{
		int length = string.length;
	
		if (length > 0)
		{
		
			int sign = 0;
			int v = 0;
		
			for (int i = 0; i < length; i++)
			{
				char c = string[i];
				if (c >= '0' && c <= '9')
				{
					uint v1 = v;
					v = v * 10 + (c - '0');
					if (cast(uint)v < v1)
					{
						throw new NumberError(string ~ " overflow");
					}
				}
				else if (c == '-' && i == 0)
				{
					sign = -1;
					if (length == 1)
					{
						throw new NumberError(string.dup.append("not number found after '-'"));
					}
				}
				else if (c == '+' && i == 0)
				{
					if (length == 1)
					{
						throw new NumberError(string.dup.append("not number found after '+'"));
					}
				}
				else
				{
					throw new NumberError(string ~ " invalid character at" ~ i);
				}
			}
			if (sign == -1)
			{
				if (cast(uint)v > 0x80000000)
				{
					throw new NumberError(string ~ " overflow");
				}
				v = -v;
			}
			else
			{
				if (cast(uint)v > 0x7FFFFFFF)
				{
					throw new NumberError(string ~ " overflow");
				}
			}
			return v;
		}
		else
		{
			throw new NumberError(string.dup.append("no int on empty string"));
		}
		return 0;
	}
	
	public static int toUInt(String string)
	{
		int length = string.length;
	
		if (length > 0)
		{
	
			uint v = 0;
	
			for (int i = 0; i < length; i++)
			{
				char c = string[i];
				if (c >= '0' && c <= '9')
				{
					uint v1 = v;
					v = v * 10 + (c - '0');
					if (v < v1)
					{
						throw new NumberError(string ~ " overflow");
					}
				}
				else
				{
					throw new NumberError(string ~ " invalid character at" ~ i);
				}
			}
			return v;
		}
		else
		{
			throw new NumberError(string.dup.append("no UInt on empty string"));
			return 0;
		}
	}
	
}

