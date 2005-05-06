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

module dui.Selection;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.Widget;
private import ddi.Display;
private import lib.gtk;

/**
 * Functions for handling inter-process communication via selections
 */

// moved out ----------------------
	private import dool.String;
// --------------------------------

public:
class Selection
{
	GtkSelectionData* gtkSelectionData;

	/**
	 * Gets the GtkSelectionData structure
	 */
	GtkSelectionData* gtkS()
	{
		return gtkSelectionData;
	}
	
	public:
	/**
	 * Creates a new Selections from a GtkClicpboard
	 */
	this(GtkSelectionData * gtkSelectionData)
	{
		this.gtkSelectionData = gtkSelectionData;
	}

	/**
	 * Gets this class types
	 */
	GType getType()
	{
		return gtk_selection_data_get_type();
	}
	
	/**
	 * Creates a new Selection for a Selection
	 * @param selection the selection to copy
	 */
	this(Selection selection)
	{
		this(gtk_selection_data_copy(selection.gtkS()));
	}
	
	/**
	 * frees the GTK structure and desctructs this Selection
	 */
	~this()
	{
		free();
	}
	
	/**
	 * free
	 */
	void free()
	{
		gtk_selection_data_free(gtkS());
	}

	/**
	 * ownerSet
	 * @param widget
	 * @param selection
	 * @param time_
	 * @return 
	 */
	static bit ownerSet(Widget widget,GdkAtom selection, guint32 time_)
	{
		return gtk_selection_owner_set(widget.gtkW(), selection, time_) == 0 ? false : true;
	}
	
	/**
	 * ownerSetForDisplay
	 * @param display
	 * @param widget
	 * @param selection
	 * @param time_
	 * @return 
	 */
	static bit ownerSetForDisplay(Display display, Widget widget,GdkAtom selection, guint32 time_)
	{
		return gtk_selection_owner_set_for_display(display.gdkD(),widget.gtkW(), selection, time_) == 0 ? false : true;
	}
	
	/**
	 * addTarget
	 * @param widget
	 * @param selection
	 * @param target
	 * @param info
	 */
	static void addTarget(Widget widget, GdkAtom selection, GdkAtom target, guint info)
	{
		gtk_selection_add_target(widget.gtkW(), selection, target, info);
	}
	
	/**
	 * addTargets
	 * @param widget
	 * @param selection
	 * @param targets
	 * @param ntargets
	 */
	static void addTargets(Widget widget, GdkAtom selection, GtkTargetEntry * targets, guint ntargets)
	{
		gtk_selection_add_targets(widget.gtkW(), selection, targets, ntargets);
	}

	/**
	 * clearTargets
	 * @param widget
	 * @param selection
	 */
	static void clearTargets(Widget widget, GdkAtom selection)
	{
		gtk_selection_clear_targets(widget.gtkW(), selection);
	}
	
	/**
	 * convert
	 * @param widget
	 * @param selection
	 * @param target
	 * @param time_
	 * @return 
	 */
	static bit convert(Widget widget, GdkAtom selection, GdkAtom target, guint32 time_)
	{
		return gtk_selection_convert(widget.gtkW(), selection, target, time_) == 0 ? false : true;
	}
	
	/**
	 * dataSet
	 * @param type
	 * @param format
	 * @param data
	 */
	void dataSet(GdkAtom type, gint format, String data)
	{
		gtk_selection_data_set(gtkS(), type, format, data.toStringz(), data.length);
	}
	
	/**
	 * setText
	 * @param str
	 * @return 
	 */
	bit setText(String str)
	{
		return gtk_selection_data_set_text(gtkS(), str.toStringz(), str.length) == 0 ? false : true;
	}
	
	/**
	 * getText
	 * @return 
	 */
	String getText()
	{
		return String.newz(gtk_selection_data_get_text(gtkS()));
	}
	
	/**
	 * getTargets
	 * @param targets
	 * @param n_atoms
	 * @return 
	 */
	bit getTargets(GdkAtom * *targets, gint * n_atoms)
	{
		return gtk_selection_data_get_targets(gtkS(), targets, n_atoms) == 0 ? false : true;
	}
	
	/**
	 * getTargetsIncludeText
	 * @return 
	 */
	bit getTargetsIncludeText()
	{
		return gtk_selection_data_targets_include_text(gtkS()) == 0 ? false : true;
	}
	
	/*
	// Called when a widget is destroyed
	void gtk_selection_remove_all (GtkWidget * widget);
	*/
	
}
