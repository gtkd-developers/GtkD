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

module dui.SizeGroup;

public:
/**
 * GtkSizeGroupMode:
 * @GTK_SIZE_GROUP_NONE: group has no effect  
 * @GTK_SIZE_GROUP_HORIZONTAL: group effects horizontal requisition
 * @GTK_SIZE_GROUP_VERTICAL: group effects vertical requisition
 * @GTK_SIZE_GROUP_BOTH: group effects both horizontal and vertical requisition
 * 
 * The mode of the size group determines the directions in which the size
 * group effects the requested sizes of its component widgets.
 **/
enum SizeGroupMode {
  NONE,
  HORIZONTAL,
  VERTICAL,
  BOTH
};
alias SizeGroupMode GtkSizeGroupMode;


private:

import def.Types;
import def.Constants;

import dui.ObjectG;
import dui.Widget;

struct GtkSizeGroup;

extern(C)
{
	GType gtk_size_group_get_type();
	
	GtkSizeGroup * gtk_size_group_new(GtkSizeGroupMode  mode);
	void gtk_size_group_set_mode(GtkSizeGroup *size_group, GtkSizeGroupMode mode);
	GtkSizeGroupMode gtk_size_group_get_mode(GtkSizeGroup *size_group);
	void gtk_size_group_add_widget(GtkSizeGroup *size_group, GtkWidget *widget);
	void gtk_size_group_remove_widget(GtkSizeGroup *size_group, GtkWidget *widget);

}


public:
class SizeGroup : ObjectG
{

	public:
	
	this(GtkSizeGroup * gtkSizeGroup)
	{
		super(cast(GObject *) gtkSizeGroup);
	}

	GType getType()
	{
		return gtk_size_group_get_type();
	}
	
	this(SizeGroupMode mode)
	{
		this(gtk_size_group_new(mode));
	}
	
	void setMode(SizeGroupMode mode)
	{
		gtk_size_group_set_mode(cast(GtkSizeGroup*)gtk(), mode);
	}
	
	SizeGroupMode getMode()
	{
		return cast(SizeGroupMode) gtk_size_group_get_mode(cast(GtkSizeGroup*)gtk());
	}
	Widget widget;
	void addWidget(Widget widget)
	{
		gtk_size_group_add_widget(cast(GtkSizeGroup*)gtk(), cast(GtkWidget*)widget.gtk());
	}
	
	void removeWidget(Widget widget)
	{
		gtk_size_group_remove_widget(cast(GtkSizeGroup*)gtk(), cast(GtkWidget*)widget.gtk());
	}

	
}
