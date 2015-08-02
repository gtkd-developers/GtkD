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

module utils.XML;

import std.algorithm;
import std.array;
import std.conv : to;
import std.exception;
import std.range;
import std.string;
import std.traits: isSomeChar;
import std.uni;

struct XMLNode
{
	XMLNodeType type;

	string value;
	string[string] attributes;
}

enum XMLNodeType
{
	None,
	PI,
	StartTag,
	Text,
	CData,
	DocType,
	Comment,
	EmptyTag,
	EndTag,
	DocumentEnd
}

class XMLReader(T)
	if (isInputRange!T &&  isSomeChar!(ElementType!T) )
{
	XMLNode front;
	string fileName;

	static if ( is( T == string ) )
		private CountLines!ByChar document;
	else
		private CountLines!T document;

	/**
	 * Params:
	 *     document = The XML document to parse.
	 *     fileName = File name to print in diagnostic messages.
	 */
	this(T document, string fileName = null)
	{
		static if ( is( T == string ) )
			this.document = CountLines!ByChar(ByChar(document));
		else
			this.document = CountLines!T(document);

		this.fileName = fileName;

		popFront();
	}

	@property size_t line()
	{
		return document.line;
	}

	void popFront()
	{
		front = XMLNode();

		if ( document.empty )
		{
			front.type = XMLNodeType.DocumentEnd;
			return;
		}

		if ( document.front == '<' )
			parseTag();
		else
			parseText();
	}

	@property bool empty()
	{
		return document.empty && front.type == XMLNodeType.DocumentEnd;
	}

	private void parseTag()
	{
		document.popFront();

		switch ( document.front )
		{
			case '!':
				document.popFront();
				switch ( document.front )
				{
					case '[':
						enforce(document.skipOver("[CDATA["));
						parseCDATA();
						break;
					case 'D':
						enforce(document.skipOver("!DOCTYPE"));
						parseDocType();
						break;
					case '-':
						enforce(document.skipOver("--"));
						parseComment();
						break;
					default:
						throw new XMLException(this, "Invalid XML tag");
				}
				break;
			case '?':
				document.popFront();
				parsePI();
				break;
			case '/':
				document.popFront();
				parseStartTag();
				front.type = XMLNodeType.EndTag;
				break;
			default:
				parseStartTag();
				break;
		}

		skipWhitespace();
	}

	private void parseCDATA()
	{
		front.type = XMLNodeType.CData;
		auto buff = appender!string();

		while ( !document.empty )
		{
			if ( document.front == ']' )
			{
				document.popFront();

				if ( document.front != ']' )
				{
					buff.put(']');
					buff.put(document.front);
					document.popFront();
					continue;
				}

				document.popFront();

				if ( document.front == '>' )
				{
					document.popFront();
					return;
				}
			}

			buff.put(document.front);
			document.popFront();
		}

		front.value = buff.data;
	}

	private void parseDocType()
	{
		front.type = XMLNodeType.DocType;
		auto buff = appender!string();
		int bracketCount;

		skipWhitespace();

		while ( !document.empty )
		{
			switch ( document.front )
			{
				case '[':
					bracketCount++;
					break;
				case ']':
					bracketCount--;
					break;
				case '>':
					if ( bracketCount == 0 )
					{
						document.popFront();
						return;
					}
					break;
				default: break;
			}

			buff.put(document.front);
			document.popFront();
		}

		front.value = buff.data.stripRight();
	}

	private void parseComment()
	{
		front.type = XMLNodeType.Comment;
		auto buff = appender!string();

		while ( !document.empty )
		{
			if ( document.front == '-' )
			{
				document.popFront();

				if ( document.front != '-' )
				{
					buff.put('-');
					buff.put(document.front);
					document.popFront();
					continue;
				}

				document.popFront();

				if ( document.front == '>' )
				{
					document.popFront();
					return;
				}

				throw new XMLException(this, "-- not allowed in comments.");
			}

			buff.put(document.front);
			document.popFront();
		}

		front.value = buff.data.strip();
	}

	private void parsePI()
	{
		front.type = XMLNodeType.PI;
		auto buff = appender!string();

		while ( !document.empty )
		{
			if ( document.front == '?' )
			{
				document.popFront();

				if ( document.front == '>' )
				{
					document.popFront();
					return;
				}

				buff.put('?');
			}

			buff.put(document.front);
			document.popFront();
		}

		front.value = buff.data.stripRight();
	}

	private void parseStartTag()
	{
		front.type = XMLNodeType.StartTag;
		auto buff = appender!string();

		while ( !document.empty && !(document.front.isWhite() || document.front == '/' || document.front == '>') )
		{
			buff.put(document.front);
			document.popFront();
		}

		front.value = buff.data;

		while ( !document.empty )
		{
			skipWhitespace();

			if ( document.front == '/' )
			{
				front.type = XMLNodeType.EmptyTag;
				document.popFront();
			}

			if ( document.front == '>' )
			{
				document.popFront();
				return;
			}

			buff = appender!string();
			string attName;

			while ( !document.empty && !(document.front.isWhite() || document.front == '=') )
			{
				buff.put(document.front);
				document.popFront();
			}

			document.popFront();
			if ( document.front == '=' )
				document.popFront();

			attName = buff.data;
			buff = appender!string();

			if ( document.front.isWhite() )
				skipWhitespace();

			ElementType!(typeof(document)) quote = document.front;
			document.popFront();

			AttValue: while ( !document.empty )
			{
				switch ( document.front )
				{
					case '\'':
					case '"':
						if ( document.front != quote )
							goto default;

						document.popFront();
						break AttValue;
					case '&':
						parseAmpersand(buff);
						break;
					default:
						buff.put(document.front);
						break;
				}

				document.popFront();
			}

			front.attributes[attName] = buff.data;
		}
	}

	private void parseText()
	{
		front.type = XMLNodeType.Text;
		auto buff = appender!string();

		Text: while ( !document.empty )
		{
			switch ( document.front )
			{
				case '<':
					break Text;
				case '&':
					parseAmpersand(buff);
					break;
				default:
					buff.put(document.front);
					break;
			}

			document.popFront();
		}

		front.value = buff.data.stripRight();
	}

	private void skipWhitespace()
	{
		while ( !document.empty && isWhite(document.front) )
			document.popFront();
	}

	private void parseAmpersand(Appender!(string) buff)
	{
		ElementType!(typeof(document))[5] sequence;
		int index;

		document.popFront();

		while ( document.front != ';' )
		{
			sequence[index++] = document.front;
			document.popFront();
		}

		switch ( sequence[0 .. index] )
		{
			case "#34":
			case "quot":
				buff.put('"');
				break;
			case "#38":
			case "amp":
				buff.put('&');
				break;
			case "#39":
			case "apos":
				buff.put('\'');
				break;
			case "#60":
			case "lt":
				buff.put('<');
				break;
			case "#62":
			case "gt":
				buff.put('>');
				break;
			default:
				throw new XMLException(this, "Unregonized escape secuence");
		}
	}

	unittest
	{
		auto reader = new XMLReader("&lt;test&gt;");
		assert(reader.front.value == "<test>");
	}
}

/**
 * Skip the current tag and it's content.
 * Leaves the reader pointing to the end tag with the same depth.
 */
void skipTag(T)(XMLReader!T reader)
{
	if ( reader.front.type == XMLNodeType.EmptyTag )
		return;
	if ( reader.front.type != XMLNodeType.StartTag )
	{
		reader.popFront();
		return;
	}

	string tagName = reader.front.value;
	size_t depth;

	while ( !reader.empty )
	{
		if ( reader.front.type == XMLNodeType.StartTag )
			depth++;

		if ( reader.front.type == XMLNodeType.EndTag )
			depth--;

		if ( depth == 0 && reader.front.value == tagName )
			return;

		reader.popFront();
	}
}

/**
 * Is this an end tag with name tagName.
 */
bool endTag(T)(XMLReader!T reader, string tagName)
{
	return reader.front.type == XMLNodeType.EndTag && reader.front.value == tagName;
}

/// ditto.
bool endTag(T)(XMLReader!T reader, string[] tagNames ...)
{
	return reader.front.type == XMLNodeType.EndTag && tagNames.canFind(reader.front.value);
}

class XMLException : Exception
{
	this (T)(XMLReader!T reader, string msg)
	{
		super(msg, reader.fileName, reader.line, null);
	}

	override string toString()
	{
		string s;
		toString((buf) { s ~= buf; });
		return s;
	}

	override void toString(scope void delegate(in char[]) sink) const
	{
		sink(file);
		sink("("); sink(to!string(line)); sink(")");

		if (msg.length)
		{
			sink(": "); sink(msg);
		}
	}

}

struct ByChar
{
	string data;

	@property char front()
	{
		return data[0];
	}

	@property bool empty()
	{
		return !data.length;
	}

	void popFront()
	{
		assert(data.length, "Attempting to popFront() past the end of an array");
		data = data[1 .. $];
	}

	@property ByChar save()
	{
		return this;
	}

	alias data this;
}

struct CountLines(Source) if (isSomeChar!(ElementType!Source))
{
	import std.range.primitives : ElementType;

	Source src;
	size_t line = 1;

	this(Source src)
	{
		this.src = src;
	}

	@property ElementType!Source front()
	{
		return src.front;
	}

	@property bool empty()
	{
		return src.empty;
	}

	void popFront()
	{
		src.popFront();

		if ( src.front == '\n' )
			line++;
	}

	@property typeof(this) save()
	{
		return typeof(this)(src.save);
	}
}
