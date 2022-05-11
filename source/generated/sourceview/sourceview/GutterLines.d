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


module sourceview.GutterLines;

private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.TextBuffer;
private import gtk.TextIter;
private import gtk.TextView;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Collected information about visible lines.
 * 
 * The `GtkSourceGutterLines` object is used to collect information about
 * visible lines.
 * 
 * Use this from your [signal@GutterRenderer::query-data] to collect the
 * necessary information on visible lines. Doing so reduces the number of
 * passes through the text btree allowing GtkSourceView to reach more
 * frames-per-second while performing kinetic scrolling.
 */
public class GutterLines : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceGutterLines* gtkSourceGutterLines;

	/** Get the main Gtk struct */
	public GtkSourceGutterLines* getGutterLinesStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceGutterLines;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceGutterLines;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceGutterLines* gtkSourceGutterLines, bool ownedRef = false)
	{
		this.gtkSourceGutterLines = gtkSourceGutterLines;
		super(cast(GObject*)gtkSourceGutterLines, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_gutter_lines_get_type();
	}

	/**
	 * Adds the class @name to @line.
	 *
	 * @name will be converted to a [alias@GLib.Quark] as part of this process. A
	 * faster version of this function is available via
	 * [method@GutterLines.add_qclass] for situations where the [alias@GLib.Quark] is
	 * known ahead of time.
	 *
	 * Params:
	 *     line = a line number starting from zero
	 *     name = a class name
	 */
	public void addClass(uint line, string name)
	{
		gtk_source_gutter_lines_add_class(gtkSourceGutterLines, line, Str.toStringz(name));
	}

	/**
	 * Adds the class denoted by @qname to @line.
	 *
	 * You may check if a line has @qname by calling
	 * [method@GutterLines.has_qclass].
	 *
	 * You can remove @qname by calling
	 * [method@GutterLines.remove_qclass].
	 *
	 * Params:
	 *     line = a line number starting from zero
	 *     qname = a class name as a #GQuark
	 */
	public void addQclass(uint line, GQuark qname)
	{
		gtk_source_gutter_lines_add_qclass(gtkSourceGutterLines, line, qname);
	}

	/**
	 * Gets the [class@Gtk.TextBuffer] that the `GtkSourceGutterLines` represents.
	 *
	 * Returns: a #GtkTextBuffer
	 */
	public TextBuffer getBuffer()
	{
		auto __p = gtk_source_gutter_lines_get_buffer(gtkSourceGutterLines);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextBuffer)(cast(GtkTextBuffer*) __p);
	}

	/**
	 * Gets the line number (starting from 0) for the first line that is
	 * user visible.
	 *
	 * Returns: a line number starting from 0
	 */
	public uint getFirst()
	{
		return gtk_source_gutter_lines_get_first(gtkSourceGutterLines);
	}

	/**
	 * Gets a #GtkTextIter for the current buffer at @line
	 *
	 * Params:
	 *     iter = a location for a #GtkTextIter
	 *     line = the line number
	 */
	public void getIterAtLine(out TextIter iter, uint line)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		gtk_source_gutter_lines_get_iter_at_line(gtkSourceGutterLines, outiter, line);

		iter = ObjectG.getDObject!(TextIter)(outiter, true);
	}

	/**
	 * Gets the line number (starting from 0) for the last line that is
	 * user visible.
	 *
	 * Returns: a line number starting from 0
	 */
	public uint getLast()
	{
		return gtk_source_gutter_lines_get_last(gtkSourceGutterLines);
	}

	/**
	 * Gets the Y range for a line based on @mode.
	 *
	 * The value for @y is relative to the renderers widget coordinates.
	 *
	 * Params:
	 *     line = a line number starting from zero
	 *     mode = a #GtkSourceGutterRendererAlignmentMode
	 *     y = a location for the Y position in widget coordinates
	 *     height = the line height based on @mode
	 */
	public void getLineYrange(uint line, GtkSourceGutterRendererAlignmentMode mode, out int y, out int height)
	{
		gtk_source_gutter_lines_get_line_yrange(gtkSourceGutterLines, line, mode, &y, &height);
	}

	/**
	 * Gets the [class@Gtk.TextView] that the `GtkSourceGutterLines` represents.
	 *
	 * Returns: a #GtkTextView
	 */
	public TextView getView()
	{
		auto __p = gtk_source_gutter_lines_get_view(gtkSourceGutterLines);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextView)(cast(GtkTextView*) __p);
	}

	/**
	 * Checks to see if [method@GutterLines.add_class] was called with
	 * the @name for @line.
	 *
	 * A faster version of this function is provided via
	 * [method@GutterLines.has_qclass] for situations where the quark
	 * is known ahead of time.
	 *
	 * Params:
	 *     line = a line number starting from zero
	 *     name = a class name that may be converted, to a #GQuark
	 *
	 * Returns: %TRUE if @line contains @name
	 */
	public bool hasClass(uint line, string name)
	{
		return gtk_source_gutter_lines_has_class(gtkSourceGutterLines, line, Str.toStringz(name)) != 0;
	}

	/**
	 * Checks to see if [method@GutterLines.add_qclass] was called with
	 * the quark denoted by @qname for @line.
	 *
	 * Params:
	 *     line = a line number starting from zero
	 *     qname = a #GQuark containing the class name
	 *
	 * Returns: %TRUE if @line contains @qname
	 */
	public bool hasQclass(uint line, GQuark qname)
	{
		return gtk_source_gutter_lines_has_qclass(gtkSourceGutterLines, line, qname) != 0;
	}

	/**
	 * Checks to see if @line contains the insertion cursor.
	 *
	 * Params:
	 *     line = a line number starting from zero
	 *
	 * Returns: %TRUE if the insertion cursor is on @line
	 */
	public bool isCursor(uint line)
	{
		return gtk_source_gutter_lines_is_cursor(gtkSourceGutterLines, line) != 0;
	}

	/**
	 * Checks to see if @line is marked as prelit. Generally, this means
	 * the mouse pointer is over the line within the gutter.
	 *
	 * Params:
	 *     line = a line number starting from zero
	 *
	 * Returns: %TRUE if the line is prelit
	 */
	public bool isPrelit(uint line)
	{
		return gtk_source_gutter_lines_is_prelit(gtkSourceGutterLines, line) != 0;
	}

	/**
	 * Checks to see if the view had a selection and if that selection overlaps
	 * @line in some way.
	 *
	 * Params:
	 *     line = a line number starting from zero
	 *
	 * Returns: %TRUE if the line contains a selection
	 */
	public bool isSelected(uint line)
	{
		return gtk_source_gutter_lines_is_selected(gtkSourceGutterLines, line) != 0;
	}

	/**
	 * Removes the class matching @name from @line.
	 *
	 * A faster version of this function is available via
	 * [method@GutterLines.remove_qclass] for situations where the
	 * #GQuark is known ahead of time.
	 *
	 * Params:
	 *     line = a line number starting from zero
	 *     name = a class name
	 */
	public void removeClass(uint line, string name)
	{
		gtk_source_gutter_lines_remove_class(gtkSourceGutterLines, line, Str.toStringz(name));
	}

	/**
	 * Reverses a call to [method@GutterLines.add_qclass] by removing
	 * the [alias@GLib.Quark] matching @qname.
	 *
	 * Params:
	 *     line = a line number starting from zero
	 *     qname = a #GQuark to remove from @line
	 */
	public void removeQclass(uint line, GQuark qname)
	{
		gtk_source_gutter_lines_remove_qclass(gtkSourceGutterLines, line, qname);
	}
}
