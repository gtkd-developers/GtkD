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

module test.DUITreeOld;

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

class WidgetDescOld
{
	WidgetDescOld parent;
	char [] gtkName;
	char [] duiName;
	char [] desc;
	Tree tree=null;
	TreeItem treeItem;
	int completed;
	
	this(char [] gtkName,char [] duiName, char [] desc)
	{
		this(cast(WidgetDescOld)null, gtkName, duiName, desc,0);
	}
	
	this(char [] gtkName,char [] duiName, char [] desc,int completed)
	{
		this(cast(WidgetDescOld)null, gtkName, duiName,  desc, completed);
	}
	
	this(WidgetDescOld parent, char [] gtkName,char [] duiName, char [] desc)
	{
		this(parent,gtkName,duiName,desc,0);
	}
	
	this(WidgetDescOld parent, char [] gtkName,char [] duiName, char [] desc,int completed)
	{
		this.parent = parent;
		this.gtkName = gtkName;
		this.duiName = duiName;
		this.desc = desc;
		this.completed = completed;
		if ( parent !== null )
		{
			parent.addChild(this);
		}
	}	
	
	void addChild(WidgetDescOld child)
	{
		if ( tree === null )
		{
			tree = new Tree();
			getTreeItem().setSubtree(tree);
		}
		tree.append(child.getTreeItem());
	}
	
	TreeItem getTreeItem()
	{
		if ( treeItem === null)
		{
			treeItem = new TreeItem(duiName);
		}
		return treeItem;
	}
}

class DUITreeOld : HPaned
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
	
	WidgetDescOld [12] h;
	int stack = 0;
	void push(WidgetDescOld wd)
	{
		h[stack++]=wd;
	}
	WidgetDescOld peek()
	{
		if ( stack == 0)
		{
			return null;
		}
		return h[stack-1];
	}
	WidgetDescOld pop()
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
		WidgetDescOld wd;
		WidgetDescOld go = new WidgetDescOld("GObject","ObjectG","Parent on the main widget object",90);
		root.append(go.getTreeItem());
		push(go);
		wd = new WidgetDescOld(peek(),"GtkObject","DUIObject","The main widget object",100);
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkMisc","Misc","Comon for Most widgets",100);
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkLabel","Label","Display only widget",100);
		push(wd);
		wd = new WidgetDescOld(pop(),"GtkAccelLabel","AccelLabel","A label with a thing",100);
		wd = new WidgetDescOld(peek(),"GtkArrow","Arrow","A standard arrow",100);
		wd = new WidgetDescOld(pop(),"GtkImage","Image","A image",100);
		wd = new WidgetDescOld(peek(),"GtkContainer","Container","Comon for all widgets that can contain other widgets",90);
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkBin","Bin","Comon for many widgets");

		wd = new WidgetDescOld(peek(),"GtkAlignment","Alignment","");
		wd = new WidgetDescOld(peek(),"GtkFrame","Frame","");
		push(wd);
		wd = new WidgetDescOld(pop(),"GtkAspectFrame","AspectFrame","");
		wd = new WidgetDescOld(peek(),"GtkButton","Button","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkToggleButton","ToggleButton","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkCheckButton","CheckButton","");
		wd = new WidgetDescOld(pop(),"GtkRadioButton","RadioButton","");
		wd = new WidgetDescOld(pop(),"GtkOptionMenu","OptionMenu","");
		wd = new WidgetDescOld(peek(),"GtkItem","Item","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkMenuItem","MenuItem","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkCheckMenuItem","CheckMenuItem","");
		push(wd);
		wd = new WidgetDescOld(pop(),"GtkRadioMenuItem","RadioMenuItem","");
		wd = new WidgetDescOld(peek(),"GtkImageMenuItem","ImageMenuItem","");
		wd = new WidgetDescOld(peek(),"GtkSeparatorMenuItem","SeparatorMenuItem","");
		wd = new WidgetDescOld(pop(),"GtkTearoffMenuItem","TearoffMenuItem","");
		wd = new WidgetDescOld(peek(),"GtkWindow","Window","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkDialog","Dialog","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkColorSelectionDialog","ColorSelectionDialog","");
		wd = new WidgetDescOld(peek(),"GtkFileSelection","FileSelection","");
		wd = new WidgetDescOld(peek(),"GtkFontSelectionDialog","FontSelectionDialog","");
		wd = new WidgetDescOld(peek(),"GtkInputDialog","InputDialog","");
		wd = new WidgetDescOld(pop(),"GtkMessageDialog","MessageDialog","");
		wd = new WidgetDescOld(pop(),"GtkPlug","Plug","");
		wd = new WidgetDescOld(peek(),"GtkEventBox","EventBox","");
		wd = new WidgetDescOld(peek(),"GtkHandleBox","HandleBox","");
		wd = new WidgetDescOld(peek(),"GtkScrolledWindow","ScrolledWindow","");
		wd = new WidgetDescOld(pop(),"GtkViewport","Viewport","");


		wd = new WidgetDescOld(peek(),"GtkBox","Box","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkButtonBox","ButtonBox","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkHButtonBox","HButtonBox","");
		wd = new WidgetDescOld(pop(),"GtkVButtonBox","VButtonBox","");
		wd = new WidgetDescOld(peek(),"GtkVBox","VBox","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkColorSelection","ColorSelection","");
		wd = new WidgetDescOld(peek(),"GtkFontSelection","FontSelection","");
		wd = new WidgetDescOld(pop(),"GtkGammaCurve","GammaCurve","");
		wd = new WidgetDescOld(pop(),"GtkHBox","HBox","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkCombo","Combo","");
		wd = new WidgetDescOld(pop(),"GtkStatusbar","Statusbar","");
		wd = new WidgetDescOld(peek(),"GtkFixed","Fixed","");
		wd = new WidgetDescOld(peek(),"GtkPaned","Paned","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkHPaned","HPaned","");
		wd = new WidgetDescOld(pop(),"GtkVPaned","VPaned","");
		wd = new WidgetDescOld(peek(),"GtkLayout","Layout","");
		wd = new WidgetDescOld(peek(),"GtkMenuShell","MenuShell","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkMenuBar","MenuBar","");
		wd = new WidgetDescOld(pop(),"GtkMenu","Menu","");
		wd = new WidgetDescOld(peek(),"GtkNotebook","Notebook","");
		wd = new WidgetDescOld(peek(),"GtkSocket","Socket","");
		wd = new WidgetDescOld(peek(),"GtkTable","Table","");
		wd = new WidgetDescOld(peek(),"GtkTextView","TextView","");
		wd = new WidgetDescOld(peek(),"GtkToolbar","Toolbar","");
		wd = new WidgetDescOld(pop(),"GtkTreeView","TreeView","");
		wd = new WidgetDescOld(peek(),"GtkCalendar","Calendar","");

		wd = new WidgetDescOld(peek(),"GtkDrawingArea","DrawingArea","",100);
		push(wd);
		wd = new WidgetDescOld(pop(),"GtkCurve","Curve","");
		wd = new WidgetDescOld(peek(),"GtkEditable","Editable","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkEntry","Entry","");
		push(wd);
		wd = new WidgetDescOld(pop(),"GtkSpinButton","SpinButton","");
		pop();
		wd = new WidgetDescOld(peek(),"GtkRuler","Ruler","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkHRuler","HRuler","");
		wd = new WidgetDescOld(pop(),"GtkVRuler","VRuler","");
		wd = new WidgetDescOld(peek(),"GtkRange","Range","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkScale","Scale","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkHScale","HScale","");
		push(wd);
		wd = new WidgetDescOld(pop(),"GtkVScale","VScale","");
		wd = new WidgetDescOld(pop(),"GtkScrollbar","Scrollbar","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkHScrollbar","HScrollbar","");
		wd = new WidgetDescOld(pop(),"GtkVScrollbar","VScrollbar","");
		pop();
		wd = new WidgetDescOld(peek(),"GtkSeparator","Separator","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkHSeparator","HSeparator","");
		wd = new WidgetDescOld(pop(),"GtkVSeparator","VSeparator","");
		wd = new WidgetDescOld(peek(),"GtkInvisible","Invisible","");
		wd = new WidgetDescOld(peek(),"GtkPreview","Preview","");
		wd = new WidgetDescOld(pop(),"GtkProgressBar","ProgressBar","");
		wd = new WidgetDescOld(peek(),"GtkAdjustment","Adjustment","Values for the range widget (scroolbars, spin buttons...)");
		wd = new WidgetDescOld(peek(),"GtkCellRenderer","CellRenderer","");
		push(wd);
		wd = new WidgetDescOld(peek(),"GtkCellRendererPixbuf","CellRendererPixbuf","");
		wd = new WidgetDescOld(peek(),"GtkCellRendererText","CellRendererText","");
		wd = new WidgetDescOld(pop(),"GtkCellRendererToggle","CellRendererToggle","");
		wd = new WidgetDescOld(peek(),"GtkItemFactory","ItemFactory","");
		wd = new WidgetDescOld(peek(),"GtkTooltips","Tooltips","");
		wd = new WidgetDescOld(pop(),"GtkTreeViewColumn","TreeViewColumn","");
		wd = new WidgetDescOld("GList","List","a double linked list used to comboBox and stuf");
		root.append(wd.getTreeItem());
		go.getTreeItem().expand();
		return root;
	}
}
