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

module TestTreeView;

private import gtk.ScrolledWindow;

private import gtk.TreeView;
private import gtk.TreePath;
private import gtk.TreeViewColumn;
private import gtk.TreeIter;
private import gtk.TreeStore;
private import gtk.TreeModel;
//private import ddi.Pixbuf;
private import gtk.TreeSelection;
private import gtk.CellRendererText;

private import gtk.Image;
//private import ddi.Pixbuf;

private import gtk.TreeNode;

version(Tango) private import tango.io.Stdout;
version(Tango) private import tango.stdc.stdio;
else private import std.stdio;


/* Don't copy this bad example; inline RGB data is always a better
 * idea than inline XPMs.
 */

static string[]  book_closed_xpm = [
"16 16 6 1",
"       c None s None",
".      c black",
"X      c red",
"o      c yellow",
"O      c #808080",
"#      c white",
"                ",
"       ..       ",
"     ..XX.      ",
"   ..XXXXX.     ",
" ..XXXXXXXX.    ",
".ooXXXXXXXXX.   ",
"..ooXXXXXXXXX.  ",
".X.ooXXXXXXXXX. ",
".XX.ooXXXXXX..  ",
" .XX.ooXXX..#O  ",
"  .XX.oo..##OO. ",
"   .XX..##OO..  ",
"    .X.#OO..    ",
"     ..O..      ",
"      ..        ",
"                "
];

/**
 * This tests the GtkD tree widget
 * \todo report bug to ng: nested class with same name of other class was not used<br>
 * test if this works:<br>
 * class A {}<br>
 * class B { <br>
 *  class A{} <br>
 *  method (){ new A;}<br>
 * }<br>
 */
class TestTreeView : ScrolledWindow
{
	Image image;
	//Pixbuf pixbuf;

	enum columns
	{
		//gtkDObject = GtkDType.PIXBUF,
		gtkDObject = GType.STRING,
		gtkObject = GType.STRING,
		desc = GType.STRING,
		percentDone = GType.STRING,
		author = GType.STRING
	}

	this()
	{
		super(null,null);

		TreeView treeView = setup();
		addWithViewport(treeView);

		treeView.addOnRowActivated(&rowActivatedCallback);
		treeView.addOnMoveCursor(&moveCursorCallBack);
	}

	void rowActivatedCallback(TreePath path, TreeViewColumn column, TreeView treeView)
	{
		printf("rowActivateCallback for %X \n",treeView);
		printf("rowActivateCallback for path %.*s\n",path.toString());
	}

	bool moveCursorCallBack(GtkMovementStep step, int direction, TreeView treeView)
	{
		printf("moveCursorCallBack for %X \n",treeView);
		printf("moveCursorCallBack row = %d \n",direction);
		return false;
	}

	TreeIter [12] h;
	int stack = 0;
	void push(TreeIter ti)
	{
		h[stack++]=ti;
	}
	TreeIter peek()
	{
		if ( stack == 0)
		{
			return null;
		}
		return h[stack-1];
	}

	TreeIter pop()
	{
		if ( stack == 0)
		{
			return null;
		}
		return h[--stack];
	}

	class HTreeNode : TreeNode
	{

		string gtkDL;
		string gtk;
		string desc;
		int percent;
		string author;
		//TestTreeView ttv;

		this(string gtkDL,string gtk,string desc,int percent)//, TestTreeView ttv)
		{
			this.gtkDL = gtkDL;
			this.gtk = gtk;
			this.desc = desc;
			this.percent = percent;
			this.author = "Ant";
			//this.ttv = ttv;

		}

		//Pixbuf getNodePixbuf(int colum)
		//{
		//	return pixbuf;
		//}

		int columnCount()
		{
			return 5;
		}

		string getNodeValue(int column)
		{
			string value;
			switch (column)
			{
				//case 0: value = pixbuf; break;
				case 0: value = gtkDL; break;
				case 1: value = gtk; break;
				case 2: value = desc; break;
				case 3:
					switch(percent)
					{
						case -1: value = "uggly: won't get in"; break;
						case 0: value = "unknown"; break;
						case 1: value = "not yet";break;
						case 98: value = "Almost"; break;
						case 99: value = "AGAIG"; break;
						case 100: value = "Complete"; break;
						default:value = "%"; break;
					}
					break;

				case 4: value = author; break;
				default: value = "N/A"; break;
			}
			return value;
		}
	}

	TreeView setup()
	{

		class TTreeStore : TreeStore
		{
			this()
			{
				//this.nCols = nCols;
				static GType [5] columns = [
					//GtkDType.PIXBUF,
					GType.STRING,
					GType.STRING,
					GType.STRING,
					GType.STRING,
					GType.STRING];
				super(columns);

			}
		}

		TTreeStore testTreeStore = new TTreeStore();
		TreeView treeView = new TreeView(testTreeStore);
		treeView.setRulesHint(true);

		TreeSelection ts = treeView.getSelection();
		ts.setMode(SelectionMode.MULTIPLE);

		//TreeViewColumn column = new TreeViewColumn("GtkDObject",new CellRendererPixbuf(),"GdkPixbuf", 0);
		TreeViewColumn column = new TreeViewColumn("GtkDObject",new CellRendererText(),"text", 0);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(0);
		column.setSortIndicator(true);
		//pixbuf = new Pixbuf(book_closed_xpm);
		//image = new Image(pixbuf);
		//column.setWidget(image);

		column = new TreeViewColumn("GtkObject",new CellRendererText(),"text", 1);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(1);
		column.setSortIndicator(true);

		column = new TreeViewColumn("Desc",new CellRendererText(),"text", 2);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(2);
		column.setSortIndicator(true);

		column = new TreeViewColumn("Complete",new CellRendererText(),"text", 3);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(3);
		column.setSortIndicator(true);

		column = new TreeViewColumn("Author",new CellRendererText(),"text", 4);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(4);
		column.setSortIndicator(true);

		TreeIter iter;
		TreeIter iterTop = testTreeStore.createIter(null);

		TreeIter peekIter(bool pushIt)
		{
			TreeIter iter = testTreeStore.append(peek());
			if ( pushIt )
			{
				push(iter);
			}
			return iter;
		}

		TreeIter popIter(bool pushIt)
		{
			TreeIter iter = testTreeStore.append(pop());
			if ( pushIt )
			{
				push(iter);
			}
			return iter;
		}

		push(iterTop);
		testTreeStore.set(iterTop, new HTreeNode("ObjectG","GObject","Parent of the main GtkD objects",90));

		testTreeStore.set(peekIter(true), new HTreeNode("ObjectGtk","GtkObject","The main gtk object",100));
		testTreeStore.set(peekIter(true), new HTreeNode("Misc","GtkMisc","Comon for Most widgets",100));

		testTreeStore.set(peekIter(true), new HTreeNode("Label","GtkLabel","Display only widget",100));
		testTreeStore.set(popIter(false), new HTreeNode("AccelLabel","GtkAccelLabel","A label with a thing",1));
		testTreeStore.set(peekIter(false), new HTreeNode("Arrow","GtkArrow","A standard arrow",100));
		testTreeStore.set(popIter(false), new HTreeNode("Image","GtkImage","A image",100));
		testTreeStore.set(peekIter(true), new HTreeNode("Container","GtkContainer","Comon for all widgets that can contain other widgets",90));
		testTreeStore.set(peekIter(false), new HTreeNode("Bin","GtkBin","Comon for many widgets",90));

		testTreeStore.set(peekIter(false), new HTreeNode("Alignment","GtkAlignment","Aligns a widget in a larger area",100));
		testTreeStore.set(peekIter(true), new HTreeNode("Frame","GtkFrame","",100));
		testTreeStore.set(popIter(false), new HTreeNode("AspectFrame","GtkAspectFrame","",100));
		testTreeStore.set(peekIter(true), new HTreeNode("Button","GtkButton","",90));

		testTreeStore.set(peekIter(true), new HTreeNode("ToggleButton","GtkToggleButton","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("CheckButton","GtkCheckButton","",0));
		testTreeStore.set(popIter(false), new HTreeNode("RadioButton","GtkRadioButton","",0));
		testTreeStore.set(popIter(false), new HTreeNode("OptionMenu","GtkOptionMenu","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("Item","GtkItem","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("MenuItem","GtkMenuItem","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("CheckMenuItem","GtkCheckMenuItem","",0));
		testTreeStore.set(popIter(false), new HTreeNode("RadioMenuItem","GtkRadioMenuItem","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("ImageMenuItem","GtkImageMenuItem","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("SeparatorMenuItem","GtkSeparatorMenuItem","",0));
		testTreeStore.set(popIter(false), new HTreeNode("TearoffMenuItem","GtkTearoffMenuItem","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("Window","GtkWindow","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("Dialog","GtkDialog","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("ColorSelectionDialog","GtkColorSelectionDialog","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("FileSelection","GtkFileSelection","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("FontSelectionDialog","GtkFontSelectionDialog","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("InputDialog","GtkInputDialog","",0));
		testTreeStore.set(popIter(false), new HTreeNode("MessageDialog","GtkMessageDialog","",0));
		testTreeStore.set(popIter(false), new HTreeNode("Plug","GtkPlug","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("EventBox","GtkEventBox","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("HandleBox","GtkHandleBox","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("ScrolledWindow","GtkScrolledWindow","",0));
		testTreeStore.set(popIter(false), new HTreeNode("Viewport","GtkViewport","",0));


		testTreeStore.set(peekIter(true), new HTreeNode("Box","GtkBox","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("ButtonBox","GtkButtonBox","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("HButtonBox","GtkHButtonBox","",0));
		testTreeStore.set(popIter(false), new HTreeNode("VButtonBox","GtkVButtonBox","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("VBox","GtkVBox","",100));
		testTreeStore.set(peekIter(false), new HTreeNode("ColorSelection","GtkColorSelection","",100));
		testTreeStore.set(peekIter(false), new HTreeNode("FontSelection","GtkFontSelection","",100));
		testTreeStore.set(popIter(false), new HTreeNode("GammaCurve","GtkGammaCurve","",0));
		testTreeStore.set(popIter(true), new HTreeNode("HBox","GtkHBox","",100));
		testTreeStore.set(peekIter(false), new HTreeNode("Combo","GtkCombo","",0));
		testTreeStore.set(popIter(false), new HTreeNode("Statusbar","GtkStatusbar","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("Fixed","GtkFixed","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("Paned","GtkPaned","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("HPaned","GtkHPaned","",0));
		testTreeStore.set(popIter(false), new HTreeNode("VPaned","GtkVPaned","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("Layout","GtkLayout","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("MenuShell","GtkMenuShell","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("MenuBar","GtkMenuBar","",0));
		testTreeStore.set(popIter(false), new HTreeNode("Menu","GtkMenu","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("Notebook","GtkNotebook","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("Socket","GtkSocket","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("Table","GtkTable","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("TextView","GtkTextView","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("Toolbar","GtkToolbar","",0));
		testTreeStore.set(popIter(false), new HTreeNode("TreeView","GtkTreeView","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("Calendar","GtkCalendar","",0));

		testTreeStore.set(peekIter(true), new HTreeNode("DrawingArea","GtkDrawingArea","",0));
		testTreeStore.set(popIter(false), new HTreeNode("Curve","GtkCurve","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("Editable","GtkEditable","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("Entry","GtkEntry","",0));
		testTreeStore.set(popIter(false), new HTreeNode("SpinButton","GtkSpinButton","",0));
		pop();
		testTreeStore.set(peekIter(true), new HTreeNode("Ruler","GtkRuler","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("HRuler","GtkHRuler","",0));
		testTreeStore.set(popIter(false), new HTreeNode("VRuler","GtkVRuler","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("Range","GtkRange","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("Scale","GtkScale","",0));
		testTreeStore.set(peekIter(true), new HTreeNode("HScale","GtkHScale","",0));
		testTreeStore.set(popIter(false), new HTreeNode("VScale","GtkVScale","",0));
		testTreeStore.set(popIter(true), new HTreeNode("Scrollbar","GtkScrollbar","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("HScrollbar","GtkHScrollbar","",0));
		testTreeStore.set(popIter(false), new HTreeNode("VScrollbar","GtkVScrollbar","",0));
		pop();
		testTreeStore.set(peekIter(true), new HTreeNode("Separator","GtkSeparator","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("HSeparator","GtkHSeparator","",0));
		testTreeStore.set(popIter(false), new HTreeNode("VSeparator","GtkVSeparator","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("Invisible","GtkInvisible","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("Preview","GtkPreview","",0));
		testTreeStore.set(popIter(false), new HTreeNode("ProgressBar","GtkProgressBar","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("Adjustment","GtkAdjustment","Values for the range widget (scroolbars, spin buttons...)",0));
		testTreeStore.set(peekIter(true), new HTreeNode("CellRenderer","GtkCellRenderer","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("CellRendererPixbuf","GtkCellRendererPixbuf","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("CellRendererText","GtkCellRendererText","",0));
		testTreeStore.set(popIter(false), new HTreeNode("CellRendererToggle","GtkCellRendererToggle","",0));
		testTreeStore.set(peekIter(false), new HTreeNode("ItemFactory","GtkItemFactory","",1));
		testTreeStore.set(peekIter(false), new HTreeNode("Tooltips","GtkTooltips","",0));
		testTreeStore.set(popIter(false), new HTreeNode("TreeViewColumn","GtkTreeViewColumn","",0));
		push(iterTop);
		testTreeStore.set(peekIter(false), new HTreeNode("ListG","GList","a double linked list used to comboBox and stuf",0));

		return treeView;

	}


}
