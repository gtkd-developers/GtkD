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

module test.TEditableCells;

private import dui.Window;
private import event.CellListener;

/**
 * reproduces the gtk-demo Editable Cells
 * \todo review array of chars copy
 */
public:
class TEditableCells : Window
	, CellListener
{

	private import dool.String;
	private import dool.Integer;
	
	private import dui.TreeView;
	private import dui.TreeModel;
	private import dui.CellRenderer;
	private import dui.Button;
	private import dui.MenuItem;
	private import dui.VBox;
	private import dui.HBox;
	private import dui.ScrolledWindow;
	private import dui.Label;
	private import def.Constants;
	private import dui.ListStore;
	private import dui.TreeView;
	private import dui.TreeIter;
	private import dui.TreePath;
	private import event.Dispatcher;
	private import dui.CellRendererText;
	private import dui.TreeViewColumn;
	private import dui.Item;
	private import dui.TreeSelection;
	private import dui.MessageDialog;
	
	
	ListRow[] listRows;
	TreeView treeView;
	
	/**
	 * ctor. must reactivate the constructor name change loby
	 */
	this()
	{
		super("Shopping list");
		setDefaultSize(320,200);
		setBorderWidth(5);

		setup();
      
		show();
	}

	private void setup()
	{
		VBox vbox;
		HBox hbox;
		ScrolledWindow sw;
		Button button;
		TreeModel model;
		
		/* create window, etc */
		
		vbox = new VBox(false, 5);
		add(vbox);
		vbox.packStart(new Label("Shopping list (you can edit the cells!)"),false,false, 0);
		
		sw = new ScrolledWindow(null,null);
		sw.setShadow(ShadowType.ETCHED_IN);
		sw.setPolicy(PolicyType.AUTOMATIC,PolicyType.AUTOMATIC);
		vbox.packStart(sw,true,true, 0);
		
		/* create model */
		model = createModel();
		
		/* create tree view */
		treeView = new TreeView(model); // add model here
		//g_object_unref (model); // do we need this???
		treeView.setRulesHint(true);
		treeView.getSelection().setMode(SelectionMode.SINGLE);
		
		addColumns(treeView);
		sw.add(treeView);
		
		/* some buttons */
		hbox = new HBox(true,4);
		vbox.packStart(hbox,false,false,0);
		
		button = new Button("Add item",&addItem);
		hbox.packStart(button,true,true,0);
		
		button = new Button("Remove item",&removeItem);
		hbox.packStart(button,true,true,0);
		
	}

	enum cols
	{
		COLUMN_NUMBER,
		COLUMN_PRODUCT,
		COLUMN_EDITABLE,
		NUM_COLUMNS
	};

	TreeModel createModel()
	{


		int i = 0;
		ListStore model;
		TreeIter iter = new TreeIter();
		
		/* create array */
		//articles = g_array_sized_new (FALSE, FALSE, sizeof (Item), 1);
		
		addItems();
		
		DUIType []columns;
//		columns ~= DUIType.INT;
//		columns ~= DUIType.STRING;
//		columns ~= DUIType.BOOLEAN;

		columns ~= DUIType.STRING;
		columns ~= DUIType.STRING;
		columns ~= DUIType.BOOLEAN;

		/* create list store */
		model = new ListStore(columns);
		
		/* add items */
		foreach(ListRow row ; listRows)
		{
			model.append(iter);
			model.set(iter,row);
		}
		
		return model;
	}

	void editedCallback(CellRenderer renderer, TreeModel model, String pathString, String newText,int column)
	{
		//printf("path string %.*s\n",pathString);
		//printf("newText     %.*s\n",newText);
		//printf("column      %d\n",column);

		TreeIter iter = new TreeIter();
		
		ListStore store = cast(ListStore)model;
		
		TreePath path = new TreePath(pathString);
		model.getIter(iter,path);
		//store.getIter(iter,path);
		int row = path.getIndices()[0];
		
		switch ( column )
		{
			case 0:
				try
				{
					listRows[row].setNumber(Integer.toInt(newText));
				}
				catch(Error error)
				{
					//printf("catch error\n");
					// ignore to keep old value
				}
				//model.set(iter, listRows[row]);
				store.setValue(iter, column, listRows[row].getNumber().toString());
				break;
				
			case 1:
				listRows[row].setProduct(newText);
				//model.set(iter, listRows[row]);
				store.setValue(iter, column, listRows[row].getProduct().toString());
				break;
				
			default:
				printf("TEditableCells.editedCallback : Unexpected column edited %d\n",column);
				break;
		}
		dump(listRows);

	}
	void addColumns(TreeView treeView)
	{
		Dispatcher dispatcher = Dispatcher.getDispatcher();
		CellRenderer renderer;
		TreeModel model = treeView.getModel();
		renderer = new CellRendererText();
		int pos = treeView.insertEditableColumn(0, "Number", renderer, true);
		//TreeViewColumn column = new TreeViewColumn("Number",new CellRendererText(),"text", 0);
		//treeView.appendColumn(column);
		TreeViewColumn column = treeView.getColumn(pos-1);
		column.setResizable(true);
		column.setSortColumnID(0);
		column.setSortIndicator(true);
		dispatcher.addCellListener(this,renderer,model,pos-1);

		renderer = new CellRendererText();
		pos = treeView.insertEditableColumn(1, "Product", renderer, true);
		//column = new TreeViewColumn("Product",new CellRendererText(),"text", 1);
		//treeView.appendColumn(column);
		column = treeView.getColumn(pos-1);
		column.setResizable(true);
		column.setSortColumnID(1);
		column.setSortIndicator(true);
		dispatcher.addCellListener(this,renderer,model,pos-1);
	
	}

	class ListRow : TreeNode
	{
		int     number;
		String  product;
		bit editable;
		this(int number, String prod, bit editable)
		{
			this.number = number;
			product = new String(prod);
			this.editable = editable;
		}
		void setNumber(int number)
		{
			this.number = number;
		}
		String getNumber()
		{
			return new String(number);
		}
		void setProduct(String prod)
		{
			product = new String(prod);
		}
		String getProduct()
		{
			return product;
		}
		void* getNodeValue(int column)
		{
			switch(column)
			{
				case 0: return (new String(number)).toStringz(); break;
				case 1: return product.toStringz(); break;
				case 2: return (new String(editable)).toStringz(); break;
			}
		}
		char[] toString()
		{
			return (new String(number) ~ "\t" ~ new String(product) ~ new String("\t") ~ new String(editable)).toString();
		}
	}

	void addItems()
	{
		listRows ~= new ListRow(3,new String("bottles of coke"),true);
		listRows ~= new ListRow(5,new String("packages of noodles"),true);
		listRows ~= new ListRow(2,new String("packages of chocolate chip cookies"),true);
		listRows ~= new ListRow(1,new String("can vanilla ice cream"),true);
		listRows ~= new ListRow(6,new String("eggs"),true);
	}

	void addItem(Button button)
	{
		Item foo;
		TreeIter iter = new TreeIter;
		ListStore model = treeView.getListStore();

		ListRow row = new ListRow(0,new String("Description here"),true);

		model.append(iter);		
		model.set(iter,row);
		listRows ~= row;
		
	}
		
	void removeItem(Button button)
	{
		
		TreeIter iter = new TreeIter;
		ListStore model = treeView.getListStore();
		
		TreeSelection selection = treeView.getSelection();
		
		if ( selection.getSelected(model,iter) )
		{
			TreePath path;
			path = model.getPath(iter);
			int row = path.getIndices()[0];
			model.remove(iter);

			//dump(listRows);			
			//listRows = listRows[0..row] ~ listRows[row+1..listRows.length];
			listRows[row..listRows.length-1] = listRows[row+1..listRows.length];
			listRows.length = listRows.length-1;
			//dump(listRows);			
			path.free();
		}
	}
			
			
	void dump(Object[] oArray)
	{
		printf("\n");
		foreach(Object o ; oArray)
		{
			printf("%.*s\n",o.toString());
		}
	}
}
