/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module TTextView;

private import gtk.Window;

private import gtk.Widget;
private import gtk.TextView;
private import gtk.TextBuffer;
private import gtk.TextIter;
private import gtk.VPaned;
private import gtk.ScrolledWindow;
private import gtk.TextChildAnchor;
private import gtk.Button;
private import gtk.Menu;
private import gtk.MenuItem;
private import gtk.HScale;
private import gtk.Image;
private import gtk.Entry;

private import gdk.Bitmap;
private import gdk.Pixbuf;

private import gtk.ComboBox;

private import glib.GException;

version(Tango)
{
	private import tango.io.Stdout;
	private import tango.text.convert.Layout;
	private import tango.core.Vararg;
}
else
	private import std.stdio;

/**
 * reproduces the gtk-demo TextView
 * \bug the output shows erros like (DUITest.exe:5012): GLib-GObject-WARNING **: [Invalid UTF-8] gobject.c:882: object class `GtkTextTag' has no property named `l&#9484;E'
 */

public:
class TTextView : Window
{
	TextView view1;
	TextBuffer buffer;
	TextView view2;

	/**
	 * ctor. must reactivate the constructor name change loby
	 */
	this()
	{
		super("TextView");
		setDefaultSize(450,450);
		setBorderWidth(0);

		createTextViews();

		setupWidgets();

		createTags(buffer);
		insertText(buffer);

		attachWidgets(view1);
		attachWidgets(view2);

		showAll();
	}

//	bit windowDeleteCallback(Window window, Event event)
//	{
//		return false;
//	}
//
//	bit windowDestroyCallback(Window window, Event event)
//	{
//		printf("TTextView windowDestroyCallback\n");
//		return false;
//	}

	/**
	 * creates the text view and buffer to use
	 */
	void createTextViews()
	{
		view1 = new TextView();
		buffer = view1.getBuffer();
		view2 = new TextView(buffer);
	}

	/**
	 * sets up the widgets ot this test
	 */
	void setupWidgets()
	{
		VPaned vPaned = new VPaned();
		vPaned.setBorderWidth(5);
		add(vPaned);

		ScrolledWindow sw = new ScrolledWindow(PolicyType.AUTOMATIC, PolicyType.AUTOMATIC);
		sw.add(view1);
		vPaned.add1(sw);
		sw = new ScrolledWindow(PolicyType.AUTOMATIC, PolicyType.AUTOMATIC);
		sw.add(view2);
		vPaned.add2(sw);
	}

	/**
	 * Creates all the text tags to use
	 * @param buffer the TextBuffer
	 */
	void createTags(TextBuffer buffer)
	{
		Bitmap stipple;

		/* Create a bunch of tags. Note that it's also possible to
		* create tags with gtk_text_tag_new() then add them to the
		* tag table for the buffer, gtk_text_buffer_create_tag() is
		* just a convenience function. Also note that you don't have
		* to give tags a name; pass NULL for the name to create an
		* anonymous tag.
		*
		* In any real app, another useful optimization would be to create
		* a GtkTextTagTable in advance, and reuse the same tag table for
		* all the buffers with the same tag set, instead of creating
		* new copies of the same tags for every buffer.
		*
		* Tags are assigned default priorities in order of addition to the
		* tag table.	 That is, tags created later that affect the same text
		* property affected by an earlier tag will override the earlier
		* tag.  You can modify tag priorities with
		* gtk_text_tag_set_priority().
		*/

		buffer.createTag("heading",
						"weight", PangoWeight.BOLD,
						"size", 15 * PANGO_SCALE);
    	buffer.createTag("italic",
    					"style", cast(int)PangoStyle.ITALIC);

		buffer.createTag("bold",
			      "weight", cast(int)PangoWeight.BOLD);

		buffer.createTag("big",
			      /* points times the PANGO_SCALE factor */
			      "size", 20 * PANGO_SCALE);

		buffer.createTag("xx-small",
			      "scale", PANGO_SCALE_XX_SMALL);

		buffer.createTag("x-large",
			      "scale", PANGO_SCALE_X_LARGE);

		buffer.createTag("monospace",
			      "family", "monospace");

		buffer.createTag("blue_foreground",
			      "foreground", "blue");

		buffer.createTag("red_background",
			      "background", "red");

enum {
	gray50_width = 2,
	gray50_height = 2
}

static string gray50_bits = [0x02, 0x01];

    	stipple = Bitmap.createFromData(null,   // drawablw
					 gray50_bits, gray50_width,
					 gray50_height);

		buffer.createTag("background_stipple",
			      "background_stipple", stipple);

		buffer.createTag("foreground_stipple",
			      "foreground_stipple", stipple);

		buffer.createTag("big_gap_before_line",
			      "pixels_above_lines", 30);

		buffer.createTag("big_gap_after_line",
			      "pixels_below_lines", 30);

		buffer.createTag("double_spaced_line",
			      "pixels_inside_wrap", 10);

		buffer.createTag("not_editable",
			      "editable", cast(int)false);

		buffer.createTag("word_wrap",
			      "wrap_mode", cast(int)WrapMode.WORD);

		buffer.createTag("char_wrap",
			      "wrap_mode", cast(int)WrapMode.CHAR);

		buffer.createTag("no_wrap",
			      "wrap_mode", cast(int)WrapMode.NONE);

		buffer.createTag("center",
			      "justification", cast(int)Justification.JUSTIFY_CENTER);

		buffer.createTag("right_justify",
			      "justification", cast(int)Justification.JUSTIFY_RIGHT);

		buffer.createTag("wide_margins",
			      "left_margin", 50, "right_margin", 50);

		buffer.createTag("strikethrough",
			      "strikethrough", cast(int)true);

		buffer.createTag("underline",
			      "underline", cast(int)PangoUnderline.SINGLE);

		buffer.createTag("double_underline",
			      "underline", cast(int)PangoUnderline.DOUBLE);

		buffer.createTag("superscript",
			      "rise", 10 * PANGO_SCALE,	  /* 10 pixels */
			      "size", 8 * PANGO_SCALE);	  /* 8 points */

		buffer.createTag("subscript",
			      "rise", -10 * PANGO_SCALE,   /* 10 pixels */
			      "size", 8 * PANGO_SCALE);	   /* 8 points */


		buffer.createTag("rtl_quote",
			      "wrap_mode", WrapMode.WORD,
			      "direction", TextDirection.RTL,
			      "indent", 30,
			      "left_margin", 20,
			      "right_margin", 20);

	}
	/**
	 * Inserts all the test text into the buffer
	 * @param buffer the TextBuffer
	 */
	void insertText(TextBuffer buffer)
	{
		//version(Tango) {} else
		{
		TextIter iter = new TextIter();
		TextIter start = new TextIter();
		TextIter end = new TextIter();
		Pixbuf pixbuf;
		Pixbuf scaled;
		TextChildAnchor anchor;
		string filename;

		/* demo_find_file() looks in the the current directory first,
		* so you can run gtk-demo without installing GTK, then looks
		* in the location where the file is installed.
		*/

		try
		{
			pixbuf = new Pixbuf("images/gtk-logo-rgb.gif");

			scaled = pixbuf.scaleSimple(32, 32, InterpType.BILINEAR);
			pixbuf = pixbuf.scaleSimple(38, 38, InterpType.BILINEAR);
		}
		catch (Exception)
		{
			version(Tango) Stdout("Failed to load image file gtk-logo-rgb.gif").newline;
			else writef("Failed to load image file gtk-logo-rgb.gif\n");
		}

		/* get start of buffer; each insertion will revalidate the
		* iterator to point to just after the inserted text.
		*/

		buffer.getIterAtOffset(iter, 0);

		buffer.insert(iter, "The text widget can display text with all kinds of nifty attributes. It also supports multiple views of the same buffer; this demo is showing the same buffer in two places.\n\n");

		buffer.insertWithTagsByName(iter, "Font styles. ","heading");

		buffer.insert(iter, "For example, you can have ");
		buffer.insertWithTagsByName(iter, "italic", "italic");
		buffer.insert(iter, ", ");
		buffer.insertWithTagsByName(iter, "bold", "bold");
		buffer.insert(iter, ", or ");
		buffer.insertWithTagsByName(iter, "monospace (typewriter)", "monospace");
		buffer.insert(iter, ", or ");
		buffer.insertWithTagsByName(iter, "big", "big");
		buffer.insert(iter, " text. ");
		buffer.insert(iter, "It's best not to hardcode specific text sizes; you can use relative sizes as with CSS, such as ");
		buffer.insertWithTagsByName(iter, "xx-small", "xx-small");
		buffer.insert(iter, " or ");
		buffer.insertWithTagsByName(iter, "x-large", "x-large");
		buffer.insert(iter, " to ensure that your program properly adapts if the user changes the default font size.\n\n");

		buffer.insertWithTagsByName(iter, "Colors. ", "heading");

		buffer.insert(iter, "Colors such as ");
		buffer.insertWithTagsByName(iter, "a blue foreground", "blue_foreground");
		buffer.insert(iter, " or ");
		buffer.insertWithTagsByName(iter, "a red background", "red_background");
		buffer.insert(iter, " or even ");
		buffer.insertWithTagsByName(iter, "a stippled red background",
									"red_background", "background_stipple");

		buffer.insert(iter, " or ");
		buffer.insertWithTagsByName(iter,
			"a stippled blue foreground on solid red background",
			"blue_foreground",
			"red_background",
			"foreground_stipple");
		buffer.insert(iter, " (select that to read it) can be used.\n\n");

		buffer.insertWithTagsByName(iter, "Underline, strikethrough, and rise. ", "heading");

		buffer.insertWithTagsByName(iter, "Strikethrough", "strikethrough");
		buffer.insert(iter, ", ");
		buffer.insertWithTagsByName(iter, "underline", "underline");
		buffer.insert(iter, ", ");
		buffer.insertWithTagsByName(iter, "double underline", "double_underline");
		buffer.insert(iter, ", ");
		buffer.insertWithTagsByName(iter, "superscript", "superscript");
		buffer.insert(iter, ", and ");
		buffer.insertWithTagsByName(iter, "subscript", "subscript");
		buffer.insert(iter, " are all supported.\n\n");

		buffer.insertWithTagsByName(iter, "Images. ", "heading");

		buffer.insert(iter, "The buffer can have images in it: ");
		if ( pixbuf !is  null )
		{
			buffer.insertPixbuf(iter, scaled);
			buffer.insertPixbuf(iter, pixbuf);
			buffer.insertPixbuf(iter, scaled);
		}
		else
		{
			buffer.insert(iter,"Sorry can't find the images");
		}
		buffer.insert(iter, " for example.\n\n");

		buffer.insertWithTagsByName(iter, "Spacing. ", "heading");

		buffer.insert(iter, "You can adjust the amount of space before each line.\n");

		buffer.insertWithTagsByName(iter, "This line has a whole lot of space before it.\n",
					    "big_gap_before_line", "wide_margins");
		buffer.insertWithTagsByName(iter,
					    "You can also adjust the amount of space after each line; this line has a whole lot of space after it.\n",
					    "big_gap_after_line", "wide_margins");

		buffer.insertWithTagsByName(iter,
					    "You can also adjust the amount of space between wrapped lines; this line has extra space between each wrapped line in the same paragraph. To show off wrapping, some filler text: the quick brown fox jumped over the lazy dog. Blah blah blah blah blah blah blah blah blah.\n",
					    "double_spaced_line", "wide_margins");

		buffer.insert(iter, "Also note that those lines have extra-wide margins.\n\n");

		buffer.insertWithTagsByName(iter, "Editability. ", "heading");

		buffer.insertWithTagsByName(iter,
					    "This line is 'locked down' and can't be edited by the user - just try it! You can't delete this line.\n\n",
					    "not_editable");

		buffer.insertWithTagsByName(iter, "Wrapping. ", "heading");

		buffer.insert(iter,
			  "This line (and most of the others in this buffer) is word-wrapped, using the proper Unicode algorithm. Word wrap should work in all scripts and languages that GTK+ supports. Let's make this a long paragraph to demonstrate: blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah\n\n");

		buffer.insertWithTagsByName(iter,
					    "This line has character-based wrapping, and can wrap between any two character glyphs. Let's make this a long paragraph to demonstrate: blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah\n\n",
					    "char_wrap");

		buffer.insertWithTagsByName(iter,
					    "This line has all wrapping turned off, so it makes the horizontal scrollbar appear.\n\n\n",
					    "no_wrap");

		buffer.insertWithTagsByName(iter, "Justification. ", "heading");

		buffer.insertWithTagsByName(iter,
					    "\nThis line has center justification.\n", "center");

		buffer.insertWithTagsByName(iter,
					    "This line has right justification.\n", "right_justify");

		buffer.insertWithTagsByName(iter,
					    "\nThis line has big wide margins. Text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text.\n",
					    "wide_margins");

		buffer.insertWithTagsByName(iter, "Internationalization. ", "heading");

		buffer.insert(iter,
			  "You can put all sorts of Unicode text in the buffer.\n\nGerman (Deutsch S\303\274d) Gr\303\274\303\237 Gott\nGreek (\316\225\316\273\316\273\316\267\316\275\316\271\316\272\316\254) \316\223\316\265\316\271\316\254 \317\203\316\261\317\202\nHebrew	\327\251\327\234\327\225\327\235\nJapanese (\346\227\245\346\234\254\350\252\236)\n\nThe widget properly handles bidirectional text, word wrapping, DOS/UNIX/Unicode paragraph separators, grapheme boundaries, and so on using the Pango internationalization framework.\n");

		buffer.insert(iter, "Here's a word-wrapped quote in a right-to-left language:\n");
		buffer.insertWithTagsByName(iter, "\331\210\331\202\330\257 \330\250\330\257\330\243 \330\253\331\204\330\247\330\253 \331\205\331\206 \330\243\331\203\330\253\330\261 \330\247\331\204\331\205\330\244\330\263\330\263\330\247\330\252 \330\252\331\202\330\257\331\205\330\247 \331\201\331\212 \330\264\330\250\331\203\330\251 \330\247\331\203\330\263\331\212\331\210\331\206 \330\250\330\261\330\247\331\205\330\254\331\207\330\247 \331\203\331\205\331\206\330\270\331\205\330\247\330\252 \331\204\330\247 \330\252\330\263\330\271\331\211 \331\204\331\204\330\261\330\250\330\255\330\214 \330\253\331\205 \330\252\330\255\331\210\331\204\330\252 \331\201\331\212 \330\247\331\204\330\263\331\206\331\210\330\247\330\252 \330\247\331\204\330\256\331\205\330\263 \330\247\331\204\331\205\330\247\330\266\331\212\330\251 \330\245\331\204\331\211 \331\205\330\244\330\263\330\263\330\247\330\252 \331\205\330\247\331\204\331\212\330\251 \331\205\331\206\330\270\331\205\330\251\330\214 \331\210\330\250\330\247\330\252\330\252 \330\254\330\262\330\241\330\247 \331\205\331\206 \330\247\331\204\331\206\330\270\330\247\331\205 \330\247\331\204\331\205\330\247\331\204\331\212 \331\201\331\212 \330\250\331\204\330\257\330\247\331\206\331\207\330\247\330\214 \331\210\331\204\331\203\331\206\331\207\330\247 \330\252\330\252\330\256\330\265\330\265 \331\201\331\212 \330\256\330\257\331\205\330\251 \331\202\330\267\330\247\330\271 \330\247\331\204\331\205\330\264\330\261\331\210\330\271\330\247\330\252 \330\247\331\204\330\265\330\272\331\212\330\261\330\251. \331\210\330\243\330\255\330\257 \330\243\331\203\330\253\330\261 \331\207\330\260\331\207 \330\247\331\204\331\205\330\244\330\263\330\263\330\247\330\252 \331\206\330\254\330\247\330\255\330\247 \331\207\331\210 \302\273\330\250\330\247\331\206\331\203\331\210\330\263\331\210\331\204\302\253 \331\201\331\212 \330\250\331\210\331\204\331\212\331\201\331\212\330\247.\n\n",
						"rtl_quote");

		buffer.insert(iter, "You can put widgets in the buffer: Here's a button: ");
		anchor = buffer.createChildAnchor(iter);
		buffer.insert(iter, " and a menu: ");
		anchor = buffer.createChildAnchor(iter);
		buffer.insert(iter, " and a scale: ");
		anchor = buffer.createChildAnchor(iter);
		buffer.insert(iter, " and an animation: ");
		anchor = buffer.createChildAnchor(iter);
		buffer.insert(iter, " finally a text entry: ");
		anchor = buffer.createChildAnchor(iter);
		buffer.insert(iter, ".\n");

		buffer.insert(iter, "\n\nThis demo doesn't demonstrate all the GtkTextBuffer features; it leaves out, for example: invisible/hidden text (doesn't work in GTK 2, but planned), tab stops, application-drawn areas on the sides of the widget for displaying breakpoints and such...");

    	/* Apply word_wrap tag to whole buffer */
		buffer.getBounds(start, end);
		buffer.applyTagByName("word_wrap", start, end);
		}
	}

	/**
	 * Attaches all test widgets to the text view
	 * @param view the TextView
	 */
	void attachWidgets(TextView view)
	{
		TextIter iter = new TextIter();
		TextBuffer buffer;
		int i;

		buffer = view.getBuffer();

    	buffer.getStartIter(iter);

		i = 0;

		while (findAnchor(iter))
		{
			TextChildAnchor anchor;// = new TextChildAnchor();
			Widget widget;
			anchor = iter.getChildAnchor();

			if (i == 0)
			{
				Button button = new Button("Click Me");
				widget = button;
			}
			else if (i == 1)
        	{

				ComboBox comboBox = new ComboBox();
				comboBox.appendText("Option 1");
				comboBox.appendText("Option 2");
				comboBox.appendText("Option 3");
				widget = comboBox;
			}
			else if (i == 2)
			{
				HScale hScale = new HScale(0.0,100.0,5.0);
				hScale.setSizeRequest(70, -1);
				widget = hScale;
			}
			else if (i == 3)
			{
				Image image = new Image("images/floppybuddy.gif");
				widget = image;
			}
			else if (i == 4)
			{
				widget = new Entry();
			}
			else
			{
				widget = null;
				//g_assert_not_reached ();
			}

			if ( widget !is  null )
			{
				view.addChildAtAnchor(widget,anchor);
			}

			++i;
		}
	}

	bool findAnchor (TextIter iter)
	{
		while (iter.forwardChar())
		{
			if (iter.getChildAnchor() !is  null ) //gtk_text_iter_get_child_anchor (iter))
			{
				return true;
			}
		}
		return false;
	}

}
