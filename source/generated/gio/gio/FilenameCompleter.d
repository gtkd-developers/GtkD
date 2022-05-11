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


module gio.FilenameCompleter;

private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * Completes partial file and directory names given a partial string by
 * looking in the file system for clues. Can return a list of possible
 * completion strings for widget implementations.
 */
public class FilenameCompleter : ObjectG
{
	/** the main Gtk struct */
	protected GFilenameCompleter* gFilenameCompleter;

	/** Get the main Gtk struct */
	public GFilenameCompleter* getFilenameCompleterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gFilenameCompleter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gFilenameCompleter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GFilenameCompleter* gFilenameCompleter, bool ownedRef = false)
	{
		this.gFilenameCompleter = gFilenameCompleter;
		super(cast(GObject*)gFilenameCompleter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_filename_completer_get_type();
	}

	/**
	 * Creates a new filename completer.
	 *
	 * Returns: a #GFilenameCompleter.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_filename_completer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GFilenameCompleter*) __p, true);
	}

	/**
	 * Obtains a completion for @initial_text from @completer.
	 *
	 * Params:
	 *     initialText = text to be completed.
	 *
	 * Returns: a completed string, or %NULL if no
	 *     completion exists. This string is not owned by GIO, so remember to g_free()
	 *     it when finished.
	 */
	public string getCompletionSuffix(string initialText)
	{
		auto retStr = g_filename_completer_get_completion_suffix(gFilenameCompleter, Str.toStringz(initialText));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets an array of completion strings for a given initial text.
	 *
	 * Params:
	 *     initialText = text to be completed.
	 *
	 * Returns: array of strings with possible completions for @initial_text.
	 *     This array must be freed by g_strfreev() when finished.
	 */
	public string[] getCompletions(string initialText)
	{
		auto retStr = g_filename_completer_get_completions(gFilenameCompleter, Str.toStringz(initialText));

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * If @dirs_only is %TRUE, @completer will only
	 * complete directory names, and not file names.
	 *
	 * Params:
	 *     dirsOnly = a #gboolean.
	 */
	public void setDirsOnly(bool dirsOnly)
	{
		g_filename_completer_set_dirs_only(gFilenameCompleter, dirsOnly);
	}

	/**
	 * Emitted when the file name completion information comes available.
	 */
	gulong addOnGotCompletionData(void delegate(FilenameCompleter) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "got-completion-data", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
