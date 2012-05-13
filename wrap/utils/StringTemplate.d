module utils.StringTemplate;

import std.algorithm;
import std.string : join, chomp;
import std.range;
import std.exception;
import std.stdio;

/* A very simple line-oriented string templating system.
 *   Placeholders of the form %{variable} are replaced by the corresponding
 *     variable in the current scope.
 *
 *   Conditional sections can be marked off by
 *   <| if condition |>
 *   text
 *   <| fi condition |>
 *
 * note that the if/fi block has to have matching conditions. sections
 * can be nested; proper nesting is checked at compile time.
 *
 * There is no <| else |> directive; you can use
 *   <| if condition |>
 *   text
 *   <| fi condition |>
 *   <| if !condition |>
 *   text
 *   <| fi !condition |>
 *
 * Since this works via simple macro expansion you could use an expression
 * in place of a variable, but it will be evaluated multiple times. Conditions
 * will be surrounded by parentheses, so you can use expressions there too.
 *
 * Also, since we are expanding the template into the current lexical scope,
 * we have to explicitly pass in the name of a string[] variable to which to append
 * the result (to sidestep any variable capture issues). [TODO: add gensym support]
 *
 * Sample usage:
 *
 * enum tmpl = import("template.txt");
 * string foo = "hello";
 * string bar = "world";
 * bool enableFoo = true;
 * bool enableBar = false;
 * string result = [];
 * mixin(formatTemplate("result", tmpl);
*/

class Section
{
	string condition;
	string[] text;
	bool close = false;

	this(string c)
	{
		condition = c;
		text = [];
	}
}

bool isStartSection(string line)
{
	return line.startsWith("<| if") &&
		line.endsWith(" |>");
}

bool isEndSection(string line)
{
	return line.startsWith("<| fi") &&
		line.endsWith(" |>");
}

Section[] getSections(string[] lines)
{
	Section[] sections = [new Section(null)];
	Section[] open = [];

	foreach( line; lines )
	{
		if ( line.isStartSection() )
		{
			if (!sections.empty)
			{
				sections.back.close = false;
			}
			string cond = line[6 .. $ - 3];
			sections ~= new Section(cond);
			open ~= sections.back;
		}
		else if ( line.isEndSection() )
		{
			string cond = line[6 .. $ - 3];
			// balanced sections
			enforce (!open.empty, "fi before if");
			Section s = open.back;
			enforce(s.condition == cond, "unbalanced fi: " ~ cond);
			sections.back.close = true;
			sections ~= new Section(null);
			open = open[0 .. $ - 1];
		}
		else
		{
			sections.back.text ~= line;
		}
	}

	enforce(open.empty, "open if: " ~ open.back.condition);

	return sections;
}

string quote(string line)
{
	return `q"|` ~ line ~ `|"`;
}

string formatLine(string text)
{
	string[] vars;
	string ret = "";

	while (!text.empty)
	{
		auto i = text.indexOf("%{");
		if (i == -1)
			break;

		ret ~= text[0 .. i] ~ "%s";
		text = text[i + 2 .. $];
		auto j = text.indexOf("}");
		vars ~= text[0 .. j];
		text = text[j + 1 .. $];
	}

	string retval = quote(ret ~ text);
	if (!vars.empty)
	{
		retval = "format(" ~ retval ~ ", ";
		retval ~= join(vars, ", ");
		retval ~= ")";
	}
	return retval;
}

string[] formatSection(string acc, Section section)
{
	string[] ret = [];
	if ( section.condition !is null )
	{
		ret ~= "if (" ~ section.condition ~ ") {";
	}

	foreach( line; section.text )
	{
		ret ~= acc ~ "~=" ~ formatLine(line) ~ ";";
	}

	if ( section.close )
	{
		ret ~= "}";
	}

	return ret;
}

string formatTemplate(string acc, string tmpl)
{
	string[] ret = [];
	auto sections = getSections(tmpl.chomp.split("\n"));
	foreach(section; sections)
	{
		ret ~= formatSection(acc, section);
	}

	debug(stringTemplate) { ret = "writeln(q\"$" ~ join(ret, "\n") ~ "$\");" ~ ret; }

	return ret.join("\n");
}
