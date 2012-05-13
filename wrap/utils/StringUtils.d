module utils.StringUtils;

private import std.conv;
private import std.string;

string removePrefix(string gToken, string prefix)
{
	if ( gToken.startsWith(prefix) )
	{
		return gToken[prefix.length..gToken.length];
	}
	return gToken;
}

string removeUnderscore(string gToken)
{
	string converted;

	char c = ' ';
	char pc = ' ';
	char ppc = ' ';
	int pos = 0;
	while ( pos < gToken.length )
	{
		c = gToken[pos];
		if ( pc == '_' )
		{
			c = to!char(std.ascii.toUpper(c));
		}
		else if ( c == '_' && std.ascii.isLower(pc) )
		{
			pc = c;
			c = '\0';
		}

		if ( c > '\0' )
		{
			if ( ppc == '_'
					&& pc == 'g'
					&& c == 'l'
					&& gToken.length-1 > pos
					&& gToken[pos+1] == '_'
				 )
			{
				c = 'L';
			}
			ppc = pc;
			pc = gToken[pos];
			converted ~= c;
		}
		++pos;
	}
	return converted;
}

void skipBlank(ref int p, string text)
{
	while( p<text.length && text[p]<=' ' )
	{
		++p;
	}
}

void skip(ref int p, string text, char s)
{
	while( p<text.length && text[p]==s)
	{
		++p;
	}
}

string untilBlank(ref int p, string text)
{
	int start=p;
	while ( p<text.length && text[p]>' ')
	{
		++p;
	}
	return text[start..p];
}

string untilBlank(ref int p, string text, string s)
{
	int start=p;
	while ( p<text.length && text[p]>' ' && std.string.indexOf(s,text[p])<0 )
	{
		++p;
	}
	return text[start..p];
}

string until(ref int p, string text, char s)
{
	int start=p;
	while ( p<text.length && text[p]!=s)
	{
		++p;
	}
	return text[start..p];
}

string until(ref int p, string text, string s)
{
	int start=p;
	while ( p<text.length && std.string.indexOf(s,text[p])<0 )
	{
		++p;
	}
	return text[start..p];
}

string matchPrefix(string[string] prefixes, string input, string notfound)
{
	foreach (p; prefixes.keys)
	{
		if ( input.startsWith(p) )
		{
			return prefixes[p];
		}
	}

	return notfound;
}
