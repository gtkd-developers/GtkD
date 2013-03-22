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

/*
 * Conversion parameters:
 * inFile  = GFilenameCompleter.html
 * outPack = gio
 * outFile = FilenameCompleter
 * strct   = GFilenameCompleter
 * realStrct=
 * ctorStrct=
 * clss    = FilenameCompleter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_filename_completer_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.FilenameCompleter;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;



private import gobject.ObjectG;

/**
 * Completes partial file and directory names given a partial string by
 * looking in the file system for clues. Can return a list of possible
 * completion strings for widget implementations.
 */
public class FilenameCompleter : ObjectG
{
	
	/** the main Gtk struct */
	protected GFilenameCompleter* gFilenameCompleter;
	
	
	public GFilenameCompleter* getFilenameCompleterStruct()
	{
		return gFilenameCompleter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gFilenameCompleter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GFilenameCompleter* gFilenameCompleter)
	{
		super(cast(GObject*)gFilenameCompleter);
		this.gFilenameCompleter = gFilenameCompleter;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gFilenameCompleter = cast(GFilenameCompleter*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(FilenameCompleter)[] onGotCompletionDataListeners;
	/**
	 * Emitted when the file name completion information comes available.
	 */
	void addOnGotCompletionData(void delegate(FilenameCompleter) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("got-completion-data" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"got-completion-data",
			cast(GCallback)&callBackGotCompletionData,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["got-completion-data"] = 1;
		}
		onGotCompletionDataListeners ~= dlg;
	}
	extern(C) static void callBackGotCompletionData(GFilenameCompleter* arg0Struct, FilenameCompleter _filenameCompleter)
	{
		foreach ( void delegate(FilenameCompleter) dlg ; _filenameCompleter.onGotCompletionDataListeners )
		{
			dlg(_filenameCompleter);
		}
	}
	
	
	/**
	 * Creates a new filename completer.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GFilenameCompleter * g_filename_completer_new (void);
		auto p = g_filename_completer_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_filename_completer_new()");
		}
		this(cast(GFilenameCompleter*) p);
	}
	
	/**
	 * Obtains a completion for initial_text from completer.
	 * Params:
	 * initialText = text to be completed.
	 * Returns: a completed string, or NULL if no completion exists. This string is not owned by GIO, so remember to g_free() it when finished.
	 */
	public string getCompletionSuffix(string initialText)
	{
		// char * g_filename_completer_get_completion_suffix  (GFilenameCompleter *completer,  const char *initial_text);
		return Str.toString(g_filename_completer_get_completion_suffix(gFilenameCompleter, Str.toStringz(initialText)));
	}
	
	/**
	 * Gets an array of completion strings for a given initial text.
	 * Params:
	 * initialText = text to be completed.
	 * Returns: array of strings with possible completions for initial_text. This array must be freed by g_strfreev() when finished. [array zero-terminated=1][transfer full]
	 */
	public string[] getCompletions(string initialText)
	{
		// char ** g_filename_completer_get_completions  (GFilenameCompleter *completer,  const char *initial_text);
		return Str.toStringArray(g_filename_completer_get_completions(gFilenameCompleter, Str.toStringz(initialText)));
	}
	
	/**
	 * If dirs_only is TRUE, completer will only
	 * complete directory names, and not file names.
	 * Params:
	 * dirsOnly = a gboolean.
	 * Signal Details
	 * The "got-completion-data" signal
	 * void user_function (GFilenameCompleter *arg0,
	 *  gpointer user_data) : Run Last
	 * Emitted when the file name completion information comes available.
	 */
	public void setDirsOnly(int dirsOnly)
	{
		// void g_filename_completer_set_dirs_only (GFilenameCompleter *completer,  gboolean dirs_only);
		g_filename_completer_set_dirs_only(gFilenameCompleter, dirsOnly);
	}
}
