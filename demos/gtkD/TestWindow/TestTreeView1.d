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

module TestTreeView1;

//debug = trace;

private import gtk.VBox;

private import gobject.Value;

private import gtk.Image;
private import gtk.TreeView;
private import gtk.TreeStore;
private import gtk.TreePath;
private import gtk.TreeViewColumn;
private import gtk.TreeIter;
private import gtk.TreeSelection;
private import gtk.CellRendererPixbuf;
private import gtk.CellRendererText;
private import gtk.ScrolledWindow;
private import gdk.Pixbuf;
private import glib.Str;
version(Tango) private import tango.io.Stdout;
version(Tango) private import tango.stdc.stdio;
else private import std.stdio;

/**
 * This tests the gtkD tree widget
 */
public class TestTreeView1 : VBox
{
//	enum columns
//	{
//		gtkDObject = pixbufGetType(),
//		desc = gtkDType.STRING,
//	}

	Image image;
	Pixbuf pixbuf;
	Pixbuf pixbufTest;

	TreeStore testTreeStore1;
	TreeStore testTreeStore2;

	this()
	{

		debug(trace) version(Tango) Stdout("TestTreeView1.this 1").newline;
		else writefln("TestTreeView1.this 1");
		super(false, 0);
		debug(trace) version(Tango) Stdout("TestTreeView1.this 2").newline;
		else writefln("TestTreeView1.this 2");

		pixbuf = new Pixbuf(greenClass_xpm);
		debug(trace) version(Tango) Stdout("TestTreeView1.this 2.1").newline;
		else writefln("TestTreeView1.this 2.1");
		pixbufTest = new Pixbuf(book_closed_xpm);
		debug(trace) version(Tango) Stdout("TestTreeView1.this 2.2").newline;
		else writefln("TestTreeView1.this 2.2");
		image = new Image(pixbufTest);

		debug(trace) version(Tango) Stdout("TestTreeView1.this 3").newline;
		else writefln("TestTreeView1.this 3");
		TreeView treeView1 = setup1();
		populate(testTreeStore1);

		debug(trace) version(Tango) Stdout("TestTreeView1.this 4").newline;
		else writefln("TestTreeView1.this 4");
		TreeView treeView2 = setup2();
		populate(testTreeStore2);

		debug(trace) version(Tango) Stdout("TestTreeView1.this 5").newline;
		else writefln("TestTreeView1.this 5");
		treeView2.addOnMoveCursor(&moveCursorCallback);
		packStart(image, false, false, 1);
		ScrolledWindow sw = new ScrolledWindow(null, null);
		sw.add(treeView1);
		packStart(sw, true, true, 1);
		sw = new ScrolledWindow(null, null);
		sw.add(treeView2);
		packStart(sw, true, true, 1);

		debug(trace) version(Tango) Stdout("TestTreeView1.this 6").newline;
		else writefln("TestTreeView1.this 6");
		//addWithViewport(treeView);



	}

	bool moveCursorCallback(GtkMovementStep step, int i, TreeView tree)
	{
		TreeIter iter = tree.getSelectedIter();
		iter.setModel(tree.getModel());
		Value v = new Value();
		iter.getValue(1, v);
		debug(trace) version(Tango) Stdout("cursor on {}", v).newline;
		else writefln("cursor on %s", v);
		return false;
	}



	void populate(TreeStore treeStore)
	{
		TreeIter iterChild;
		TreeIter iterTop = treeStore.createIter();
		treeStore.setValue(iterTop, 0, new Pixbuf(package_xpm) );
		treeStore.setValue(iterTop, 1, "Icon for packages" );

		iterChild = treeStore.append(iterTop);
		treeStore.setValue(iterChild, 0,new Pixbuf(greenTemplate_xpm) );
		treeStore.setValue(iterChild, 1, "Icon for templates" );

		iterChild = treeStore.append(iterTop);
		treeStore.setValue(iterChild, 0, new Pixbuf(greenInterface_xpm) );
		treeStore.setValue(iterChild, 1, "Icon for interfaces" );

		iterChild = treeStore.append(iterTop);
		treeStore.setValue(iterChild, 0, new Pixbuf(greenClass_xpm) );
		treeStore.setValue(iterChild, 1, "Icon for classes" );

	}

	/**
	 * Creates the treeView and treeStore
	 * @return
	 */
	TreeView setup1()
	{
		class TTreeStore : TreeStore
		{
			this()
			{
				//int* i = cast(int*)pixbufGetType();

				GType[] columns;
				columns ~= Pixbuf.getType();
				columns ~= GType.STRING;
				super(columns);

			}
		}

		testTreeStore1 = new TTreeStore();
		TreeView treeView = new TreeView(testTreeStore1);
		treeView.setRulesHint(true);

		TreeSelection ts = treeView.getSelection();
		ts.setMode(SelectionMode.MULTIPLE);
		TreeViewColumn column;
		int col = 0;
		column = new TreeViewColumn("Icon",new CellRendererPixbuf(),"pixbuf", col);
		treeView.appendColumn(column);
		++col;

		column = new TreeViewColumn("Description",new CellRendererText(),"text", col);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(col);
		column.setSortIndicator(true);
		++col;

		return treeView;

	}

		/**
	 * Creates the treeView and treeStore
	 * @return
	 */
	TreeView setup2()
	{
		class TTreeStore : TreeStore
		{
			this()
			{
				//int* i = cast(int*)pixbufGetType();

				GType[] columns;
				columns ~= Pixbuf.getType();
				columns ~= GType.STRING;
				super(columns);

			}
		}

		testTreeStore2 = new TTreeStore();
		TreeView treeView = new TreeView(testTreeStore2);
		treeView.setRulesHint(true);

		TreeSelection ts = treeView.getSelection();
		ts.setMode(SelectionMode.MULTIPLE);
		TreeViewColumn column;
		int col = 0;

		column = new TreeViewColumn();

		CellRendererPixbuf cellPixbuf = new CellRendererPixbuf();
		CellRendererText cellText = new CellRendererText();

		column.packStart(cellPixbuf, false);
		column.addAttribute(cellPixbuf, "pixbuf", col);
		++col;

		column.packEnd(cellText, true);
		column.addAttribute(cellText, "text", col);

		column.setTitle("Types");

		treeView.appendColumn(column);

		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(col);
		column.setSortIndicator(true);
		++col;

		return treeView;

	}


	void rowActivatedCallback(TreeView treeView, TreePath path, TreeViewColumn column)
	{
		printf("rowActivateCallback for %X \n",treeView);
		printf("rowActivateCallback for path %.*s\n",path.toString());
	}


	/* XPM */
	static string[] greenClass_xpm = [
	"16 16 67 1",
	" 	c None",
	".	c #00CF2E",
	"+	c #005D14",
	"@	c #005A16",
	"#	c #005217",
	"$	c #004B15",
	"%	c #004413",
	"&	c #00BC23",
	"*	c #00BB23",
	"=	c #006A14",
	"-	c #000000",
	";	c #00B721",
	">	c #00BF25",
	",	c #006F17",
	"'	c #00821C",
	")	c #00801A",
	"!	c #007B17",
	"~	c #00C126",
	"{	c #FFFFFF",
	"]	c #00761A",
	"^	c #008B21",
	"/	c #00821B",
	"(	c #007316",
	"_	c #00BA22",
	":	c #A9EBB6",
	"<	c #007B1D",
	"[	c #009426",
	"}	c #A9F5BC",
	"|	c #A9F2BA",
	"1	c #00BA23",
	"2	c #00D935",
	"3	c #00BE25",
	"4	c #A9EDB7",
	"5	c #007F1F",
	"6	c #009C2A",
	"7	c #00ED3E",
	"8	c #00E339",
	"9	c #A9F1B9",
	"0	c #00CB2C",
	"a	c #00BE24",
	"b	c #00C729",
	"c	c #00BF26",
	"d	c #008120",
	"e	c #00A52E",
	"f	c #00F241",
	"g	c #00E53A",
	"h	c #00D933",
	"i	c #00841D",
	"j	c #007B18",
	"k	c #007F20",
	"l	c #009928",
	"m	c #009224",
	"n	c #008B20",
	"o	c #A9EFB8",
	"p	c #00801F",
	"q	c #00BC24",
	"r	c #00C82A",
	"s	c #007A1C",
	"t	c #00791C",
	"u	c #007117",
	"v	c #006B14",
	"w	c #00B822",
	"x	c #00C629",
	"y	c #A9E9B5",
	"z	c #A9E7B4",
	"A	c #00C127",
	"B	c #00CF2C",
	"                ",
	"      .+@#$%    ",
	"    &*=-----    ",
	"   ;>,--')!--   ",
	"  ~>{]-^{{/!(   ",
	"  _:{<-[}|{{1   ",
	" 234{5-67890a2  ",
	" bc4{d-efghij.  ",
	" 234{k--lmn--2  ",
	"  1:o{p-----_   ",
	"  q>ro{st]uv&   ",
	"   w>x4{{{{;    ",
	"    ~13yyzA     ",
	"      Bbh       ",
	"                ",
	"                "];


	/* XPM */
	static string[] greenInterface_xpm = [
	"16 16 62 1",
	" 	c None",
	".	c #00CF2E",
	"+	c #008A1E",
	"@	c #009023",
	"#	c #00BC23",
	"$	c #00BB23",
	"%	c #FFFFFF",
	"&	c #007F18",
	"*	c #000000",
	"=	c #00B721",
	"-	c #00BF25",
	";	c #AAECB7",
	">	c #00881D",
	",	c #00861D",
	"'	c #007A16",
	")	c #00C126",
	"!	c #00C82A",
	"~	c #AAEFB9",
	"{	c #008F21",
	"]	c #00861C",
	"^	c #00BA22",
	"/	c #00C629",
	"(	c #00D12F",
	"_	c #AAF3BB",
	":	c #AAF5BC",
	"<	c #009726",
	"[	c #008B1F",
	"}	c #00C529",
	"|	c #00BA23",
	"1	c #00D935",
	"2	c #00BE25",
	"3	c #00CA2C",
	"4	c #00D732",
	"5	c #00E238",
	"6	c #AAF8BF",
	"7	c #009E29",
	"8	c #00CB2C",
	"9	c #00BE24",
	"0	c #00C729",
	"a	c #00BF26",
	"b	c #00CC2C",
	"c	c #00D933",
	"d	c #00E53A",
	"e	c #AAFABF",
	"f	c #00A12B",
	"g	c #009022",
	"h	c #00CC2D",
	"i	c #00CA2B",
	"j	c #00D632",
	"k	c #00E239",
	"l	c #AAF9BE",
	"m	c #009E2A",
	"n	c #00BD25",
	"o	c #009927",
	"p	c #009626",
	"q	c #008A1F",
	"r	c #00841A",
	"s	c #00BC24",
	"t	c #00B822",
	"u	c #00841B",
	"v	c #AAE8B5",
	"w	c #00CF2C",
	"                ",
	"      .+@       ",
	"    #$%&***     ",
	"   =-;%>,*&'    ",
	"  )-!~%%{*]-)   ",
	"  ^/(_:%<*[}|   ",
	" 123456%7*{891  ",
	" 0abcde%f*gha.  ",
	" 12ijkl%m*{in1  ",
	"  |/(_%op*qr^   ",
	"  s-!~%g***&#   ",
	"   t-;%>,u&'    ",
	"    )v%%%%%     ",
	"      w0c       ",
	"                ",
	"                "];


	/* XPM */
	static string[] greenTemplate_xpm = [
	"16 16 63 1",
	" 	c None",
	".	c #008A1E",
	"+	c #009023",
	"@	c #007D17",
	"#	c #000000",
	"$	c #FFFFFF",
	"%	c #007F18",
	"&	c #003B0C",
	"*	c #003C0C",
	"=	c #00380A",
	"-	c #003609",
	";	c #A9EAB5",
	">	c #00851C",
	",	c #008F21",
	"'	c #00861C",
	")	c #A9E7B4",
	"!	c #A9F5BB",
	"~	c #009726",
	"{	c #008B1F",
	"]	c #A9EBB6",
	"^	c #00D935",
	"/	c #A9E9B5",
	"(	c #A9EDB7",
	"_	c #A9F1B9",
	":	c #00EC3F",
	"<	c #009E29",
	"[	c #00CB2C",
	"}	c #00BE24",
	"|	c #00C729",
	"1	c #00BF26",
	"2	c #00CC2C",
	"3	c #00D933",
	"4	c #00E53A",
	"5	c #A9FABE",
	"6	c #00A12B",
	"7	c #009022",
	"8	c #00CC2D",
	"9	c #00CF2E",
	"0	c #00BE25",
	"a	c #00CA2B",
	"b	c #00D632",
	"c	c #00E239",
	"d	c #A9F8BD",
	"e	c #009E2A",
	"f	c #00BD25",
	"g	c #00BA23",
	"h	c #00C629",
	"i	c #00D12F",
	"j	c #00DB34",
	"k	c #009626",
	"l	c #008A1F",
	"m	c #00C628",
	"n	c #00BA22",
	"o	c #00BC24",
	"p	c #00BF25",
	"q	c #00C82A",
	"r	c #00BC23",
	"s	c #00B822",
	"t	c #00841B",
	"u	c #00B721",
	"v	c #00C126",
	"w	c #00C127",
	"x	c #00CF2C",
	"                ",
	"      ..+       ",
	"    @#########  ",
	"   $%#&*&#=-##  ",
	"  ;$>#$$,#'$$#  ",
	"  )$$$!$~#{])   ",
	" ^/(_!:$<#,[}^  ",
	" |12345$6#7819  ",
	" ^0abcd$e#,af^  ",
	"  ghij!$k#lmn   ",
	"  opqi_$,#'pr   ",
	"   sph(($tpu    ",
	"    vg0//gw     ",
	"      x|3       ",
	"                ",
	"                "];

	/* XPM */
	static string[] package_xpm = [
	"16 16 25 1",
	" 	c None",
	".	c #713C17",
	"+	c #BF8231",
	"@	c #C17A2D",
	"#	c #93551F",
	"$	c #C1772B",
	"%	c #DBBF9E",
	"&	c #E5C9A1",
	"*	c #CEAB8B",
	"=	c #9E7058",
	"-	c #BF752A",
	";	c #F9F1BB",
	">	c #EDD1A6",
	",	c #D7B897",
	"'	c #BB712A",
	")	c #D7B998",
	"!	c #B76D28",
	"~	c #C7A082",
	"{	c #794F40",
	"]	c #AE6325",
	"^	c #A96023",
	"/	c #A55C22",
	"(	c #A25922",
	"_	c #C58332",
	":	c #A05921",
	"                ",
	"       .        ",
	"  +@@@@#@@@@+   ",
	"  $%&&*=%&&*$   ",
	"  -&;>,=&;>,-   ",
	"  '&>>)=&>>)'   ",
	"  !*,)~{*,)~!   ",
	" .#==={{{===#.  ",
	"  ]%&&*{%&&*]   ",
	"  ^&;>,=&;>,^   ",
	"  /&>>)=&>>)/   ",
	"  (*,)~=*,)~(   ",
	"  _::::#::::_   ",
	"       .        ",
	"                ",
	"                "];

	/* Don't copy this bad example; inline RGB data is always a better
	 * idea than inline XPMs.
	 */
	static string[]  book_closed_xpm = [
	"16 16 7 1",
	"       c None s None",
	".      c black",
	"X      c red",
	"B      c blue",
	"o      c yellow",
	"O      c #808080",
	"#      c white",
	"                ",
	"       ..       ",
	"     ..XB.      ",
	"   ..XXXXB.     ",
	" ..XXXXXXXB.    ",
	".ooXXBBBBBXB.   ",
	"..ooXBBBBBBXB.  ",
	".X.ooXBBBBBBXB. ",
	".XX.ooXBBBXX..  ",
	" .XX.ooXBX..#O  ",
	"  .XX.oo..##OO. ",
	"   .XX..##OO..  ",
	"    .X.#OO..    ",
	"     ..O..      ",
	"      ..        ",
	"                "
	];


}



