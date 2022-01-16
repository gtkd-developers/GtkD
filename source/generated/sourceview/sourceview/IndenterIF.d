/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module sourceview.IndenterIF;

private import gobject.ObjectG;
private import gtk.TextIter;
private import sourceview.View;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Auto-indentation interface.
 * 
 * By default, [class@View] can auto-indent as you type when
 * [property@View:auto-indent] is enabled. The indentation simply copies the
 * previous lines indentation.
 * 
 * This can be changed by implementing `GtkSourceIndenter` and setting the
 * [property@View:indenter] property.
 * 
 * Implementors of this interface should implement both
 * [vfunc@Indenter.is_trigger] and [vfunc@Indenter.indent].
 * 
 * [vfunc@Indenter.is_trigger] is called upon key-press to
 * determine of the key press should trigger an indentation.  The default
 * implementation of the interface checks to see if the key was
 * [const@Gdk.KEY_Return] or [const@Gdk.KEY_KP_Enter] without %GDK_SHIFT_MASK set.
 * 
 * [vfunc@Indenter.indent] is called after text has been
 * inserted into [class@Buffer] when
 * [vfunc@Indenter.is_trigger] returned %TRUE. The [struct@Gtk.TextIter]
 * is placed directly after the inserted character or characters.
 * 
 * It may be beneficial to move the insertion mark using
 * [method@Gtk.TextBuffer.select_range] depending on how the indenter changes
 * the indentation.
 * 
 * All changes are encapsulated within a single user action so that the
 * user may undo them using standard undo/redo accelerators.
 */
public interface IndenterIF{
	/** Get the main Gtk struct */
	public GtkSourceIndenter* getIndenterStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_source_indenter_get_type();
	}

	/**
	 * This function should be implemented to alter the indentation of text
	 * within the view.
	 *
	 * @view is provided so that the indenter may retrieve settings such as indentation and tab widths.
	 *
	 * @iter is the location where the indentation was requested. This typically
	 * is after having just inserted a newline (\n) character but can be other
	 * situations such as a manually requested indentation or reformatting.
	 *
	 * See [iface@Indenter.is_trigger] for how to trigger indentation on
	 * various characters inserted into the buffer.
	 *
	 * The implementor of this function is expected to keep @iter valid across
	 * calls to the function and should contain the location of the insert mark
	 * after calling this function.
	 *
	 * The default implementation for this virtual function will copy the
	 * indentation of the previous line.
	 *
	 * Params:
	 *     view = a #GtkSourceView
	 *     iter = the location of the indentation request
	 */
	public void indent(View view, ref TextIter iter);

	/**
	 * This function is used to determine if a key pressed should cause the
	 * indenter to automatically indent.
	 *
	 * The default implementation of this virtual method will check to see
	 * if @keyval is [const@Gdk.KEY_Return] or [const@Gdk.KEY_KP_Enter] and @state does
	 * not have %GDK_SHIFT_MASK set. This is to allow the user to avoid
	 * indentation when Shift+Return is pressed. Other indenters may want
	 * to copy this behavior to provide a consistent experience to users.
	 *
	 * Params:
	 *     view = a #GtkSourceView
	 *     location = the location where @ch is to be inserted
	 *     state = modifier state for the insertion
	 *     keyval = the keyval pressed such as [const@Gdk.KEY_Return]
	 *
	 * Returns: %TRUE if indentation should be automatically triggered;
	 *     otherwise %FALSE and no indentation will be performed.
	 */
	public bool isTrigger(View view, TextIter location, GdkModifierType state, uint keyval);
}
