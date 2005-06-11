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

module test.DUITree;

import dui.HPaned;
import dui.VPaned;
import dui.Tree;
import dui.TreeItem;
import dui.Label;
import dui.Viewport;
import dui.Adjustment;
import dui.Table;
import dui.HScrollbar;
import dui.VScrollbar;
import dui.ScrolledWindow;

class WidgetDesc
{
	WidgetDesc parent;
	char [] gtkName;
	char [] duiName;
	char [] desc;
	Tree tree=null;
	TreeItem treeItem;
	int completed;
	
	this(char [] gtkName,char [] duiName, char [] desc)
	{
		this(cast(WidgetDesc)null, gtkName, duiName, desc,0);
	}
	
	this(char [] gtkName,char [] duiName, char [] desc,int completed)
	{
		this(cast(WidgetDesc)null, gtkName, duiName,  desc, completed);
	}
	
	this(WidgetDesc parent, char [] gtkName,char [] duiName, char [] desc)
	{
		this(parent,gtkName,duiName,desc,0);
	}
	
	this(WidgetDesc parent, char [] gtkName,char [] duiName, char [] desc,int completed)
	{
		this.parent = parent;
		this.gtkName = gtkName;
		this.duiName = duiName;
		this.desc = desc;
		this.completed = completed;
		if ( parent !is  null )
		{
			parent.addChild(this);
		}
	}	
	
	void addChild(WidgetDesc child)
	{
		if ( tree is null )
		{
			tree = new Tree();
			getTreeItem().setSubtree(tree);
		}
		tree.append(child.getTreeItem());
	}
	
	TreeItem getTreeItem()
	{
		if ( treeItem  is  null)
		{
			treeItem = new TreeItem(duiName);
		}
		return treeItem;
	}
}

class DUITree : HPaned
{
	
	private import dool.String;
	
	Tree tree;
	Label label;
	
	this()
	{
		label = new Label(new String("deprecated\nuse TreeView\ninstead"));
		tree = setupTree();

		ScrolledWindow sw = new ScrolledWindow(null,null);
		sw.addWithViewport(tree);
		add(sw,label);
	}
	
	WidgetDesc [12] h;
	int stack = 0;
	void push(WidgetDesc wd)
	{
		h[stack++]=wd;
	}
	WidgetDesc peek()
	{
		if ( stack == 0)
		{
			return null;
		}
		return h[stack-1];
	}
	WidgetDesc pop()
	{
		if ( stack == 0)
		{
			return null;
		}
		return h[--stack];
	}
	
	Tree setupTree()
	{
		Tree root = new Tree();
		WidgetDesc wd;
		WidgetDesc go = new WidgetDesc("GObject","ObjectG","Parent on the main widget object",90);
		root.append(go.getTreeItem());
		push(go);
		wd = new WidgetDesc(peek(),"GtkObject","DUIObject","The main widget object",100);
		push(wd);
		wd = new WidgetDesc(peek(),"GtkMisc","Misc","Comon for Most widgets",100);
		push(wd);
		wd = new WidgetDesc(peek(),"GtkLabel","Label","Display only widget",100);
		push(wd);
		wd = new WidgetDesc(pop(),"GtkAccelLabel","AccelLabel","A label with a thing",100);
		wd = new WidgetDesc(peek(),"GtkArrow","Arrow","A standard arrow",100);
		wd = new WidgetDesc(pop(),"GtkImage","Image","A image",100);
		wd = new WidgetDesc(peek(),"GtkContainer","Container","Comon for all widgets that can contain other widgets",90);
		push(wd);
		wd = new WidgetDesc(peek(),"GtkBin","Bin","Comon for many widgets");

		wd = new WidgetDesc(peek(),"GtkAlignment","Alignment","");
		wd = new WidgetDesc(peek(),"GtkFrame","Frame","");
		push(wd);
		wd = new WidgetDesc(pop(),"GtkAspectFrame","AspectFrame","");
		wd = new WidgetDesc(peek(),"GtkButton","Button","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkToggleButton","ToggleButton","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkCheckButton","CheckButton","");
		wd = new WidgetDesc(pop(),"GtkRadioButton","RadioButton","");
		wd = new WidgetDesc(pop(),"GtkOptionMenu","OptionMenu","");
		wd = new WidgetDesc(peek(),"GtkItem","Item","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkMenuItem","MenuItem","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkCheckMenuItem","CheckMenuItem","");
		push(wd);
		wd = new WidgetDesc(pop(),"GtkRadioMenuItem","RadioMenuItem","");
		wd = new WidgetDesc(peek(),"GtkImageMenuItem","ImageMenuItem","");
		wd = new WidgetDesc(peek(),"GtkSeparatorMenuItem","SeparatorMenuItem","");
		wd = new WidgetDesc(pop(),"GtkTearoffMenuItem","TearoffMenuItem","");
		wd = new WidgetDesc(peek(),"GtkWindow","Window","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkDialog","Dialog","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkColorSelectionDialog","ColorSelectionDialog","");
		wd = new WidgetDesc(peek(),"GtkFileSelection","FileSelection","");
		wd = new WidgetDesc(peek(),"GtkFontSelectionDialog","FontSelectionDialog","");
		wd = new WidgetDesc(peek(),"GtkInputDialog","InputDialog","");
		wd = new WidgetDesc(pop(),"GtkMessageDialog","MessageDialog","");
		wd = new WidgetDesc(pop(),"GtkPlug","Plug","");
		wd = new WidgetDesc(peek(),"GtkEventBox","EventBox","");
		wd = new WidgetDesc(peek(),"GtkHandleBox","HandleBox","");
		wd = new WidgetDesc(peek(),"GtkScrolledWindow","ScrolledWindow","");
		wd = new WidgetDesc(pop(),"GtkViewport","Viewport","");


		wd = new WidgetDesc(peek(),"GtkBox","Box","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkButtonBox","ButtonBox","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkHButtonBox","HButtonBox","");
		wd = new WidgetDesc(pop(),"GtkVButtonBox","VButtonBox","");
		wd = new WidgetDesc(peek(),"GtkVBox","VBox","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkColorSelection","ColorSelection","");
		wd = new WidgetDesc(peek(),"GtkFontSelection","FontSelection","");
		wd = new WidgetDesc(pop(),"GtkGammaCurve","GammaCurve","");
		wd = new WidgetDesc(pop(),"GtkHBox","HBox","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkCombo","Combo","");
		wd = new WidgetDesc(pop(),"GtkStatusbar","Statusbar","");
		wd = new WidgetDesc(peek(),"GtkFixed","Fixed","");
		wd = new WidgetDesc(peek(),"GtkPaned","Paned","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkHPaned","HPaned","");
		wd = new WidgetDesc(pop(),"GtkVPaned","VPaned","");
		wd = new WidgetDesc(peek(),"GtkLayout","Layout","");
		wd = new WidgetDesc(peek(),"GtkMenuShell","MenuShell","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkMenuBar","MenuBar","");
		wd = new WidgetDesc(pop(),"GtkMenu","Menu","");
		wd = new WidgetDesc(peek(),"GtkNotebook","Notebook","");
		wd = new WidgetDesc(peek(),"GtkSocket","Socket","");
		wd = new WidgetDesc(peek(),"GtkTable","Table","");
		wd = new WidgetDesc(peek(),"GtkTextView","TextView","");
		wd = new WidgetDesc(peek(),"GtkToolbar","Toolbar","");
		wd = new WidgetDesc(pop(),"GtkTreeView","TreeView","");
		wd = new WidgetDesc(peek(),"GtkCalendar","Calendar","");

		wd = new WidgetDesc(peek(),"GtkDrawingArea","DrawingArea","",100);
		push(wd);
		wd = new WidgetDesc(pop(),"GtkCurve","Curve","");
		wd = new WidgetDesc(peek(),"GtkEditable","Editable","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkEntry","Entry","");
		push(wd);
		wd = new WidgetDesc(pop(),"GtkSpinButton","SpinButton","");
		pop();
		wd = new WidgetDesc(peek(),"GtkRuler","Ruler","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkHRuler","HRuler","");
		wd = new WidgetDesc(pop(),"GtkVRuler","VRuler","");
		wd = new WidgetDesc(peek(),"GtkRange","Range","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkScale","Scale","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkHScale","HScale","");
		push(wd);
		wd = new WidgetDesc(pop(),"GtkVScale","VScale","");
		wd = new WidgetDesc(pop(),"GtkScrollbar","Scrollbar","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkHScrollbar","HScrollbar","");
		wd = new WidgetDesc(pop(),"GtkVScrollbar","VScrollbar","");
		pop();
		wd = new WidgetDesc(peek(),"GtkSeparator","Separator","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkHSeparator","HSeparator","");
		wd = new WidgetDesc(pop(),"GtkVSeparator","VSeparator","");
		wd = new WidgetDesc(peek(),"GtkInvisible","Invisible","");
		wd = new WidgetDesc(peek(),"GtkPreview","Preview","");
		wd = new WidgetDesc(pop(),"GtkProgressBar","ProgressBar","");
		wd = new WidgetDesc(peek(),"GtkAdjustment","Adjustment","Values for the range widget (scroolbars, spin buttons...)");
		wd = new WidgetDesc(peek(),"GtkCellRenderer","CellRenderer","");
		push(wd);
		wd = new WidgetDesc(peek(),"GtkCellRendererPixbuf","CellRendererPixbuf","");
		wd = new WidgetDesc(peek(),"GtkCellRendererText","CellRendererText","");
		wd = new WidgetDesc(pop(),"GtkCellRendererToggle","CellRendererToggle","");
		wd = new WidgetDesc(peek(),"GtkItemFactory","ItemFactory","");
		wd = new WidgetDesc(peek(),"GtkTooltips","Tooltips","");
		wd = new WidgetDesc(pop(),"GtkTreeViewColumn","TreeViewColumn","");
		wd = new WidgetDesc("GList","List","a double linked list used to comboBox and stuf");
		root.append(wd.getTreeItem());
		go.getTreeItem().expand();
		return root;
	}
}
