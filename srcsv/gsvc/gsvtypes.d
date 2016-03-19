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


module gsvc.gsvtypes;

public import gtkc.gtktypes;

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
	/**
	 * None.
	 */
	NONE = 0,
	/**
	 * Interactive activation. By
	 * default, it occurs on each insertion in the #GtkTextBuffer. This can be
	 * blocked temporarily with gtk_source_completion_block_interactive().
	 */
	INTERACTIVE = 1,
	/**
	 * User requested activation.
	 * By default, it occurs when the user presses
	 * <keycombo><keycap>Control</keycap><keycap>space</keycap></keycombo>.
	 */
	USER_REQUESTED = 2,
}
alias GtkSourceCompletionActivation CompletionActivation;

/**
 * An error code used with %GTK_SOURCE_COMPLETION_ERROR in a #GError returned
 * from a completion-related function.
 */
public enum GtkSourceCompletionError
{
	/**
	 * The #GtkSourceCompletionProvider
	 * is already bound to the #GtkSourceCompletion object.
	 */
	ALREADY_BOUND = 0,
	/**
	 * The #GtkSourceCompletionProvider is
	 * not bound to the #GtkSourceCompletion object.
	 */
	NOT_BOUND = 1,
}
alias GtkSourceCompletionError CompletionError;

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
 * GtkSourceDrawSpacesFlags determine what kind of spaces whould be drawn. If none
 * of GTK_SOURCE_DRAW_SPACES_LEADING, GTK_SOURCE_DRAW_SPACES_TEXT or
 * GTK_SOURCE_DRAW_SPACES_TRAILING is specified, whitespaces at any position in
 * the line will be drawn (i.e. it has the same effect as specifying all of them).
 */
public enum GtkSourceDrawSpacesFlags
{
	/**
	 * whether the space character should be drawn.
	 */
	SPACE = 1,
	/**
	 * whether the tab character should be drawn.
	 */
	TAB = 2,
	/**
	 * whether the line breaks should be drawn.
	 */
	NEWLINE = 4,
	/**
	 * whether the non-breaking whitespaces should be drawn.
	 */
	NBSP = 8,
	/**
	 * whether leading whitespaces should be drawn.
	 */
	LEADING = 16,
	/**
	 * whether whitespaces inside text should be drawn.
	 */
	TEXT = 32,
	/**
	 * whether trailing whitespaces should be drawn.
	 */
	TRAILING = 64,
	/**
	 * wheter all kind of spaces should be drawn.
	 */
	ALL = 127,
}
alias GtkSourceDrawSpacesFlags DrawSpacesFlags;

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
 *
 * Since: 3.14
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
 * Flags to define the behavior of a #GtkSourceFileSaver.
 *
 * Since: 3.14
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

public enum GtkSourceGutterRendererState
{
	/**
	 * normal state
	 */
	NORMAL = 0,
	/**
	 * area in the renderer represents the
	 * line on which the insert cursor is currently positioned
	 */
	CURSOR = 1,
	/**
	 * the mouse pointer is currently
	 * over the activatable area of the renderer
	 */
	PRELIT = 2,
	/**
	 * area in the renderer represents
	 * a line in the buffer which contains part of the selection
	 */
	SELECTED = 4,
}
alias GtkSourceGutterRendererState GutterRendererState;

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
	GtkSourceBufferPrivate* priv;
}

struct GtkSourceBufferClass
{
	GtkTextBufferClass parentClass;
	/** */
	extern(C) void function(GtkSourceBuffer* buffer) undo;
	/** */
	extern(C) void function(GtkSourceBuffer* buffer) redo;
	/** */
	extern(C) void function(GtkSourceBuffer* buffer, GtkTextIter* iter, GtkSourceBracketMatchType state) bracketMatched;
	/** */
	extern(C) void function() GtkSourceReserved1;
	/** */
	extern(C) void function() GtkSourceReserved2;
	/** */
	extern(C) void function() GtkSourceReserved3;
}

struct GtkSourceBufferPrivate;

struct GtkSourceCompletion
{
	GObject parentInstance;
	GtkSourceCompletionPrivate* priv;
}

struct GtkSourceCompletionClass
{
	GObjectClass parentClass;
	/** */
	extern(C) int function(GtkSourceCompletion* completion, GtkSourceCompletionProvider* provider, GtkSourceCompletionProposal* proposal) proposalActivated;
	/** */
	extern(C) void function(GtkSourceCompletion* completion) show;
	/** */
	extern(C) void function(GtkSourceCompletion* completion) hide;
	/** */
	extern(C) void function(GtkSourceCompletion* completion, GtkSourceCompletionContext* context) populateContext;
	/** */
	extern(C) void function(GtkSourceCompletion* completion, GtkScrollStep step, int num) moveCursor;
	/** */
	extern(C) void function(GtkSourceCompletion* completion, GtkScrollStep step, int num) movePage;
	/** */
	extern(C) void function(GtkSourceCompletion* completion) activateProposal;
}

struct GtkSourceCompletionContext
{
	GObject parent;
	GtkSourceCompletionContextPrivate* priv;
}

struct GtkSourceCompletionContextClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkSourceCompletionContext* context) cancelled;
	/** */
	extern(C) void function() GtkSourceReserved1;
	/** */
	extern(C) void function() GtkSourceReserved2;
	/** */
	extern(C) void function() GtkSourceReserved3;
}

struct GtkSourceCompletionContextPrivate;

struct GtkSourceCompletionInfo
{
	GtkWindow parent;
	GtkSourceCompletionInfoPrivate* priv;
}

struct GtkSourceCompletionInfoClass
{
	GtkWindowClass parentClass;
	/** */
	extern(C) void function(GtkSourceCompletionInfo* info) beforeShow;
}

struct GtkSourceCompletionInfoPrivate;

struct GtkSourceCompletionItem
{
	GObject parent;
	GtkSourceCompletionItemPrivate* priv;
}

struct GtkSourceCompletionItemClass
{
	GObjectClass parentClass;
}

struct GtkSourceCompletionItemPrivate;

struct GtkSourceCompletionPrivate;

struct GtkSourceCompletionProposal;

/**
 * The virtual function table for #GtkSourceCompletionProposal.
 */
struct GtkSourceCompletionProposalIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     proposal = a #GtkSourceCompletionProposal.
	 * Return: a new string containing the label of @proposal.
	 */
	extern(C) char* function(GtkSourceCompletionProposal* proposal) getLabel;
	/**
	 *
	 * Params:
	 *     proposal = a #GtkSourceCompletionProposal.
	 * Return: a new string containing the label of @proposal with markup.
	 */
	extern(C) char* function(GtkSourceCompletionProposal* proposal) getMarkup;
	/**
	 *
	 * Params:
	 *     proposal = a #GtkSourceCompletionProposal.
	 * Return: a new string containing the text of @proposal.
	 */
	extern(C) char* function(GtkSourceCompletionProposal* proposal) getText;
	/**
	 *
	 * Params:
	 *     proposal = a #GtkSourceCompletionProposal.
	 * Return: A #GdkPixbuf with the icon of @proposal.
	 */
	extern(C) GdkPixbuf* function(GtkSourceCompletionProposal* proposal) getIcon;
	/**
	 *
	 * Params:
	 *     proposal = a #GtkSourceCompletionProposal.
	 * Return: The icon name of @proposal.
	 */
	extern(C) const(char)* function(GtkSourceCompletionProposal* proposal) getIconName;
	/**
	 *
	 * Params:
	 *     proposal = a #GtkSourceCompletionProposal.
	 * Return: A #GIcon with the icon of @proposal.
	 */
	extern(C) GIcon* function(GtkSourceCompletionProposal* proposal) getGicon;
	/**
	 *
	 * Params:
	 *     proposal = a #GtkSourceCompletionProposal.
	 * Return: a newly-allocated string containing
	 *     extra information of @proposal or %NULL if no extra information is associated
	 *     to @proposal.
	 */
	extern(C) char* function(GtkSourceCompletionProposal* proposal) getInfo;
	/**
	 *
	 * Params:
	 *     proposal = a #GtkSourceCompletionProposal.
	 * Return: The hash value of @proposal.
	 */
	extern(C) uint function(GtkSourceCompletionProposal* proposal) hash;
	/**
	 *
	 * Params:
	 *     proposal = a #GtkSourceCompletionProposal.
	 *     other = a #GtkSourceCompletionProposal.
	 * Return: %TRUE if @proposal and @object are the same proposal
	 */
	extern(C) int function(GtkSourceCompletionProposal* proposal, GtkSourceCompletionProposal* other) equal;
	/** */
	extern(C) void function(GtkSourceCompletionProposal* proposal) changed;
}

struct GtkSourceCompletionProvider;

/**
 * The virtual function table for #GtkSourceCompletionProvider.
 */
struct GtkSourceCompletionProviderIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider.
	 * Return: a new string containing the name of the provider.
	 */
	extern(C) char* function(GtkSourceCompletionProvider* provider) getName;
	/**
	 *
	 * Params:
	 *     provider = The #GtkSourceCompletionProvider
	 * Return: The icon to be used for the provider,
	 *     or %NULL if the provider does not have a special icon.
	 */
	extern(C) GdkPixbuf* function(GtkSourceCompletionProvider* provider) getIcon;
	/**
	 *
	 * Params:
	 *     provider = The #GtkSourceCompletionProvider
	 * Return: The icon name to be used for the provider,
	 *     or %NULL if the provider does not have a special icon.
	 */
	extern(C) const(char)* function(GtkSourceCompletionProvider* provider) getIconName;
	/**
	 *
	 * Params:
	 *     provider = The #GtkSourceCompletionProvider
	 * Return: The icon to be used for the provider,
	 *     or %NULL if the provider does not have a special icon.
	 */
	extern(C) GIcon* function(GtkSourceCompletionProvider* provider) getGicon;
	/** */
	extern(C) void function(GtkSourceCompletionProvider* provider, GtkSourceCompletionContext* context) populate;
	/**
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider.
	 *     context = a #GtkSourceCompletionContext.
	 * Return: %TRUE if @provider matches the completion context, %FALSE otherwise.
	 */
	extern(C) int function(GtkSourceCompletionProvider* provider, GtkSourceCompletionContext* context) match;
	/**
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider.
	 * Return: a combination of #GtkSourceCompletionActivation.
	 */
	extern(C) GtkSourceCompletionActivation function(GtkSourceCompletionProvider* provider) getActivation;
	/**
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider.
	 *     proposal = a currently selected #GtkSourceCompletionProposal.
	 * Return: a custom #GtkWidget to show extra
	 *     information about @proposal, or %NULL if the provider does not have a special
	 *     info widget.
	 */
	extern(C) GtkWidget* function(GtkSourceCompletionProvider* provider, GtkSourceCompletionProposal* proposal) getInfoWidget;
	/** */
	extern(C) void function(GtkSourceCompletionProvider* provider, GtkSourceCompletionProposal* proposal, GtkSourceCompletionInfo* info) updateInfo;
	/**
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider.
	 *     context = a #GtkSourceCompletionContext.
	 *     proposal = a #GtkSourceCompletionProposal.
	 *     iter = a #GtkTextIter.
	 * Return: %TRUE if @iter was set for @proposal, %FALSE otherwise.
	 */
	extern(C) int function(GtkSourceCompletionProvider* provider, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal, GtkTextIter* iter) getStartIter;
	/**
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider.
	 *     proposal = a #GtkSourceCompletionProposal.
	 *     iter = a #GtkTextIter.
	 * Return: %TRUE to indicate that the proposal activation has been handled,
	 *     %FALSE otherwise.
	 */
	extern(C) int function(GtkSourceCompletionProvider* provider, GtkSourceCompletionProposal* proposal, GtkTextIter* iter) activateProposal;
	/**
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider.
	 * Return: the interactive delay in milliseconds.
	 */
	extern(C) int function(GtkSourceCompletionProvider* provider) getInteractiveDelay;
	/**
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider.
	 * Return: the provider priority.
	 */
	extern(C) int function(GtkSourceCompletionProvider* provider) getPriority;
}

struct GtkSourceCompletionWords
{
	GObject parent;
	GtkSourceCompletionWordsPrivate* priv;
}

struct GtkSourceCompletionWordsClass
{
	GObjectClass parentClass;
}

struct GtkSourceCompletionWordsPrivate;

struct GtkSourceEncoding;

struct GtkSourceFile
{
	GObject parent;
	GtkSourceFilePrivate* priv;
}

struct GtkSourceFileClass
{
	GObjectClass parentClass;
	void*[10] padding;
}

struct GtkSourceFileLoader
{
	GObject parent;
	GtkSourceFileLoaderPrivate* priv;
}

struct GtkSourceFileLoaderClass
{
	GObjectClass parentClass;
	void*[10] padding;
}

struct GtkSourceFileLoaderPrivate;

struct GtkSourceFilePrivate;

struct GtkSourceFileSaver
{
	GObject object;
	GtkSourceFileSaverPrivate* priv;
}

struct GtkSourceFileSaverClass
{
	GObjectClass parentClass;
	void*[10] padding;
}

struct GtkSourceFileSaverPrivate;

struct GtkSourceGutter
{
	GObject parent;
	GtkSourceGutterPrivate* priv;
}

struct GtkSourceGutterClass
{
	GObjectClass parentClass;
}

struct GtkSourceGutterPrivate;

struct GtkSourceGutterRenderer
{
	GObject parent;
	GtkSourceGutterRendererPrivate* priv;
}

struct GtkSourceGutterRendererClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, cairo_t* cr, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkTextIter* start, GtkTextIter* end) begin;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, cairo_t* cr, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkTextIter* start, GtkTextIter* end, GtkSourceGutterRendererState state) draw;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer) end;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, GtkTextView* oldView) changeView;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, GtkTextBuffer* oldBuffer) changeBuffer;
	/**
	 *
	 * Params:
	 *     renderer = a #GtkSourceGutterRenderer
	 *     iter = a #GtkTextIter at the start of the line to be activated
	 *     area = a #GdkRectangle of the cell area to be activated
	 *     event = the event that triggered the query
	 * Return: %TRUE if the renderer can be activated, %FALSE otherwise
	 */
	extern(C) int function(GtkSourceGutterRenderer* renderer, GtkTextIter* iter, GdkRectangle* area, GdkEvent* event) queryActivatable;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, GtkTextIter* iter, GdkRectangle* area, GdkEvent* event) activate;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer) queueDraw;
	/**
	 *
	 * Params:
	 *     renderer = a #GtkSourceGutterRenderer.
	 *     iter = a #GtkTextIter.
	 *     area = a #GdkRectangle.
	 *     x = The x position of the tooltip.
	 *     y = The y position of the tooltip.
	 *     tooltip = a #GtkTooltip.
	 * Return: %TRUE if the tooltip has been set, %FALSE otherwise
	 */
	extern(C) int function(GtkSourceGutterRenderer* renderer, GtkTextIter* iter, GdkRectangle* area, int x, int y, GtkTooltip* tooltip) queryTooltip;
	/** */
	extern(C) void function(GtkSourceGutterRenderer* renderer, GtkTextIter* start, GtkTextIter* end, GtkSourceGutterRendererState state) queryData;
}

struct GtkSourceGutterRendererPixbuf
{
	GtkSourceGutterRenderer parent;
	GtkSourceGutterRendererPixbufPrivate* priv;
}

struct GtkSourceGutterRendererPixbufClass
{
	GtkSourceGutterRendererClass parentClass;
}

struct GtkSourceGutterRendererPixbufPrivate;

struct GtkSourceGutterRendererPrivate;

struct GtkSourceGutterRendererText
{
	GtkSourceGutterRenderer parent;
	GtkSourceGutterRendererTextPrivate* priv;
}

struct GtkSourceGutterRendererTextClass
{
	GtkSourceGutterRendererClass parentClass;
}

struct GtkSourceGutterRendererTextPrivate;

struct GtkSourceLanguage
{
	GObject parentInstance;
	GtkSourceLanguagePrivate* priv;
}

struct GtkSourceLanguageClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkSourceReserved1;
	/** */
	extern(C) void function() GtkSourceReserved2;
}

struct GtkSourceLanguageManager
{
	GObject parentInstance;
	GtkSourceLanguageManagerPrivate* priv;
}

struct GtkSourceLanguageManagerClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkSourceReserved1;
	/** */
	extern(C) void function() GtkSourceReserved2;
	/** */
	extern(C) void function() GtkSourceReserved3;
	/** */
	extern(C) void function() GtkSourceReserved4;
}

struct GtkSourceLanguageManagerPrivate;

struct GtkSourceLanguagePrivate;

struct GtkSourceMap
{
	GtkSourceView parentInstance;
}

struct GtkSourceMapClass
{
	GtkSourceViewClass parentClass;
	void*[10] padding;
}

struct GtkSourceMark
{
	GtkTextMark parentInstance;
	GtkSourceMarkPrivate* priv;
}

struct GtkSourceMarkAttributes
{
	GObject parent;
	GtkSourceMarkAttributesPrivate* priv;
}

struct GtkSourceMarkAttributesClass
{
	GObjectClass parentClass;
}

struct GtkSourceMarkAttributesPrivate;

struct GtkSourceMarkClass
{
	GtkTextMarkClass parentClass;
	/** */
	extern(C) void function() GtkSourceReserved1;
	/** */
	extern(C) void function() GtkSourceReserved2;
}

struct GtkSourceMarkPrivate;

struct GtkSourcePrintCompositor
{
	GObject parentInstance;
	GtkSourcePrintCompositorPrivate* priv;
}

struct GtkSourcePrintCompositorClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkSourceReserved1;
	/** */
	extern(C) void function() GtkSourceReserved2;
}

struct GtkSourcePrintCompositorPrivate;

struct GtkSourceSearchContext
{
	GObject parent;
	GtkSourceSearchContextPrivate* priv;
}

struct GtkSourceSearchContextClass
{
	GObjectClass parentClass;
	void*[10] padding;
}

struct GtkSourceSearchContextPrivate;

struct GtkSourceSearchSettings
{
	GObject parent;
	GtkSourceSearchSettingsPrivate* priv;
}

struct GtkSourceSearchSettingsClass
{
	GObjectClass parentClass;
	void*[10] padding;
}

struct GtkSourceSearchSettingsPrivate;

struct GtkSourceStyle;

struct GtkSourceStyleClass;

struct GtkSourceStyleScheme
{
	GObject base;
	GtkSourceStyleSchemePrivate* priv;
}

struct GtkSourceStyleSchemeChooser;

struct GtkSourceStyleSchemeChooserButton
{
	GtkButton parent;
}

struct GtkSourceStyleSchemeChooserButtonClass
{
	GtkButtonClass parent;
}

struct GtkSourceStyleSchemeChooserInterface
{
	GTypeInterface baseInterface;
	/**
	 *
	 * Params:
	 *     chooser = a #GtkSourceStyleSchemeChooser
	 * Return: the currently-selected scheme.
	 */
	extern(C) GtkSourceStyleScheme* function(GtkSourceStyleSchemeChooser* chooser) getStyleScheme;
	/** */
	extern(C) void function(GtkSourceStyleSchemeChooser* chooser, GtkSourceStyleScheme* scheme) setStyleScheme;
	void*[12] padding;
}

struct GtkSourceStyleSchemeChooserWidget
{
	GtkBin parent;
}

struct GtkSourceStyleSchemeChooserWidgetClass
{
	GtkBinClass parent;
}

struct GtkSourceStyleSchemeClass
{
	GObjectClass baseClass;
	/** */
	extern(C) void function() GtkSourceReserved1;
	/** */
	extern(C) void function() GtkSourceReserved2;
}

struct GtkSourceStyleSchemeManager
{
	GObject parent;
	GtkSourceStyleSchemeManagerPrivate* priv;
}

struct GtkSourceStyleSchemeManagerClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkSourceReserved1;
	/** */
	extern(C) void function() GtkSourceReserved2;
	/** */
	extern(C) void function() GtkSourceReserved3;
	/** */
	extern(C) void function() GtkSourceReserved4;
}

struct GtkSourceStyleSchemeManagerPrivate;

struct GtkSourceStyleSchemePrivate;

struct GtkSourceTag
{
	GtkTextTag parentInstance;
}

struct GtkSourceTagClass
{
	GtkTextTagClass parentClass;
	void*[10] padding;
}

struct GtkSourceUndoManager;

struct GtkSourceUndoManagerIface
{
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     manager = a #GtkSourceUndoManager.
	 * Return: %TRUE if there are undo operations available, %FALSE otherwise
	 */
	extern(C) int function(GtkSourceUndoManager* manager) canUndo;
	/**
	 *
	 * Params:
	 *     manager = a #GtkSourceUndoManager.
	 * Return: %TRUE if there are redo operations available, %FALSE otherwise
	 */
	extern(C) int function(GtkSourceUndoManager* manager) canRedo;
	/** */
	extern(C) void function(GtkSourceUndoManager* manager) undo;
	/** */
	extern(C) void function(GtkSourceUndoManager* manager) redo;
	/** */
	extern(C) void function(GtkSourceUndoManager* manager) beginNotUndoableAction;
	/** */
	extern(C) void function(GtkSourceUndoManager* manager) endNotUndoableAction;
	/** */
	extern(C) void function(GtkSourceUndoManager* manager) canUndoChanged;
	/** */
	extern(C) void function(GtkSourceUndoManager* manager) canRedoChanged;
}

struct GtkSourceView
{
	GtkTextView parent;
	GtkSourceViewPrivate* priv;
}

struct GtkSourceViewClass
{
	GtkTextViewClass parentClass;
	/** */
	extern(C) void function(GtkSourceView* view) undo;
	/** */
	extern(C) void function(GtkSourceView* view) redo;
	/** */
	extern(C) void function(GtkSourceView* view, GtkTextIter* iter, GdkEvent* event) lineMarkActivated;
	/** */
	extern(C) void function(GtkSourceView* view) showCompletion;
	/** */
	extern(C) void function(GtkSourceView* view, int copy, int step) moveLines;
	/** */
	extern(C) void function(GtkSourceView* view, int step) moveWords;
}

struct GtkSourceViewPrivate;

/**
 * Type definition for a function that will be called to create a
 * #GMountOperation. This is useful for creating a #GtkMountOperation.
 *
 * Params:
 *     file = a #GtkSourceFile.
 *     userdata = user data
 *
 * Since: 3.14
 */
public alias extern(C) GMountOperation* function(GtkSourceFile* file, void* userdata) GtkSourceMountOperationFactory;
