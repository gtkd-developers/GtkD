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


module dui.ComboBox;

//version(GTK240){

private import dui.Bin;

private import def.Types;
private import def.Constants;

private import dui.Widget;
private import dui.TreeModel;
private import dui.TreeIter;

protected:
extern (C)
{
	struct GtkComboBox;
	GtkWidget*  gtk_combo_box_new_text();

	GtkWidget*  gtk_combo_box_new();
	GtkWidget*  gtk_combo_box_new_with_model(GtkTreeModel *model);

	void        gtk_combo_box_append_text(GtkComboBox *combo_box, gchar *text);
	void        gtk_combo_box_insert_text(GtkComboBox *combo_box,gint position, gchar *text);
	void        gtk_combo_box_prepend_text(GtkComboBox *combo_box, gchar *text);
	void        gtk_combo_box_remove_text(GtkComboBox *combo_box,gint position);

	void        gtk_combo_box_set_wrap_width(GtkComboBox *combo_box,gint width);
	void        gtk_combo_box_set_row_span_column(GtkComboBox *combo_box,gint row_span);
	void        gtk_combo_box_set_column_span_column(GtkComboBox *combo_box,gint column_span);
	gint        gtk_combo_box_get_active(GtkComboBox *combo_box);
	void        gtk_combo_box_set_active(GtkComboBox *combo_box,gint index);
	gboolean    gtk_combo_box_get_active_iter(GtkComboBox *combo_box,GtkTreeIter *iter);
	void        gtk_combo_box_set_active_iter(GtkComboBox *combo_box,GtkTreeIter *iter);
	GtkTreeModel* gtk_combo_box_get_model(GtkComboBox *combo_box);
	void        gtk_combo_box_set_model(GtkComboBox *combo_box,GtkTreeModel *model);
	void        gtk_combo_box_popup(GtkComboBox *combo_box);
	void        gtk_combo_box_popdown(GtkComboBox *combo_box);
}



/**
 * A combo box.
 */
public:
class ComboBox : Bin
{
	
	//protected GtkComboBox* gtkCBB;
	
	protected TreeModel treeModel;
	
    protected:
	
	alias EventHandler0!(ComboBox) OnChanged;

	OnChanged onChanged;

	/**
	 * Create a ComboBox from a Gtk combo box
	 * @param *gtkWidget 
	 * @return 
	 */
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
        getModel();
    }

	public:
	
	this()
	{
		this(gtk_combo_box_new());
        getModel();
	}
	
	this(TreeModel treeModel)
	{
		this(gtk_combo_box_new_with_model(treeModel.model()));
		this.treeModel = treeModel;
	}

	/**
	 * addOnChanged
	 * @param dlg the method to add to the event
	 */
	public void addOnChanged(void delegate() dlg)
	{
		if ( onChanged === null )
		{
			onChanged = new OnChanged(this, EventMask.NONE, new String("changed"));
		}
		onChanged += dlg;
	}
	

	protected GtkComboBox* getCBB()
	{
		return cast(GtkComboBox*)gtkW();
	}
	
	public:
	
	void setWrapWidth(int width)
	{
		gtk_combo_box_set_wrap_width(getCBB(), width);
	}
	
	void  setRowSpanColumn(int rowSpan)
	{
		gtk_combo_box_set_row_span_column(getCBB(), rowSpan);
	}
	
	void  setColumnSpanColumn(int columnSpan)
	{
		gtk_combo_box_set_column_span_column(getCBB(), columnSpan);
	}
	gint  getActive()
	{
		return gtk_combo_box_get_active(getCBB());
	}
	
	void setActive(int index)
	{
		gtk_combo_box_set_active(getCBB(), index);
	}
	
	bit getActiveIter(TreeIter iter)
	{
		iter.setModel(getModel());
		bit ok = gtk_combo_box_get_active_iter(getCBB(),iter.gtkI()) == 0 ? false : true;
		return ok;
	}
	
	void setActiveIter(TreeIter iter)
	{
		gtk_combo_box_set_active_iter(getCBB(),iter.gtkI());
	}
	
	TreeModel getModel()
	{
		if ( treeModel === null )
		{
			treeModel = new TreeModel(gtk_combo_box_get_model(getCBB()));
		}
		return treeModel;
	}
	
	void setModel(TreeModel treeModel)
	{
		this.treeModel = treeModel;
		gtk_combo_box_set_model(getCBB(),treeModel.model());
	}
	
	void boxPopup(bit popup)
	{
		if ( popup )
		{
			boxPopup();
		}
		else
		{
			boxPopdown();
		}
	}
	
	void boxPopup()
	{
		gtk_combo_box_popup(getCBB());
	}
	void boxPopdown()
	{
		gtk_combo_box_popdown(getCBB());
	}

	
}
//}