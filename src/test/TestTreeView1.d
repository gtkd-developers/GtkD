/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module test.TestTreeView1;

/* Don't copy this bad example; inline RGB data is always a better
 * idea than inline XPMs.
 */
static char**  book_closed_xpm = [
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


private import dui.ScrolledWindow;
private import event.TreeViewListener;

/**
 * This tests the DUI tree widget
 * \todo report bug to ng: nested class with same name of other class was not used<br>
 * test if this works:<br>
 * class A {}<br>
 * class B { <br>
 *  class A{} <br>
 *  method (){ new A;}<br>
 * }<br>
 */
class TestTreeView1 : ScrolledWindow , TreeViewListener
{
	
	private import dool.String;
	private import def.Constants;
	private import dui.Image;
	private import dui.TreeView;
	private import dui.TreeStore;
	private import dui.TreePath;
	private import dui.TreeViewColumn;
	private import event.Dispatcher;
	private import dui.TreeIter;
	private import dui.TreeSelection;
	private import dui.CellRendererPixbuf;
	private import dui.CellRendererText;
	
	enum columns
	{
		duiObject = DUIType.PIXBUF,
		desc = DUIType.STRING,
	}

	Image image;
	Pixbuf pixbuf;

	this()
	{
		super(null,null);
		
		pixbuf = new Pixbuf(book_closed_xpm);
		image = new Image(pixbuf);

		TreeView treeView = setup();
		populate(treeView);
		addWithViewport(treeView);
		
		Dispatcher.getDispatcher().addTreeViewListener(this,treeView);

	}
	
	
	void populate(TreeView treeView)
	{
		TreeIter iterTop = testTreeStore.createIter();
//		testTreeStore.setValue(iterTop, 
//							0, 
//							new Value(//new String("Hello There")
//								//cast(void*)
//									pixbuf
//									)
//							);
		
	}
	

	
	TreeStore testTreeStore;
	
	/**
	 * Creates the treeView and treeStore
	 * @return 
	 */
	TreeView setup()
	{

		class TTreeStore : TreeStore
		{
			this()
			{
				//this.nCols = nCols;
				static GType [2] columns = [
					DUIType.PIXBUF,
					DUIType.STRING]; 
				super(columns);
				
			}
		}

		testTreeStore = new TTreeStore();
		TreeView treeView = new TreeView(testTreeStore);
		treeView.setRulesHint(true);
		
		TreeSelection ts = treeView.getSelection();
		ts.setMode(SelectionMode.MULTIPLE);

		int col = 0;
		TreeViewColumn column = new TreeViewColumn("Icon",new CellRendererPixbuf(),"pixbuf", col);
		treeView.appendColumn(column);
		//column.setResizable(true);
		//column.setSortColumnID(col);
		//column.setSortIndicator(true);
		column.setWidget(image);
		++col;
		
		column = new TreeViewColumn("Description",new CellRendererText(),"text", col);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnID(col);
		column.setSortIndicator(true);
		++col;

		return treeView;
		
	}	

	void rowActivatedCallback(TreeView treeView, TreePath path, TreeViewColumn column)
	{
		printf("rowActivateCallback for %X \n",treeView);
		printf("rowActivateCallback for path %.*s\n",path.toString());
	}
	

}
