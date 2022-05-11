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


module sourceview.c.types;

public import gdk.c.types;
public import gdkpixbuf.c.types;
public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import gtk.c.types;
public import pango.c.types;


public enum GtkSourceBackgroundPatternType
{
	/**
	 * no pattern
	 */
	NONE = 0,
	/**
	 * grid pattern
	 */
	GRID = 1,
}
alias GtkSourceBackgroundPatternType BackgroundPatternType;

public enum GtkSourceBracketMatchType
{
	/**
	 * there is no bracket to match.
	 */
	NONE = 0,
	/**
	 * matching a bracket
	 * failed because the maximum range was reached.
	 */
	OUT_OF_RANGE = 1,
	/**
	 * a matching bracket was not found.
	 */
	NOT_FOUND = 2,
	/**
	 * a matching bracket was found.
	 */
	FOUND = 3,
}
alias GtkSourceBracketMatchType BracketMatchType;

public enum GtkSourceChangeCaseType
{
	/**
	 * change case to lowercase.
	 */
	LOWER = 0,
	/**
	 * change case to uppercase.
	 */
	UPPER = 1,
	/**
	 * toggle case of each character.
	 */
	TOGGLE = 2,
	/**
	 * capitalize each word.
	 */
	TITLE = 3,
}
alias GtkSourceChangeCaseType ChangeCaseType;

public enum GtkSourceCompletionActivation
{
	NONE = 0,
	INTERACTIVE = 1,
	USER_REQUESTED = 2,
}
alias GtkSourceCompletionActivation CompletionActivation;

public enum GtkSourceCompletionColumn
{
	ICON = 0,
	BEFORE = 1,
	TYPED_TEXT = 2,
	AFTER = 3,
	COMMENT = 4,
	DETAILS = 5,
}
alias GtkSourceCompletionColumn CompletionColumn;

public enum GtkSourceCompressionType
{
	/**
	 * plain text.
	 */
	NONE = 0,
	/**
	 * gzip compression.
	 */
	GZIP = 1,
}
alias GtkSourceCompressionType CompressionType;

/**
 * An error code used with the %GTK_SOURCE_FILE_LOADER_ERROR domain.
 */
public enum GtkSourceFileLoaderError
{
	/**
	 * The file is too big.
	 */
	TOO_BIG = 0,
	/**
	 * It is not
	 * possible to detect the encoding automatically.
	 */
	ENCODING_AUTO_DETECTION_FAILED = 1,
	/**
	 * There was an encoding
	 * conversion error and it was needed to use a fallback character.
	 */
	CONVERSION_FALLBACK = 2,
}
alias GtkSourceFileLoaderError FileLoaderError;

/**
 * An error code used with the %GTK_SOURCE_FILE_SAVER_ERROR domain.
 */
public enum GtkSourceFileSaverError
{
	/**
	 * The buffer contains invalid
	 * characters.
	 */
	INVALID_CHARS = 0,
	/**
	 * The file is externally
	 * modified.
	 */
	EXTERNALLY_MODIFIED = 1,
}
alias GtkSourceFileSaverError FileSaverError;

/**
 * Flags to define the behavior of a [flags@FileSaverFlags].
 */
public enum GtkSourceFileSaverFlags
{
	/**
	 * No flags.
	 */
	NONE = 0,
	/**
	 * Ignore invalid characters.
	 */
	IGNORE_INVALID_CHARS = 1,
	/**
	 * Save file despite external modifications.
	 */
	IGNORE_MODIFICATION_TIME = 2,
	/**
	 * Create a backup before saving the file.
	 */
	CREATE_BACKUP = 4,
}
alias GtkSourceFileSaverFlags FileSaverFlags;

/**
 * The alignment mode of the renderer, when a cell spans multiple lines (due to
 * text wrapping).
 */
public enum GtkSourceGutterRendererAlignmentMode
{
	/**
	 * The full cell.
	 */
	CELL = 0,
	/**
	 * The first line.
	 */
	FIRST = 1,
	/**
	 * The last line.
	 */
	LAST = 2,
}
alias GtkSourceGutterRendererAlignmentMode GutterRendererAlignmentMode;

public enum GtkSourceNewlineType
{
	/**
	 * line feed, used on UNIX.
	 */
	LF = 0,
	/**
	 * carriage return, used on Mac.
	 */
	CR = 1,
	/**
	 * carriage return followed by a line feed, used
	 * on Windows.
	 */
	CR_LF = 2,
}
alias GtkSourceNewlineType NewlineType;

public enum GtkSourceSmartHomeEndType
{
	/**
	 * smart-home-end disabled.
	 */
	DISABLED = 0,
	/**
	 * move to the first/last
	 * non-whitespace character on the first press of the HOME/END keys and
	 * to the beginning/end of the line on the second press.
	 */
	BEFORE = 1,
	/**
	 * move to the beginning/end of the
	 * line on the first press of the HOME/END keys and to the first/last
	 * non-whitespace character on the second press.
	 */
	AFTER = 2,
	/**
	 * always move to the first/last
	 * non-whitespace character when the HOME/END keys are pressed.
	 */
	ALWAYS = 3,
}
alias GtkSourceSmartHomeEndType SmartHomeEndType;

public enum GtkSourceSortFlags
{
	/**
	 * no flags specified
	 */
	NONE = 0,
	/**
	 * case sensitive sort
	 */
	CASE_SENSITIVE = 1,
	/**
	 * sort in reverse order
	 */
	REVERSE_ORDER = 2,
	/**
	 * remove duplicates
	 */
	REMOVE_DUPLICATES = 4,
}
alias GtkSourceSortFlags SortFlags;

/**
 * #GtkSourceSpaceLocationFlags contains flags for white space locations.
 *
 * If a line contains only white spaces (no text), the white spaces match both
 * %GTK_SOURCE_SPACE_LOCATION_LEADING and %GTK_SOURCE_SPACE_LOCATION_TRAILING.
 */
public enum GtkSourceSpaceLocationFlags
{
	/**
	 * No flags.
	 */
	NONE = 0,
	/**
	 * Leading white spaces on a line, i.e. the
	 * indentation.
	 */
	LEADING = 1,
	/**
	 * White spaces inside a line of text.
	 */
	INSIDE_TEXT = 2,
	/**
	 * Trailing white spaces on a line.
	 */
	TRAILING = 4,
	/**
	 * White spaces anywhere.
	 */
	ALL = 7,
}
alias GtkSourceSpaceLocationFlags SpaceLocationFlags;

/**
 * #GtkSourceSpaceTypeFlags contains flags for white space types.
 */
public enum GtkSourceSpaceTypeFlags
{
	/**
	 * No flags.
	 */
	NONE = 0,
	/**
	 * Space character.
	 */
	SPACE = 1,
	/**
	 * Tab character.
	 */
	TAB = 2,
	/**
	 * Line break character. If the
	 * #GtkSourceBuffer:implicit-trailing-newline property is %TRUE,
	 * #GtkSourceSpaceDrawer also draws a line break at the end of the buffer.
	 */
	NEWLINE = 4,
	/**
	 * Non-breaking space character.
	 */
	NBSP = 8,
	/**
	 * All white spaces.
	 */
	ALL = 15,
}
alias GtkSourceSpaceTypeFlags SpaceTypeFlags;

public enum GtkSourceViewGutterPosition
{
	/**
	 * the gutter position of the lines
	 * renderer
	 */
	LINES = -30,
	/**
	 * the gutter position of the marks
	 * renderer
	 */
	MARKS = -20,
}
alias GtkSourceViewGutterPosition ViewGutterPosition;

struct GtkSourceBuffer
{
	GtkTextBuffer parentInstance;
}

struct GtkSourceBufferClass
{
	GtkTextBufferClass parentClass;
	/** */
	extern(C) void function(GtkSourceBuffer* buffer, GtkTextIter* iter, GtkSourceBracketMatchType state) bracketMatched;
	void*[20] Reserved;
}

struct GtkSourceCompletion;

struct GtkSourceCompletionCell;

struct GtkSourceCompletionCellClass
{
	GtkWidgetClass parentClass;
}

struct GtkSourceCompletionClass
{
	GObjectClass parentClass;
}

struct GtkSourceCompletionContext;

struct GtkSourceCompletionContextClass
{
	GObjectClass parentClass;
}

struct GtkSourceCompletionProposal;

struct GtkSourceCompletionProposalInterface
{
	GTypeInterface parentIface;
}

struct GtkSourceCompletionProvider;

struct GtkSourceCompletionProviderInterface
{
	GTypeInterface parentIface;
	/**
	 *
	 * Params:
	 *     self = a #GtkSourceCompletionProvider
	 * Returns: a title for the provider or %NULL
	 */
	extern(C) char* function(GtkSourceCompletionProvider* self) getTitle;
	/** */
	extern(C) int function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context) getPriority;
	/** */
	extern(C) int function(GtkSourceCompletionProvider* self, GtkTextIter* iter, dchar ch) isTrigger;
	/** */
	extern(C) int function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal, uint keyval, GdkModifierType state) keyActivates;
	/** */
	extern(C) GListModel* function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GError** err) populate;
	/** */
	extern(C) void function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) populateAsync;
	/**
	 *
	 * Params:
	 *     self = a #GtkSourceCompletionProvider
	 *     result = a #GAsyncResult provided to callback
	 * Returns: a #GListModel of #GtkSourceCompletionProposal
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GListModel* function(GtkSourceCompletionProvider* self, GAsyncResult* result, GError** err) populateFinish;
	/** */
	extern(C) void function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GListModel* model) refilter;
	/** */
	extern(C) void function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal, GtkSourceCompletionCell* cell) display;
	/** */
	extern(C) void function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal) activate;
	/**
	 *
	 * Params:
	 *     self = a #GtkSourceCompletionProvider
	 *     context = a #GtkSourceCompletionContext
	 *     proposal = a #GtkSourceCompletionProposal
	 * Returns: a #GPtrArray of #GtkSourceCompletionProposal or %NULL.
	 */
	extern(C) GPtrArray* function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal) listAlternates;
}

struct GtkSourceCompletionSnippets
{
	GObject parentInstance;
}

struct GtkSourceCompletionSnippetsClass
{
	GObjectClass parentClass;
	void*[10] Reserved;
}

struct GtkSourceCompletionWords
{
	GObject parentInstance;
}

struct GtkSourceCompletionWordsClass
{
	GObjectClass parentClass;
	void*[10] Reserved;
}

struct GtkSourceEncoding;

struct GtkSourceFile
{
	GObject parentInstance;
}

struct GtkSourceFileClass
{
	GObjectClass parentClass;
	void*[10] Reserved;
}

struct GtkSourceFileLoader;

struct GtkSourceFileLoaderClass
{
	GObjectClass parentClass;
}

struct GtkSourceFileSaver;

struct GtkSourceFileSaverClass
{
	GObjectClass parentClass;
}

struct GtkSourceGutter;

struct GtkSourceGutterClass
{
	GtkWidgetClass parentClass;
}

struct GtkSourceGutterLines;

struct GtkSourceGutterLinesClass
{
	GObjectClass parentClass;
}

struct GtkSourceGutterRenderer
{
	GtkWidget parentInstance;
}

struct GtkSourceGutterRendererClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, GtkSourceGutterLines* lines, uint line) queryData;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, GtkSourceGutterLines* lines) begin;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, GtkSnapshot* snapshot, GtkSourceGutterLines* lines, uint line) snapshotLine;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer) end;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, GtkSourceView* oldView) changeView;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, GtkSourceBuffer* oldBuffer) changeBuffer;
	/**
	 *
	 * Params:
	 *     renderer = a #GtkSourceGutterRenderer
	 *     iter = a #GtkTextIter at the start of the line to be activated
	 *     area = a #GdkRectangle of the cell area to be activated
	 * Returns: %TRUE if the renderer can be activated, %FALSE otherwise
	 */
	extern(C) int function(GtkSourceGutterRenderer* renderer, GtkTextIter* iter, GdkRectangle* area) queryActivatable;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, GtkTextIter* iter, GdkRectangle* area, uint button, GdkModifierType state, int nPresses) activate;
	void*[20] Reserved;
}

struct GtkSourceGutterRendererPixbuf
{
	GtkSourceGutterRenderer parentInstance;
}

struct GtkSourceGutterRendererPixbufClass
{
	GtkSourceGutterRendererClass parentClass;
	void*[10] Reserved;
}

struct GtkSourceGutterRendererText
{
	GtkSourceGutterRenderer parentInstance;
}

struct GtkSourceGutterRendererTextClass
{
	GtkSourceGutterRendererClass parentClass;
	void*[10] Reserved;
}

struct GtkSourceHover;

struct GtkSourceHoverClass
{
	GObjectClass parentClass;
}

struct GtkSourceHoverContext;

struct GtkSourceHoverContextClass
{
	GObjectClass parentClass;
}

struct GtkSourceHoverDisplay;

struct GtkSourceHoverDisplayClass
{
	GtkWidgetClass parentClass;
}

struct GtkSourceHoverProvider;

struct GtkSourceHoverProviderInterface
{
	GTypeInterface parentIface;
	/** */
	extern(C) int function(GtkSourceHoverProvider* self, GtkSourceHoverContext* context, GtkSourceHoverDisplay* display, GError** err) populate;
	/** */
	extern(C) void function(GtkSourceHoverProvider* self, GtkSourceHoverContext* context, GtkSourceHoverDisplay* display, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) populateAsync;
	/** */
	extern(C) int function(GtkSourceHoverProvider* self, GAsyncResult* result, GError** err) populateFinish;
}

struct GtkSourceIndenter;

/**
 * The virtual function table for #GtkSourceIndenter.
 */
struct GtkSourceIndenterInterface
{
	GTypeInterface parentIface;
	/**
	 *
	 * Params:
	 *     self = a #GtkSourceIndenter
	 *     view = a #GtkSourceView
	 *     location = the location where @ch is to be inserted
	 *     state = modifier state for the insertion
	 *     keyval = the keyval pressed such as [const@Gdk.KEY_Return]
	 * Returns: %TRUE if indentation should be automatically triggered;
	 *     otherwise %FALSE and no indentation will be performed.
	 */
	extern(C) int function(GtkSourceIndenter* self, GtkSourceView* view, GtkTextIter* location, GdkModifierType state, uint keyval) isTrigger;
	/** */
	extern(C) void function(GtkSourceIndenter* self, GtkSourceView* view, GtkTextIter* iter) indent;
}

struct GtkSourceLanguage;

struct GtkSourceLanguageClass
{
	GObjectClass parentClass;
}

struct GtkSourceLanguageManager;

struct GtkSourceLanguageManagerClass
{
	GObjectClass parentClass;
}

struct GtkSourceMap
{
	GtkSourceView parentInstance;
}

struct GtkSourceMapClass
{
	GtkSourceViewClass parentClass;
	void*[10] Reserved;
}

struct GtkSourceMark
{
	GtkTextMark parentInstance;
}

struct GtkSourceMarkAttributes;

struct GtkSourceMarkAttributesClass
{
	GObjectClass parentClass;
}

struct GtkSourceMarkClass
{
	GtkTextMarkClass parentClass;
	void*[10] Reserved;
}

struct GtkSourcePrintCompositor
{
	GObject parentInstance;
}

struct GtkSourcePrintCompositorClass
{
	GObjectClass parentClass;
	void*[10] Reserved;
}

struct GtkSourceRegion
{
	GObject parentInstance;
}

struct GtkSourceRegionClass
{
	GObjectClass parentClass;
	void*[10] Reserved;
}

struct GtkSourceRegionIter
{
	void* dummy1;
	uint dummy2;
	void* dummy3;
}

struct GtkSourceSearchContext;

struct GtkSourceSearchContextClass
{
	GObjectClass parentClass;
}

struct GtkSourceSearchSettings
{
	GObject parentInstance;
}

struct GtkSourceSearchSettingsClass
{
	GObjectClass parentClass;
	void*[10] Reserved;
}

struct GtkSourceSnippet;

struct GtkSourceSnippetChunk;

struct GtkSourceSnippetChunkClass
{
	GObjectClass parentClass;
}

struct GtkSourceSnippetClass
{
	GObjectClass parentClass;
}

struct GtkSourceSnippetContext;

struct GtkSourceSnippetContextClass
{
	GObjectClass parentClass;
}

struct GtkSourceSnippetManager;

struct GtkSourceSnippetManagerClass
{
	GObjectClass parentClass;
}

struct GtkSourceSpaceDrawer;

struct GtkSourceSpaceDrawerClass
{
	GObjectClass parentClass;
}

struct GtkSourceStyle;

struct GtkSourceStyleClass
{
	GObjectClass parentClass;
}

struct GtkSourceStyleScheme;

struct GtkSourceStyleSchemeChooser;

struct GtkSourceStyleSchemeChooserButton
{
	GtkButton parentInstance;
}

struct GtkSourceStyleSchemeChooserButtonClass
{
	GtkButtonClass parent;
	void*[10] Reserved;
}

struct GtkSourceStyleSchemeChooserInterface
{
	GTypeInterface baseInterface;
	/**
	 *
	 * Params:
	 *     chooser = a #GtkSourceStyleSchemeChooser
	 * Returns: the currently-selected scheme.
	 */
	extern(C) GtkSourceStyleScheme* function(GtkSourceStyleSchemeChooser* chooser) getStyleScheme;
	/** */
	extern(C) void function(GtkSourceStyleSchemeChooser* chooser, GtkSourceStyleScheme* scheme) setStyleScheme;
	void*[12] Reserved;
}

struct GtkSourceStyleSchemeChooserWidget
{
	GtkWidget parentInstance;
}

struct GtkSourceStyleSchemeChooserWidgetClass
{
	GtkWidgetClass parent;
	void*[10] Reserved;
}

struct GtkSourceStyleSchemeClass
{
	GObjectClass parentClass;
}

struct GtkSourceStyleSchemeManager;

struct GtkSourceStyleSchemeManagerClass
{
	GObjectClass parentClass;
}

struct GtkSourceStyleSchemePreview;

struct GtkSourceStyleSchemePreviewClass
{
	GtkWidgetClass parentClass;
}

struct GtkSourceTag
{
	GtkTextTag parentInstance;
}

struct GtkSourceTagClass
{
	GtkTextTagClass parentClass;
	void*[10] Reserved;
}

struct GtkSourceView
{
	GtkTextView parentInstance;
}

struct GtkSourceViewClass
{
	GtkTextViewClass parentClass;
	/** */
	extern(C) void function(GtkSourceView* view, GtkTextIter* iter, uint button, GdkModifierType state, int nPresses) lineMarkActivated;
	/** */
	extern(C) void function(GtkSourceView* view) showCompletion;
	/** */
	extern(C) void function(GtkSourceView* view, int down) moveLines;
	/** */
	extern(C) void function(GtkSourceView* view, int step) moveWords;
	/** */
	extern(C) void function(GtkSourceView* view, GtkSourceSnippet* snippet, GtkTextIter* location) pushSnippet;
	void*[20] Reserved;
}

struct GtkSourceVimIMContext;

struct GtkSourceVimIMContextClass
{
	GtkIMContextClass parentClass;
}

/**
 * Type definition for a function that will be called to create a
 * [class@Gio.MountOperation]. This is useful for creating a [class@Gtk.MountOperation].
 *
 * Params:
 *     file = a #GtkSourceFile.
 *     userdata = user data
 */
public alias extern(C) GMountOperation* function(GtkSourceFile* file, void* userdata) GtkSourceMountOperationFactory;

/**
 * This function is called incrementally to process additional background work.
 * A deadline is provided which can be checked using [func@GLib.get_monotonic_time] so
 * that additional work can be processed each frame.
 *
 * This is useful for situations where you are incrementally performing
 * background work such as spell checking or semantic syntax highlighting.
 *
 * Params:
 *     deadline = the time the callback should complete by
 *     userData = closure data provided when registering callback
 *
 * Returns: %TRUE if there is more work to process, otherwise %FALSE and the
 *     handler is unregistered.
 *
 * Since: 5.2
 */
public alias extern(C) int function(long deadline, void* userData) GtkSourceSchedulerCallback;
