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


module gtkc.gtktypes;

public import gtkc.cairotypes;
public import gtkc.glibtypes;
public import gtkc.gobjecttypes;
public import gtkc.giotypes;
public import gtkc.pangotypes;
public import gtkc.atktypes;
public import gtkc.gdkpixbuftypes;
public import gtkc.gdktypes;

extern(C) Object _d_newclass(ClassInfo ci);

alias GtkAllocation* Allocation;

/**
 * A #GtkAllocation-struct of a widget represents region
 * which has been allocated to the widget by its parent. It is a subregion
 * of its parents allocation. See
 * [GtkWidget’s geometry management section][geometry-management] for
 * more information.
 */
public alias GdkRectangle GtkAllocation;

public alias void* GtkStock;

/**
 * Accelerator flags used with gtk_accel_group_connect().
 */
public enum GtkAccelFlags
{
	/**
	 * Accelerator is visible
	 */
	VISIBLE = 1,
	/**
	 * Accelerator not removable
	 */
	LOCKED = 2,
	/**
	 * Mask
	 */
	MASK = 7,
}
alias GtkAccelFlags AccelFlags;

/**
 * Controls how a widget deals with extra space in a single (x or y)
 * dimension.
 *
 * Alignment only matters if the widget receives a “too large” allocation,
 * for example if you packed the widget with the #GtkWidget:expand
 * flag inside a #GtkBox, then the widget might get extra space.  If
 * you have for example a 16x16 icon inside a 32x32 space, the icon
 * could be scaled and stretched, it could be centered, or it could be
 * positioned to one side of the space.
 *
 * Note that in horizontal context @GTK_ALIGN_START and @GTK_ALIGN_END
 * are interpreted relative to text direction.
 *
 * GTK_ALIGN_BASELINE support for it is optional for containers and widgets, and
 * it is only supported for vertical alignment.  When its not supported by
 * a child or a container it is treated as @GTK_ALIGN_FILL.
 */
public enum GtkAlign
{
	/**
	 * stretch to fill all space if possible, center if
	 * no meaningful way to stretch
	 */
	FILL = 0,
	/**
	 * snap to left or top side, leaving space on right
	 * or bottom
	 */
	START = 1,
	/**
	 * snap to right or bottom side, leaving space on left
	 * or top
	 */
	END = 2,
	/**
	 * center natural width of widget inside the
	 * allocation
	 */
	CENTER = 3,
	/**
	 * align the widget according to the baseline. Since 3.10.
	 */
	BASELINE = 4,
}
alias GtkAlign Align;

/**
 * Types of user actions that may be blocked by gtk_application_inhibit().
 *
 * Since: 3.4
 */
public enum GtkApplicationInhibitFlags
{
	/**
	 * Inhibit ending the user session
	 * by logging out or by shutting down the computer
	 */
	LOGOUT = 1,
	/**
	 * Inhibit user switching
	 */
	SWITCH = 2,
	/**
	 * Inhibit suspending the
	 * session or computer
	 */
	SUSPEND = 4,
	/**
	 * Inhibit the session being
	 * marked as idle (and possibly locked)
	 */
	IDLE = 8,
}
alias GtkApplicationInhibitFlags ApplicationInhibitFlags;

/**
 * Used to specify the placement of scroll arrows in scrolling menus.
 */
public enum GtkArrowPlacement
{
	/**
	 * Place one arrow on each end of the menu.
	 */
	BOTH = 0,
	/**
	 * Place both arrows at the top of the menu.
	 */
	START = 1,
	/**
	 * Place both arrows at the bottom of the menu.
	 */
	END = 2,
}
alias GtkArrowPlacement ArrowPlacement;

/**
 * Used to indicate the direction in which an arrow should point.
 */
public enum GtkArrowType
{
	/**
	 * Represents an upward pointing arrow.
	 */
	UP = 0,
	/**
	 * Represents a downward pointing arrow.
	 */
	DOWN = 1,
	/**
	 * Represents a left pointing arrow.
	 */
	LEFT = 2,
	/**
	 * Represents a right pointing arrow.
	 */
	RIGHT = 3,
	/**
	 * No arrow. Since 2.10.
	 */
	NONE = 4,
}
alias GtkArrowType ArrowType;

/**
 * An enum for determining the page role inside the #GtkAssistant. It's
 * used to handle buttons sensitivity and visibility.
 *
 * Note that an assistant needs to end its page flow with a page of type
 * %GTK_ASSISTANT_PAGE_CONFIRM, %GTK_ASSISTANT_PAGE_SUMMARY or
 * %GTK_ASSISTANT_PAGE_PROGRESS to be correct.
 *
 * The Cancel button will only be shown if the page isn’t “committed”.
 * See gtk_assistant_commit() for details.
 */
public enum GtkAssistantPageType
{
	/**
	 * The page has regular contents. Both the
	 * Back and forward buttons will be shown.
	 */
	CONTENT = 0,
	/**
	 * The page contains an introduction to the
	 * assistant task. Only the Forward button will be shown if there is a
	 * next page.
	 */
	INTRO = 1,
	/**
	 * The page lets the user confirm or deny the
	 * changes. The Back and Apply buttons will be shown.
	 */
	CONFIRM = 2,
	/**
	 * The page informs the user of the changes
	 * done. Only the Close button will be shown.
	 */
	SUMMARY = 3,
	/**
	 * Used for tasks that take a long time to
	 * complete, blocks the assistant until the page is marked as complete.
	 * Only the back button will be shown.
	 */
	PROGRESS = 4,
	/**
	 * Used for when other page types are not
	 * appropriate. No buttons will be shown, and the application must
	 * add its own buttons through gtk_assistant_add_action_widget().
	 */
	CUSTOM = 5,
}
alias GtkAssistantPageType AssistantPageType;

/**
 * Denotes the expansion properties that a widget will have when it (or its
 * parent) is resized.
 */
public enum GtkAttachOptions
{
	/**
	 * the widget should expand to take up any extra space in its
	 * container that has been allocated.
	 */
	EXPAND = 1,
	/**
	 * the widget should shrink as and when possible.
	 */
	SHRINK = 2,
	/**
	 * the widget should fill the space allocated to it.
	 */
	FILL = 4,
}
alias GtkAttachOptions AttachOptions;

/**
 * Whenever a container has some form of natural row it may align
 * children in that row along a common typographical baseline. If
 * the amount of verical space in the row is taller than the total
 * requested height of the baseline-aligned children then it can use a
 * #GtkBaselinePosition to select where to put the baseline inside the
 * extra availible space.
 *
 * Since: 3.10
 */
public enum GtkBaselinePosition
{
	/**
	 * Align the baseline at the top
	 */
	TOP = 0,
	/**
	 * Center the baseline
	 */
	CENTER = 1,
	/**
	 * Align the baseline at the bottom
	 */
	BOTTOM = 2,
}
alias GtkBaselinePosition BaselinePosition;

/**
 * Describes how the border of a UI element should be rendered.
 */
public enum GtkBorderStyle
{
	/**
	 * No visible border
	 */
	NONE = 0,
	/**
	 * A single line segment
	 */
	SOLID = 1,
	/**
	 * Looks as if the content is sunken into the canvas
	 */
	INSET = 2,
	/**
	 * Looks as if the content is coming out of the canvas
	 */
	OUTSET = 3,
	/**
	 * Same as @GTK_BORDER_STYLE_NONE
	 */
	HIDDEN = 4,
	/**
	 * A series of round dots
	 */
	DOTTED = 5,
	/**
	 * A series of square-ended dashes
	 */
	DASHED = 6,
	/**
	 * Two parallel lines with some space between them
	 */
	DOUBLE = 7,
	/**
	 * Looks as if it were carved in the canvas
	 */
	GROOVE = 8,
	/**
	 * Looks as if it were coming out of the canvas
	 */
	RIDGE = 9,
}
alias GtkBorderStyle BorderStyle;

/**
 * Error codes that identify various errors that can occur while using
 * #GtkBuilder.
 */
public enum GtkBuilderError
{
	/**
	 * A type-func attribute didn’t name
	 * a function that returns a #GType.
	 */
	INVALID_TYPE_FUNCTION = 0,
	/**
	 * The input contained a tag that #GtkBuilder
	 * can’t handle.
	 */
	UNHANDLED_TAG = 1,
	/**
	 * An attribute that is required by
	 * #GtkBuilder was missing.
	 */
	MISSING_ATTRIBUTE = 2,
	/**
	 * #GtkBuilder found an attribute that
	 * it doesn’t understand.
	 */
	INVALID_ATTRIBUTE = 3,
	/**
	 * #GtkBuilder found a tag that
	 * it doesn’t understand.
	 */
	INVALID_TAG = 4,
	/**
	 * A required property value was
	 * missing.
	 */
	MISSING_PROPERTY_VALUE = 5,
	/**
	 * #GtkBuilder couldn’t parse
	 * some attribute value.
	 */
	INVALID_VALUE = 6,
	/**
	 * The input file requires a newer version
	 * of GTK+.
	 */
	VERSION_MISMATCH = 7,
	/**
	 * An object id occurred twice.
	 */
	DUPLICATE_ID = 8,
	/**
	 * A specified object type is of the same type or
	 * derived from the type of the composite class being extended with builder XML.
	 */
	OBJECT_TYPE_REFUSED = 9,
	/**
	 * The wrong type was specified in a composite class’s template XML
	 */
	TEMPLATE_MISMATCH = 10,
	/**
	 * The specified property is unknown for the object class.
	 */
	INVALID_PROPERTY = 11,
	/**
	 * The specified signal is unknown for the object class.
	 */
	INVALID_SIGNAL = 12,
	/**
	 * An object id is unknown
	 */
	INVALID_ID = 13,
}
alias GtkBuilderError BuilderError;

/**
 * Used to dictate the style that a #GtkButtonBox uses to layout the buttons it
 * contains.
 */
public enum GtkButtonBoxStyle
{
	/**
	 * Buttons are evenly spread across the box.
	 */
	SPREAD = 1,
	/**
	 * Buttons are placed at the edges of the box.
	 */
	EDGE = 2,
	/**
	 * Buttons are grouped towards the start of the box,
	 * (on the left for a HBox, or the top for a VBox).
	 */
	START = 3,
	/**
	 * Buttons are grouped towards the end of the box,
	 * (on the right for a HBox, or the bottom for a VBox).
	 */
	END = 4,
	/**
	 * Buttons are centered in the box. Since 2.12.
	 */
	CENTER = 5,
	/**
	 * Buttons expand to fill the box. This entails giving
	 * buttons a "linked" appearance, making button sizes homogeneous, and
	 * setting spacing to 0 (same as calling gtk_box_set_homogeneous() and
	 * gtk_box_set_spacing() manually). Since 3.12.
	 */
	EXPAND = 6,
}
alias GtkButtonBoxStyle ButtonBoxStyle;

/**
 * The role specifies the desired appearance of a #GtkModelButton.
 */
public enum GtkButtonRole
{
	/**
	 * A plain button
	 */
	NORMAL = 0,
	/**
	 * A check button
	 */
	CHECK = 1,
	/**
	 * A radio button
	 */
	RADIO = 2,
}
alias GtkButtonRole ButtonRole;

/**
 * Prebuilt sets of buttons for the dialog. If
 * none of these choices are appropriate, simply use %GTK_BUTTONS_NONE
 * then call gtk_dialog_add_buttons().
 *
 * > Please note that %GTK_BUTTONS_OK, %GTK_BUTTONS_YES_NO
 * > and %GTK_BUTTONS_OK_CANCEL are discouraged by the
 * > [GNOME Human Interface Guidelines](http://library.gnome.org/devel/hig-book/stable/).
 */
public enum GtkButtonsType
{
	/**
	 * no buttons at all
	 */
	NONE = 0,
	/**
	 * an OK button
	 */
	OK = 1,
	/**
	 * a Close button
	 */
	CLOSE = 2,
	/**
	 * a Cancel button
	 */
	CANCEL = 3,
	/**
	 * Yes and No buttons
	 */
	YES_NO = 4,
	/**
	 * OK and Cancel buttons
	 */
	OK_CANCEL = 5,
}
alias GtkButtonsType ButtonsType;

/**
 * These options can be used to influence the display and behaviour of a #GtkCalendar.
 */
public enum GtkCalendarDisplayOptions
{
	/**
	 * Specifies that the month and year should be displayed.
	 */
	SHOW_HEADING = 1,
	/**
	 * Specifies that three letter day descriptions should be present.
	 */
	SHOW_DAY_NAMES = 2,
	/**
	 * Prevents the user from switching months with the calendar.
	 */
	NO_MONTH_CHANGE = 4,
	/**
	 * Displays each week numbers of the current year, down the
	 * left side of the calendar.
	 */
	SHOW_WEEK_NUMBERS = 8,
	/**
	 * Just show an indicator, not the full details
	 * text when details are provided. See gtk_calendar_set_detail_func().
	 */
	SHOW_DETAILS = 32,
}
alias GtkCalendarDisplayOptions CalendarDisplayOptions;

/**
 * Determines if the edited accelerators are GTK+ accelerators. If
 * they are, consumed modifiers are suppressed, only accelerators
 * accepted by GTK+ are allowed, and the accelerators are rendered
 * in the same way as they are in menus.
 */
public enum GtkCellRendererAccelMode
{
	/**
	 * GTK+ accelerators mode
	 */
	GTK = 0,
	/**
	 * Other accelerator mode
	 */
	OTHER = 1,
}
alias GtkCellRendererAccelMode CellRendererAccelMode;

/**
 * Identifies how the user can interact with a particular cell.
 */
public enum GtkCellRendererMode
{
	/**
	 * The cell is just for display
	 * and cannot be interacted with.  Note that this doesn’t mean that eg. the
	 * row being drawn can’t be selected -- just that a particular element of
	 * it cannot be individually modified.
	 */
	INERT = 0,
	/**
	 * The cell can be clicked.
	 */
	ACTIVATABLE = 1,
	/**
	 * The cell can be edited or otherwise modified.
	 */
	EDITABLE = 2,
}
alias GtkCellRendererMode CellRendererMode;

/**
 * Tells how a cell is to be rendered.
 */
public enum GtkCellRendererState
{
	/**
	 * The cell is currently selected, and
	 * probably has a selection colored background to render to.
	 */
	SELECTED = 1,
	/**
	 * The mouse is hovering over the cell.
	 */
	PRELIT = 2,
	/**
	 * The cell is drawn in an insensitive manner
	 */
	INSENSITIVE = 4,
	/**
	 * The cell is in a sorted row
	 */
	SORTED = 8,
	/**
	 * The cell is in the focus row.
	 */
	FOCUSED = 16,
	/**
	 * The cell is in a row that can be expanded. Since 3.4
	 */
	EXPANDABLE = 32,
	/**
	 * The cell is in a row that is expanded. Since 3.4
	 */
	EXPANDED = 64,
}
alias GtkCellRendererState CellRendererState;

/**
 * Specifies which corner a child widget should be placed in when packed into
 * a #GtkScrolledWindow. This is effectively the opposite of where the scroll
 * bars are placed.
 */
public enum GtkCornerType
{
	/**
	 * Place the scrollbars on the right and bottom of the
	 * widget (default behaviour).
	 */
	TOP_LEFT = 0,
	/**
	 * Place the scrollbars on the top and right of the
	 * widget.
	 */
	BOTTOM_LEFT = 1,
	/**
	 * Place the scrollbars on the left and bottom of the
	 * widget.
	 */
	TOP_RIGHT = 2,
	/**
	 * Place the scrollbars on the top and left of the
	 * widget.
	 */
	BOTTOM_RIGHT = 3,
}
alias GtkCornerType CornerType;

/**
 * Error codes for %GTK_CSS_PROVIDER_ERROR.
 */
public enum GtkCssProviderError
{
	/**
	 * Failed.
	 */
	FAILED = 0,
	/**
	 * Syntax error.
	 */
	SYNTAX = 1,
	/**
	 * Import error.
	 */
	IMPORT = 2,
	/**
	 * Name error.
	 */
	NAME = 3,
	/**
	 * Deprecation error.
	 */
	DEPRECATED = 4,
	/**
	 * Unknown value.
	 */
	UNKNOWN_VALUE = 5,
}
alias GtkCssProviderError CssProviderError;

/**
 * The different types of sections indicate parts of a CSS document as
 * parsed by GTK’s CSS parser. They are oriented towards the
 * [CSS Grammar](http://www.w3.org/TR/CSS21/grammar.html),
 * but may contain extensions.
 *
 * More types might be added in the future as the parser incorporates
 * more features.
 *
 * Since: 3.2
 */
public enum GtkCssSectionType
{
	/**
	 * The section describes a complete document.
	 * This section time is the only one where gtk_css_section_get_parent()
	 * might return %NULL.
	 */
	DOCUMENT = 0,
	/**
	 * The section defines an import rule.
	 */
	IMPORT = 1,
	/**
	 * The section defines a color. This
	 * is a GTK extension to CSS.
	 */
	COLOR_DEFINITION = 2,
	/**
	 * The section defines a binding set. This
	 * is a GTK extension to CSS.
	 */
	BINDING_SET = 3,
	/**
	 * The section defines a CSS ruleset.
	 */
	RULESET = 4,
	/**
	 * The section defines a CSS selector.
	 */
	SELECTOR = 5,
	/**
	 * The section defines the declaration of
	 * a CSS variable.
	 */
	DECLARATION = 6,
	/**
	 * The section defines the value of a CSS declaration.
	 */
	VALUE = 7,
	/**
	 * The section defines keyframes. See [CSS
	 * Animations](http://dev.w3.org/csswg/css3-animations/#keyframes) for details. Since 3.6
	 */
	KEYFRAMES = 8,
}
alias GtkCssSectionType CssSectionType;

public enum GtkDebugFlag
{
	MISC = 1,
	PLUGSOCKET = 2,
	TEXT = 4,
	TREE = 8,
	UPDATES = 16,
	KEYBINDINGS = 32,
	MULTIHEAD = 64,
	MODULES = 128,
	GEOMETRY = 256,
	ICONTHEME = 512,
	PRINTING = 1024,
	BUILDER = 2048,
	SIZE_REQUEST = 4096,
	NO_CSS_CACHE = 8192,
	BASELINES = 16384,
	PIXEL_CACHE = 32768,
	NO_PIXEL_CACHE = 65536,
	INTERACTIVE = 131072,
	TOUCHSCREEN = 262144,
	ACTIONS = 524288,
	RESIZE = 1048576,
	LAYOUT = 2097152,
}
alias GtkDebugFlag DebugFlag;

/**
 * See also: #GtkEntry::delete-from-cursor.
 */
public enum GtkDeleteType
{
	/**
	 * Delete characters.
	 */
	CHARS = 0,
	/**
	 * Delete only the portion of the word to the
	 * left/right of cursor if we’re in the middle of a word.
	 */
	WORD_ENDS = 1,
	/**
	 * Delete words.
	 */
	WORDS = 2,
	/**
	 * Delete display-lines. Display-lines
	 * refers to the visible lines, with respect to to the current line
	 * breaks. As opposed to paragraphs, which are defined by line
	 * breaks in the input.
	 */
	DISPLAY_LINES = 3,
	/**
	 * Delete only the portion of the
	 * display-line to the left/right of cursor.
	 */
	DISPLAY_LINE_ENDS = 4,
	/**
	 * Delete to the end of the
	 * paragraph. Like C-k in Emacs (or its reverse).
	 */
	PARAGRAPH_ENDS = 5,
	/**
	 * Delete entire line. Like C-k in pico.
	 */
	PARAGRAPHS = 6,
	/**
	 * Delete only whitespace. Like M-\ in Emacs.
	 */
	WHITESPACE = 7,
}
alias GtkDeleteType DeleteType;

/**
 * The #GtkDestDefaults enumeration specifies the various
 * types of action that will be taken on behalf
 * of the user for a drag destination site.
 */
public enum GtkDestDefaults
{
	/**
	 * If set for a widget, GTK+, during a drag over this
	 * widget will check if the drag matches this widget’s list of possible targets
	 * and actions.
	 * GTK+ will then call gdk_drag_status() as appropriate.
	 */
	MOTION = 1,
	/**
	 * If set for a widget, GTK+ will draw a highlight on
	 * this widget as long as a drag is over this widget and the widget drag format
	 * and action are acceptable.
	 */
	HIGHLIGHT = 2,
	/**
	 * If set for a widget, when a drop occurs, GTK+ will
	 * will check if the drag matches this widget’s list of possible targets and
	 * actions. If so, GTK+ will call gtk_drag_get_data() on behalf of the widget.
	 * Whether or not the drop is successful, GTK+ will call gtk_drag_finish(). If
	 * the action was a move, then if the drag was successful, then %TRUE will be
	 * passed for the @delete parameter to gtk_drag_finish().
	 */
	DROP = 4,
	/**
	 * If set, specifies that all default actions should
	 * be taken.
	 */
	ALL = 7,
}
alias GtkDestDefaults DestDefaults;

/**
 * Flags used to influence dialog construction.
 */
public enum GtkDialogFlags
{
	/**
	 * Make the constructed dialog modal,
	 * see gtk_window_set_modal()
	 */
	MODAL = 1,
	/**
	 * Destroy the dialog when its
	 * parent is destroyed, see gtk_window_set_destroy_with_parent()
	 */
	DESTROY_WITH_PARENT = 2,
	/**
	 * Create dialog with actions in header
	 * bar instead of action area. Since 3.12.
	 */
	USE_HEADER_BAR = 4,
}
alias GtkDialogFlags DialogFlags;

/**
 * Focus movement types.
 */
public enum GtkDirectionType
{
	/**
	 * Move forward.
	 */
	TAB_FORWARD = 0,
	/**
	 * Move backward.
	 */
	TAB_BACKWARD = 1,
	/**
	 * Move up.
	 */
	UP = 2,
	/**
	 * Move down.
	 */
	DOWN = 3,
	/**
	 * Move left.
	 */
	LEFT = 4,
	/**
	 * Move right.
	 */
	RIGHT = 5,
}
alias GtkDirectionType DirectionType;

/**
 * Gives an indication why a drag operation failed.
 * The value can by obtained by connecting to the
 * #GtkWidget::drag-failed signal.
 */
public enum GtkDragResult
{
	/**
	 * The drag operation was successful.
	 */
	SUCCESS = 0,
	/**
	 * No suitable drag target.
	 */
	NO_TARGET = 1,
	/**
	 * The user cancelled the drag operation.
	 */
	USER_CANCELLED = 2,
	/**
	 * The drag operation timed out.
	 */
	TIMEOUT_EXPIRED = 3,
	/**
	 * The pointer or keyboard grab used
	 * for the drag operation was broken.
	 */
	GRAB_BROKEN = 4,
	/**
	 * The drag operation failed due to some
	 * unspecified error.
	 */
	ERROR = 5,
}
alias GtkDragResult DragResult;

/**
 * Specifies the side of the entry at which an icon is placed.
 *
 * Since: 2.16
 */
public enum GtkEntryIconPosition
{
	/**
	 * At the beginning of the entry (depending on the text direction).
	 */
	PRIMARY = 0,
	/**
	 * At the end of the entry (depending on the text direction).
	 */
	SECONDARY = 1,
}
alias GtkEntryIconPosition EntryIconPosition;

/**
 * Describes the state of a #GdkEventSequence in a #GtkGesture.
 *
 * Since: 3.14
 */
public enum GtkEventSequenceState
{
	/**
	 * The sequence is handled, but not grabbed.
	 */
	NONE = 0,
	/**
	 * The sequence is handled and grabbed.
	 */
	CLAIMED = 1,
	/**
	 * The sequence is denied.
	 */
	DENIED = 2,
}
alias GtkEventSequenceState EventSequenceState;

/**
 * Used to specify the style of the expanders drawn by a #GtkTreeView.
 */
public enum GtkExpanderStyle
{
	/**
	 * The style used for a collapsed subtree.
	 */
	COLLAPSED = 0,
	/**
	 * Intermediate style used during animation.
	 */
	SEMI_COLLAPSED = 1,
	/**
	 * Intermediate style used during animation.
	 */
	SEMI_EXPANDED = 2,
	/**
	 * The style used for an expanded subtree.
	 */
	EXPANDED = 3,
}
alias GtkExpanderStyle ExpanderStyle;

/**
 * Describes whether a #GtkFileChooser is being used to open existing files
 * or to save to a possibly new file.
 */
public enum GtkFileChooserAction
{
	/**
	 * Indicates open mode.  The file chooser
	 * will only let the user pick an existing file.
	 */
	OPEN = 0,
	/**
	 * Indicates save mode.  The file chooser
	 * will let the user pick an existing file, or type in a new
	 * filename.
	 */
	SAVE = 1,
	/**
	 * Indicates an Open mode for
	 * selecting folders.  The file chooser will let the user pick an
	 * existing folder.
	 */
	SELECT_FOLDER = 2,
	/**
	 * Indicates a mode for creating a
	 * new folder.  The file chooser will let the user name an existing or
	 * new folder.
	 */
	CREATE_FOLDER = 3,
}
alias GtkFileChooserAction FileChooserAction;

/**
 * Used as a return value of handlers for the
 * #GtkFileChooser::confirm-overwrite signal of a #GtkFileChooser. This
 * value determines whether the file chooser will present the stock
 * confirmation dialog, accept the user’s choice of a filename, or
 * let the user choose another filename.
 *
 * Since: 2.8
 */
public enum GtkFileChooserConfirmation
{
	/**
	 * The file chooser will present
	 * its stock dialog to confirm about overwriting an existing file.
	 */
	CONFIRM = 0,
	/**
	 * The file chooser will
	 * terminate and accept the user’s choice of a file name.
	 */
	ACCEPT_FILENAME = 1,
	/**
	 * The file chooser will
	 * continue running, so as to let the user select another file name.
	 */
	SELECT_AGAIN = 2,
}
alias GtkFileChooserConfirmation FileChooserConfirmation;

/**
 * These identify the various errors that can occur while calling
 * #GtkFileChooser functions.
 */
public enum GtkFileChooserError
{
	/**
	 * Indicates that a file does not exist.
	 */
	NONEXISTENT = 0,
	/**
	 * Indicates a malformed filename.
	 */
	BAD_FILENAME = 1,
	/**
	 * Indicates a duplicate path (e.g. when
	 * adding a bookmark).
	 */
	ALREADY_EXISTS = 2,
	/**
	 * Indicates an incomplete hostname (e.g. "http://foo" without a slash after that).
	 */
	INCOMPLETE_HOSTNAME = 3,
}
alias GtkFileChooserError FileChooserError;

/**
 * These flags indicate what parts of a #GtkFileFilterInfo struct
 * are filled or need to be filled.
 */
public enum GtkFileFilterFlags
{
	/**
	 * the filename of the file being tested
	 */
	FILENAME = 1,
	/**
	 * the URI for the file being tested
	 */
	URI = 2,
	/**
	 * the string that will be used to
	 * display the file in the file chooser
	 */
	DISPLAY_NAME = 4,
	/**
	 * the mime type of the file
	 */
	MIME_TYPE = 8,
}
alias GtkFileFilterFlags FileFilterFlags;

/**
 * Style for input method preedit. See also
 * #GtkSettings:gtk-im-preedit-style
 */
public enum GtkIMPreeditStyle
{
	/**
	 * Deprecated
	 */
	NOTHING = 0,
	/**
	 * Deprecated
	 */
	CALLBACK = 1,
	/**
	 * Deprecated
	 */
	NONE = 2,
}
alias GtkIMPreeditStyle IMPreeditStyle;

/**
 * Style for input method status. See also
 * #GtkSettings:gtk-im-status-style
 */
public enum GtkIMStatusStyle
{
	/**
	 * Deprecated
	 */
	NOTHING = 0,
	/**
	 * Deprecated
	 */
	CALLBACK = 1,
	/**
	 * Deprecated
	 */
	NONE = 2,
}
alias GtkIMStatusStyle IMStatusStyle;

/**
 * Used to specify options for gtk_icon_theme_lookup_icon()
 */
public enum GtkIconLookupFlags
{
	/**
	 * Never get SVG icons, even if gdk-pixbuf
	 * supports them. Cannot be used together with %GTK_ICON_LOOKUP_FORCE_SVG.
	 */
	NO_SVG = 1,
	/**
	 * Get SVG icons, even if gdk-pixbuf
	 * doesn’t support them.
	 * Cannot be used together with %GTK_ICON_LOOKUP_NO_SVG.
	 */
	FORCE_SVG = 2,
	/**
	 * When passed to
	 * gtk_icon_theme_lookup_icon() includes builtin icons
	 * as well as files. For a builtin icon, gtk_icon_info_get_filename()
	 * is %NULL and you need to call gtk_icon_info_get_builtin_pixbuf().
	 */
	USE_BUILTIN = 4,
	/**
	 * Try to shorten icon name at '-'
	 * characters before looking at inherited themes. This flag is only
	 * supported in functions that take a single icon name. For more general
	 * fallback, see gtk_icon_theme_choose_icon(). Since 2.12.
	 */
	GENERIC_FALLBACK = 8,
	/**
	 * Always get the icon scaled to the
	 * requested size. Since 2.14.
	 */
	FORCE_SIZE = 16,
	/**
	 * Try to always load regular icons, even
	 * when symbolic icon names are given. Since 3.14.
	 */
	FORCE_REGULAR = 32,
	/**
	 * Try to always load symbolic icons, even
	 * when regular icon names are given. Since 3.14.
	 */
	FORCE_SYMBOLIC = 64,
	/**
	 * Try to load a variant of the icon for left-to-right
	 * text direction. Since 3.14.
	 */
	DIR_LTR = 128,
	/**
	 * Try to load a variant of the icon for right-to-left
	 * text direction. Since 3.14.
	 */
	DIR_RTL = 256,
}
alias GtkIconLookupFlags IconLookupFlags;

/**
 * Built-in stock icon sizes.
 */
public enum GtkIconSize
{
	/**
	 * Invalid size.
	 */
	INVALID = 0,
	/**
	 * Size appropriate for menus (16px).
	 */
	MENU = 1,
	/**
	 * Size appropriate for small toolbars (16px).
	 */
	SMALL_TOOLBAR = 2,
	/**
	 * Size appropriate for large toolbars (24px)
	 */
	LARGE_TOOLBAR = 3,
	/**
	 * Size appropriate for buttons (16px)
	 */
	BUTTON = 4,
	/**
	 * Size appropriate for drag and drop (32px)
	 */
	DND = 5,
	/**
	 * Size appropriate for dialogs (48px)
	 */
	DIALOG = 6,
}
alias GtkIconSize IconSize;

/**
 * Error codes for GtkIconTheme operations.
 */
public enum GtkIconThemeError
{
	/**
	 * The icon specified does not exist in the theme
	 */
	NOT_FOUND = 0,
	/**
	 * An unspecified error occurred.
	 */
	FAILED = 1,
}
alias GtkIconThemeError IconThemeError;

/**
 * An enum for determining where a dropped item goes.
 */
public enum GtkIconViewDropPosition
{
	/**
	 * no drop possible
	 */
	NO_DROP = 0,
	/**
	 * dropped item replaces the item
	 */
	DROP_INTO = 1,
	/**
	 * droppped item is inserted to the left
	 */
	DROP_LEFT = 2,
	/**
	 * dropped item is inserted to the right
	 */
	DROP_RIGHT = 3,
	/**
	 * dropped item is inserted above
	 */
	DROP_ABOVE = 4,
	/**
	 * dropped item is inserted below
	 */
	DROP_BELOW = 5,
}
alias GtkIconViewDropPosition IconViewDropPosition;

/**
 * Describes the image data representation used by a #GtkImage. If you
 * want to get the image from the widget, you can only get the
 * currently-stored representation. e.g.  if the
 * gtk_image_get_storage_type() returns #GTK_IMAGE_PIXBUF, then you can
 * call gtk_image_get_pixbuf() but not gtk_image_get_stock().  For empty
 * images, you can request any storage type (call any of the "get"
 * functions), but they will all return %NULL values.
 */
public enum GtkImageType
{
	/**
	 * there is no image displayed by the widget
	 */
	EMPTY = 0,
	/**
	 * the widget contains a #GdkPixbuf
	 */
	PIXBUF = 1,
	/**
	 * the widget contains a [stock item name][gtkstock]
	 */
	STOCK = 2,
	/**
	 * the widget contains a #GtkIconSet
	 */
	ICON_SET = 3,
	/**
	 * the widget contains a #GdkPixbufAnimation
	 */
	ANIMATION = 4,
	/**
	 * the widget contains a named icon.
	 * This image type was added in GTK+ 2.6
	 */
	ICON_NAME = 5,
	/**
	 * the widget contains a #GIcon.
	 * This image type was added in GTK+ 2.14
	 */
	GICON = 6,
	/**
	 * the widget contains a #cairo_surface_t.
	 * This image type was added in GTK+ 3.10
	 */
	SURFACE = 7,
}
alias GtkImageType ImageType;

/**
 * Describes hints that might be taken into account by input methods
 * or applications. Note that input methods may already tailor their
 * behaviour according to the #GtkInputPurpose of the entry.
 *
 * Some common sense is expected when using these flags - mixing
 * @GTK_INPUT_HINT_LOWERCASE with any of the uppercase hints makes no sense.
 *
 * This enumeration may be extended in the future; input methods should
 * ignore unknown values.
 *
 * Since: 3.6
 */
public enum GtkInputHints
{
	/**
	 * No special behaviour suggested
	 */
	NONE = 0,
	/**
	 * Suggest checking for typos
	 */
	SPELLCHECK = 1,
	/**
	 * Suggest not checking for typos
	 */
	NO_SPELLCHECK = 2,
	/**
	 * Suggest word completion
	 */
	WORD_COMPLETION = 4,
	/**
	 * Suggest to convert all text to lowercase
	 */
	LOWERCASE = 8,
	/**
	 * Suggest to capitalize all text
	 */
	UPPERCASE_CHARS = 16,
	/**
	 * Suggest to capitalize the first
	 * character of each word
	 */
	UPPERCASE_WORDS = 32,
	/**
	 * Suggest to capitalize the
	 * first word of each sentence
	 */
	UPPERCASE_SENTENCES = 64,
	/**
	 * Suggest to not show an onscreen keyboard
	 * (e.g for a calculator that already has all the keys).
	 */
	INHIBIT_OSK = 128,
	/**
	 * The text is vertical. Since 3.18
	 */
	VERTICAL_WRITING = 256,
}
alias GtkInputHints InputHints;

/**
 * Describes primary purpose of the input widget. This information is
 * useful for on-screen keyboards and similar input methods to decide
 * which keys should be presented to the user.
 *
 * Note that the purpose is not meant to impose a totally strict rule
 * about allowed characters, and does not replace input validation.
 * It is fine for an on-screen keyboard to let the user override the
 * character set restriction that is expressed by the purpose. The
 * application is expected to validate the entry contents, even if
 * it specified a purpose.
 *
 * The difference between @GTK_INPUT_PURPOSE_DIGITS and
 * @GTK_INPUT_PURPOSE_NUMBER is that the former accepts only digits
 * while the latter also some punctuation (like commas or points, plus,
 * minus) and “e” or “E” as in 3.14E+000.
 *
 * This enumeration may be extended in the future; input methods should
 * interpret unknown values as “free form”.
 *
 * Since: 3.6
 */
public enum GtkInputPurpose
{
	/**
	 * Allow any character
	 */
	FREE_FORM = 0,
	/**
	 * Allow only alphabetic characters
	 */
	ALPHA = 1,
	/**
	 * Allow only digits
	 */
	DIGITS = 2,
	/**
	 * Edited field expects numbers
	 */
	NUMBER = 3,
	/**
	 * Edited field expects phone number
	 */
	PHONE = 4,
	/**
	 * Edited field expects URL
	 */
	URL = 5,
	/**
	 * Edited field expects email address
	 */
	EMAIL = 6,
	/**
	 * Edited field expects the name of a person
	 */
	NAME = 7,
	/**
	 * Like @GTK_INPUT_PURPOSE_FREE_FORM, but characters are hidden
	 */
	PASSWORD = 8,
	/**
	 * Like @GTK_INPUT_PURPOSE_DIGITS, but characters are hidden
	 */
	PIN = 9,
}
alias GtkInputPurpose InputPurpose;

/**
 * Describes how a rendered element connects to adjacent elements.
 */
public enum GtkJunctionSides
{
	/**
	 * No junctions.
	 */
	NONE = 0,
	/**
	 * Element connects on the top-left corner.
	 */
	CORNER_TOPLEFT = 1,
	/**
	 * Element connects on the top-right corner.
	 */
	CORNER_TOPRIGHT = 2,
	/**
	 * Element connects on the bottom-left corner.
	 */
	CORNER_BOTTOMLEFT = 4,
	/**
	 * Element connects on the bottom-right corner.
	 */
	CORNER_BOTTOMRIGHT = 8,
	/**
	 * Element connects on the top side.
	 */
	TOP = 3,
	/**
	 * Element connects on the bottom side.
	 */
	BOTTOM = 12,
	/**
	 * Element connects on the left side.
	 */
	LEFT = 5,
	/**
	 * Element connects on the right side.
	 */
	RIGHT = 10,
}
alias GtkJunctionSides JunctionSides;

/**
 * Used for justifying the text inside a #GtkLabel widget. (See also
 * #GtkAlignment).
 */
public enum GtkJustification
{
	/**
	 * The text is placed at the left edge of the label.
	 */
	LEFT = 0,
	/**
	 * The text is placed at the right edge of the label.
	 */
	RIGHT = 1,
	/**
	 * The text is placed in the center of the label.
	 */
	CENTER = 2,
	/**
	 * The text is placed is distributed across the label.
	 */
	FILL = 3,
}
alias GtkJustification Justification;

/**
 * Describes how #GtkLevelBar contents should be rendered.
 * Note that this enumeration could be extended with additional modes
 * in the future.
 *
 * Since: 3.6
 */
public enum GtkLevelBarMode
{
	/**
	 * the bar has a continuous mode
	 */
	CONTINUOUS = 0,
	/**
	 * the bar has a discrete mode
	 */
	DISCRETE = 1,
}
alias GtkLevelBarMode LevelBarMode;

/**
 * The type of license for an application.
 *
 * This enumeration can be expanded at later date.
 *
 * Since: 3.0
 */
public enum GtkLicense
{
	/**
	 * No license specified
	 */
	UNKNOWN = 0,
	/**
	 * A license text is going to be specified by the
	 * developer
	 */
	CUSTOM = 1,
	/**
	 * The GNU General Public License, version 2.0 or later
	 */
	GPL_2_0 = 2,
	/**
	 * The GNU General Public License, version 3.0 or later
	 */
	GPL_3_0 = 3,
	/**
	 * The GNU Lesser General Public License, version 2.1 or later
	 */
	LGPL_2_1 = 4,
	/**
	 * The GNU Lesser General Public License, version 3.0 or later
	 */
	LGPL_3_0 = 5,
	/**
	 * The BSD standard license
	 */
	BSD = 6,
	/**
	 * The MIT/X11 standard license
	 */
	MIT_X11 = 7,
	/**
	 * The Artistic License, version 2.0
	 */
	ARTISTIC = 8,
	/**
	 * The GNU General Public License, version 2.0 only. Since 3.12.
	 */
	GPL_2_0_ONLY = 9,
	/**
	 * The GNU General Public License, version 3.0 only. Since 3.12.
	 */
	GPL_3_0_ONLY = 10,
	/**
	 * The GNU Lesser General Public License, version 2.1 only. Since 3.12.
	 */
	LGPL_2_1_ONLY = 11,
	/**
	 * The GNU Lesser General Public License, version 3.0 only. Since 3.12.
	 */
	LGPL_3_0_ONLY = 12,
}
alias GtkLicense License;

/**
 * An enumeration representing directional movements within a menu.
 */
public enum GtkMenuDirectionType
{
	/**
	 * To the parent menu shell
	 */
	PARENT = 0,
	/**
	 * To the submenu, if any, associated with the item
	 */
	CHILD = 1,
	/**
	 * To the next menu item
	 */
	NEXT = 2,
	/**
	 * To the previous menu item
	 */
	PREV = 3,
}
alias GtkMenuDirectionType MenuDirectionType;

/**
 * The type of message being displayed in the dialog.
 */
public enum GtkMessageType : uint
{
	/**
	 * Informational message
	 */
	INFO = 0,
	/**
	 * Non-fatal warning message
	 */
	WARNING = 1,
	/**
	 * Question requiring a choice
	 */
	QUESTION = 2,
	/**
	 * Fatal error message
	 */
	ERROR = 3,
	/**
	 * None of the above
	 */
	OTHER = 4,
}
alias GtkMessageType MessageType;

public enum GtkMovementStep
{
	/**
	 * Move forward or back by graphemes
	 */
	LOGICAL_POSITIONS = 0,
	/**
	 * Move left or right by graphemes
	 */
	VISUAL_POSITIONS = 1,
	/**
	 * Move forward or back by words
	 */
	WORDS = 2,
	/**
	 * Move up or down lines (wrapped lines)
	 */
	DISPLAY_LINES = 3,
	/**
	 * Move to either end of a line
	 */
	DISPLAY_LINE_ENDS = 4,
	/**
	 * Move up or down paragraphs (newline-ended lines)
	 */
	PARAGRAPHS = 5,
	/**
	 * Move to either end of a paragraph
	 */
	PARAGRAPH_ENDS = 6,
	/**
	 * Move by pages
	 */
	PAGES = 7,
	/**
	 * Move to ends of the buffer
	 */
	BUFFER_ENDS = 8,
	/**
	 * Move horizontally by pages
	 */
	HORIZONTAL_PAGES = 9,
}
alias GtkMovementStep MovementStep;

public enum GtkNotebookTab
{
	FIRST = 0,
	LAST = 1,
}
alias GtkNotebookTab NotebookTab;

/**
 * Used to determine the layout of pages on a sheet when printing
 * multiple pages per sheet.
 */
public enum GtkNumberUpLayout
{
	/**
	 * ![](layout-lrtb.png)
	 */
	LRTB = 0,
	/**
	 * ![](layout-lrbt.png)
	 */
	LRBT = 1,
	/**
	 * ![](layout-rltb.png)
	 */
	RLTB = 2,
	/**
	 * ![](layout-rlbt.png)
	 */
	RLBT = 3,
	/**
	 * ![](layout-tblr.png)
	 */
	TBLR = 4,
	/**
	 * ![](layout-tbrl.png)
	 */
	TBRL = 5,
	/**
	 * ![](layout-btlr.png)
	 */
	BTLR = 6,
	/**
	 * ![](layout-btrl.png)
	 */
	BTRL = 7,
}
alias GtkNumberUpLayout NumberUpLayout;

/**
 * Represents the orientation of widgets and other objects which can be switched
 * between horizontal and vertical orientation on the fly, like #GtkToolbar or
 * #GtkGesturePan.
 */
public enum GtkOrientation
{
	/**
	 * The element is in horizontal orientation.
	 */
	HORIZONTAL = 0,
	/**
	 * The element is in vertical orientation.
	 */
	VERTICAL = 1,
}
alias GtkOrientation Orientation;

/**
 * Determines how widgets should be packed inside menubars
 * and menuitems contained in menubars.
 */
public enum GtkPackDirection
{
	/**
	 * Widgets are packed left-to-right
	 */
	LTR = 0,
	/**
	 * Widgets are packed right-to-left
	 */
	RTL = 1,
	/**
	 * Widgets are packed top-to-bottom
	 */
	TTB = 2,
	/**
	 * Widgets are packed bottom-to-top
	 */
	BTT = 3,
}
alias GtkPackDirection PackDirection;

/**
 * Represents the packing location #GtkBox children. (See: #GtkVBox,
 * #GtkHBox, and #GtkButtonBox).
 */
public enum GtkPackType
{
	/**
	 * The child is packed into the start of the box
	 */
	START = 0,
	/**
	 * The child is packed into the end of the box
	 */
	END = 1,
}
alias GtkPackType PackType;

/**
 * See also gtk_print_settings_set_orientation().
 */
public enum GtkPageOrientation
{
	/**
	 * Portrait mode.
	 */
	PORTRAIT = 0,
	/**
	 * Landscape mode.
	 */
	LANDSCAPE = 1,
	/**
	 * Reverse portrait mode.
	 */
	REVERSE_PORTRAIT = 2,
	/**
	 * Reverse landscape mode.
	 */
	REVERSE_LANDSCAPE = 3,
}
alias GtkPageOrientation PageOrientation;

/**
 * See also gtk_print_job_set_page_set().
 */
public enum GtkPageSet
{
	/**
	 * All pages.
	 */
	ALL = 0,
	/**
	 * Even pages.
	 */
	EVEN = 1,
	/**
	 * Odd pages.
	 */
	ODD = 2,
}
alias GtkPageSet PageSet;

/**
 * Describes the panning direction of a #GtkGesturePan
 *
 * Since: 3.14
 */
public enum GtkPanDirection
{
	/**
	 * panned towards the left
	 */
	LEFT = 0,
	/**
	 * panned towards the right
	 */
	RIGHT = 1,
	/**
	 * panned upwards
	 */
	UP = 2,
	/**
	 * panned downwards
	 */
	DOWN = 3,
}
alias GtkPanDirection PanDirection;

/**
 * Priorities for path lookups.
 * See also gtk_binding_set_add_path().
 */
public enum GtkPathPriorityType
{
	/**
	 * Deprecated
	 */
	LOWEST = 0,
	/**
	 * Deprecated
	 */
	GTK = 4,
	/**
	 * Deprecated
	 */
	APPLICATION = 8,
	/**
	 * Deprecated
	 */
	THEME = 10,
	/**
	 * Deprecated
	 */
	RC = 12,
	/**
	 * Deprecated
	 */
	HIGHEST = 15,
}
alias GtkPathPriorityType PathPriorityType;

/**
 * Widget path types.
 * See also gtk_binding_set_add_path().
 */
public enum GtkPathType
{
	/**
	 * Deprecated
	 */
	WIDGET = 0,
	/**
	 * Deprecated
	 */
	WIDGET_CLASS = 1,
	/**
	 * Deprecated
	 */
	CLASS = 2,
}
alias GtkPathType PathType;

/**
 * These flags serve two purposes.  First, the application can call gtk_places_sidebar_set_open_flags()
 * using these flags as a bitmask.  This tells the sidebar that the application is able to open
 * folders selected from the sidebar in various ways, for example, in new tabs or in new windows in
 * addition to the normal mode.
 *
 * Second, when one of these values gets passed back to the application in the
 * #GtkPlacesSidebar::open-location signal, it means that the application should
 * open the selected location in the normal way, in a new tab, or in a new
 * window.  The sidebar takes care of determining the desired way to open the location,
 * based on the modifier keys that the user is pressing at the time the selection is made.
 *
 * If the application never calls gtk_places_sidebar_set_open_flags(), then the sidebar will only
 * use #GTK_PLACES_OPEN_NORMAL in the #GtkPlacesSidebar::open-location signal.  This is the
 * default mode of operation.
 */
public enum GtkPlacesOpenFlags
{
	/**
	 * This is the default mode that #GtkPlacesSidebar uses if no other flags
	 * are specified.  It indicates that the calling application should open the selected location
	 * in the normal way, for example, in the folder view beside the sidebar.
	 */
	NORMAL = 1,
	/**
	 * When passed to gtk_places_sidebar_set_open_flags(), this indicates
	 * that the application can open folders selected from the sidebar in new tabs.  This value
	 * will be passed to the #GtkPlacesSidebar::open-location signal when the user selects
	 * that a location be opened in a new tab instead of in the standard fashion.
	 */
	NEW_TAB = 2,
	/**
	 * Similar to @GTK_PLACES_OPEN_NEW_TAB, but indicates that the application
	 * can open folders in new windows.
	 */
	NEW_WINDOW = 4,
}
alias GtkPlacesOpenFlags PlacesOpenFlags;

/**
 * Determines how the size should be computed to achieve the one of the
 * visibility mode for the scrollbars.
 */
public enum GtkPolicyType
{
	/**
	 * The scrollbar is always visible. The view size is
	 * independent of the content.
	 */
	ALWAYS = 0,
	/**
	 * The scrollbar will appear and disappear as necessary.
	 * For example, when all of a #GtkTreeView can not be seen.
	 */
	AUTOMATIC = 1,
	/**
	 * The scrollbar should never appear. In this mode the
	 * content determines the size.
	 */
	NEVER = 2,
	/**
	 * Don't show a scrollbar, but don't force the
	 * size to follow the content. This can be used e.g. to make multiple
	 * scrolled windows share a scrollbar. Since: 3.16
	 */
	EXTERNAL = 3,
}
alias GtkPolicyType PolicyType;

/**
 * Describes constraints to positioning of popovers. More values
 * may be added to this enumeration in the future.
 *
 * Since: 3.20
 */
public enum GtkPopoverConstraint
{
	/**
	 * Don't constrain the popover position
	 * beyond what is imposed by the implementation
	 */
	NONE = 0,
	/**
	 * Constrain the popover to the boundaries
	 * of the window that it is attached to
	 */
	WINDOW = 1,
}
alias GtkPopoverConstraint PopoverConstraint;

/**
 * Describes which edge of a widget a certain feature is positioned at, e.g. the
 * tabs of a #GtkNotebook, the handle of a #GtkHandleBox or the label of a
 * #GtkScale.
 */
public enum GtkPositionType
{
	/**
	 * The feature is at the left edge.
	 */
	LEFT = 0,
	/**
	 * The feature is at the right edge.
	 */
	RIGHT = 1,
	/**
	 * The feature is at the top edge.
	 */
	TOP = 2,
	/**
	 * The feature is at the bottom edge.
	 */
	BOTTOM = 3,
}
alias GtkPositionType PositionType;

/**
 * See also gtk_print_settings_set_duplex().
 */
public enum GtkPrintDuplex
{
	/**
	 * No duplex.
	 */
	SIMPLEX = 0,
	/**
	 * Horizontal duplex.
	 */
	HORIZONTAL = 1,
	/**
	 * Vertical duplex.
	 */
	VERTICAL = 2,
}
alias GtkPrintDuplex PrintDuplex;

/**
 * Error codes that identify various errors that can occur while
 * using the GTK+ printing support.
 */
public enum GtkPrintError
{
	/**
	 * An unspecified error occurred.
	 */
	GENERAL = 0,
	/**
	 * An internal error occurred.
	 */
	INTERNAL_ERROR = 1,
	/**
	 * A memory allocation failed.
	 */
	NOMEM = 2,
	/**
	 * An error occurred while loading a page setup
	 * or paper size from a key file.
	 */
	INVALID_FILE = 3,
}
alias GtkPrintError PrintError;

/**
 * The @action parameter to gtk_print_operation_run()
 * determines what action the print operation should perform.
 */
public enum GtkPrintOperationAction
{
	/**
	 * Show the print dialog.
	 */
	PRINT_DIALOG = 0,
	/**
	 * Start to print without showing
	 * the print dialog, based on the current print settings.
	 */
	PRINT = 1,
	/**
	 * Show the print preview.
	 */
	PREVIEW = 2,
	/**
	 * Export to a file. This requires
	 * the export-filename property to be set.
	 */
	EXPORT = 3,
}
alias GtkPrintOperationAction PrintOperationAction;

/**
 * A value of this type is returned by gtk_print_operation_run().
 */
public enum GtkPrintOperationResult
{
	/**
	 * An error has occurred.
	 */
	ERROR = 0,
	/**
	 * The print settings should be stored.
	 */
	APPLY = 1,
	/**
	 * The print operation has been canceled,
	 * the print settings should not be stored.
	 */
	CANCEL = 2,
	/**
	 * The print operation is not complete
	 * yet. This value will only be returned when running asynchronously.
	 */
	IN_PROGRESS = 3,
}
alias GtkPrintOperationResult PrintOperationResult;

/**
 * See also gtk_print_job_set_pages()
 */
public enum GtkPrintPages
{
	/**
	 * All pages.
	 */
	ALL = 0,
	/**
	 * Current page.
	 */
	CURRENT = 1,
	/**
	 * Range of pages.
	 */
	RANGES = 2,
	/**
	 * Selected pages.
	 */
	SELECTION = 3,
}
alias GtkPrintPages PrintPages;

/**
 * See also gtk_print_settings_set_quality().
 */
public enum GtkPrintQuality
{
	/**
	 * Low quality.
	 */
	LOW = 0,
	/**
	 * Normal quality.
	 */
	NORMAL = 1,
	/**
	 * High quality.
	 */
	HIGH = 2,
	/**
	 * Draft quality.
	 */
	DRAFT = 3,
}
alias GtkPrintQuality PrintQuality;

/**
 * The status gives a rough indication of the completion of a running
 * print operation.
 */
public enum GtkPrintStatus
{
	/**
	 * The printing has not started yet; this
	 * status is set initially, and while the print dialog is shown.
	 */
	INITIAL = 0,
	/**
	 * This status is set while the begin-print
	 * signal is emitted and during pagination.
	 */
	PREPARING = 1,
	/**
	 * This status is set while the
	 * pages are being rendered.
	 */
	GENERATING_DATA = 2,
	/**
	 * The print job is being sent off to the
	 * printer.
	 */
	SENDING_DATA = 3,
	/**
	 * The print job has been sent to the printer,
	 * but is not printed for some reason, e.g. the printer may be stopped.
	 */
	PENDING = 4,
	/**
	 * Some problem has occurred during
	 * printing, e.g. a paper jam.
	 */
	PENDING_ISSUE = 5,
	/**
	 * The printer is processing the print job.
	 */
	PRINTING = 6,
	/**
	 * The printing has been completed successfully.
	 */
	FINISHED = 7,
	/**
	 * The printing has been aborted.
	 */
	FINISHED_ABORTED = 8,
}
alias GtkPrintStatus PrintStatus;

/**
 * Describes the stage at which events are fed into a #GtkEventController.
 *
 * Since: 3.14
 */
public enum GtkPropagationPhase
{
	/**
	 * Events are not delivered automatically. Those can be
	 * manually fed through gtk_event_controller_handle_event(). This should
	 * only be used when full control about when, or whether the controller
	 * handles the event is needed.
	 */
	NONE = 0,
	/**
	 * Events are delivered in the capture phase. The
	 * capture phase happens before the bubble phase, runs from the toplevel down
	 * to the event widget. This option should only be used on containers that
	 * might possibly handle events before their children do.
	 */
	CAPTURE = 1,
	/**
	 * Events are delivered in the bubble phase. The bubble
	 * phase happens after the capture phase, and before the default handlers
	 * are run. This phase runs from the event widget, up to the toplevel.
	 */
	BUBBLE = 2,
	/**
	 * Events are delivered in the default widget event handlers,
	 * note that widget implementations must chain up on button, motion, touch and
	 * grab broken handlers for controllers in this phase to be run.
	 */
	TARGET = 3,
}
alias GtkPropagationPhase PropagationPhase;

/**
 * Deprecated
 */
public enum GtkRcFlags
{
	/**
	 * Deprecated
	 */
	FG = 1,
	/**
	 * Deprecated
	 */
	BG = 2,
	/**
	 * Deprecated
	 */
	TEXT = 4,
	/**
	 * Deprecated
	 */
	BASE = 8,
}
alias GtkRcFlags RcFlags;

/**
 * The #GtkRcTokenType enumeration represents the tokens
 * in the RC file. It is exposed so that theme engines
 * can reuse these tokens when parsing the theme-engine
 * specific portions of a RC file.
 *
 * Deprecated: Use #GtkCssProvider instead.
 */
public enum GtkRcTokenType
{
	/**
	 * Deprecated
	 */
	INVALID = 270,
	/**
	 * Deprecated
	 */
	INCLUDE = 271,
	/**
	 * Deprecated
	 */
	NORMAL = 272,
	/**
	 * Deprecated
	 */
	ACTIVE = 273,
	/**
	 * Deprecated
	 */
	PRELIGHT = 274,
	/**
	 * Deprecated
	 */
	SELECTED = 275,
	/**
	 * Deprecated
	 */
	INSENSITIVE = 276,
	/**
	 * Deprecated
	 */
	FG = 277,
	/**
	 * Deprecated
	 */
	BG = 278,
	/**
	 * Deprecated
	 */
	TEXT = 279,
	/**
	 * Deprecated
	 */
	BASE = 280,
	/**
	 * Deprecated
	 */
	XTHICKNESS = 281,
	/**
	 * Deprecated
	 */
	YTHICKNESS = 282,
	/**
	 * Deprecated
	 */
	FONT = 283,
	/**
	 * Deprecated
	 */
	FONTSET = 284,
	/**
	 * Deprecated
	 */
	FONT_NAME = 285,
	/**
	 * Deprecated
	 */
	BG_PIXMAP = 286,
	/**
	 * Deprecated
	 */
	PIXMAP_PATH = 287,
	/**
	 * Deprecated
	 */
	STYLE = 288,
	/**
	 * Deprecated
	 */
	BINDING = 289,
	/**
	 * Deprecated
	 */
	BIND = 290,
	/**
	 * Deprecated
	 */
	WIDGET = 291,
	/**
	 * Deprecated
	 */
	WIDGET_CLASS = 292,
	/**
	 * Deprecated
	 */
	CLASS = 293,
	/**
	 * Deprecated
	 */
	LOWEST = 294,
	/**
	 * Deprecated
	 */
	GTK = 295,
	/**
	 * Deprecated
	 */
	APPLICATION = 296,
	/**
	 * Deprecated
	 */
	THEME = 297,
	/**
	 * Deprecated
	 */
	RC = 298,
	/**
	 * Deprecated
	 */
	HIGHEST = 299,
	/**
	 * Deprecated
	 */
	ENGINE = 300,
	/**
	 * Deprecated
	 */
	MODULE_PATH = 301,
	/**
	 * Deprecated
	 */
	IM_MODULE_PATH = 302,
	/**
	 * Deprecated
	 */
	IM_MODULE_FILE = 303,
	/**
	 * Deprecated
	 */
	STOCK = 304,
	/**
	 * Deprecated
	 */
	LTR = 305,
	/**
	 * Deprecated
	 */
	RTL = 306,
	/**
	 * Deprecated
	 */
	COLOR = 307,
	/**
	 * Deprecated
	 */
	UNBIND = 308,
	/**
	 * Deprecated
	 */
	LAST = 309,
}
alias GtkRcTokenType RcTokenType;

/**
 * These identify the various errors that can occur while calling
 * #GtkRecentChooser functions.
 *
 * Since: 2.10
 */
public enum GtkRecentChooserError
{
	/**
	 * Indicates that a file does not exist
	 */
	NOT_FOUND = 0,
	/**
	 * Indicates a malformed URI
	 */
	INVALID_URI = 1,
}
alias GtkRecentChooserError RecentChooserError;

/**
 * These flags indicate what parts of a #GtkRecentFilterInfo struct
 * are filled or need to be filled.
 */
public enum GtkRecentFilterFlags
{
	/**
	 * the URI of the file being tested
	 */
	URI = 1,
	/**
	 * the string that will be used to
	 * display the file in the recent chooser
	 */
	DISPLAY_NAME = 2,
	/**
	 * the mime type of the file
	 */
	MIME_TYPE = 4,
	/**
	 * the list of applications that have
	 * registered the file
	 */
	APPLICATION = 8,
	/**
	 * the groups to which the file belongs to
	 */
	GROUP = 16,
	/**
	 * the number of days elapsed since the file
	 * has been registered
	 */
	AGE = 32,
}
alias GtkRecentFilterFlags RecentFilterFlags;

/**
 * Error codes for #GtkRecentManager operations
 *
 * Since: 2.10
 */
public enum GtkRecentManagerError
{
	/**
	 * the URI specified does not exists in
	 * the recently used resources list.
	 */
	NOT_FOUND = 0,
	/**
	 * the URI specified is not valid.
	 */
	INVALID_URI = 1,
	/**
	 * the supplied string is not
	 * UTF-8 encoded.
	 */
	INVALID_ENCODING = 2,
	/**
	 * no application has registered
	 * the specified item.
	 */
	NOT_REGISTERED = 3,
	/**
	 * failure while reading the recently used
	 * resources file.
	 */
	READ = 4,
	/**
	 * failure while writing the recently used
	 * resources file.
	 */
	WRITE = 5,
	/**
	 * unspecified error.
	 */
	UNKNOWN = 6,
}
alias GtkRecentManagerError RecentManagerError;

/**
 * Used to specify the sorting method to be applyed to the recently
 * used resource list.
 *
 * Since: 2.10
 */
public enum GtkRecentSortType
{
	/**
	 * Do not sort the returned list of recently used
	 * resources.
	 */
	NONE = 0,
	/**
	 * Sort the returned list with the most recently used
	 * items first.
	 */
	MRU = 1,
	/**
	 * Sort the returned list with the least recently used
	 * items first.
	 */
	LRU = 2,
	/**
	 * Sort the returned list using a custom sorting
	 * function passed using gtk_recent_chooser_set_sort_func().
	 */
	CUSTOM = 3,
}
alias GtkRecentSortType RecentSortType;

/**
 * Describes a region within a widget.
 */
public enum GtkRegionFlags
{
	/**
	 * Region has an even number within a set.
	 */
	EVEN = 1,
	/**
	 * Region has an odd number within a set.
	 */
	ODD = 2,
	/**
	 * Region is the first one within a set.
	 */
	FIRST = 4,
	/**
	 * Region is the last one within a set.
	 */
	LAST = 8,
	/**
	 * Region is the only one within a set.
	 */
	ONLY = 16,
	/**
	 * Region is part of a sorted area.
	 */
	SORTED = 32,
}
alias GtkRegionFlags RegionFlags;

/**
 * Indicated the relief to be drawn around a #GtkButton.
 */
public enum GtkReliefStyle
{
	/**
	 * Draw a normal relief.
	 */
	NORMAL = 0,
	/**
	 * A half relief. Deprecated in 3.14, does the same as @GTK_RELIEF_NORMAL
	 */
	HALF = 1,
	/**
	 * No relief.
	 */
	NONE = 2,
}
alias GtkReliefStyle ReliefStyle;

public enum GtkResizeMode
{
	/**
	 * Pass resize request to the parent
	 */
	PARENT = 0,
	/**
	 * Queue resizes on this widget
	 */
	QUEUE = 1,
	/**
	 * Resize immediately. Deprecated.
	 */
	IMMEDIATE = 2,
}
alias GtkResizeMode ResizeMode;

/**
 * Predefined values for use as response ids in gtk_dialog_add_button().
 * All predefined values are negative, GTK+ leaves positive values for
 * application-defined response ids.
 */
public enum GtkResponseType
{
	/**
	 * Returned if an action widget has no response id,
	 * or if the dialog gets programmatically hidden or destroyed
	 */
	NONE = -1,
	/**
	 * Generic response id, not used by GTK+ dialogs
	 */
	REJECT = -2,
	/**
	 * Generic response id, not used by GTK+ dialogs
	 */
	ACCEPT = -3,
	/**
	 * Returned if the dialog is deleted
	 */
	DELETE_EVENT = -4,
	/**
	 * Returned by OK buttons in GTK+ dialogs
	 */
	OK = -5,
	/**
	 * Returned by Cancel buttons in GTK+ dialogs
	 */
	CANCEL = -6,
	/**
	 * Returned by Close buttons in GTK+ dialogs
	 */
	CLOSE = -7,
	/**
	 * Returned by Yes buttons in GTK+ dialogs
	 */
	YES = -8,
	/**
	 * Returned by No buttons in GTK+ dialogs
	 */
	NO = -9,
	/**
	 * Returned by Apply buttons in GTK+ dialogs
	 */
	APPLY = -10,
	/**
	 * Returned by Help buttons in GTK+ dialogs
	 */
	HELP = -11,
}
alias GtkResponseType ResponseType;

/**
 * These enumeration values describe the possible transitions
 * when the child of a #GtkRevealer widget is shown or hidden.
 */
public enum GtkRevealerTransitionType
{
	/**
	 * No transition
	 */
	NONE = 0,
	/**
	 * Fade in
	 */
	CROSSFADE = 1,
	/**
	 * Slide in from the left
	 */
	SLIDE_RIGHT = 2,
	/**
	 * Slide in from the right
	 */
	SLIDE_LEFT = 3,
	/**
	 * Slide in from the bottom
	 */
	SLIDE_UP = 4,
	/**
	 * Slide in from the top
	 */
	SLIDE_DOWN = 5,
}
alias GtkRevealerTransitionType RevealerTransitionType;

public enum GtkScrollStep
{
	/**
	 * Scroll in steps.
	 */
	STEPS = 0,
	/**
	 * Scroll by pages.
	 */
	PAGES = 1,
	/**
	 * Scroll to ends.
	 */
	ENDS = 2,
	/**
	 * Scroll in horizontal steps.
	 */
	HORIZONTAL_STEPS = 3,
	/**
	 * Scroll by horizontal pages.
	 */
	HORIZONTAL_PAGES = 4,
	/**
	 * Scroll to the horizontal ends.
	 */
	HORIZONTAL_ENDS = 5,
}
alias GtkScrollStep ScrollStep;

/**
 * Scrolling types.
 */
public enum GtkScrollType
{
	/**
	 * No scrolling.
	 */
	NONE = 0,
	/**
	 * Jump to new location.
	 */
	JUMP = 1,
	/**
	 * Step backward.
	 */
	STEP_BACKWARD = 2,
	/**
	 * Step forward.
	 */
	STEP_FORWARD = 3,
	/**
	 * Page backward.
	 */
	PAGE_BACKWARD = 4,
	/**
	 * Page forward.
	 */
	PAGE_FORWARD = 5,
	/**
	 * Step up.
	 */
	STEP_UP = 6,
	/**
	 * Step down.
	 */
	STEP_DOWN = 7,
	/**
	 * Page up.
	 */
	PAGE_UP = 8,
	/**
	 * Page down.
	 */
	PAGE_DOWN = 9,
	/**
	 * Step to the left.
	 */
	STEP_LEFT = 10,
	/**
	 * Step to the right.
	 */
	STEP_RIGHT = 11,
	/**
	 * Page to the left.
	 */
	PAGE_LEFT = 12,
	/**
	 * Page to the right.
	 */
	PAGE_RIGHT = 13,
	/**
	 * Scroll to start.
	 */
	START = 14,
	/**
	 * Scroll to end.
	 */
	END = 15,
}
alias GtkScrollType ScrollType;

/**
 * Defines the policy to be used in a scrollable widget when updating
 * the scrolled window adjustments in a given orientation.
 */
public enum GtkScrollablePolicy
{
	/**
	 * Scrollable adjustments are based on the minimum size
	 */
	MINIMUM = 0,
	/**
	 * Scrollable adjustments are based on the natural size
	 */
	NATURAL = 1,
}
alias GtkScrollablePolicy ScrollablePolicy;

/**
 * Used to control what selections users are allowed to make.
 */
public enum GtkSelectionMode
{
	/**
	 * No selection is possible.
	 */
	NONE = 0,
	/**
	 * Zero or one element may be selected.
	 */
	SINGLE = 1,
	/**
	 * Exactly one element is selected.
	 * In some circumstances, such as initially or during a search
	 * operation, it’s possible for no element to be selected with
	 * %GTK_SELECTION_BROWSE. What is really enforced is that the user
	 * can’t deselect a currently selected element except by selecting
	 * another element.
	 */
	BROWSE = 2,
	/**
	 * Any number of elements may be selected.
	 * The Ctrl key may be used to enlarge the selection, and Shift
	 * key to select between the focus and the child pointed to.
	 * Some widgets may also allow Click-drag to select a range of elements.
	 */
	MULTIPLE = 3,
}
alias GtkSelectionMode SelectionMode;

/**
 * Determines how GTK+ handles the sensitivity of stepper arrows
 * at the end of range widgets.
 */
public enum GtkSensitivityType
{
	/**
	 * The arrow is made insensitive if the
	 * thumb is at the end
	 */
	AUTO = 0,
	/**
	 * The arrow is always sensitive
	 */
	ON = 1,
	/**
	 * The arrow is always insensitive
	 */
	OFF = 2,
}
alias GtkSensitivityType SensitivityType;

/**
 * Used to change the appearance of an outline typically provided by a #GtkFrame.
 *
 * Note that many themes do not differentiate the appearance of the
 * various shadow types: Either their is no visible shadow (@GTK_SHADOW_NONE),
 * or there is (any other value).
 */
public enum GtkShadowType
{
	/**
	 * No outline.
	 */
	NONE = 0,
	/**
	 * The outline is bevelled inwards.
	 */
	IN = 1,
	/**
	 * The outline is bevelled outwards like a button.
	 */
	OUT = 2,
	/**
	 * The outline has a sunken 3d appearance.
	 */
	ETCHED_IN = 3,
	/**
	 * The outline has a raised 3d appearance.
	 */
	ETCHED_OUT = 4,
}
alias GtkShadowType ShadowType;

/**
 * GtkShortcutType specifies the kind of shortcut that is being described.
 * More values may be added to this enumeration over time.
 *
 * Since: 3.20
 */
public enum GtkShortcutType
{
	/**
	 * The shortcut is a keyboard accelerator. The #GtkShortcutsShortcut:accelerator
	 * property will be used.
	 */
	ACCELERATOR = 0,
	/**
	 * The shortcut is a pinch gesture. GTK+ provides and icon and subtitle.
	 */
	GESTURE_PINCH = 1,
	/**
	 * The shortcut is a stretch gesture. GTK+ provides and icon and subtitle.
	 */
	GESTURE_STRETCH = 2,
	/**
	 * The shortcut is a clockwise rotation gesture. GTK+ provides and icon and subtitle.
	 */
	GESTURE_ROTATE_CLOCKWISE = 3,
	/**
	 * The shortcut is a counterclockwise rotation gesture. GTK+ provides and icon and subtitle.
	 */
	GESTURE_ROTATE_COUNTERCLOCKWISE = 4,
	/**
	 * The shortcut is a two-finger swipe gesture. GTK+ provides and icon and subtitle.
	 */
	GESTURE_TWO_FINGER_SWIPE_LEFT = 5,
	/**
	 * The shortcut is a two-finger swipe gesture. GTK+ provides and icon and subtitle.
	 */
	GESTURE_TWO_FINGER_SWIPE_RIGHT = 6,
	/**
	 * The shortcut is a gesture. The #GtkShortcutsShortcut:icon property will be
	 * used.
	 */
	GESTURE = 7,
}
alias GtkShortcutType ShortcutType;

/**
 * The mode of the size group determines the directions in which the size
 * group affects the requested sizes of its component widgets.
 */
public enum GtkSizeGroupMode
{
	/**
	 * group has no effect
	 */
	NONE = 0,
	/**
	 * group affects horizontal requisition
	 */
	HORIZONTAL = 1,
	/**
	 * group affects vertical requisition
	 */
	VERTICAL = 2,
	/**
	 * group affects both horizontal and vertical requisition
	 */
	BOTH = 3,
}
alias GtkSizeGroupMode SizeGroupMode;

/**
 * Specifies a preference for height-for-width or
 * width-for-height geometry management.
 */
public enum GtkSizeRequestMode
{
	/**
	 * Prefer height-for-width geometry management
	 */
	HEIGHT_FOR_WIDTH = 0,
	/**
	 * Prefer width-for-height geometry management
	 */
	WIDTH_FOR_HEIGHT = 1,
	/**
	 * Don’t trade height-for-width or width-for-height
	 */
	CONSTANT_SIZE = 2,
}
alias GtkSizeRequestMode SizeRequestMode;

/**
 * Determines the direction of a sort.
 */
public enum GtkSortType
{
	/**
	 * Sorting is in ascending order.
	 */
	ASCENDING = 0,
	/**
	 * Sorting is in descending order.
	 */
	DESCENDING = 1,
}
alias GtkSortType SortType;

/**
 * The spin button update policy determines whether the spin button displays
 * values even if they are outside the bounds of its adjustment.
 * See gtk_spin_button_set_update_policy().
 */
public enum GtkSpinButtonUpdatePolicy
{
	/**
	 * When refreshing your #GtkSpinButton, the value is
	 * always displayed
	 */
	ALWAYS = 0,
	/**
	 * When refreshing your #GtkSpinButton, the value is
	 * only displayed if it is valid within the bounds of the spin button's
	 * adjustment
	 */
	IF_VALID = 1,
}
alias GtkSpinButtonUpdatePolicy SpinButtonUpdatePolicy;

/**
 * The values of the GtkSpinType enumeration are used to specify the
 * change to make in gtk_spin_button_spin().
 */
public enum GtkSpinType
{
	/**
	 * Increment by the adjustments step increment.
	 */
	STEP_FORWARD = 0,
	/**
	 * Decrement by the adjustments step increment.
	 */
	STEP_BACKWARD = 1,
	/**
	 * Increment by the adjustments page increment.
	 */
	PAGE_FORWARD = 2,
	/**
	 * Decrement by the adjustments page increment.
	 */
	PAGE_BACKWARD = 3,
	/**
	 * Go to the adjustments lower bound.
	 */
	HOME = 4,
	/**
	 * Go to the adjustments upper bound.
	 */
	END = 5,
	/**
	 * Change by a specified amount.
	 */
	USER_DEFINED = 6,
}
alias GtkSpinType SpinType;

/**
 * These enumeration values describe the possible transitions
 * between pages in a #GtkStack widget.
 *
 * New values may be added to this enumeration over time.
 */
public enum GtkStackTransitionType
{
	/**
	 * No transition
	 */
	NONE = 0,
	/**
	 * A cross-fade
	 */
	CROSSFADE = 1,
	/**
	 * Slide from left to right
	 */
	SLIDE_RIGHT = 2,
	/**
	 * Slide from right to left
	 */
	SLIDE_LEFT = 3,
	/**
	 * Slide from bottom up
	 */
	SLIDE_UP = 4,
	/**
	 * Slide from top down
	 */
	SLIDE_DOWN = 5,
	/**
	 * Slide from left or right according to the children order
	 */
	SLIDE_LEFT_RIGHT = 6,
	/**
	 * Slide from top down or bottom up according to the order
	 */
	SLIDE_UP_DOWN = 7,
	/**
	 * Cover the old page by sliding up. Since 3.12
	 */
	OVER_UP = 8,
	/**
	 * Cover the old page by sliding down. Since: 3.12
	 */
	OVER_DOWN = 9,
	/**
	 * Cover the old page by sliding to the left. Since: 3.12
	 */
	OVER_LEFT = 10,
	/**
	 * Cover the old page by sliding to the right. Since: 3.12
	 */
	OVER_RIGHT = 11,
	/**
	 * Uncover the new page by sliding up. Since 3.12
	 */
	UNDER_UP = 12,
	/**
	 * Uncover the new page by sliding down. Since: 3.12
	 */
	UNDER_DOWN = 13,
	/**
	 * Uncover the new page by sliding to the left. Since: 3.12
	 */
	UNDER_LEFT = 14,
	/**
	 * Uncover the new page by sliding to the right. Since: 3.12
	 */
	UNDER_RIGHT = 15,
	/**
	 * Cover the old page sliding up or uncover the new page sliding down, according to order. Since: 3.12
	 */
	OVER_UP_DOWN = 16,
	/**
	 * Cover the old page sliding down or uncover the new page sliding up, according to order. Since: 3.14
	 */
	OVER_DOWN_UP = 17,
	/**
	 * Cover the old page sliding left or uncover the new page sliding right, according to order. Since: 3.14
	 */
	OVER_LEFT_RIGHT = 18,
	/**
	 * Cover the old page sliding right or uncover the new page sliding left, according to order. Since: 3.14
	 */
	OVER_RIGHT_LEFT = 19,
}
alias GtkStackTransitionType StackTransitionType;

/**
 * Describes a widget state. Widget states are used to match the widget
 * against CSS pseudo-classes. Note that GTK extends the regular CSS
 * classes and sometimes uses different names.
 */
public enum GtkStateFlags
{
	/**
	 * State during normal operation.
	 */
	NORMAL = 0,
	/**
	 * Widget is active.
	 */
	ACTIVE = 1,
	/**
	 * Widget has a mouse pointer over it.
	 */
	PRELIGHT = 2,
	/**
	 * Widget is selected.
	 */
	SELECTED = 4,
	/**
	 * Widget is insensitive.
	 */
	INSENSITIVE = 8,
	/**
	 * Widget is inconsistent.
	 */
	INCONSISTENT = 16,
	/**
	 * Widget has the keyboard focus.
	 */
	FOCUSED = 32,
	/**
	 * Widget is in a background toplevel window.
	 */
	BACKDROP = 64,
	/**
	 * Widget is in left-to-right text direction. Since 3.8
	 */
	DIR_LTR = 128,
	/**
	 * Widget is in right-to-left text direction. Since 3.8
	 */
	DIR_RTL = 256,
	/**
	 * Widget is a link. Since 3.12
	 */
	LINK = 512,
	/**
	 * The location the widget points to has already been visited. Since 3.12
	 */
	VISITED = 1024,
	/**
	 * Widget is checked. Since 3.14
	 */
	CHECKED = 2048,
	/**
	 * Widget is highlighted as a drop target for DND. Since 3.20
	 */
	DROP_ACTIVE = 4096,
}
alias GtkStateFlags StateFlags;

/**
 * This type indicates the current state of a widget; the state determines how
 * the widget is drawn. The #GtkStateType enumeration is also used to
 * identify different colors in a #GtkStyle for drawing, so states can be
 * used for subparts of a widget as well as entire widgets.
 *
 * Deprecated: All APIs that are using this enumeration have been deprecated
 * in favor of alternatives using #GtkStateFlags.
 */
public enum GtkStateType
{
	/**
	 * State during normal operation.
	 */
	NORMAL = 0,
	/**
	 * State of a currently active widget, such as a depressed button.
	 */
	ACTIVE = 1,
	/**
	 * State indicating that the mouse pointer is over
	 * the widget and the widget will respond to mouse clicks.
	 */
	PRELIGHT = 2,
	/**
	 * State of a selected item, such the selected row in a list.
	 */
	SELECTED = 3,
	/**
	 * State indicating that the widget is
	 * unresponsive to user actions.
	 */
	INSENSITIVE = 4,
	/**
	 * The widget is inconsistent, such as checkbuttons
	 * or radiobuttons that aren’t either set to %TRUE nor %FALSE,
	 * or buttons requiring the user attention.
	 */
	INCONSISTENT = 5,
	/**
	 * The widget has the keyboard focus.
	 */
	FOCUSED = 6,
}
alias GtkStateType StateType;

/**
 * Flags that modify the behavior of gtk_style_context_to_string().
 * New values may be added to this enumeration.
 */
public enum GtkStyleContextPrintFlags
{
	NONE = 0,
	/**
	 * Print the entire tree of
	 * CSS nodes starting at the style context's node
	 */
	RECURSE = 1,
	/**
	 * Show the values of the
	 * CSS properties for each node
	 */
	SHOW_STYLE = 2,
}
alias GtkStyleContextPrintFlags StyleContextPrintFlags;

/**
 * The #GtkTargetFlags enumeration is used to specify
 * constraints on a #GtkTargetEntry.
 */
public enum GtkTargetFlags
{
	/**
	 * If this is set, the target will only be selected
	 * for drags within a single application.
	 */
	SAME_APP = 1,
	/**
	 * If this is set, the target will only be selected
	 * for drags within a single widget.
	 */
	SAME_WIDGET = 2,
	/**
	 * If this is set, the target will not be selected
	 * for drags within a single application.
	 */
	OTHER_APP = 4,
	/**
	 * If this is set, the target will not be selected
	 * for drags withing a single widget.
	 */
	OTHER_WIDGET = 8,
}
alias GtkTargetFlags TargetFlags;

/**
 * These values are used as “info” for the targets contained in the
 * lists returned by gtk_text_buffer_get_copy_target_list() and
 * gtk_text_buffer_get_paste_target_list().
 *
 * The values counts down from `-1` to avoid clashes
 * with application added drag destinations which usually start at 0.
 */
public enum GtkTextBufferTargetInfo
{
	/**
	 * Buffer contents
	 */
	BUFFER_CONTENTS = -1,
	/**
	 * Rich text
	 */
	RICH_TEXT = -2,
	/**
	 * Text
	 */
	TEXT = -3,
}
alias GtkTextBufferTargetInfo TextBufferTargetInfo;

/**
 * Reading directions for text.
 */
public enum GtkTextDirection
{
	/**
	 * No direction.
	 */
	NONE = 0,
	/**
	 * Left to right text direction.
	 */
	LTR = 1,
	/**
	 * Right to left text direction.
	 */
	RTL = 2,
}
alias GtkTextDirection TextDirection;

/**
 * Granularity types that extend the text selection. Use the
 * #GtkTextView::extend-selection signal to customize the selection.
 *
 * Since: 3.16
 */
public enum GtkTextExtendSelection
{
	/**
	 * Selects the current word. It is triggered by
	 * a double-click for example.
	 */
	WORD = 0,
	/**
	 * Selects the current line. It is triggered by
	 * a triple-click for example.
	 */
	LINE = 1,
}
alias GtkTextExtendSelection TextExtendSelection;

/**
 * Flags affecting how a search is done.
 *
 * If neither #GTK_TEXT_SEARCH_VISIBLE_ONLY nor #GTK_TEXT_SEARCH_TEXT_ONLY are
 * enabled, the match must be exact; the special 0xFFFC character will match
 * embedded pixbufs or child widgets.
 */
public enum GtkTextSearchFlags
{
	/**
	 * Search only visible data. A search match may
	 * have invisible text interspersed.
	 */
	VISIBLE_ONLY = 1,
	/**
	 * Search only text. A match may have pixbufs or
	 * child widgets mixed inside the matched range.
	 */
	TEXT_ONLY = 2,
	/**
	 * The text will be matched regardless of
	 * what case it is in.
	 */
	CASE_INSENSITIVE = 4,
}
alias GtkTextSearchFlags TextSearchFlags;

/**
 * Used to reference the layers of #GtkTextView for the purpose of customized
 * drawing with the ::draw_layer vfunc.
 */
public enum GtkTextViewLayer
{
	/**
	 * Old deprecated layer, use %GTK_TEXT_VIEW_LAYER_BELOW_TEXT instead
	 */
	BELOW = 0,
	/**
	 * Old deprecated layer, use %GTK_TEXT_VIEW_LAYER_ABOVE_TEXT instead
	 */
	ABOVE = 1,
	/**
	 * The layer rendered below the text (but above the background).  Since: 3.20
	 */
	BELOW_TEXT = 2,
	/**
	 * The layer rendered above the text.  Since: 3.20
	 */
	ABOVE_TEXT = 3,
}
alias GtkTextViewLayer TextViewLayer;

/**
 * Used to reference the parts of #GtkTextView.
 */
public enum GtkTextWindowType
{
	PRIVATE = 0,
	/**
	 * Window that floats over scrolling areas.
	 */
	WIDGET = 1,
	/**
	 * Scrollable text window.
	 */
	TEXT = 2,
	/**
	 * Left side border window.
	 */
	LEFT = 3,
	/**
	 * Right side border window.
	 */
	RIGHT = 4,
	/**
	 * Top border window.
	 */
	TOP = 5,
	/**
	 * Bottom border window.
	 */
	BOTTOM = 6,
}
alias GtkTextWindowType TextWindowType;

/**
 * Flags used to specify the supported drag targets.
 */
public enum GtkToolPaletteDragTargets
{
	/**
	 * Support drag of items.
	 */
	ITEMS = 1,
	/**
	 * Support drag of groups.
	 */
	GROUPS = 2,
}
alias GtkToolPaletteDragTargets ToolPaletteDragTargets;

/**
 * Whether spacers are vertical lines or just blank.
 */
public enum GtkToolbarSpaceStyle
{
	/**
	 * Use blank spacers.
	 */
	EMPTY = 0,
	/**
	 * Use vertical lines for spacers.
	 */
	LINE = 1,
}
alias GtkToolbarSpaceStyle ToolbarSpaceStyle;

/**
 * Used to customize the appearance of a #GtkToolbar. Note that
 * setting the toolbar style overrides the user’s preferences
 * for the default toolbar style.  Note that if the button has only
 * a label set and GTK_TOOLBAR_ICONS is used, the label will be
 * visible, and vice versa.
 */
public enum GtkToolbarStyle
{
	/**
	 * Buttons display only icons in the toolbar.
	 */
	ICONS = 0,
	/**
	 * Buttons display only text labels in the toolbar.
	 */
	TEXT = 1,
	/**
	 * Buttons display text and icons in the toolbar.
	 */
	BOTH = 2,
	/**
	 * Buttons display icons and text alongside each
	 * other, rather than vertically stacked
	 */
	BOTH_HORIZ = 3,
}
alias GtkToolbarStyle ToolbarStyle;

/**
 * These flags indicate various properties of a #GtkTreeModel.
 *
 * They are returned by gtk_tree_model_get_flags(), and must be
 * static for the lifetime of the object. A more complete description
 * of #GTK_TREE_MODEL_ITERS_PERSIST can be found in the overview of
 * this section.
 */
public enum GtkTreeModelFlags
{
	/**
	 * iterators survive all signals
	 * emitted by the tree
	 */
	ITERS_PERSIST = 1,
	/**
	 * the model is a list only, and never
	 * has children
	 */
	LIST_ONLY = 2,
}
alias GtkTreeModelFlags TreeModelFlags;

/**
 * The sizing method the column uses to determine its width.  Please note
 * that @GTK_TREE_VIEW_COLUMN_AUTOSIZE are inefficient for large views, and
 * can make columns appear choppy.
 */
public enum GtkTreeViewColumnSizing
{
	/**
	 * Columns only get bigger in reaction to changes in the model
	 */
	GROW_ONLY = 0,
	/**
	 * Columns resize to be the optimal size everytime the model changes.
	 */
	AUTOSIZE = 1,
	/**
	 * Columns are a fixed numbers of pixels wide.
	 */
	FIXED = 2,
}
alias GtkTreeViewColumnSizing TreeViewColumnSizing;

/**
 * An enum for determining where a dropped row goes.
 */
public enum GtkTreeViewDropPosition
{
	/**
	 * dropped row is inserted before
	 */
	BEFORE = 0,
	/**
	 * dropped row is inserted after
	 */
	AFTER = 1,
	/**
	 * dropped row becomes a child or is inserted before
	 */
	INTO_OR_BEFORE = 2,
	/**
	 * dropped row becomes a child or is inserted after
	 */
	INTO_OR_AFTER = 3,
}
alias GtkTreeViewDropPosition TreeViewDropPosition;

/**
 * Used to indicate which grid lines to draw in a tree view.
 */
public enum GtkTreeViewGridLines
{
	/**
	 * No grid lines.
	 */
	NONE = 0,
	/**
	 * Horizontal grid lines.
	 */
	HORIZONTAL = 1,
	/**
	 * Vertical grid lines.
	 */
	VERTICAL = 2,
	/**
	 * Horizontal and vertical grid lines.
	 */
	BOTH = 3,
}
alias GtkTreeViewGridLines TreeViewGridLines;

/**
 * These enumeration values are used by gtk_ui_manager_add_ui() to determine
 * what UI element to create.
 */
public enum GtkUIManagerItemType
{
	/**
	 * Pick the type of the UI element according to context.
	 */
	AUTO = 0,
	/**
	 * Create a menubar.
	 */
	MENUBAR = 1,
	/**
	 * Create a menu.
	 */
	MENU = 2,
	/**
	 * Create a toolbar.
	 */
	TOOLBAR = 4,
	/**
	 * Insert a placeholder.
	 */
	PLACEHOLDER = 8,
	/**
	 * Create a popup menu.
	 */
	POPUP = 16,
	/**
	 * Create a menuitem.
	 */
	MENUITEM = 32,
	/**
	 * Create a toolitem.
	 */
	TOOLITEM = 64,
	/**
	 * Create a separator.
	 */
	SEPARATOR = 128,
	/**
	 * Install an accelerator.
	 */
	ACCELERATOR = 256,
	/**
	 * Same as %GTK_UI_MANAGER_POPUP, but the
	 * actions’ accelerators are shown.
	 */
	POPUP_WITH_ACCELS = 512,
}
alias GtkUIManagerItemType UIManagerItemType;

/**
 * See also gtk_print_settings_set_paper_width().
 */
public enum GtkUnit
{
	/**
	 * No units.
	 */
	NONE = 0,
	/**
	 * Dimensions in points.
	 */
	POINTS = 1,
	/**
	 * Dimensions in inches.
	 */
	INCH = 2,
	/**
	 * Dimensions in millimeters
	 */
	MM = 3,
}
alias GtkUnit Unit;

/**
 * Kinds of widget-specific help. Used by the ::show-help signal.
 */
public enum GtkWidgetHelpType
{
	/**
	 * Tooltip.
	 */
	TOOLTIP = 0,
	/**
	 * What’s this.
	 */
	WHATS_THIS = 1,
}
alias GtkWidgetHelpType WidgetHelpType;

/**
 * Window placement can be influenced using this enumeration. Note that
 * using #GTK_WIN_POS_CENTER_ALWAYS is almost always a bad idea.
 * It won’t necessarily work well with all window managers or on all windowing systems.
 */
public enum GtkWindowPosition
{
	/**
	 * No influence is made on placement.
	 */
	NONE = 0,
	/**
	 * Windows should be placed in the center of the screen.
	 */
	CENTER = 1,
	/**
	 * Windows should be placed at the current mouse position.
	 */
	MOUSE = 2,
	/**
	 * Keep window centered as it changes size, etc.
	 */
	CENTER_ALWAYS = 3,
	/**
	 * Center the window on its transient
	 * parent (see gtk_window_set_transient_for()).
	 */
	CENTER_ON_PARENT = 4,
}
alias GtkWindowPosition WindowPosition;

/**
 * A #GtkWindow can be one of these types. Most things you’d consider a
 * “window” should have type #GTK_WINDOW_TOPLEVEL; windows with this type
 * are managed by the window manager and have a frame by default (call
 * gtk_window_set_decorated() to toggle the frame).  Windows with type
 * #GTK_WINDOW_POPUP are ignored by the window manager; window manager
 * keybindings won’t work on them, the window manager won’t decorate the
 * window with a frame, many GTK+ features that rely on the window
 * manager will not work (e.g. resize grips and
 * maximization/minimization). #GTK_WINDOW_POPUP is used to implement
 * widgets such as #GtkMenu or tooltips that you normally don’t think of
 * as windows per se. Nearly all windows should be #GTK_WINDOW_TOPLEVEL.
 * In particular, do not use #GTK_WINDOW_POPUP just to turn off
 * the window borders; use gtk_window_set_decorated() for that.
 */
public enum GtkWindowType
{
	/**
	 * A regular window, such as a dialog.
	 */
	TOPLEVEL = 0,
	/**
	 * A special window such as a tooltip.
	 */
	POPUP = 1,
}
alias GtkWindowType WindowType;

/**
 * Describes a type of line wrapping.
 */
public enum GtkWrapMode
{
	/**
	 * do not wrap lines; just make the text area wider
	 */
	NONE = 0,
	/**
	 * wrap text, breaking lines anywhere the cursor can
	 * appear (between characters, usually - if you want to be technical,
	 * between graphemes, see pango_get_log_attrs())
	 */
	CHAR = 1,
	/**
	 * wrap text, breaking lines in between words
	 */
	WORD = 2,
	/**
	 * wrap text, breaking lines in between words, or if
	 * that is not enough, also between graphemes
	 */
	WORD_CHAR = 3,
}
alias GtkWrapMode WrapMode;

struct GtkAboutDialog
{
	GtkDialog parentInstance;
	GtkAboutDialogPrivate* priv;
}

struct GtkAboutDialogClass
{
	GtkDialogClass parentClass;
	/** */
	extern(C) int function(GtkAboutDialog* dialog, const(char)* uri) activateLink;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkAboutDialogPrivate;

struct GtkAccelGroup
{
	GObject parent;
	GtkAccelGroupPrivate* priv;
}

struct GtkAccelGroupClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkAccelGroup* accelGroup, uint keyval, GdkModifierType modifier, GClosure* accelClosure) accelChanged;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkAccelGroupEntry
{
	GtkAccelKey key;
	GClosure* closure;
	GQuark accelPathQuark;
}

struct GtkAccelGroupPrivate;

struct GtkAccelKey
{
	/**
	 * The accelerator keyval
	 */
	uint accelKey;
	/**
	 * The accelerator modifiers
	 */
	GdkModifierType accelMods;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "accelFlags", 16,
		uint, "", 16
	));
}

struct GtkAccelLabel
{
	GtkLabel label;
	GtkAccelLabelPrivate* priv;
}

struct GtkAccelLabelClass
{
	GtkLabelClass parentClass;
	char* signalQuote1;
	char* signalQuote2;
	char* modNameShift;
	char* modNameControl;
	char* modNameAlt;
	char* modSeparator;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkAccelLabelPrivate;

struct GtkAccelMap;

struct GtkAccelMapClass;

struct GtkAccessible
{
	AtkObject parent;
	GtkAccessiblePrivate* priv;
}

struct GtkAccessibleClass
{
	AtkObjectClass parentClass;
	/** */
	extern(C) void function(GtkAccessible* accessible) connectWidgetDestroyed;
	/** */
	extern(C) void function(GtkAccessible* accessible) widgetSet;
	/** */
	extern(C) void function(GtkAccessible* accessible) widgetUnset;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkAccessiblePrivate;

struct GtkAction
{
	GObject object;
	GtkActionPrivate* privateData;
}

struct GtkActionBar
{
	GtkBin bin;
}

struct GtkActionBarClass
{
	GtkBinClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkActionBarPrivate;

struct GtkActionClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkAction* action) activate;
	GType menuItemType;
	GType toolbarItemType;
	/**
	 *
	 * Params:
	 *     action = the action object
	 * Return: a menu item connected to the action.
	 */
	extern(C) GtkWidget* function(GtkAction* action) createMenuItem;
	/**
	 *
	 * Params:
	 *     action = the action object
	 * Return: a toolbar item connected to the action.
	 */
	extern(C) GtkWidget* function(GtkAction* action) createToolItem;
	/** */
	extern(C) void function(GtkAction* action, GtkWidget* proxy) connectProxy;
	/** */
	extern(C) void function(GtkAction* action, GtkWidget* proxy) disconnectProxy;
	/**
	 *
	 * Params:
	 *     action = a #GtkAction
	 * Return: the menu item provided by the
	 *     action, or %NULL.
	 */
	extern(C) GtkWidget* function(GtkAction* action) createMenu;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

/**
 * #GtkActionEntry structs are used with gtk_action_group_add_actions() to
 * construct actions.
 */
struct GtkActionEntry
{
	/**
	 * The name of the action.
	 */
	const(char)* name;
	/**
	 * The stock id for the action, or the name of an icon from the
	 * icon theme.
	 */
	const(char)* stockId;
	/**
	 * The label for the action. This field should typically be marked
	 * for translation, see gtk_action_group_set_translation_domain(). If
	 * @label is %NULL, the label of the stock item with id @stock_id is used.
	 */
	const(char)* label;
	/**
	 * The accelerator for the action, in the format understood by
	 * gtk_accelerator_parse().
	 */
	const(char)* accelerator;
	/**
	 * The tooltip for the action. This field should typically be
	 * marked for translation, see gtk_action_group_set_translation_domain().
	 */
	const(char)* tooltip;
	/**
	 * The function to call when the action is activated.
	 */
	GCallback callback;
}

struct GtkActionGroup
{
	GObject parent;
	GtkActionGroupPrivate* priv;
}

struct GtkActionGroupClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     actionGroup = the action group
	 *     actionName = the name of the action
	 * Return: the action, or %NULL if no action by that name exists
	 */
	extern(C) GtkAction* function(GtkActionGroup* actionGroup, const(char)* actionName) getAction;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkActionGroupPrivate;

struct GtkActionPrivate;

struct GtkActionable;

/**
 * The interface vtable for #GtkActionable.
 */
struct GtkActionableInterface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     actionable = a #GtkActionable widget
	 * Return: the action name, or %NULL if none is set
	 */
	extern(C) const(char)* function(GtkActionable* actionable) getActionName;
	/** */
	extern(C) void function(GtkActionable* actionable, const(char)* actionName) setActionName;
	/**
	 *
	 * Params:
	 *     actionable = a #GtkActionable widget
	 * Return: the current target value
	 */
	extern(C) GVariant* function(GtkActionable* actionable) getActionTargetValue;
	/** */
	extern(C) void function(GtkActionable* actionable, GVariant* targetValue) setActionTargetValue;
}

struct GtkActivatable;

/**
 * > This method can be called with a %NULL action at times.
 *
 * Since: 2.16
 */
struct GtkActivatableIface
{
	GTypeInterface gIface;
	/** */
	extern(C) void function(GtkActivatable* activatable, GtkAction* action, const(char)* propertyName) update;
	/** */
	extern(C) void function(GtkActivatable* activatable, GtkAction* action) syncActionProperties;
}

struct GtkAdjustment
{
	GObject parentInstance;
	GtkAdjustmentPrivate* priv;
}

struct GtkAdjustmentClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkAdjustment* adjustment) changed;
	/** */
	extern(C) void function(GtkAdjustment* adjustment) valueChanged;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkAdjustmentPrivate;

struct GtkAlignment
{
	GtkBin bin;
	GtkAlignmentPrivate* priv;
}

struct GtkAlignmentClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkAlignmentPrivate;

struct GtkAppChooser;

struct GtkAppChooserButton
{
	GtkComboBox parent;
	GtkAppChooserButtonPrivate* priv;
}

struct GtkAppChooserButtonClass
{
	/**
	 * The parent class.
	 */
	GtkComboBoxClass parentClass;
	/** */
	extern(C) void function(GtkAppChooserButton* self, const(char)* itemName) customItemActivated;
	void*[16] padding;
}

struct GtkAppChooserButtonPrivate;

struct GtkAppChooserDialog
{
	GtkDialog parent;
	GtkAppChooserDialogPrivate* priv;
}

struct GtkAppChooserDialogClass
{
	/**
	 * The parent class.
	 */
	GtkDialogClass parentClass;
	void*[16] padding;
}

struct GtkAppChooserDialogPrivate;

struct GtkAppChooserWidget
{
	GtkBox parent;
	GtkAppChooserWidgetPrivate* priv;
}

struct GtkAppChooserWidgetClass
{
	/**
	 * The parent class.
	 */
	GtkBoxClass parentClass;
	/** */
	extern(C) void function(GtkAppChooserWidget* self, GAppInfo* appInfo) applicationSelected;
	/** */
	extern(C) void function(GtkAppChooserWidget* self, GAppInfo* appInfo) applicationActivated;
	/** */
	extern(C) void function(GtkAppChooserWidget* self, GtkMenu* menu, GAppInfo* appInfo) populatePopup;
	void*[16] padding;
}

struct GtkAppChooserWidgetPrivate;

struct GtkApplication
{
	GApplication parent;
	GtkApplicationPrivate* priv;
}

struct GtkApplicationClass
{
	/**
	 * The parent class.
	 */
	GApplicationClass parentClass;
	/** */
	extern(C) void function(GtkApplication* application, GtkWindow* window) windowAdded;
	/** */
	extern(C) void function(GtkApplication* application, GtkWindow* window) windowRemoved;
	void*[12] padding;
}

struct GtkApplicationPrivate;

struct GtkApplicationWindow
{
	GtkWindow parentInstance;
	GtkApplicationWindowPrivate* priv;
}

struct GtkApplicationWindowClass
{
	/**
	 * The parent class.
	 */
	GtkWindowClass parentClass;
	void*[14] padding;
}

struct GtkApplicationWindowPrivate;

struct GtkArrow
{
	GtkMisc misc;
	GtkArrowPrivate* priv;
}

struct GtkArrowAccessible
{
	GtkWidgetAccessible parent;
	GtkArrowAccessiblePrivate* priv;
}

struct GtkArrowAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
}

struct GtkArrowAccessiblePrivate;

struct GtkArrowClass
{
	GtkMiscClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkArrowPrivate;

struct GtkAspectFrame
{
	GtkFrame frame;
	GtkAspectFramePrivate* priv;
}

struct GtkAspectFrameClass
{
	/**
	 * The parent class.
	 */
	GtkFrameClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkAspectFramePrivate;

struct GtkAssistant
{
	GtkWindow parent;
	GtkAssistantPrivate* priv;
}

struct GtkAssistantClass
{
	/**
	 * The parent class.
	 */
	GtkWindowClass parentClass;
	/** */
	extern(C) void function(GtkAssistant* assistant, GtkWidget* page) prepare;
	/** */
	extern(C) void function(GtkAssistant* assistant) apply;
	/** */
	extern(C) void function(GtkAssistant* assistant) close;
	/** */
	extern(C) void function(GtkAssistant* assistant) cancel;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
}

struct GtkAssistantPrivate;

struct GtkBin
{
	GtkContainer container;
	GtkBinPrivate* priv;
}

struct GtkBinClass
{
	/**
	 * The parent class.
	 */
	GtkContainerClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkBinPrivate;

/**
 * A #GtkBindingArg holds the data associated with
 * an argument for a key binding signal emission as
 * stored in #GtkBindingSignal.
 */
struct GtkBindingArg
{
	/**
	 * implementation detail
	 */
	GType argType;
	union D
	{
		glong longData;
		double doubleData;
		char* stringData;
	}
	D d;
}

/**
 * Each key binding element of a binding sets binding list is
 * represented by a GtkBindingEntry.
 */
struct GtkBindingEntry
{
	/**
	 * key value to match
	 */
	uint keyval;
	/**
	 * key modifiers to match
	 */
	GdkModifierType modifiers;
	/**
	 * binding set this entry belongs to
	 */
	GtkBindingSet* bindingSet;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "destroyed", 1,
		uint, "inEmission", 1,
		uint, "marksUnbound", 1,
		uint, "", 29
	));
	/**
	 * linked list of entries maintained by binding set
	 */
	GtkBindingEntry* setNext;
	/**
	 * implementation detail
	 */
	GtkBindingEntry* hashNext;
	/**
	 * action signals of this entry
	 */
	GtkBindingSignal* signals;
}

struct GtkBindingSet
{
	/**
	 * unique name of this binding set
	 */
	char* setName;
	/**
	 * unused
	 */
	int priority;
	/**
	 * unused
	 */
	GSList* widgetPathPspecs;
	/**
	 * unused
	 */
	GSList* widgetClassPspecs;
	/**
	 * unused
	 */
	GSList* classBranchPspecs;
	/**
	 * the key binding entries in this binding set
	 */
	GtkBindingEntry* entries;
	/**
	 * implementation detail
	 */
	GtkBindingEntry* current;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "parsed", 1,
		uint, "", 31
	));
}

/**
 * A GtkBindingSignal stores the necessary information to
 * activate a widget in response to a key press via a signal
 * emission.
 */
struct GtkBindingSignal
{
	/**
	 * implementation detail
	 */
	GtkBindingSignal* next;
	/**
	 * the action signal to be emitted
	 */
	char* signalName;
	/**
	 * number of arguments specified for the signal
	 */
	uint nArgs;
	/**
	 * the arguments specified for the signal
	 */
	GtkBindingArg* args;
}

struct GtkBooleanCellAccessible
{
	GtkRendererCellAccessible parent;
	GtkBooleanCellAccessiblePrivate* priv;
}

struct GtkBooleanCellAccessibleClass
{
	GtkRendererCellAccessibleClass parentClass;
}

struct GtkBooleanCellAccessiblePrivate;

struct GtkBorder
{
	/**
	 * The width of the left border
	 */
	short left;
	/**
	 * The width of the right border
	 */
	short right;
	/**
	 * The width of the top border
	 */
	short top;
	/**
	 * The width of the bottom border
	 */
	short bottom;
}

struct GtkBox
{
	GtkContainer container;
	GtkBoxPrivate* priv;
}

struct GtkBoxClass
{
	/**
	 * The parent class.
	 */
	GtkContainerClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkBoxPrivate;

struct GtkBuildable;

/**
 * The #GtkBuildableIface interface contains method that are
 * necessary to allow #GtkBuilder to construct an object from
 * a #GtkBuilder UI definition.
 */
struct GtkBuildableIface
{
	/**
	 * the parent class
	 */
	GTypeInterface gIface;
	/** */
	extern(C) void function(GtkBuildable* buildable, const(char)* name) setName;
	/**
	 *
	 * Params:
	 *     buildable = a #GtkBuildable
	 * Return: the name set with gtk_buildable_set_name()
	 */
	extern(C) const(char)* function(GtkBuildable* buildable) getName;
	/** */
	extern(C) void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, const(char)* type) addChild;
	/** */
	extern(C) void function(GtkBuildable* buildable, GtkBuilder* builder, const(char)* name, GValue* value) setBuildableProperty;
	/**
	 *
	 * Params:
	 *     buildable = A #GtkBuildable
	 *     builder = #GtkBuilder used to construct this object
	 *     name = name of child to construct
	 * Return: the constructed child
	 */
	extern(C) GObject* function(GtkBuildable* buildable, GtkBuilder* builder, const(char)* name) constructChild;
	/**
	 *
	 * Params:
	 *     buildable = a #GtkBuildable
	 *     builder = a #GtkBuilder used to construct this object
	 *     child = child object or %NULL for non-child tags
	 *     tagname = name of tag
	 *     parser = a #GMarkupParser to fill in
	 *     data = return location for user data that will be passed in
	 *         to parser functions
	 * Return: %TRUE if a object has a custom implementation, %FALSE
	 *     if it doesn't.
	 */
	extern(C) int function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, const(char)* tagname, GMarkupParser* parser, void** data) customTagStart;
	/** */
	extern(C) void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, const(char)* tagname, void** data) customTagEnd;
	/** */
	extern(C) void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, const(char)* tagname, void* data) customFinished;
	/** */
	extern(C) void function(GtkBuildable* buildable, GtkBuilder* builder) parserFinished;
	/**
	 *
	 * Params:
	 *     buildable = a #GtkBuildable
	 *     builder = a #GtkBuilder
	 *     childname = name of child
	 * Return: the internal child of the buildable object
	 */
	extern(C) GObject* function(GtkBuildable* buildable, GtkBuilder* builder, const(char)* childname) getInternalChild;
}

struct GtkBuilder
{
	GObject parentInstance;
	GtkBuilderPrivate* priv;
}

struct GtkBuilderClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     builder = a #GtkBuilder
	 *     typeName = type name to lookup
	 * Return: the #GType found for @type_name or #G_TYPE_INVALID
	 *     if no type was found
	 */
	extern(C) GType function(GtkBuilder* builder, const(char)* typeName) getTypeFromName;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkBuilderPrivate;

struct GtkButton
{
	GtkBin bin;
	GtkButtonPrivate* priv;
}

struct GtkButtonAccessible
{
	GtkContainerAccessible parent;
	GtkButtonAccessiblePrivate* priv;
}

struct GtkButtonAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkButtonAccessiblePrivate;

struct GtkButtonBox
{
	GtkBox box;
	GtkButtonBoxPrivate* priv;
}

struct GtkButtonBoxClass
{
	/**
	 * The parent class.
	 */
	GtkBoxClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkButtonBoxPrivate;

struct GtkButtonClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function(GtkButton* button) pressed;
	/** */
	extern(C) void function(GtkButton* button) released;
	/** */
	extern(C) void function(GtkButton* button) clicked;
	/** */
	extern(C) void function(GtkButton* button) enter;
	/** */
	extern(C) void function(GtkButton* button) leave;
	/** */
	extern(C) void function(GtkButton* button) activate;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkButtonPrivate;

struct GtkCalendar
{
	GtkWidget widget;
	GtkCalendarPrivate* priv;
}

struct GtkCalendarClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function(GtkCalendar* calendar) monthChanged;
	/** */
	extern(C) void function(GtkCalendar* calendar) daySelected;
	/** */
	extern(C) void function(GtkCalendar* calendar) daySelectedDoubleClick;
	/** */
	extern(C) void function(GtkCalendar* calendar) prevMonth;
	/** */
	extern(C) void function(GtkCalendar* calendar) nextMonth;
	/** */
	extern(C) void function(GtkCalendar* calendar) prevYear;
	/** */
	extern(C) void function(GtkCalendar* calendar) nextYear;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCalendarPrivate;

struct GtkCellAccessible
{
	GtkAccessible parent;
	GtkCellAccessiblePrivate* priv;
}

struct GtkCellAccessibleClass
{
	GtkAccessibleClass parentClass;
	/** */
	extern(C) void function(GtkCellAccessible* cell, int emitSignal) updateCache;
}

struct GtkCellAccessibleParent;

struct GtkCellAccessibleParentIface
{
	GTypeInterface parent;
	/** */
	extern(C) void function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell, int* x, int* y, int* width, int* height, AtkCoordType coordType) getCellExtents;
	/** */
	extern(C) void function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell, GdkRectangle* cellRect) getCellArea;
	/** */
	extern(C) int function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell) grabFocus;
	/** */
	extern(C) int function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell) getChildIndex;
	/** */
	extern(C) GtkCellRendererState function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell) getRendererState;
	/** */
	extern(C) void function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell) expandCollapse;
	/** */
	extern(C) void function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell) activate;
	/** */
	extern(C) void function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell) edit;
	/** */
	extern(C) void function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell, AtkRelationSet* relationset) updateRelationset;
}

struct GtkCellAccessiblePrivate;

struct GtkCellArea
{
	GObject parentInstance;
	GtkCellAreaPrivate* priv;
}

struct GtkCellAreaBox
{
	GtkCellArea parentInstance;
	GtkCellAreaBoxPrivate* priv;
}

struct GtkCellAreaBoxClass
{
	GtkCellAreaClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCellAreaBoxPrivate;

struct GtkCellAreaClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellRenderer* renderer) add;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellRenderer* renderer) remove;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellCallback callback, void* callbackData) foreac;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, GdkRectangle* backgroundArea, GtkCellAllocCallback callback, void* callbackData) foreachAlloc;
	/**
	 *
	 * Params:
	 *     area = a #GtkCellArea
	 *     context = the #GtkCellAreaContext for this row of data.
	 *     widget = the #GtkWidget that @area is rendering to
	 *     event = the #GdkEvent to handle
	 *     cellArea = the @widget relative coordinates for @area
	 *     flags = the #GtkCellRendererState for @area in this row.
	 * Return: %TRUE if the event was handled by @area.
	 */
	extern(C) int function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkEvent* event, GdkRectangle* cellArea, GtkCellRendererState flags) event;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, cairo_t* cr, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags, int paintFocus) render;
	/** */
	extern(C) void function(GtkCellArea* area, GtkTreeModel* treeModel, GtkTreeIter* iter, int isExpander, int isExpanded) applyAttributes;
	/**
	 *
	 * Params:
	 *     area = a #GtkCellArea
	 * Return: a newly created #GtkCellAreaContext which can be used with @area.
	 */
	extern(C) GtkCellAreaContext* function(GtkCellArea* area) createContext;
	/**
	 *
	 * Params:
	 *     area = a #GtkCellArea
	 *     context = the #GtkCellAreaContext to copy
	 * Return: a newly created #GtkCellAreaContext copy of @context.
	 */
	extern(C) GtkCellAreaContext* function(GtkCellArea* area, GtkCellAreaContext* context) copyContext;
	/**
	 *
	 * Params:
	 *     area = a #GtkCellArea
	 * Return: The #GtkSizeRequestMode preferred by @area.
	 */
	extern(C) GtkSizeRequestMode function(GtkCellArea* area) getRequestMode;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int* minimumWidth, int* naturalWidth) getPreferredWidth;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight) getPreferredHeightForWidth;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int* minimumHeight, int* naturalHeight) getPreferredHeight;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int height, int* minimumWidth, int* naturalWidth) getPreferredWidthForHeight;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellRenderer* renderer, uint propertyId, GValue* value, GParamSpec* pspec) setCellProperty;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellRenderer* renderer, uint propertyId, GValue* value, GParamSpec* pspec) getCellProperty;
	/**
	 *
	 * Params:
	 *     area = a #GtkCellArea
	 *     direction = the #GtkDirectionType
	 * Return: %TRUE if focus remains inside @area as a result of this call.
	 */
	extern(C) int function(GtkCellArea* area, GtkDirectionType direction) focus;
	/**
	 *
	 * Params:
	 *     area = a #GtkCellArea
	 * Return: whether @area can do anything when activated.
	 */
	extern(C) int function(GtkCellArea* area) isActivatable;
	/**
	 *
	 * Params:
	 *     area = a #GtkCellArea
	 *     context = the #GtkCellAreaContext in context with the current row data
	 *     widget = the #GtkWidget that @area is rendering on
	 *     cellArea = the size and location of @area relative to @widget’s allocation
	 *     flags = the #GtkCellRendererState flags for @area for this row of data.
	 *     editOnly = if %TRUE then only cell renderers that are %GTK_CELL_RENDERER_MODE_EDITABLE
	 *         will be activated.
	 * Return: Whether @area was successfully activated.
	 */
	extern(C) int function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, GtkCellRendererState flags, int editOnly) activate;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkCellAreaContext
{
	GObject parentInstance;
	GtkCellAreaContextPrivate* priv;
}

struct GtkCellAreaContextClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkCellAreaContext* context, int width, int height) allocate;
	/** */
	extern(C) void function(GtkCellAreaContext* context) reset;
	/** */
	extern(C) void function(GtkCellAreaContext* context, int width, int* minimumHeight, int* naturalHeight) getPreferredHeightForWidth;
	/** */
	extern(C) void function(GtkCellAreaContext* context, int height, int* minimumWidth, int* naturalWidth) getPreferredWidthForHeight;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
}

struct GtkCellAreaContextPrivate;

struct GtkCellAreaPrivate;

struct GtkCellEditable;

struct GtkCellEditableIface
{
	GTypeInterface gIface;
	/** */
	extern(C) void function(GtkCellEditable* cellEditable) editingDone;
	/** */
	extern(C) void function(GtkCellEditable* cellEditable) removeWidget;
	/** */
	extern(C) void function(GtkCellEditable* cellEditable, GdkEvent* event) startEditing;
}

struct GtkCellLayout;

struct GtkCellLayoutIface
{
	GTypeInterface gIface;
	/** */
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int expand) packStart;
	/** */
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int expand) packEnd;
	/** */
	extern(C) void function(GtkCellLayout* cellLayout) clear;
	/** */
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, const(char)* attribute, int column) addAttribute;
	/** */
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, GtkCellLayoutDataFunc func, void* funcData, GDestroyNotify destroy) setCellDataFunc;
	/** */
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell) clearAttributes;
	/** */
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int position) reorder;
	/**
	 *
	 * Params:
	 *     cellLayout = a #GtkCellLayout
	 * Return: a list of cell renderers. The list, but not the renderers has
	 *     been newly allocated and should be freed with g_list_free()
	 *     when no longer needed.
	 */
	extern(C) GList* function(GtkCellLayout* cellLayout) getCells;
	/**
	 *
	 * Params:
	 *     cellLayout = a #GtkCellLayout
	 * Return: the cell area used by @cell_layout,
	 *     or %NULL in case no cell area is used.
	 */
	extern(C) GtkCellArea* function(GtkCellLayout* cellLayout) getArea;
}

struct GtkCellRenderer
{
	GObject parentInstance;
	GtkCellRendererPrivate* priv;
}

struct GtkCellRendererAccel
{
	GtkCellRendererText parent;
	GtkCellRendererAccelPrivate* priv;
}

struct GtkCellRendererAccelClass
{
	GtkCellRendererTextClass parentClass;
	/** */
	extern(C) void function(GtkCellRendererAccel* accel, const(char)* pathString, uint accelKey, GdkModifierType accelMods, uint hardwareKeycode) accelEdited;
	/** */
	extern(C) void function(GtkCellRendererAccel* accel, const(char)* pathString) accelCleared;
	/** */
	extern(C) void function() GtkReserved0;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCellRendererAccelPrivate;

struct GtkCellRendererClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     cell = a #GtkCellRenderer    instance
	 * Return: The #GtkSizeRequestMode preferred by this renderer.
	 */
	extern(C) GtkSizeRequestMode function(GtkCellRenderer* cell) getRequestMode;
	/** */
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, int* minimumSize, int* naturalSize) getPreferredWidth;
	/** */
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight) getPreferredHeightForWidth;
	/** */
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, int* minimumSize, int* naturalSize) getPreferredHeight;
	/** */
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, int height, int* minimumWidth, int* naturalWidth) getPreferredWidthForHeight;
	/** */
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, GtkCellRendererState flags, GdkRectangle* cellArea, GdkRectangle* alignedArea) getAlignedArea;
	/** */
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, GdkRectangle* cellArea, int* xOffset, int* yOffset, int* width, int* height) getSize;
	/** */
	extern(C) void function(GtkCellRenderer* cell, cairo_t* cr, GtkWidget* widget, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) render;
	/**
	 *
	 * Params:
	 *     cell = a #GtkCellRenderer
	 *     event = a #GdkEvent
	 *     widget = widget that received the event
	 *     path = widget-dependent string representation of the event location;
	 *         e.g. for #GtkTreeView, a string representation of #GtkTreePath
	 *     backgroundArea = background area as passed to gtk_cell_renderer_render()
	 *     cellArea = cell area as passed to gtk_cell_renderer_render()
	 *     flags = render flags
	 * Return: %TRUE if the event was consumed/handled
	 */
	extern(C) int function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, const(char)* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) activate;
	/**
	 *
	 * Params:
	 *     cell = a #GtkCellRenderer
	 *     event = a #GdkEvent
	 *     widget = widget that received the event
	 *     path = widget-dependent string representation of the event location;
	 *         e.g. for #GtkTreeView, a string representation of #GtkTreePath
	 *     backgroundArea = background area as passed to gtk_cell_renderer_render()
	 *     cellArea = cell area as passed to gtk_cell_renderer_render()
	 *     flags = render flags
	 * Return: A new #GtkCellEditable, or %NULL
	 */
	extern(C) GtkCellEditable* function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, const(char)* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) startEditing;
	/** */
	extern(C) void function(GtkCellRenderer* cell) editingCanceled;
	/** */
	extern(C) void function(GtkCellRenderer* cell, GtkCellEditable* editable, const(char)* path) editingStarted;
	GtkCellRendererClassPrivate* priv;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCellRendererClassPrivate;

struct GtkCellRendererCombo
{
	GtkCellRendererText parent;
	GtkCellRendererComboPrivate* priv;
}

struct GtkCellRendererComboClass
{
	GtkCellRendererTextClass parent;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCellRendererComboPrivate;

struct GtkCellRendererPixbuf
{
	GtkCellRenderer parent;
	GtkCellRendererPixbufPrivate* priv;
}

struct GtkCellRendererPixbufClass
{
	GtkCellRendererClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCellRendererPixbufPrivate;

struct GtkCellRendererPrivate;

struct GtkCellRendererProgress
{
	GtkCellRenderer parentInstance;
	GtkCellRendererProgressPrivate* priv;
}

struct GtkCellRendererProgressClass
{
	GtkCellRendererClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCellRendererProgressPrivate;

struct GtkCellRendererSpin
{
	GtkCellRendererText parent;
	GtkCellRendererSpinPrivate* priv;
}

struct GtkCellRendererSpinClass
{
	GtkCellRendererTextClass parent;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCellRendererSpinPrivate;

struct GtkCellRendererSpinner
{
	GtkCellRenderer parent;
	GtkCellRendererSpinnerPrivate* priv;
}

struct GtkCellRendererSpinnerClass
{
	GtkCellRendererClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCellRendererSpinnerPrivate;

struct GtkCellRendererText
{
	GtkCellRenderer parent;
	GtkCellRendererTextPrivate* priv;
}

struct GtkCellRendererTextClass
{
	GtkCellRendererClass parentClass;
	/** */
	extern(C) void function(GtkCellRendererText* cellRendererText, const(char)* path, const(char)* newText) edited;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCellRendererTextPrivate;

struct GtkCellRendererToggle
{
	GtkCellRenderer parent;
	GtkCellRendererTogglePrivate* priv;
}

struct GtkCellRendererToggleClass
{
	GtkCellRendererClass parentClass;
	/** */
	extern(C) void function(GtkCellRendererToggle* cellRendererToggle, const(char)* path) toggled;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCellRendererTogglePrivate;

struct GtkCellView
{
	GtkWidget parentInstance;
	GtkCellViewPrivate* priv;
}

struct GtkCellViewClass
{
	/**
	 * The parent class.
	 */
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCellViewPrivate;

struct GtkCheckButton
{
	GtkToggleButton toggleButton;
}

struct GtkCheckButtonClass
{
	GtkToggleButtonClass parentClass;
	/** */
	extern(C) void function(GtkCheckButton* checkButton, cairo_t* cr) drawIndicator;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCheckMenuItem
{
	GtkMenuItem menuItem;
	GtkCheckMenuItemPrivate* priv;
}

struct GtkCheckMenuItemAccessible
{
	GtkMenuItemAccessible parent;
	GtkCheckMenuItemAccessiblePrivate* priv;
}

struct GtkCheckMenuItemAccessibleClass
{
	GtkMenuItemAccessibleClass parentClass;
}

struct GtkCheckMenuItemAccessiblePrivate;

struct GtkCheckMenuItemClass
{
	/**
	 * The parent class.
	 */
	GtkMenuItemClass parentClass;
	/** */
	extern(C) void function(GtkCheckMenuItem* checkMenuItem) toggled;
	/** */
	extern(C) void function(GtkCheckMenuItem* checkMenuItem, cairo_t* cr) drawIndicator;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCheckMenuItemPrivate;

struct GtkClipboard;

struct GtkColorButton
{
	GtkButton button;
	GtkColorButtonPrivate* priv;
}

struct GtkColorButtonClass
{
	GtkButtonClass parentClass;
	/** */
	extern(C) void function(GtkColorButton* cp) colorSet;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkColorButtonPrivate;

struct GtkColorChooser;

struct GtkColorChooserDialog
{
	GtkDialog parentInstance;
	GtkColorChooserDialogPrivate* priv;
}

struct GtkColorChooserDialogClass
{
	GtkDialogClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkColorChooserDialogPrivate;

struct GtkColorChooserInterface
{
	GTypeInterface baseInterface;
	/** */
	extern(C) void function(GtkColorChooser* chooser, GdkRGBA* color) getRgba;
	/** */
	extern(C) void function(GtkColorChooser* chooser, GdkRGBA* color) setRgba;
	/** */
	extern(C) void function(GtkColorChooser* chooser, GtkOrientation orientation, int colorsPerLine, int nColors, GdkRGBA* colors) addPalette;
	/** */
	extern(C) void function(GtkColorChooser* chooser, GdkRGBA* color) colorActivated;
	void*[12] padding;
}

struct GtkColorChooserWidget
{
	GtkBox parentInstance;
	GtkColorChooserWidgetPrivate* priv;
}

struct GtkColorChooserWidgetClass
{
	/**
	 * The parent class.
	 */
	GtkBoxClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkColorChooserWidgetPrivate;

struct GtkColorSelection
{
	GtkBox parentInstance;
	GtkColorSelectionPrivate* privateData;
}

struct GtkColorSelectionClass
{
	/**
	 * The parent class.
	 */
	GtkBoxClass parentClass;
	/** */
	extern(C) void function(GtkColorSelection* colorSelection) colorChanged;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkColorSelectionDialog
{
	GtkDialog parentInstance;
	GtkColorSelectionDialogPrivate* priv;
}

struct GtkColorSelectionDialogClass
{
	GtkDialogClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkColorSelectionDialogPrivate;

struct GtkColorSelectionPrivate;

struct GtkComboBox
{
	GtkBin parentInstance;
	GtkComboBoxPrivate* priv;
}

struct GtkComboBoxAccessible
{
	GtkContainerAccessible parent;
	GtkComboBoxAccessiblePrivate* priv;
}

struct GtkComboBoxAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkComboBoxAccessiblePrivate;

struct GtkComboBoxClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function(GtkComboBox* comboBox) changed;
	/** */
	extern(C) char* function(GtkComboBox* comboBox, const(char)* path) formatEntryText;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
}

struct GtkComboBoxPrivate;

struct GtkComboBoxText
{
	GtkComboBox parentInstance;
	GtkComboBoxTextPrivate* priv;
}

struct GtkComboBoxTextClass
{
	GtkComboBoxClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkComboBoxTextPrivate;

struct GtkContainer
{
	GtkWidget widget;
	GtkContainerPrivate* priv;
}

struct GtkContainerAccessible
{
	GtkWidgetAccessible parent;
	GtkContainerAccessiblePrivate* priv;
}

struct GtkContainerAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
	/** */
	extern(C) int function(GtkContainer* container, GtkWidget* widget, void* data) addGtk;
	/** */
	extern(C) int function(GtkContainer* container, GtkWidget* widget, void* data) removeGtk;
}

struct GtkContainerAccessiblePrivate;

struct GtkContainerCellAccessible
{
	GtkCellAccessible parent;
	GtkContainerCellAccessiblePrivate* priv;
}

struct GtkContainerCellAccessibleClass
{
	GtkCellAccessibleClass parentClass;
}

struct GtkContainerCellAccessiblePrivate;

struct GtkContainerClass
{
	/**
	 * The parent class.
	 */
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function(GtkContainer* container, GtkWidget* widget) add;
	/** */
	extern(C) void function(GtkContainer* container, GtkWidget* widget) remove;
	/** */
	extern(C) void function(GtkContainer* container) checkResize;
	/** */
	extern(C) void function(GtkContainer* container, int includeInternals, GtkCallback callback, void* callbackData) forall;
	/** */
	extern(C) void function(GtkContainer* container, GtkWidget* child) setFocusChild;
	/**
	 *
	 * Params:
	 *     container = a #GtkContainer
	 * Return: a #GType.
	 */
	extern(C) GType function(GtkContainer* container) childType;
	/** */
	extern(C) char* function(GtkContainer* container, GtkWidget* child) compositeName;
	/** */
	extern(C) void function(GtkContainer* container, GtkWidget* child, uint propertyId, GValue* value, GParamSpec* pspec) setChildProperty;
	/** */
	extern(C) void function(GtkContainer* container, GtkWidget* child, uint propertyId, GValue* value, GParamSpec* pspec) getChildProperty;
	/**
	 *
	 * Params:
	 *     container = a #GtkContainer
	 *     child = a child of @container
	 * Return: A newly created #GtkWidgetPath
	 */
	extern(C) GtkWidgetPath* function(GtkContainer* container, GtkWidget* child) getPathForChild;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "HandleBorderWidth", 1,
		uint, "", 31
	));
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkContainerPrivate;

struct GtkCssProvider
{
	GObject parentInstance;
	GtkCssProviderPrivate* priv;
}

struct GtkCssProviderClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkCssProvider* provider, GtkCssSection* section, GError* error) parsingError;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkCssProviderPrivate;

struct GtkCssSection;

struct GtkDialog
{
	GtkWindow window;
	GtkDialogPrivate* priv;
}

struct GtkDialogClass
{
	/**
	 * The parent class.
	 */
	GtkWindowClass parentClass;
	/** */
	extern(C) void function(GtkDialog* dialog, int responseId) response;
	/** */
	extern(C) void function(GtkDialog* dialog) close;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkDialogPrivate;

struct GtkDrawingArea
{
	GtkWidget widget;
	void* dummy;
}

struct GtkDrawingAreaClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkEditable;

struct GtkEditableInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) void function(GtkEditable* editable, const(char)* newText, int newTextLength, int* position) insertText;
	/** */
	extern(C) void function(GtkEditable* editable, int startPos, int endPos) deleteText;
	/** */
	extern(C) void function(GtkEditable* editable) changed;
	/** */
	extern(C) void function(GtkEditable* editable, const(char)* newText, int newTextLength, int* position) doInsertText;
	/** */
	extern(C) void function(GtkEditable* editable, int startPos, int endPos) doDeleteText;
	/**
	 *
	 * Params:
	 *     editable = a #GtkEditable
	 *     startPos = start of text
	 *     endPos = end of text
	 * Return: a pointer to the contents of the widget as a
	 *     string. This string is allocated by the #GtkEditable
	 *     implementation and should be freed by the caller.
	 */
	extern(C) char* function(GtkEditable* editable, int startPos, int endPos) getChars;
	/** */
	extern(C) void function(GtkEditable* editable, int startPos, int endPos) setSelectionBounds;
	/**
	 *
	 * Params:
	 *     editable = a #GtkEditable
	 *     startPos = location to store the starting position, or %NULL
	 *     endPos = location to store the end position, or %NULL
	 * Return: %TRUE if an area is selected, %FALSE otherwise
	 */
	extern(C) int function(GtkEditable* editable, int* startPos, int* endPos) getSelectionBounds;
	/** */
	extern(C) void function(GtkEditable* editable, int position) setPosition;
	/**
	 *
	 * Params:
	 *     editable = a #GtkEditable
	 * Return: the cursor position
	 */
	extern(C) int function(GtkEditable* editable) getPosition;
}

struct GtkEntry
{
	GtkWidget parentInstance;
	GtkEntryPrivate* priv;
}

struct GtkEntryAccessible
{
	GtkWidgetAccessible parent;
	GtkEntryAccessiblePrivate* priv;
}

struct GtkEntryAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
}

struct GtkEntryAccessiblePrivate;

struct GtkEntryBuffer
{
	GObject parentInstance;
	GtkEntryBufferPrivate* priv;
}

struct GtkEntryBufferClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkEntryBuffer* buffer, uint position, const(char)* chars, uint nChars) insertedText;
	/** */
	extern(C) void function(GtkEntryBuffer* buffer, uint position, uint nChars) deletedText;
	/** */
	extern(C) const(char)* function(GtkEntryBuffer* buffer, size_t* nBytes) getText;
	/**
	 *
	 * Params:
	 *     buffer = a #GtkEntryBuffer
	 * Return: The number of characters in the buffer.
	 */
	extern(C) uint function(GtkEntryBuffer* buffer) getLength;
	/**
	 *
	 * Params:
	 *     buffer = a #GtkEntryBuffer
	 *     position = the position at which to insert text.
	 *     chars = the text to insert into the buffer.
	 *     nChars = the length of the text in characters, or -1
	 * Return: The number of characters actually inserted.
	 */
	extern(C) uint function(GtkEntryBuffer* buffer, uint position, const(char)* chars, uint nChars) insertText;
	/**
	 *
	 * Params:
	 *     buffer = a #GtkEntryBuffer
	 *     position = position at which to delete text
	 *     nChars = number of characters to delete
	 * Return: The number of characters deleted.
	 */
	extern(C) uint function(GtkEntryBuffer* buffer, uint position, uint nChars) deleteText;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkEntryBufferPrivate;

/**
 * Class structure for #GtkEntry. All virtual functions have a default
 * implementation. Derived classes may set the virtual function pointers for the
 * signal handlers to %NULL, but must keep @get_text_area_size and
 * @get_frame_size non-%NULL; either use the default implementation, or provide
 * a custom one.
 */
struct GtkEntryClass
{
	/**
	 * The parent class.
	 */
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function(GtkEntry* entry, GtkWidget* popup) populatePopup;
	/** */
	extern(C) void function(GtkEntry* entry) activate;
	/** */
	extern(C) void function(GtkEntry* entry, GtkMovementStep step, int count, int extendSelection) moveCursor;
	/** */
	extern(C) void function(GtkEntry* entry, const(char)* str) insertAtCursor;
	/** */
	extern(C) void function(GtkEntry* entry, GtkDeleteType type, int count) deleteFromCursor;
	/** */
	extern(C) void function(GtkEntry* entry) backspace;
	/** */
	extern(C) void function(GtkEntry* entry) cutClipboard;
	/** */
	extern(C) void function(GtkEntry* entry) copyClipboard;
	/** */
	extern(C) void function(GtkEntry* entry) pasteClipboard;
	/** */
	extern(C) void function(GtkEntry* entry) toggleOverwrite;
	/** */
	extern(C) void function(GtkEntry* entry, int* x, int* y, int* width, int* height) getTextAreaSize;
	/** */
	extern(C) void function(GtkEntry* entry, int* x, int* y, int* width, int* height) getFrameSize;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
}

struct GtkEntryCompletion
{
	GObject parentInstance;
	GtkEntryCompletionPrivate* priv;
}

struct GtkEntryCompletionClass
{
	GObjectClass parentClass;
	/** */
	extern(C) int function(GtkEntryCompletion* completion, GtkTreeModel* model, GtkTreeIter* iter) matchSelected;
	/** */
	extern(C) void function(GtkEntryCompletion* completion, int index) actionActivated;
	/** */
	extern(C) int function(GtkEntryCompletion* completion, const(char)* prefix) insertPrefix;
	/** */
	extern(C) int function(GtkEntryCompletion* completion, GtkTreeModel* model, GtkTreeIter* iter) cursorOnMatch;
	/** */
	extern(C) void function(GtkEntryCompletion* completion) noMatches;
	/** */
	extern(C) void function() GtkReserved0;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
}

struct GtkEntryCompletionPrivate;


struct GtkEntryPrivate;

struct GtkEventBox
{
	GtkBin bin;
	GtkEventBoxPrivate* priv;
}

struct GtkEventBoxClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkEventBoxPrivate;

struct GtkEventController;

struct GtkEventControllerClass;

struct GtkExpander
{
	GtkBin bin;
	GtkExpanderPrivate* priv;
}

struct GtkExpanderAccessible
{
	GtkContainerAccessible parent;
	GtkExpanderAccessiblePrivate* priv;
}

struct GtkExpanderAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkExpanderAccessiblePrivate;

struct GtkExpanderClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function(GtkExpander* expander) activate;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkExpanderPrivate;

struct GtkFileChooser;

struct GtkFileChooserButton
{
	GtkBox parent;
	GtkFileChooserButtonPrivate* priv;
}

struct GtkFileChooserButtonClass
{
	/**
	 * The parent class.
	 */
	GtkBoxClass parentClass;
	/** */
	extern(C) void function(GtkFileChooserButton* fc) fileSet;
	void* GtkReserved1;
	void* GtkReserved2;
	void* GtkReserved3;
	void* GtkReserved4;
}

struct GtkFileChooserButtonPrivate;

struct GtkFileChooserDialog
{
	GtkDialog parentInstance;
	GtkFileChooserDialogPrivate* priv;
}

struct GtkFileChooserDialogClass
{
	GtkDialogClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkFileChooserDialogPrivate;

struct GtkFileChooserNative;

struct GtkFileChooserNativeClass
{
	GtkNativeDialogClass parentClass;
}

struct GtkFileChooserWidget
{
	GtkBox parentInstance;
	GtkFileChooserWidgetPrivate* priv;
}

struct GtkFileChooserWidgetClass
{
	/**
	 * The parent class.
	 */
	GtkBoxClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkFileChooserWidgetPrivate;

struct GtkFileFilter;

/**
 * A #GtkFileFilterInfo-struct is used to pass information about the
 * tested file to gtk_file_filter_filter().
 */
struct GtkFileFilterInfo
{
	/**
	 * Flags indicating which of the following fields need
	 * are filled
	 */
	GtkFileFilterFlags contains;
	/**
	 * the filename of the file being tested
	 */
	const(char)* filename;
	/**
	 * the URI for the file being tested
	 */
	const(char)* uri;
	/**
	 * the string that will be used to display the file
	 * in the file chooser
	 */
	const(char)* displayName;
	/**
	 * the mime type of the file
	 */
	const(char)* mimeType;
}

struct GtkFixed
{
	GtkContainer container;
	GtkFixedPrivate* priv;
}

struct GtkFixedChild
{
	GtkWidget* widget;
	int x;
	int y;
}

struct GtkFixedClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkFixedPrivate;

struct GtkFlowBox
{
	GtkContainer container;
}

struct GtkFlowBoxAccessible
{
	GtkContainerAccessible parent;
	GtkFlowBoxAccessiblePrivate* priv;
}

struct GtkFlowBoxAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkFlowBoxAccessiblePrivate;

struct GtkFlowBoxChild
{
	GtkBin parentInstance;
}

struct GtkFlowBoxChildAccessible
{
	GtkContainerAccessible parent;
}

struct GtkFlowBoxChildAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkFlowBoxChildClass
{
	GtkBinClass parentClass;
	/** */
	extern(C) void function(GtkFlowBoxChild* child) activate;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
}

struct GtkFlowBoxClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) void function(GtkFlowBox* box, GtkFlowBoxChild* child) childActivated;
	/** */
	extern(C) void function(GtkFlowBox* box) selectedChildrenChanged;
	/** */
	extern(C) void function(GtkFlowBox* box) activateCursorChild;
	/** */
	extern(C) void function(GtkFlowBox* box) toggleCursorChild;
	/** */
	extern(C) int function(GtkFlowBox* box, GtkMovementStep step, int count) moveCursor;
	/** */
	extern(C) void function(GtkFlowBox* box) selectAll;
	/** */
	extern(C) void function(GtkFlowBox* box) unselectAll;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
}

struct GtkFontButton
{
	GtkButton button;
	GtkFontButtonPrivate* priv;
}

struct GtkFontButtonClass
{
	GtkButtonClass parentClass;
	/** */
	extern(C) void function(GtkFontButton* gfp) fontSet;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkFontButtonPrivate;

struct GtkFontChooser;

struct GtkFontChooserDialog
{
	GtkDialog parentInstance;
	GtkFontChooserDialogPrivate* priv;
}

struct GtkFontChooserDialogClass
{
	/**
	 * The parent class.
	 */
	GtkDialogClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkFontChooserDialogPrivate;

struct GtkFontChooserIface
{
	GTypeInterface baseIface;
	/**
	 *
	 * Params:
	 *     fontchooser = a #GtkFontChooser
	 * Return: A #PangoFontFamily representing the
	 *     selected font family, or %NULL. The returned object is owned by @fontchooser
	 *     and must not be modified or freed.
	 */
	extern(C) PangoFontFamily* function(GtkFontChooser* fontchooser) getFontFamily;
	/**
	 *
	 * Params:
	 *     fontchooser = a #GtkFontChooser
	 * Return: A #PangoFontFace representing the
	 *     selected font group details, or %NULL. The returned object is owned by
	 *     @fontchooser and must not be modified or freed.
	 */
	extern(C) PangoFontFace* function(GtkFontChooser* fontchooser) getFontFace;
	/**
	 *
	 * Params:
	 *     fontchooser = a #GtkFontChooser
	 * Return: A n integer representing the selected font size,
	 *     or -1 if no font size is selected.
	 */
	extern(C) int function(GtkFontChooser* fontchooser) getFontSize;
	/** */
	extern(C) void function(GtkFontChooser* fontchooser, GtkFontFilterFunc filter, void* userData, GDestroyNotify destroy) setFilterFunc;
	/** */
	extern(C) void function(GtkFontChooser* chooser, const(char)* fontname) fontActivated;
	/** */
	extern(C) void function(GtkFontChooser* fontchooser, PangoFontMap* fontmap) setFontMap;
	/**
	 *
	 * Params:
	 *     fontchooser = a #GtkFontChooser
	 * Return: a #PangoFontMap, or %NULL
	 */
	extern(C) PangoFontMap* function(GtkFontChooser* fontchooser) getFontMap;
	void*[10] padding;
}

struct GtkFontChooserWidget
{
	GtkBox parentInstance;
	GtkFontChooserWidgetPrivate* priv;
}

struct GtkFontChooserWidgetClass
{
	/**
	 * The parent class.
	 */
	GtkBoxClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkFontChooserWidgetPrivate;

struct GtkFontSelection
{
	GtkBox parentInstance;
	GtkFontSelectionPrivate* priv;
}

struct GtkFontSelectionClass
{
	GtkBoxClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkFontSelectionDialog
{
	GtkDialog parentInstance;
	GtkFontSelectionDialogPrivate* priv;
}

struct GtkFontSelectionDialogClass
{
	GtkDialogClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkFontSelectionDialogPrivate;

struct GtkFontSelectionPrivate;

struct GtkFrame
{
	GtkBin bin;
	GtkFramePrivate* priv;
}

struct GtkFrameAccessible
{
	GtkContainerAccessible parent;
	GtkFrameAccessiblePrivate* priv;
}

struct GtkFrameAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkFrameAccessiblePrivate;

struct GtkFrameClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function(GtkFrame* frame, GtkAllocation* allocation) computeChildAllocation;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkFramePrivate;

struct GtkGLArea
{
	GtkWidget parentInstance;
}

/**
 * The `GtkGLAreaClass` structure contains only private data.
 *
 * Since: 3.16
 */
struct GtkGLAreaClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) int function(GtkGLArea* area, GdkGLContext* context) render;
	/** */
	extern(C) void function(GtkGLArea* area, int width, int height) resize;
	/** */
	extern(C) GdkGLContext* function(GtkGLArea* area) createContext;
	void*[6] Padding;
}

struct GtkGesture;

struct GtkGestureClass;

struct GtkGestureDrag;

struct GtkGestureDragClass;

struct GtkGestureLongPress;

struct GtkGestureLongPressClass;

struct GtkGestureMultiPress;

struct GtkGestureMultiPressClass;

struct GtkGesturePan;

struct GtkGesturePanClass;

struct GtkGestureRotate;

struct GtkGestureRotateClass;

struct GtkGestureSingle;

struct GtkGestureSingleClass;

struct GtkGestureSwipe;

struct GtkGestureSwipeClass;

struct GtkGestureZoom;

struct GtkGestureZoomClass;

struct GtkGradient;

struct GtkGrid
{
	GtkContainer container;
	GtkGridPrivate* priv;
}

struct GtkGridClass
{
	/**
	 * The parent class.
	 */
	GtkContainerClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkGridPrivate;

struct GtkHBox
{
	GtkBox box;
}

struct GtkHBoxClass
{
	GtkBoxClass parentClass;
}

struct GtkHButtonBox
{
	GtkButtonBox buttonBox;
}

struct GtkHButtonBoxClass
{
	GtkButtonBoxClass parentClass;
}

struct GtkHPaned
{
	GtkPaned paned;
}

struct GtkHPanedClass
{
	GtkPanedClass parentClass;
}

struct GtkHSV
{
	GtkWidget parentInstance;
	GtkHSVPrivate* priv;
}

struct GtkHSVClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function(GtkHSV* hsv) changed;
	/** */
	extern(C) void function(GtkHSV* hsv, GtkDirectionType type) move;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkHSVPrivate;

struct GtkHScale
{
	GtkScale scale;
}

struct GtkHScaleClass
{
	GtkScaleClass parentClass;
}

struct GtkHScrollbar
{
	GtkScrollbar scrollbar;
}

struct GtkHScrollbarClass
{
	GtkScrollbarClass parentClass;
}

struct GtkHSeparator
{
	GtkSeparator separator;
}

struct GtkHSeparatorClass
{
	GtkSeparatorClass parentClass;
}

struct GtkHandleBox
{
	GtkBin bin;
	GtkHandleBoxPrivate* priv;
}

struct GtkHandleBoxClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function(GtkHandleBox* handleBox, GtkWidget* child) childAttached;
	/** */
	extern(C) void function(GtkHandleBox* handleBox, GtkWidget* child) childDetached;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkHandleBoxPrivate;

struct GtkHeaderBar
{
	GtkContainer container;
}

struct GtkHeaderBarClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkHeaderBarPrivate;

struct GtkIMContext
{
	GObject parentInstance;
}

struct GtkIMContextClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkIMContext* context) preeditStart;
	/** */
	extern(C) void function(GtkIMContext* context) preeditEnd;
	/** */
	extern(C) void function(GtkIMContext* context) preeditChanged;
	/** */
	extern(C) void function(GtkIMContext* context, const(char)* str) commit;
	/** */
	extern(C) int function(GtkIMContext* context) retrieveSurrounding;
	/**
	 *
	 * Params:
	 *     context = a #GtkIMContext
	 *     offset = offset from cursor position in chars;
	 *         a negative value means start before the cursor.
	 *     nChars = number of characters to delete.
	 * Return: %TRUE if the signal was handled.
	 */
	extern(C) int function(GtkIMContext* context, int offset, int nChars) deleteSurrounding;
	/** */
	extern(C) void function(GtkIMContext* context, GdkWindow* window) setClientWindow;
	/** */
	extern(C) void function(GtkIMContext* context, char** str, PangoAttrList** attrs, int* cursorPos) getPreeditString;
	/**
	 *
	 * Params:
	 *     context = a #GtkIMContext
	 *     event = the key event
	 * Return: %TRUE if the input method handled the key event.
	 */
	extern(C) int function(GtkIMContext* context, GdkEventKey* event) filterKeypress;
	/** */
	extern(C) void function(GtkIMContext* context) focusIn;
	/** */
	extern(C) void function(GtkIMContext* context) focusOut;
	/** */
	extern(C) void function(GtkIMContext* context) reset;
	/** */
	extern(C) void function(GtkIMContext* context, GdkRectangle* area) setCursorLocation;
	/** */
	extern(C) void function(GtkIMContext* context, int usePreedit) setUsePreedit;
	/** */
	extern(C) void function(GtkIMContext* context, const(char)* text, int len, int cursorIndex) setSurrounding;
	/**
	 *
	 * Params:
	 *     context = a #GtkIMContext
	 *     text = location to store a UTF-8 encoded
	 *         string of text holding context around the insertion point.
	 *         If the function returns %TRUE, then you must free the result
	 *         stored in this location with g_free().
	 *     cursorIndex = location to store byte index of the insertion
	 *         cursor within @text.
	 * Return: %TRUE if surrounding text was provided; in this case
	 *     you must free the result stored in *text.
	 */
	extern(C) int function(GtkIMContext* context, char** text, int* cursorIndex) getSurrounding;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
}

/**
 * Bookkeeping information about a loadable input method.
 */
struct GtkIMContextInfo
{
	/**
	 * The unique identification string of the input method.
	 */
	const(char)* contextId;
	/**
	 * The human-readable name of the input method.
	 */
	const(char)* contextName;
	/**
	 * Translation domain to be used with dgettext()
	 */
	const(char)* domain;
	/**
	 * Name of locale directory for use with bindtextdomain()
	 */
	const(char)* domainDirname;
	/**
	 * A colon-separated list of locales where this input method
	 * should be the default. The asterisk “*” sets the default for all locales.
	 */
	const(char)* defaultLocales;
}

struct GtkIMContextSimple
{
	GtkIMContext object;
	GtkIMContextSimplePrivate* priv;
}

struct GtkIMContextSimpleClass
{
	GtkIMContextClass parentClass;
}

struct GtkIMContextSimplePrivate;

struct GtkIMMulticontext
{
	GtkIMContext object;
	GtkIMMulticontextPrivate* priv;
}

struct GtkIMMulticontextClass
{
	GtkIMContextClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkIMMulticontextPrivate;

struct GtkIconFactory
{
	GObject parentInstance;
	GtkIconFactoryPrivate* priv;
}

struct GtkIconFactoryClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkIconFactoryPrivate;

struct GtkIconInfo;

struct GtkIconInfoClass;

struct GtkIconSet;

struct GtkIconSource;

struct GtkIconTheme
{
	GObject parentInstance;
	GtkIconThemePrivate* priv;
}

struct GtkIconThemeClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkIconTheme* iconTheme) changed;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkIconThemePrivate;

struct GtkIconView
{
	GtkContainer parent;
	GtkIconViewPrivate* priv;
}

struct GtkIconViewAccessible
{
	GtkContainerAccessible parent;
	GtkIconViewAccessiblePrivate* priv;
}

struct GtkIconViewAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkIconViewAccessiblePrivate;

struct GtkIconViewClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) void function(GtkIconView* iconView, GtkTreePath* path) itemActivated;
	/** */
	extern(C) void function(GtkIconView* iconView) selectionChanged;
	/** */
	extern(C) void function(GtkIconView* iconView) selectAll;
	/** */
	extern(C) void function(GtkIconView* iconView) unselectAll;
	/** */
	extern(C) void function(GtkIconView* iconView) selectCursorItem;
	/** */
	extern(C) void function(GtkIconView* iconView) toggleCursorItem;
	/** */
	extern(C) int function(GtkIconView* iconView, GtkMovementStep step, int count) moveCursor;
	/** */
	extern(C) int function(GtkIconView* iconView) activateCursorItem;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkIconViewPrivate;

struct GtkImage
{
	GtkMisc misc;
	GtkImagePrivate* priv;
}

struct GtkImageAccessible
{
	GtkWidgetAccessible parent;
	GtkImageAccessiblePrivate* priv;
}

struct GtkImageAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
}

struct GtkImageAccessiblePrivate;

struct GtkImageCellAccessible
{
	GtkRendererCellAccessible parent;
	GtkImageCellAccessiblePrivate* priv;
}

struct GtkImageCellAccessibleClass
{
	GtkRendererCellAccessibleClass parentClass;
}

struct GtkImageCellAccessiblePrivate;

struct GtkImageClass
{
	GtkMiscClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkImageMenuItem
{
	GtkMenuItem menuItem;
	GtkImageMenuItemPrivate* priv;
}

struct GtkImageMenuItemClass
{
	/**
	 * The parent class.
	 */
	GtkMenuItemClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkImageMenuItemPrivate;

struct GtkImagePrivate;

struct GtkInfoBar
{
	GtkBox parent;
	GtkInfoBarPrivate* priv;
}

struct GtkInfoBarClass
{
	GtkBoxClass parentClass;
	/** */
	extern(C) void function(GtkInfoBar* infoBar, int responseId) response;
	/** */
	extern(C) void function(GtkInfoBar* infoBar) close;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkInfoBarPrivate;

struct GtkInvisible
{
	GtkWidget widget;
	GtkInvisiblePrivate* priv;
}

struct GtkInvisibleClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkInvisiblePrivate;

struct GtkLabel
{
	GtkMisc misc;
	GtkLabelPrivate* priv;
}

struct GtkLabelAccessible
{
	GtkWidgetAccessible parent;
	GtkLabelAccessiblePrivate* priv;
}

struct GtkLabelAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
}

struct GtkLabelAccessiblePrivate;

struct GtkLabelClass
{
	GtkMiscClass parentClass;
	/** */
	extern(C) void function(GtkLabel* label, GtkMovementStep step, int count, int extendSelection) moveCursor;
	/** */
	extern(C) void function(GtkLabel* label) copyClipboard;
	/** */
	extern(C) void function(GtkLabel* label, GtkMenu* menu) populatePopup;
	/** */
	extern(C) int function(GtkLabel* label, const(char)* uri) activateLink;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkLabelPrivate;

struct GtkLabelSelectionInfo;

struct GtkLayout
{
	GtkContainer container;
	GtkLayoutPrivate* priv;
}

struct GtkLayoutClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkLayoutPrivate;

struct GtkLevelBar
{
	GtkWidget parent;
	GtkLevelBarPrivate* priv;
}

struct GtkLevelBarAccessible
{
	GtkWidgetAccessible parent;
	GtkLevelBarAccessiblePrivate* priv;
}

struct GtkLevelBarAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
}

struct GtkLevelBarAccessiblePrivate;

struct GtkLevelBarClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function(GtkLevelBar* self, const(char)* name) offsetChanged;
	void*[16] padding;
}

struct GtkLevelBarPrivate;

struct GtkLinkButton
{
	GtkButton parentInstance;
	GtkLinkButtonPrivate* priv;
}

struct GtkLinkButtonAccessible
{
	GtkButtonAccessible parent;
	GtkLinkButtonAccessiblePrivate* priv;
}

struct GtkLinkButtonAccessibleClass
{
	GtkButtonAccessibleClass parentClass;
}

struct GtkLinkButtonAccessiblePrivate;

/**
 * The #GtkLinkButtonClass contains only
 * private data.
 */
struct GtkLinkButtonClass
{
	GtkButtonClass parentClass;
	/** */
	extern(C) int function(GtkLinkButton* button) activateLink;
	/** */
	extern(C) void function() GtkPadding1;
	/** */
	extern(C) void function() GtkPadding2;
	/** */
	extern(C) void function() GtkPadding3;
	/** */
	extern(C) void function() GtkPadding4;
}

struct GtkLinkButtonPrivate;

struct GtkListBox
{
	GtkContainer parentInstance;
}

struct GtkListBoxAccessible
{
	GtkContainerAccessible parent;
	GtkListBoxAccessiblePrivate* priv;
}

struct GtkListBoxAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkListBoxAccessiblePrivate;

struct GtkListBoxClass
{
	/**
	 * The parent class.
	 */
	GtkContainerClass parentClass;
	/** */
	extern(C) void function(GtkListBox* box, GtkListBoxRow* row) rowSelected;
	/** */
	extern(C) void function(GtkListBox* box, GtkListBoxRow* row) rowActivated;
	/** */
	extern(C) void function(GtkListBox* box) activateCursorRow;
	/** */
	extern(C) void function(GtkListBox* box) toggleCursorRow;
	/** */
	extern(C) void function(GtkListBox* box, GtkMovementStep step, int count) moveCursor;
	/** */
	extern(C) void function(GtkListBox* box) selectedRowsChanged;
	/** */
	extern(C) void function(GtkListBox* box) selectAll;
	/** */
	extern(C) void function(GtkListBox* box) unselectAll;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
}

struct GtkListBoxRow
{
	GtkBin parentInstance;
}

struct GtkListBoxRowAccessible
{
	GtkContainerAccessible parent;
}

struct GtkListBoxRowAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkListBoxRowClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function(GtkListBoxRow* row) activate;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
}

struct GtkListStore
{
	GObject parent;
	GtkListStorePrivate* priv;
}

struct GtkListStoreClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkListStorePrivate;

struct GtkLockButton
{
	GtkButton parent;
	GtkLockButtonPrivate* priv;
}

struct GtkLockButtonAccessible
{
	GtkButtonAccessible parent;
	GtkLockButtonAccessiblePrivate* priv;
}

struct GtkLockButtonAccessibleClass
{
	GtkButtonAccessibleClass parentClass;
}

struct GtkLockButtonAccessiblePrivate;

struct GtkLockButtonClass
{
	/**
	 * The parent class.
	 */
	GtkButtonClass parentClass;
	/** */
	extern(C) void function() reserved0;
	/** */
	extern(C) void function() reserved1;
	/** */
	extern(C) void function() reserved2;
	/** */
	extern(C) void function() reserved3;
	/** */
	extern(C) void function() reserved4;
	/** */
	extern(C) void function() reserved5;
	/** */
	extern(C) void function() reserved6;
	/** */
	extern(C) void function() reserved7;
}

struct GtkLockButtonPrivate;

struct GtkMenu
{
	GtkMenuShell menuShell;
	GtkMenuPrivate* priv;
}

struct GtkMenuAccessible
{
	GtkMenuShellAccessible parent;
	GtkMenuAccessiblePrivate* priv;
}

struct GtkMenuAccessibleClass
{
	GtkMenuShellAccessibleClass parentClass;
}

struct GtkMenuAccessiblePrivate;

struct GtkMenuBar
{
	GtkMenuShell menuShell;
	GtkMenuBarPrivate* priv;
}

struct GtkMenuBarClass
{
	GtkMenuShellClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkMenuBarPrivate;

struct GtkMenuButton
{
	GtkToggleButton parent;
	GtkMenuButtonPrivate* priv;
}

struct GtkMenuButtonAccessible
{
	GtkToggleButtonAccessible parent;
	GtkMenuButtonAccessiblePrivate* priv;
}

struct GtkMenuButtonAccessibleClass
{
	GtkToggleButtonAccessibleClass parentClass;
}

struct GtkMenuButtonAccessiblePrivate;

struct GtkMenuButtonClass
{
	GtkToggleButtonClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkMenuButtonPrivate;

struct GtkMenuClass
{
	GtkMenuShellClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkMenuItem
{
	GtkBin bin;
	GtkMenuItemPrivate* priv;
}

struct GtkMenuItemAccessible
{
	GtkContainerAccessible parent;
	GtkMenuItemAccessiblePrivate* priv;
}

struct GtkMenuItemAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkMenuItemAccessiblePrivate;

struct GtkMenuItemClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "hideOnActivate", 1,
		uint, "", 31
	));
	/** */
	extern(C) void function(GtkMenuItem* menuItem) activate;
	/** */
	extern(C) void function(GtkMenuItem* menuItem) activateItem;
	/** */
	extern(C) void function(GtkMenuItem* menuItem, int* requisition) toggleSizeRequest;
	/** */
	extern(C) void function(GtkMenuItem* menuItem, int allocation) toggleSizeAllocate;
	/** */
	extern(C) void function(GtkMenuItem* menuItem, const(char)* label) setLabel;
	/**
	 *
	 * Params:
	 *     menuItem = a #GtkMenuItem
	 * Return: The text in the @menu_item label. This is the internal
	 *     string used by the label, and must not be modified.
	 */
	extern(C) const(char)* function(GtkMenuItem* menuItem) getLabel;
	/** */
	extern(C) void function(GtkMenuItem* menuItem) select;
	/** */
	extern(C) void function(GtkMenuItem* menuItem) deselect;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkMenuItemPrivate;

struct GtkMenuPrivate;

struct GtkMenuShell
{
	GtkContainer container;
	GtkMenuShellPrivate* priv;
}

struct GtkMenuShellAccessible
{
	GtkContainerAccessible parent;
	GtkMenuShellAccessiblePrivate* priv;
}

struct GtkMenuShellAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkMenuShellAccessiblePrivate;

struct GtkMenuShellClass
{
	GtkContainerClass parentClass;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "submenuPlacement", 1,
		uint, "", 31
	));
	/** */
	extern(C) void function(GtkMenuShell* menuShell) deactivate;
	/** */
	extern(C) void function(GtkMenuShell* menuShell) selectionDone;
	/** */
	extern(C) void function(GtkMenuShell* menuShell, GtkMenuDirectionType direction) moveCurrent;
	/** */
	extern(C) void function(GtkMenuShell* menuShell, int forceHide) activateCurrent;
	/** */
	extern(C) void function(GtkMenuShell* menuShell) cancel;
	/** */
	extern(C) void function(GtkMenuShell* menuShell, GtkWidget* menuItem) selectItem;
	/** */
	extern(C) void function(GtkMenuShell* menuShell, GtkWidget* child, int position) insert;
	/** */
	extern(C) int function(GtkMenuShell* menuShell) getPopupDelay;
	/** */
	extern(C) int function(GtkMenuShell* menuShell, int distance) moveSelected;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkMenuShellPrivate;

struct GtkMenuToolButton
{
	GtkToolButton parent;
	GtkMenuToolButtonPrivate* priv;
}

struct GtkMenuToolButtonClass
{
	/**
	 * The parent class.
	 */
	GtkToolButtonClass parentClass;
	/** */
	extern(C) void function(GtkMenuToolButton* button) showMenu;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkMenuToolButtonPrivate;

struct GtkMessageDialog
{
	GtkDialog parentInstance;
	GtkMessageDialogPrivate* priv;
}

struct GtkMessageDialogClass
{
	GtkDialogClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkMessageDialogPrivate;

struct GtkMisc
{
	GtkWidget widget;
	GtkMiscPrivate* priv;
}

struct GtkMiscClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkMiscPrivate;

struct GtkModelButton;

struct GtkMountOperation
{
	GMountOperation parentInstance;
	GtkMountOperationPrivate* priv;
}

struct GtkMountOperationClass
{
	/**
	 * The parent class.
	 */
	GMountOperationClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkMountOperationPrivate;

struct GtkNativeDialog
{
	GObject parentInstance;
}

struct GtkNativeDialogClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkNativeDialog* self, int responseId) response;
	/** */
	extern(C) void function(GtkNativeDialog* self) show;
	/** */
	extern(C) void function(GtkNativeDialog* self) hide;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkNotebook
{
	GtkContainer container;
	GtkNotebookPrivate* priv;
}

struct GtkNotebookAccessible
{
	GtkContainerAccessible parent;
	GtkNotebookAccessiblePrivate* priv;
}

struct GtkNotebookAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkNotebookAccessiblePrivate;

struct GtkNotebookClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) void function(GtkNotebook* notebook, GtkWidget* page, uint pageNum) switchPage;
	/** */
	extern(C) int function(GtkNotebook* notebook, int moveFocus) selectPage;
	/** */
	extern(C) int function(GtkNotebook* notebook, GtkNotebookTab type) focusTab;
	/** */
	extern(C) int function(GtkNotebook* notebook, int offset) changeCurrentPage;
	/** */
	extern(C) void function(GtkNotebook* notebook, GtkDirectionType direction) moveFocusOut;
	/** */
	extern(C) int function(GtkNotebook* notebook, GtkDirectionType direction, int moveToLast) reorderTab;
	/** */
	extern(C) int function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel, int position) insertPage;
	/** */
	extern(C) GtkNotebook* function(GtkNotebook* notebook, GtkWidget* page, int x, int y) createWindow;
	/** */
	extern(C) void function(GtkNotebook* notebook, GtkWidget* child, uint pageNum) pageReordered;
	/** */
	extern(C) void function(GtkNotebook* notebook, GtkWidget* child, uint pageNum) pageRemoved;
	/** */
	extern(C) void function(GtkNotebook* notebook, GtkWidget* child, uint pageNum) pageAdded;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkNotebookPageAccessible
{
	AtkObject parent;
	GtkNotebookPageAccessiblePrivate* priv;
}

struct GtkNotebookPageAccessibleClass
{
	AtkObjectClass parentClass;
}

struct GtkNotebookPageAccessiblePrivate;

struct GtkNotebookPrivate;

struct GtkNumerableIcon
{
	GEmblemedIcon parent;
	GtkNumerableIconPrivate* priv;
}

struct GtkNumerableIconClass
{
	GEmblemedIconClass parentClass;
	void*[16] padding;
}

struct GtkNumerableIconPrivate;

struct GtkOffscreenWindow
{
	GtkWindow parentObject;
}

struct GtkOffscreenWindowClass
{
	/**
	 * The parent class.
	 */
	GtkWindowClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkOrientable;

struct GtkOrientableIface
{
	GTypeInterface baseIface;
}

struct GtkOverlay
{
	GtkBin parent;
	GtkOverlayPrivate* priv;
}

struct GtkOverlayClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) int function(GtkOverlay* overlay, GtkWidget* widget, GtkAllocation* allocation) getChildPosition;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkOverlayPrivate;

/**
 * See also gtk_print_settings_set_page_ranges().
 */
struct GtkPageRange
{
	/**
	 * start of page range.
	 */
	int start;
	/**
	 * end of page range.
	 */
	int end;
}

struct GtkPageSetup;

struct GtkPaned
{
	GtkContainer container;
	GtkPanedPrivate* priv;
}

struct GtkPanedAccessible
{
	GtkContainerAccessible parent;
	GtkPanedAccessiblePrivate* priv;
}

struct GtkPanedAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkPanedAccessiblePrivate;

struct GtkPanedClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) int function(GtkPaned* paned, int reverse) cycleChildFocus;
	/** */
	extern(C) int function(GtkPaned* paned) toggleHandleFocus;
	/** */
	extern(C) int function(GtkPaned* paned, GtkScrollType scroll) moveHandle;
	/** */
	extern(C) int function(GtkPaned* paned, int reverse) cycleHandleFocus;
	/** */
	extern(C) int function(GtkPaned* paned) acceptPosition;
	/** */
	extern(C) int function(GtkPaned* paned) cancelPosition;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkPanedPrivate;

struct GtkPaperSize;

struct GtkPlacesSidebar;

struct GtkPlacesSidebarClass;

struct GtkPlug
{
	GtkWindow window;
	GtkPlugPrivate* priv;
}

struct GtkPlugClass
{
	GtkWindowClass parentClass;
	/** */
	extern(C) void function(GtkPlug* plug) embedded;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkPlugPrivate;

struct GtkPopover
{
	GtkBin parentInstance;
	GtkPopoverPrivate* priv;
}

struct GtkPopoverAccessible
{
	GtkContainerAccessible parent;
}

struct GtkPopoverAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkPopoverClass
{
	GtkBinClass parentClass;
	/** */
	extern(C) void function(GtkPopover* popover) closed;
	void*[10] reserved;
}

struct GtkPopoverMenu;

struct GtkPopoverMenuClass
{
	GtkPopoverClass parentClass;
	void*[10] reserved;
}

struct GtkPopoverPrivate;

struct GtkPrintContext;

struct GtkPrintOperation
{
	GObject parentInstance;
	GtkPrintOperationPrivate* priv;
}

struct GtkPrintOperationClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkPrintOperation* operation, GtkPrintOperationResult result) done;
	/** */
	extern(C) void function(GtkPrintOperation* operation, GtkPrintContext* context) beginPrint;
	/** */
	extern(C) int function(GtkPrintOperation* operation, GtkPrintContext* context) paginate;
	/** */
	extern(C) void function(GtkPrintOperation* operation, GtkPrintContext* context, int pageNr, GtkPageSetup* setup) requestPageSetup;
	/** */
	extern(C) void function(GtkPrintOperation* operation, GtkPrintContext* context, int pageNr) drawPage;
	/** */
	extern(C) void function(GtkPrintOperation* operation, GtkPrintContext* context) endPrint;
	/** */
	extern(C) void function(GtkPrintOperation* operation) statusChanged;
	/** */
	extern(C) GtkWidget* function(GtkPrintOperation* operation) createCustomWidget;
	/** */
	extern(C) void function(GtkPrintOperation* operation, GtkWidget* widget) customWidgetApply;
	/** */
	extern(C) int function(GtkPrintOperation* operation, GtkPrintOperationPreview* preview, GtkPrintContext* context, GtkWindow* parent) preview;
	/** */
	extern(C) void function(GtkPrintOperation* operation, GtkWidget* widget, GtkPageSetup* setup, GtkPrintSettings* settings) updateCustomWidget;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkPrintOperationPreview;

struct GtkPrintOperationPreviewIface
{
	GTypeInterface gIface;
	/** */
	extern(C) void function(GtkPrintOperationPreview* preview, GtkPrintContext* context) ready;
	/** */
	extern(C) void function(GtkPrintOperationPreview* preview, GtkPrintContext* context, GtkPageSetup* pageSetup) gotPageSize;
	/** */
	extern(C) void function(GtkPrintOperationPreview* preview, int pageNr) renderPage;
	/**
	 *
	 * Params:
	 *     preview = a #GtkPrintOperationPreview
	 *     pageNr = a page number
	 * Return: %TRUE if the page has been selected for printing
	 */
	extern(C) int function(GtkPrintOperationPreview* preview, int pageNr) isSelected;
	/** */
	extern(C) void function(GtkPrintOperationPreview* preview) endPreview;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkPrintOperationPrivate;

struct GtkPrintSettings;

struct GtkProgressBar
{
	GtkWidget parent;
	GtkProgressBarPrivate* priv;
}

struct GtkProgressBarAccessible
{
	GtkWidgetAccessible parent;
	GtkProgressBarAccessiblePrivate* priv;
}

struct GtkProgressBarAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
}

struct GtkProgressBarAccessiblePrivate;

struct GtkProgressBarClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkProgressBarPrivate;

struct GtkRadioAction
{
	GtkToggleAction parent;
	GtkRadioActionPrivate* privateData;
}

struct GtkRadioActionClass
{
	GtkToggleActionClass parentClass;
	/** */
	extern(C) void function(GtkRadioAction* action, GtkRadioAction* current) changed;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

/**
 * #GtkRadioActionEntry structs are used with
 * gtk_action_group_add_radio_actions() to construct groups of radio actions.
 */
struct GtkRadioActionEntry
{
	/**
	 * The name of the action.
	 */
	const(char)* name;
	/**
	 * The stock id for the action, or the name of an icon from the
	 * icon theme.
	 */
	const(char)* stockId;
	/**
	 * The label for the action. This field should typically be marked
	 * for translation, see gtk_action_group_set_translation_domain().
	 */
	const(char)* label;
	/**
	 * The accelerator for the action, in the format understood by
	 * gtk_accelerator_parse().
	 */
	const(char)* accelerator;
	/**
	 * The tooltip for the action. This field should typically be
	 * marked for translation, see gtk_action_group_set_translation_domain().
	 */
	const(char)* tooltip;
	/**
	 * The value to set on the radio action. See
	 * gtk_radio_action_get_current_value().
	 */
	int value;
}

struct GtkRadioActionPrivate;

struct GtkRadioButton
{
	GtkCheckButton checkButton;
	GtkRadioButtonPrivate* priv;
}

struct GtkRadioButtonAccessible
{
	GtkToggleButtonAccessible parent;
	GtkRadioButtonAccessiblePrivate* priv;
}

struct GtkRadioButtonAccessibleClass
{
	GtkToggleButtonAccessibleClass parentClass;
}

struct GtkRadioButtonAccessiblePrivate;

struct GtkRadioButtonClass
{
	GtkCheckButtonClass parentClass;
	/** */
	extern(C) void function(GtkRadioButton* radioButton) groupChanged;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkRadioButtonPrivate;

struct GtkRadioMenuItem
{
	GtkCheckMenuItem checkMenuItem;
	GtkRadioMenuItemPrivate* priv;
}

struct GtkRadioMenuItemAccessible
{
	GtkCheckMenuItemAccessible parent;
	GtkRadioMenuItemAccessiblePrivate* priv;
}

struct GtkRadioMenuItemAccessibleClass
{
	GtkCheckMenuItemAccessibleClass parentClass;
}

struct GtkRadioMenuItemAccessiblePrivate;

struct GtkRadioMenuItemClass
{
	GtkCheckMenuItemClass parentClass;
	/** */
	extern(C) void function(GtkRadioMenuItem* radioMenuItem) groupChanged;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkRadioMenuItemPrivate;

struct GtkRadioToolButton
{
	GtkToggleToolButton parent;
}

struct GtkRadioToolButtonClass
{
	GtkToggleToolButtonClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkRange
{
	GtkWidget widget;
	GtkRangePrivate* priv;
}

struct GtkRangeAccessible
{
	GtkWidgetAccessible parent;
	GtkRangeAccessiblePrivate* priv;
}

struct GtkRangeAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
}

struct GtkRangeAccessiblePrivate;

struct GtkRangeClass
{
	GtkWidgetClass parentClass;
	char* sliderDetail;
	char* stepperDetail;
	/** */
	extern(C) void function(GtkRange* range) valueChanged;
	/** */
	extern(C) void function(GtkRange* range, double newValue) adjustBounds;
	/** */
	extern(C) void function(GtkRange* range, GtkScrollType scroll) moveSlider;
	/** */
	extern(C) void function(GtkRange* range, GtkBorder* border) getRangeBorder;
	/** */
	extern(C) int function(GtkRange* range, GtkScrollType scroll, double newValue) changeValue;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkRangePrivate;

struct GtkRcContext;

/**
 * Deprecated
 */
struct GtkRcProperty
{
	/**
	 * quark-ified type identifier
	 */
	GQuark typeName;
	/**
	 * quark-ified property identifier like
	 * “GtkScrollbar::spacing”
	 */
	GQuark propertyName;
	/**
	 * field similar to one found in #GtkSettingsValue
	 */
	char* origin;
	/**
	 * field similar to one found in #GtkSettingsValue
	 */
	GValue value;
}

struct GtkRcStyle
{
	GObject parentInstance;
	/**
	 * Name
	 */
	char* name;
	/**
	 * Pixmap name
	 */
	char*[5] bgPixmapName;
	/**
	 * A #PangoFontDescription
	 */
	PangoFontDescription* fontDesc;
	/**
	 * #GtkRcFlags
	 */
	GtkRcFlags[5] colorFlags;
	/**
	 * Foreground colors
	 */
	GdkColor[5] fg;
	/**
	 * Background colors
	 */
	GdkColor[5] bg;
	/**
	 * Text colors
	 */
	GdkColor[5] text;
	/**
	 * Base colors
	 */
	GdkColor[5] base;
	/**
	 * X thickness
	 */
	int xthickness;
	/**
	 * Y thickness
	 */
	int ythickness;
	GArray* rcProperties;
	GSList* rcStyleLists;
	GSList* iconFactories;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "engineSpecified", 1,
		uint, "", 31
	));
}

struct GtkRcStyleClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) GtkRcStyle* function(GtkRcStyle* rcStyle) createRcStyle;
	/** */
	extern(C) uint function(GtkRcStyle* rcStyle, GtkSettings* settings, GScanner* scanner) parse;
	/** */
	extern(C) void function(GtkRcStyle* dest, GtkRcStyle* src) merge;
	/** */
	extern(C) GtkStyle* function(GtkRcStyle* rcStyle) createStyle;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkRecentAction
{
	GtkAction parentInstance;
	GtkRecentActionPrivate* priv;
}

struct GtkRecentActionClass
{
	GtkActionClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkRecentActionPrivate;

struct GtkRecentChooser;

struct GtkRecentChooserDialog
{
	GtkDialog parentInstance;
	GtkRecentChooserDialogPrivate* priv;
}

struct GtkRecentChooserDialogClass
{
	GtkDialogClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkRecentChooserDialogPrivate;

struct GtkRecentChooserIface
{
	GTypeInterface baseIface;
	/**
	 *
	 * Params:
	 *     chooser = a #GtkRecentChooser
	 *     uri = a URI
	 * Return: %TRUE if the URI was found.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GtkRecentChooser* chooser, const(char)* uri, GError** err) setCurrentUri;
	/**
	 *
	 * Params:
	 *     chooser = a #GtkRecentChooser
	 * Return: a newly allocated string holding a URI.
	 */
	extern(C) char* function(GtkRecentChooser* chooser) getCurrentUri;
	/**
	 *
	 * Params:
	 *     chooser = a #GtkRecentChooser
	 *     uri = a URI
	 * Return: %TRUE if @uri was found.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GtkRecentChooser* chooser, const(char)* uri, GError** err) selectUri;
	/** */
	extern(C) void function(GtkRecentChooser* chooser, const(char)* uri) unselectUri;
	/** */
	extern(C) void function(GtkRecentChooser* chooser) selectAll;
	/** */
	extern(C) void function(GtkRecentChooser* chooser) unselectAll;
	/**
	 *
	 * Params:
	 *     chooser = a #GtkRecentChooser
	 * Return: A newly allocated
	 *     list of #GtkRecentInfo objects.  You should
	 *     use gtk_recent_info_unref() on every item of the list, and then free
	 *     the list itself using g_list_free().
	 */
	extern(C) GList* function(GtkRecentChooser* chooser) getItems;
	/** */
	extern(C) GtkRecentManager* function(GtkRecentChooser* chooser) getRecentManager;
	/** */
	extern(C) void function(GtkRecentChooser* chooser, GtkRecentFilter* filter) addFilter;
	/** */
	extern(C) void function(GtkRecentChooser* chooser, GtkRecentFilter* filter) removeFilter;
	/**
	 *
	 * Params:
	 *     chooser = a #GtkRecentChooser
	 * Return: A singly linked list
	 *     of #GtkRecentFilter objects.  You
	 *     should just free the returned list using g_slist_free().
	 */
	extern(C) GSList* function(GtkRecentChooser* chooser) listFilters;
	/** */
	extern(C) void function(GtkRecentChooser* chooser, GtkRecentSortFunc sortFunc, void* sortData, GDestroyNotify dataDestroy) setSortFunc;
	/** */
	extern(C) void function(GtkRecentChooser* chooser) itemActivated;
	/** */
	extern(C) void function(GtkRecentChooser* chooser) selectionChanged;
}

struct GtkRecentChooserMenu
{
	GtkMenu parentInstance;
	GtkRecentChooserMenuPrivate* priv;
}

struct GtkRecentChooserMenuClass
{
	GtkMenuClass parentClass;
	/** */
	extern(C) void function() gtkRecent1;
	/** */
	extern(C) void function() gtkRecent2;
	/** */
	extern(C) void function() gtkRecent3;
	/** */
	extern(C) void function() gtkRecent4;
}

struct GtkRecentChooserMenuPrivate;

struct GtkRecentChooserWidget
{
	GtkBox parentInstance;
	GtkRecentChooserWidgetPrivate* priv;
}

struct GtkRecentChooserWidgetClass
{
	GtkBoxClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkRecentChooserWidgetPrivate;

/**
 * Meta-data to be passed to gtk_recent_manager_add_full() when
 * registering a recently used resource.
 */
struct GtkRecentData
{
	/**
	 * a UTF-8 encoded string, containing the name of the recently
	 * used resource to be displayed, or %NULL;
	 */
	char* displayName;
	/**
	 * a UTF-8 encoded string, containing a short description of
	 * the resource, or %NULL;
	 */
	char* description;
	/**
	 * the MIME type of the resource;
	 */
	char* mimeType;
	/**
	 * the name of the application that is registering this recently
	 * used resource;
	 */
	char* appName;
	/**
	 * command line used to launch this resource; may contain the
	 * “\%f” and “\%u” escape characters which will be expanded
	 * to the resource file path and URI respectively when the command line
	 * is retrieved;
	 */
	char* appExec;
	/**
	 * a vector of strings containing
	 * groups names;
	 */
	char** groups;
	/**
	 * whether this resource should be displayed only by the
	 * applications that have registered it or not.
	 */
	bool isPrivate;
}

struct GtkRecentFilter;

/**
 * A GtkRecentFilterInfo struct is used
 * to pass information about the tested file to gtk_recent_filter_filter().
 */
struct GtkRecentFilterInfo
{
	/**
	 * #GtkRecentFilterFlags to indicate which fields are set.
	 */
	GtkRecentFilterFlags contains;
	/**
	 * The URI of the file being tested.
	 */
	const(char)* uri;
	/**
	 * The string that will be used to display
	 * the file in the recent chooser.
	 */
	const(char)* displayName;
	/**
	 * MIME type of the file.
	 */
	const(char)* mimeType;
	/**
	 * The list of
	 * applications that have registered the file.
	 */
	char** applications;
	/**
	 * The groups to which
	 * the file belongs to.
	 */
	char** groups;
	/**
	 * The number of days elapsed since the file has been
	 * registered.
	 */
	int age;
}

struct GtkRecentInfo;

struct GtkRecentManager
{
	GObject parentInstance;
	GtkRecentManagerPrivate* priv;
}

/**
 * #GtkRecentManagerClass contains only private data.
 *
 * Since: 2.10
 */
struct GtkRecentManagerClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkRecentManager* manager) changed;
	/** */
	extern(C) void function() GtkRecent1;
	/** */
	extern(C) void function() GtkRecent2;
	/** */
	extern(C) void function() GtkRecent3;
	/** */
	extern(C) void function() GtkRecent4;
}

struct GtkRecentManagerPrivate;

struct GtkRendererCellAccessible
{
	GtkCellAccessible parent;
	GtkRendererCellAccessiblePrivate* priv;
}

struct GtkRendererCellAccessibleClass
{
	GtkCellAccessibleClass parentClass;
}

struct GtkRendererCellAccessiblePrivate;

/**
 * Represents a request of a screen object in a given orientation. These
 * are primarily used in container implementations when allocating a natural
 * size for children calling. See gtk_distribute_natural_allocation().
 */
struct GtkRequestedSize
{
	/**
	 * A client pointer
	 */
	void* data;
	/**
	 * The minimum size needed for allocation in a given orientation
	 */
	int minimumSize;
	/**
	 * The natural size for allocation in a given orientation
	 */
	int naturalSize;
}

struct GtkRequisition
{
	/**
	 * the widget’s desired width
	 */
	int width;
	/**
	 * the widget’s desired height
	 */
	int height;
}

struct GtkRevealer
{
	GtkBin parentInstance;
}

struct GtkRevealerClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
}

struct GtkScale
{
	GtkRange range;
	GtkScalePrivate* priv;
}

struct GtkScaleAccessible
{
	GtkRangeAccessible parent;
	GtkScaleAccessiblePrivate* priv;
}

struct GtkScaleAccessibleClass
{
	GtkRangeAccessibleClass parentClass;
}

struct GtkScaleAccessiblePrivate;

struct GtkScaleButton
{
	GtkButton parent;
	GtkScaleButtonPrivate* priv;
}

struct GtkScaleButtonAccessible
{
	GtkButtonAccessible parent;
	GtkScaleButtonAccessiblePrivate* priv;
}

struct GtkScaleButtonAccessibleClass
{
	GtkButtonAccessibleClass parentClass;
}

struct GtkScaleButtonAccessiblePrivate;

struct GtkScaleButtonClass
{
	GtkButtonClass parentClass;
	/** */
	extern(C) void function(GtkScaleButton* button, double value) valueChanged;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkScaleButtonPrivate;

struct GtkScaleClass
{
	GtkRangeClass parentClass;
	/** */
	extern(C) char* function(GtkScale* scale, double value) formatValue;
	/** */
	extern(C) void function(GtkScale* scale) drawValue;
	/** */
	extern(C) void function(GtkScale* scale, int* x, int* y) getLayoutOffsets;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkScalePrivate;

struct GtkScrollable;

struct GtkScrollableInterface
{
	GTypeInterface baseIface;
	/**
	 *
	 * Params:
	 *     scrollable = a #GtkScrollable
	 *     border = return location for the results
	 * Return: %TRUE if @border has been set
	 */
	extern(C) int function(GtkScrollable* scrollable, GtkBorder* border) getBorder;
}

struct GtkScrollbar
{
	GtkRange range;
}

struct GtkScrollbarClass
{
	GtkRangeClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkScrolledWindow
{
	GtkBin container;
	GtkScrolledWindowPrivate* priv;
}

struct GtkScrolledWindowAccessible
{
	GtkContainerAccessible parent;
	GtkScrolledWindowAccessiblePrivate* priv;
}

struct GtkScrolledWindowAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkScrolledWindowAccessiblePrivate;

struct GtkScrolledWindowClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	int scrollbarSpacing;
	/** */
	extern(C) int function(GtkScrolledWindow* scrolledWindow, GtkScrollType scroll, int horizontal) scrollChild;
	/** */
	extern(C) void function(GtkScrolledWindow* scrolledWindow, GtkDirectionType direction) moveFocusOut;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkScrolledWindowPrivate;

struct GtkSearchBar
{
	GtkBin parent;
}

struct GtkSearchBarClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkSearchEntry
{
	GtkEntry parent;
}

struct GtkSearchEntryClass
{
	GtkEntryClass parentClass;
	/** */
	extern(C) void function(GtkSearchEntry* entry) searchChanged;
	/** */
	extern(C) void function(GtkSearchEntry* entry) nextMatch;
	/** */
	extern(C) void function(GtkSearchEntry* entry) previousMatch;
	/** */
	extern(C) void function(GtkSearchEntry* entry) stopSearch;
}

struct GtkSelectionData;

struct GtkSeparator
{
	GtkWidget widget;
	GtkSeparatorPrivate* priv;
}

struct GtkSeparatorClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkSeparatorMenuItem
{
	GtkMenuItem menuItem;
}

struct GtkSeparatorMenuItemClass
{
	/**
	 * The parent class.
	 */
	GtkMenuItemClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkSeparatorPrivate;

struct GtkSeparatorToolItem
{
	GtkToolItem parent;
	GtkSeparatorToolItemPrivate* priv;
}

struct GtkSeparatorToolItemClass
{
	/**
	 * The parent class.
	 */
	GtkToolItemClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkSeparatorToolItemPrivate;

struct GtkSettings
{
	GObject parentInstance;
	GtkSettingsPrivate* priv;
}

struct GtkSettingsClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkSettingsPrivate;

struct GtkSettingsValue
{
	/**
	 * Origin should be something like “filename:linenumber” for
	 * rc files, or e.g. “XProperty” for other sources.
	 */
	char* origin;
	/**
	 * Valid types are LONG, DOUBLE and STRING corresponding to
	 * the token parsed, or a GSTRING holding an unparsed statement
	 */
	GValue value;
}

struct GtkShortcutsGroup;

struct GtkShortcutsGroupClass;

struct GtkShortcutsSection;

struct GtkShortcutsSectionClass;

struct GtkShortcutsShortcut;

struct GtkShortcutsShortcutClass;

struct GtkShortcutsWindow
{
	GtkWindow window;
}

struct GtkShortcutsWindowClass
{
	GtkWindowClass parentClass;
	/** */
	extern(C) void function(GtkShortcutsWindow* self) close;
	/** */
	extern(C) void function(GtkShortcutsWindow* self) search;
}

struct GtkSizeGroup
{
	GObject parentInstance;
	GtkSizeGroupPrivate* priv;
}

struct GtkSizeGroupClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkSizeGroupPrivate;

struct GtkSocket
{
	GtkContainer container;
	GtkSocketPrivate* priv;
}

struct GtkSocketClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) void function(GtkSocket* socket) plugAdded;
	/** */
	extern(C) int function(GtkSocket* socket) plugRemoved;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkSocketPrivate;

struct GtkSpinButton
{
	GtkEntry entry;
	GtkSpinButtonPrivate* priv;
}

struct GtkSpinButtonAccessible
{
	GtkEntryAccessible parent;
	GtkSpinButtonAccessiblePrivate* priv;
}

struct GtkSpinButtonAccessibleClass
{
	GtkEntryAccessibleClass parentClass;
}

struct GtkSpinButtonAccessiblePrivate;

struct GtkSpinButtonClass
{
	GtkEntryClass parentClass;
	/** */
	extern(C) int function(GtkSpinButton* spinButton, double* newValue) input;
	/** */
	extern(C) int function(GtkSpinButton* spinButton) output;
	/** */
	extern(C) void function(GtkSpinButton* spinButton) valueChanged;
	/** */
	extern(C) void function(GtkSpinButton* spinButton, GtkScrollType scroll) changeValue;
	/** */
	extern(C) void function(GtkSpinButton* spinButton) wrapped;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkSpinButtonPrivate;

struct GtkSpinner
{
	GtkWidget parent;
	GtkSpinnerPrivate* priv;
}

struct GtkSpinnerAccessible
{
	GtkWidgetAccessible parent;
	GtkSpinnerAccessiblePrivate* priv;
}

struct GtkSpinnerAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
}

struct GtkSpinnerAccessiblePrivate;

struct GtkSpinnerClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkSpinnerPrivate;

struct GtkStack
{
	GtkContainer parentInstance;
}

struct GtkStackClass
{
	GtkContainerClass parentClass;
}

struct GtkStackSidebar
{
	GtkBin parent;
}

struct GtkStackSidebarClass
{
	GtkBinClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkStackSidebarPrivate;

struct GtkStackSwitcher
{
	GtkBox widget;
}

struct GtkStackSwitcherClass
{
	GtkBoxClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkStatusIcon
{
	GObject parentInstance;
	GtkStatusIconPrivate* priv;
}

struct GtkStatusIconClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkStatusIcon* statusIcon) activate;
	/** */
	extern(C) void function(GtkStatusIcon* statusIcon, uint button, uint activateTime) popupMenu;
	/** */
	extern(C) int function(GtkStatusIcon* statusIcon, int size) sizeChanged;
	/** */
	extern(C) int function(GtkStatusIcon* statusIcon, GdkEventButton* event) buttonPressEvent;
	/** */
	extern(C) int function(GtkStatusIcon* statusIcon, GdkEventButton* event) buttonReleaseEvent;
	/** */
	extern(C) int function(GtkStatusIcon* statusIcon, GdkEventScroll* event) scrollEvent;
	/** */
	extern(C) int function(GtkStatusIcon* statusIcon, int x, int y, int keyboardMode, GtkTooltip* tooltip) queryTooltip;
	void* GtkReserved1;
	void* GtkReserved2;
	void* GtkReserved3;
	void* GtkReserved4;
}

struct GtkStatusIconPrivate;

struct GtkStatusbar
{
	GtkBox parentWidget;
	GtkStatusbarPrivate* priv;
}

struct GtkStatusbarAccessible
{
	GtkContainerAccessible parent;
	GtkStatusbarAccessiblePrivate* priv;
}

struct GtkStatusbarAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkStatusbarAccessiblePrivate;

struct GtkStatusbarClass
{
	GtkBoxClass parentClass;
	void* reserved;
	/** */
	extern(C) void function(GtkStatusbar* statusbar, uint contextId, const(char)* text) textPushed;
	/** */
	extern(C) void function(GtkStatusbar* statusbar, uint contextId, const(char)* text) textPopped;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkStatusbarPrivate;

struct GtkStockItem
{
	/**
	 * Identifier.
	 */
	char* stockId;
	/**
	 * User visible label.
	 */
	char* label;
	/**
	 * Modifier type for keyboard accelerator
	 */
	GdkModifierType modifier;
	/**
	 * Keyboard accelerator
	 */
	uint keyval;
	/**
	 * Translation domain of the menu or toolbar item
	 */
	char* translationDomain;
}

struct GtkStyle
{
	GObject parentInstance;
	/**
	 * Set of foreground #GdkColor
	 */
	GdkColor[5] fg;
	/**
	 * Set of background #GdkColor
	 */
	GdkColor[5] bg;
	/**
	 * Set of light #GdkColor
	 */
	GdkColor[5] light;
	/**
	 * Set of dark #GdkColor
	 */
	GdkColor[5] dark;
	/**
	 * Set of mid #GdkColor
	 */
	GdkColor[5] mid;
	/**
	 * Set of text #GdkColor
	 */
	GdkColor[5] text;
	/**
	 * Set of base #GdkColor
	 */
	GdkColor[5] base;
	/**
	 * Color halfway between text/base
	 */
	GdkColor[5] textAa;
	/**
	 * #GdkColor to use for black
	 */
	GdkColor black;
	/**
	 * #GdkColor to use for white
	 */
	GdkColor white;
	/**
	 * #PangoFontDescription
	 */
	PangoFontDescription* fontDesc;
	/**
	 * Thickness in X direction
	 */
	int xthickness;
	/**
	 * Thickness in Y direction
	 */
	int ythickness;
	/**
	 * Set of background #cairo_pattern_t
	 */
	cairo_pattern_t*[5] background;
	int attachCount;
	GdkVisual* visual;
	PangoFontDescription* privateFontDesc;
	GtkRcStyle* rcStyle;
	GSList* styles;
	GArray* propertyCache;
	GSList* iconFactories;
}

struct GtkStyleClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkStyle* style) realize;
	/** */
	extern(C) void function(GtkStyle* style) unrealize;
	/** */
	extern(C) void function(GtkStyle* style, GtkStyle* src) copy;
	/** */
	extern(C) GtkStyle* function(GtkStyle* style) clone;
	/** */
	extern(C) void function(GtkStyle* style, GtkRcStyle* rcStyle) initFromRc;
	/** */
	extern(C) void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType) setBackground;
	/**
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     source = the #GtkIconSource specifying the icon to render
	 *     direction = a text direction
	 *     state = a state
	 *     size = the size to render the icon at (#GtkIconSize). A size of
	 *         `(GtkIconSize)-1` means render at the size of the source and
	 *         don’t scale.
	 *     widget = the widget
	 *     detail = a style detail
	 * Return: a newly-created #GdkPixbuf
	 *     containing the rendered icon
	 */
	extern(C) GdkPixbuf* function(GtkStyle* style, GtkIconSource* source, GtkTextDirection direction, GtkStateType state, GtkIconSize size, GtkWidget* widget, const(char)* detail) renderIcon;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, int x1, int x2, int y) drawHline;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, int y1, int y2, int x) drawVline;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height) drawShadow;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, GtkArrowType arrowType, int fill, int x, int y, int width, int height) drawArrow;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height) drawDiamond;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height) drawBox;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height) drawFlatBox;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height) drawCheck;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height) drawOption;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height) drawTab;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth) drawShadowGap;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth) drawBoxGap;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height, GtkPositionType gapSide) drawExtension;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height) drawFocus;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height, GtkOrientation orientation) drawSlider;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height, GtkOrientation orientation) drawHandle;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, int x, int y, GtkExpanderStyle expanderStyle) drawExpander;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, int useText, GtkWidget* widget, const(char)* detail, int x, int y, PangoLayout* layout) drawLayout;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, GdkWindowEdge edge, int x, int y, int width, int height) drawResizeGrip;
	/** */
	extern(C) void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, uint step, int x, int y, int width, int height) drawSpinner;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
	/** */
	extern(C) void function() GtkReserved9;
	/** */
	extern(C) void function() GtkReserved10;
	/** */
	extern(C) void function() GtkReserved11;
}

struct GtkStyleContext
{
	GObject parentObject;
	GtkStyleContextPrivate* priv;
}

struct GtkStyleContextClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkStyleContext* context) changed;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkStyleContextPrivate;

struct GtkStyleProperties
{
	GObject parentObject;
	GtkStylePropertiesPrivate* priv;
}

struct GtkStylePropertiesClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkStylePropertiesPrivate;

struct GtkStyleProvider;

struct GtkStyleProviderIface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     provider = a #GtkStyleProvider
	 *     path = #GtkWidgetPath to query
	 * Return: a #GtkStyleProperties containing the
	 *     style settings affecting @path
	 */
	extern(C) GtkStyleProperties* function(GtkStyleProvider* provider, GtkWidgetPath* path) getStyle;
	/**
	 *
	 * Params:
	 *     provider = a #GtkStyleProvider
	 *     path = #GtkWidgetPath to query
	 *     state = state to query the style property for
	 *     pspec = The #GParamSpec to query
	 *     value = return location for the property value
	 * Return: %TRUE if the property was found and has a value, %FALSE otherwise
	 */
	extern(C) int function(GtkStyleProvider* provider, GtkWidgetPath* path, GtkStateFlags state, GParamSpec* pspec, GValue* value) getStyleProperty;
	/**
	 *
	 * Params:
	 *     provider = a #GtkStyleProvider
	 *     path = #GtkWidgetPath to query
	 * Return: The icon factory to use for @path, or %NULL
	 */
	extern(C) GtkIconFactory* function(GtkStyleProvider* provider, GtkWidgetPath* path) getIconFactory;
}

struct GtkSwitch
{
	GtkWidget parentInstance;
	GtkSwitchPrivate* priv;
}

struct GtkSwitchAccessible
{
	GtkWidgetAccessible parent;
	GtkSwitchAccessiblePrivate* priv;
}

struct GtkSwitchAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
}

struct GtkSwitchAccessiblePrivate;

struct GtkSwitchClass
{
	/**
	 * The parent class.
	 */
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function(GtkSwitch* sw) activate;
	/** */
	extern(C) int function(GtkSwitch* sw, int state) stateSet;
	/** */
	extern(C) void function() SwitchPadding1;
	/** */
	extern(C) void function() SwitchPadding2;
	/** */
	extern(C) void function() SwitchPadding3;
	/** */
	extern(C) void function() SwitchPadding4;
	/** */
	extern(C) void function() SwitchPadding5;
}

struct GtkSwitchPrivate;

struct GtkSymbolicColor;

struct GtkTable
{
	GtkContainer container;
	GtkTablePrivate* priv;
}

struct GtkTableChild
{
	GtkWidget* widget;
	ushort leftAttach;
	ushort rightAttach;
	ushort topAttach;
	ushort bottomAttach;
	ushort xpadding;
	ushort ypadding;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "xexpand", 1,
		uint, "yexpand", 1,
		uint, "xshrink", 1,
		uint, "yshrink", 1,
		uint, "xfill", 1,
		uint, "yfill", 1,
		uint, "", 26
	));
}

struct GtkTableClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTablePrivate;

struct GtkTableRowCol
{
	ushort requisition;
	ushort allocation;
	ushort spacing;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "needExpand", 1,
		uint, "needShrink", 1,
		uint, "expand", 1,
		uint, "shrink", 1,
		uint, "empty", 1,
		uint, "", 27
	));
}

struct GtkTargetEntry
{
	/**
	 * a string representation of the target type
	 */
	char* target;
	/**
	 * #GtkTargetFlags for DND
	 */
	uint flags;
	/**
	 * an application-assigned integer ID which will
	 * get passed as a parameter to e.g the #GtkWidget::selection-get
	 * signal. It allows the application to identify the target
	 * type without extensive string compares.
	 */
	uint info;
}

struct GtkTargetList;

/**
 * A #GtkTargetPair is used to represent the same
 * information as a table of #GtkTargetEntry, but in
 * an efficient form.
 */
struct GtkTargetPair
{
	/**
	 * #GdkAtom representation of the target type
	 */
	GdkAtom target;
	/**
	 * #GtkTargetFlags for DND
	 */
	uint flags;
	/**
	 * an application-assigned integer ID which will
	 * get passed as a parameter to e.g the #GtkWidget::selection-get
	 * signal. It allows the application to identify the target
	 * type without extensive string compares.
	 */
	uint info;
}

struct GtkTearoffMenuItem
{
	GtkMenuItem menuItem;
	GtkTearoffMenuItemPrivate* priv;
}

struct GtkTearoffMenuItemClass
{
	/**
	 * The parent class.
	 */
	GtkMenuItemClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTearoffMenuItemPrivate;

struct GtkTextAppearance
{
	/**
	 * Background #GdkColor.
	 */
	GdkColor bgColor;
	/**
	 * Foreground #GdkColor.
	 */
	GdkColor fgColor;
	/**
	 * Super/subscript rise, can be negative.
	 */
	int rise;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "underline", 4,
		uint, "strikethrough", 1,
		uint, "drawBg", 1,
		uint, "insideSelection", 1,
		uint, "isText", 1,
		uint, "", 24
	));
	union
	{
		GdkRGBA*[2] rgba;
		uint[4] padding;
	}
}

struct GtkTextAttributes
{
	uint refcount;
	/**
	 * #GtkTextAppearance for text.
	 */
	GtkTextAppearance appearance;
	/**
	 * #GtkJustification for text.
	 */
	GtkJustification justification;
	/**
	 * #GtkTextDirection for text.
	 */
	GtkTextDirection direction;
	/**
	 * #PangoFontDescription for text.
	 */
	PangoFontDescription* font;
	/**
	 * Font scale factor.
	 */
	double fontScale;
	/**
	 * Width of the left margin in pixels.
	 */
	int leftMargin;
	/**
	 * Width of the right margin in pixels.
	 */
	int rightMargin;
	/**
	 * Amount to indent the paragraph, in pixels.
	 */
	int indent;
	/**
	 * Pixels of blank space above paragraphs.
	 */
	int pixelsAboveLines;
	/**
	 * Pixels of blank space below paragraphs.
	 */
	int pixelsBelowLines;
	/**
	 * Pixels of blank space between wrapped lines in
	 * a paragraph.
	 */
	int pixelsInsideWrap;
	/**
	 * Custom #PangoTabArray for this text.
	 */
	PangoTabArray* tabs;
	/**
	 * #GtkWrapMode for text.
	 */
	GtkWrapMode wrapMode;
	/**
	 * #PangoLanguage for text.
	 */
	PangoLanguage* language;
	GdkColor* pgBgColor;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "invisible", 1,
		uint, "bgFullHeight", 1,
		uint, "editable", 1,
		uint, "noFallback", 1,
		uint, "", 28
	));
	GdkRGBA* pgBgRgba;
	/**
	 * Extra space to insert between graphemes, in Pango units
	 */
	int letterSpacing;
	union
	{
		char* fontFeatures;
		uint[2] padding;
	}
}

struct GtkTextBTree;

struct GtkTextBuffer
{
	GObject parentInstance;
	GtkTextBufferPrivate* priv;
}

struct GtkTextBufferClass
{
	/**
	 * The object class structure needs to be the first.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkTextBuffer* buffer, GtkTextIter* pos, const(char)* newText, int newTextLength) insertText;
	/** */
	extern(C) void function(GtkTextBuffer* buffer, GtkTextIter* iter, GdkPixbuf* pixbuf) insertPixbuf;
	/** */
	extern(C) void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor) insertChildAnchor;
	/** */
	extern(C) void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) deleteRange;
	/** */
	extern(C) void function(GtkTextBuffer* buffer) changed;
	/** */
	extern(C) void function(GtkTextBuffer* buffer) modifiedChanged;
	/** */
	extern(C) void function(GtkTextBuffer* buffer, GtkTextIter* location, GtkTextMark* mark) markSet;
	/** */
	extern(C) void function(GtkTextBuffer* buffer, GtkTextMark* mark) markDeleted;
	/** */
	extern(C) void function(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end) applyTag;
	/** */
	extern(C) void function(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end) removeTag;
	/** */
	extern(C) void function(GtkTextBuffer* buffer) beginUserAction;
	/** */
	extern(C) void function(GtkTextBuffer* buffer) endUserAction;
	/** */
	extern(C) void function(GtkTextBuffer* buffer, GtkClipboard* clipboard) pasteDone;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTextBufferPrivate;

struct GtkTextCellAccessible
{
	GtkRendererCellAccessible parent;
	GtkTextCellAccessiblePrivate* priv;
}

struct GtkTextCellAccessibleClass
{
	GtkRendererCellAccessibleClass parentClass;
}

struct GtkTextCellAccessiblePrivate;

struct GtkTextChildAnchor
{
	GObject parentInstance;
	void* segment;
}

struct GtkTextChildAnchorClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTextIter
{
	void* dummy1;
	void* dummy2;
	int dummy3;
	int dummy4;
	int dummy5;
	int dummy6;
	int dummy7;
	int dummy8;
	void* dummy9;
	void* dummy10;
	int dummy11;
	int dummy12;
	int dummy13;
	void* dummy14;
}

struct GtkTextMark
{
	GObject parentInstance;
	void* segment;
}

struct GtkTextMarkClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTextTag
{
	GObject parentInstance;
	GtkTextTagPrivate* priv;
}

struct GtkTextTagClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     tag = a #GtkTextTag
	 *     eventObject = object that received the event, such as a widget
	 *     event = the event
	 *     iter = location where the event was received
	 * Return: result of signal emission (whether the event was handled)
	 */
	extern(C) int function(GtkTextTag* tag, GObject* eventObject, GdkEvent* event, GtkTextIter* iter) event;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTextTagPrivate;

struct GtkTextTagTable
{
	GObject parentInstance;
	GtkTextTagTablePrivate* priv;
}

struct GtkTextTagTableClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkTextTagTable* table, GtkTextTag* tag, int sizeChanged) tagChanged;
	/** */
	extern(C) void function(GtkTextTagTable* table, GtkTextTag* tag) tagAdded;
	/** */
	extern(C) void function(GtkTextTagTable* table, GtkTextTag* tag) tagRemoved;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTextTagTablePrivate;

struct GtkTextView
{
	GtkContainer parentInstance;
	GtkTextViewPrivate* priv;
}

struct GtkTextViewAccessible
{
	GtkContainerAccessible parent;
	GtkTextViewAccessiblePrivate* priv;
}

struct GtkTextViewAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkTextViewAccessiblePrivate;

struct GtkTextViewClass
{
	/**
	 * The object class structure needs to be the first
	 */
	GtkContainerClass parentClass;
	/** */
	extern(C) void function(GtkTextView* textView, GtkWidget* popup) populatePopup;
	/** */
	extern(C) void function(GtkTextView* textView, GtkMovementStep step, int count, int extendSelection) moveCursor;
	/** */
	extern(C) void function(GtkTextView* textView) setAnchor;
	/** */
	extern(C) void function(GtkTextView* textView, const(char)* str) insertAtCursor;
	/** */
	extern(C) void function(GtkTextView* textView, GtkDeleteType type, int count) deleteFromCursor;
	/** */
	extern(C) void function(GtkTextView* textView) backspace;
	/** */
	extern(C) void function(GtkTextView* textView) cutClipboard;
	/** */
	extern(C) void function(GtkTextView* textView) copyClipboard;
	/** */
	extern(C) void function(GtkTextView* textView) pasteClipboard;
	/** */
	extern(C) void function(GtkTextView* textView) toggleOverwrite;
	/** */
	extern(C) GtkTextBuffer* function(GtkTextView* textView) createBuffer;
	/** */
	extern(C) void function(GtkTextView* textView, GtkTextViewLayer layer, cairo_t* cr) drawLayer;
	/** */
	extern(C) int function(GtkTextView* textView, GtkTextExtendSelection granularity, GtkTextIter* location, GtkTextIter* start, GtkTextIter* end) extendSelection;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
}

struct GtkTextViewPrivate;

struct GtkThemeEngine;

struct GtkThemingEngine
{
	GObject parentObject;
	GtkThemingEnginePrivate* priv;
}

/**
 * Base class for theming engines.
 */
struct GtkThemingEngineClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x0, double y0, double x1, double y1) renderLine;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height) renderBackground;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height) renderFrame;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height, GtkPositionType gapSide, double xy0Gap, double xy1Gap) renderFrameGap;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height, GtkPositionType gapSide) renderExtension;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height) renderCheck;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height) renderOption;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double angle, double x, double y, double size) renderArrow;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height) renderExpander;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height) renderFocus;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, PangoLayout* layout) renderLayout;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height, GtkOrientation orientation) renderSlider;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height) renderHandle;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height) renderActivity;
	/** */
	extern(C) GdkPixbuf* function(GtkThemingEngine* engine, GtkIconSource* source, GtkIconSize size) renderIconPixbuf;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, GdkPixbuf* pixbuf, double x, double y) renderIcon;
	/** */
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, cairo_surface_t* surface, double x, double y) renderIconSurface;
	void*[14] padding;
}

struct GtkThemingEnginePrivate;

struct GtkToggleAction
{
	GtkAction parent;
	GtkToggleActionPrivate* privateData;
}

struct GtkToggleActionClass
{
	GtkActionClass parentClass;
	/** */
	extern(C) void function(GtkToggleAction* action) toggled;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

/**
 * #GtkToggleActionEntry structs are used with
 * gtk_action_group_add_toggle_actions() to construct toggle actions.
 */
struct GtkToggleActionEntry
{
	/**
	 * The name of the action.
	 */
	const(char)* name;
	/**
	 * The stock id for the action, or the name of an icon from the
	 * icon theme.
	 */
	const(char)* stockId;
	/**
	 * The label for the action. This field should typically be marked
	 * for translation, see gtk_action_group_set_translation_domain().
	 */
	const(char)* label;
	/**
	 * The accelerator for the action, in the format understood by
	 * gtk_accelerator_parse().
	 */
	const(char)* accelerator;
	/**
	 * The tooltip for the action. This field should typically be
	 * marked for translation, see gtk_action_group_set_translation_domain().
	 */
	const(char)* tooltip;
	/**
	 * The function to call when the action is activated.
	 */
	GCallback callback;
	/**
	 * The initial state of the toggle action.
	 */
	bool isActive;
}

struct GtkToggleActionPrivate;

struct GtkToggleButton
{
	GtkButton button;
	GtkToggleButtonPrivate* priv;
}

struct GtkToggleButtonAccessible
{
	GtkButtonAccessible parent;
	GtkToggleButtonAccessiblePrivate* priv;
}

struct GtkToggleButtonAccessibleClass
{
	GtkButtonAccessibleClass parentClass;
}

struct GtkToggleButtonAccessiblePrivate;

struct GtkToggleButtonClass
{
	GtkButtonClass parentClass;
	/** */
	extern(C) void function(GtkToggleButton* toggleButton) toggled;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkToggleButtonPrivate;

struct GtkToggleToolButton
{
	GtkToolButton parent;
	GtkToggleToolButtonPrivate* priv;
}

struct GtkToggleToolButtonClass
{
	/**
	 * The parent class.
	 */
	GtkToolButtonClass parentClass;
	/** */
	extern(C) void function(GtkToggleToolButton* button) toggled;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkToggleToolButtonPrivate;

struct GtkToolButton
{
	GtkToolItem parent;
	GtkToolButtonPrivate* priv;
}

struct GtkToolButtonClass
{
	/**
	 * The parent class.
	 */
	GtkToolItemClass parentClass;
	GType buttonType;
	/** */
	extern(C) void function(GtkToolButton* toolItem) clicked;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkToolButtonPrivate;

struct GtkToolItem
{
	GtkBin parent;
	GtkToolItemPrivate* priv;
}

struct GtkToolItemClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) int function(GtkToolItem* toolItem) createMenuProxy;
	/** */
	extern(C) void function(GtkToolItem* toolItem) toolbarReconfigured;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkToolItemGroup
{
	GtkContainer parentInstance;
	GtkToolItemGroupPrivate* priv;
}

struct GtkToolItemGroupClass
{
	/**
	 * The parent class.
	 */
	GtkContainerClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkToolItemGroupPrivate;

struct GtkToolItemPrivate;

struct GtkToolPalette
{
	GtkContainer parentInstance;
	GtkToolPalettePrivate* priv;
}

struct GtkToolPaletteClass
{
	/**
	 * The parent class.
	 */
	GtkContainerClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkToolPalettePrivate;

struct GtkToolShell;

/**
 * Virtual function table for the #GtkToolShell interface.
 */
struct GtkToolShellIface
{
	GTypeInterface gIface;
	/** */
	extern(C) GtkIconSize function(GtkToolShell* shell) getIconSize;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Return: the current orientation of @shell
	 */
	extern(C) GtkOrientation function(GtkToolShell* shell) getOrientation;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Return: the current style of @shell
	 */
	extern(C) GtkToolbarStyle function(GtkToolShell* shell) getStyle;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Return: The relief style of buttons on @shell.
	 */
	extern(C) GtkReliefStyle function(GtkToolShell* shell) getReliefStyle;
	/** */
	extern(C) void function(GtkToolShell* shell) rebuildMenu;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Return: the current text orientation of @shell
	 */
	extern(C) GtkOrientation function(GtkToolShell* shell) getTextOrientation;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Return: the current text alignment of @shell
	 */
	extern(C) float function(GtkToolShell* shell) getTextAlignment;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Return: the current ellipsize mode of @shell
	 */
	extern(C) PangoEllipsizeMode function(GtkToolShell* shell) getEllipsizeMode;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Return: the current text size group of @shell
	 */
	extern(C) GtkSizeGroup* function(GtkToolShell* shell) getTextSizeGroup;
}

struct GtkToolbar
{
	GtkContainer container;
	GtkToolbarPrivate* priv;
}

struct GtkToolbarClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) void function(GtkToolbar* toolbar, GtkOrientation orientation) orientationChanged;
	/** */
	extern(C) void function(GtkToolbar* toolbar, GtkToolbarStyle style) styleChanged;
	/** */
	extern(C) int function(GtkToolbar* toolbar, int x, int y, int buttonNumber) popupContextMenu;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkToolbarPrivate;

struct GtkTooltip;

struct GtkToplevelAccessible
{
	AtkObject parent;
	GtkToplevelAccessiblePrivate* priv;
}

struct GtkToplevelAccessibleClass
{
	AtkObjectClass parentClass;
}

struct GtkToplevelAccessiblePrivate;

struct GtkTreeDragDest;

struct GtkTreeDragDestIface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     dragDest = a #GtkTreeDragDest
	 *     dest = row to drop in front of
	 *     selectionData = data to drop
	 * Return: whether a new row was created before position @dest
	 */
	extern(C) int function(GtkTreeDragDest* dragDest, GtkTreePath* dest, GtkSelectionData* selectionData) dragDataReceived;
	/**
	 *
	 * Params:
	 *     dragDest = a #GtkTreeDragDest
	 *     destPath = destination row
	 *     selectionData = the data being dragged
	 * Return: %TRUE if a drop is possible before @dest_path
	 */
	extern(C) int function(GtkTreeDragDest* dragDest, GtkTreePath* destPath, GtkSelectionData* selectionData) rowDropPossible;
}

struct GtkTreeDragSource;

struct GtkTreeDragSourceIface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     dragSource = a #GtkTreeDragSource
	 *     path = row on which user is initiating a drag
	 * Return: %TRUE if the row can be dragged
	 */
	extern(C) int function(GtkTreeDragSource* dragSource, GtkTreePath* path) rowDraggable;
	/**
	 *
	 * Params:
	 *     dragSource = a #GtkTreeDragSource
	 *     path = row that was dragged
	 *     selectionData = a #GtkSelectionData to fill with data
	 *         from the dragged row
	 * Return: %TRUE if data of the required type was provided
	 */
	extern(C) int function(GtkTreeDragSource* dragSource, GtkTreePath* path, GtkSelectionData* selectionData) dragDataGet;
	/**
	 *
	 * Params:
	 *     dragSource = a #GtkTreeDragSource
	 *     path = row that was being dragged
	 * Return: %TRUE if the row was successfully deleted
	 */
	extern(C) int function(GtkTreeDragSource* dragSource, GtkTreePath* path) dragDataDelete;
}

struct GtkTreeIter
{
	/**
	 * a unique stamp to catch invalid iterators
	 */
	int stamp;
	/**
	 * model-specific data
	 */
	void* userData;
	/**
	 * model-specific data
	 */
	void* userData2;
	/**
	 * model-specific data
	 */
	void* userData3;
}

struct GtkTreeModel;

struct GtkTreeModelFilter
{
	GObject parent;
	GtkTreeModelFilterPrivate* priv;
}

struct GtkTreeModelFilterClass
{
	GObjectClass parentClass;
	/** */
	extern(C) int function(GtkTreeModelFilter* self, GtkTreeModel* childModel, GtkTreeIter* iter) visible;
	/** */
	extern(C) void function(GtkTreeModelFilter* self, GtkTreeModel* childModel, GtkTreeIter* iter, GValue* value, int column) modify;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTreeModelFilterPrivate;

struct GtkTreeModelIface
{
	GTypeInterface gIface;
	/** */
	extern(C) void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) rowChanged;
	/** */
	extern(C) void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) rowInserted;
	/** */
	extern(C) void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) rowHasChildToggled;
	/** */
	extern(C) void function(GtkTreeModel* treeModel, GtkTreePath* path) rowDeleted;
	/** */
	extern(C) void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter, int* newOrder) rowsReordered;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 * Return: the flags supported by this interface
	 */
	extern(C) GtkTreeModelFlags function(GtkTreeModel* treeModel) getFlags;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 * Return: the number of columns
	 */
	extern(C) int function(GtkTreeModel* treeModel) getNColumns;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     index = the column index
	 * Return: the type of the column
	 */
	extern(C) GType function(GtkTreeModel* treeModel, int index) getColumnType;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the uninitialized #GtkTreeIter-struct
	 *     path = the #GtkTreePath-struct
	 * Return: %TRUE, if @iter was set
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreePath* path) getIter;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct
	 * Return: a newly-created #GtkTreePath-struct
	 */
	extern(C) GtkTreePath* function(GtkTreeModel* treeModel, GtkTreeIter* iter) getPath;
	/** */
	extern(C) void function(GtkTreeModel* treeModel, GtkTreeIter* iter, int column, GValue* value) getValue;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct
	 * Return: %TRUE if @iter has been changed to the next node
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter) iterNext;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct
	 * Return: %TRUE if @iter has been changed to the previous node
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter) iterPrevious;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the new #GtkTreeIter-struct to be set to the child
	 *     parent = the #GtkTreeIter-struct, or %NULL
	 * Return: %TRUE, if @iter has been set to the first child
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent) iterChildren;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct to test for children
	 * Return: %TRUE if @iter has children
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter) iterHasChild;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct, or %NULL
	 * Return: the number of children of @iter
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter) iterNChildren;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct to set to the nth child
	 *     parent = the #GtkTreeIter-struct to get the child from, or %NULL.
	 *     n = the index of the desired child
	 * Return: %TRUE, if @parent has an @n-th child
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent, int n) iterNthChild;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the new #GtkTreeIter-struct to set to the parent
	 *     child = the #GtkTreeIter-struct
	 * Return: %TRUE, if @iter is set to the parent of @child
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* child) iterParent;
	/** */
	extern(C) void function(GtkTreeModel* treeModel, GtkTreeIter* iter) refNode;
	/** */
	extern(C) void function(GtkTreeModel* treeModel, GtkTreeIter* iter) unrefNode;
}

struct GtkTreeModelSort
{
	GObject parent;
	GtkTreeModelSortPrivate* priv;
}

struct GtkTreeModelSortClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTreeModelSortPrivate;

struct GtkTreePath;

struct GtkTreeRowReference;

struct GtkTreeSelection
{
	GObject parent;
	GtkTreeSelectionPrivate* priv;
}

struct GtkTreeSelectionClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkTreeSelection* selection) changed;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTreeSelectionPrivate;

struct GtkTreeSortable;

struct GtkTreeSortableIface
{
	GTypeInterface gIface;
	/** */
	extern(C) void function(GtkTreeSortable* sortable) sortColumnChanged;
	/**
	 *
	 * Params:
	 *     sortable = A #GtkTreeSortable
	 *     sortColumnId = The sort column id to be filled in
	 *     order = The #GtkSortType to be filled in
	 * Return: %TRUE if the sort column is not one of the special sort
	 *     column ids.
	 */
	extern(C) int function(GtkTreeSortable* sortable, int* sortColumnId, GtkSortType* order) getSortColumnId;
	/** */
	extern(C) void function(GtkTreeSortable* sortable, int sortColumnId, GtkSortType order) setSortColumnId;
	/** */
	extern(C) void function(GtkTreeSortable* sortable, int sortColumnId, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy) setSortFunc;
	/** */
	extern(C) void function(GtkTreeSortable* sortable, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy) setDefaultSortFunc;
	/**
	 *
	 * Params:
	 *     sortable = A #GtkTreeSortable
	 * Return: %TRUE, if the model has a default sort function
	 */
	extern(C) int function(GtkTreeSortable* sortable) hasDefaultSortFunc;
}

struct GtkTreeStore
{
	GObject parent;
	GtkTreeStorePrivate* priv;
}

struct GtkTreeStoreClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTreeStorePrivate;

struct GtkTreeView
{
	GtkContainer parent;
	GtkTreeViewPrivate* priv;
}

struct GtkTreeViewAccessible
{
	GtkContainerAccessible parent;
	GtkTreeViewAccessiblePrivate* priv;
}

struct GtkTreeViewAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkTreeViewAccessiblePrivate;

struct GtkTreeViewClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column) rowActivated;
	/** */
	extern(C) int function(GtkTreeView* treeView, GtkTreeIter* iter, GtkTreePath* path) testExpandRow;
	/** */
	extern(C) int function(GtkTreeView* treeView, GtkTreeIter* iter, GtkTreePath* path) testCollapseRow;
	/** */
	extern(C) void function(GtkTreeView* treeView, GtkTreeIter* iter, GtkTreePath* path) rowExpanded;
	/** */
	extern(C) void function(GtkTreeView* treeView, GtkTreeIter* iter, GtkTreePath* path) rowCollapsed;
	/** */
	extern(C) void function(GtkTreeView* treeView) columnsChanged;
	/** */
	extern(C) void function(GtkTreeView* treeView) cursorChanged;
	/** */
	extern(C) int function(GtkTreeView* treeView, GtkMovementStep step, int count) moveCursor;
	/** */
	extern(C) int function(GtkTreeView* treeView) selectAll;
	/** */
	extern(C) int function(GtkTreeView* treeView) unselectAll;
	/** */
	extern(C) int function(GtkTreeView* treeView, int startEditing) selectCursorRow;
	/** */
	extern(C) int function(GtkTreeView* treeView) toggleCursorRow;
	/** */
	extern(C) int function(GtkTreeView* treeView, int logical, int expand, int openAll) expandCollapseCursorRow;
	/** */
	extern(C) int function(GtkTreeView* treeView) selectCursorParent;
	/** */
	extern(C) int function(GtkTreeView* treeView) startInteractiveSearch;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
	/** */
	extern(C) void function() GtkReserved5;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
	/** */
	extern(C) void function() GtkReserved8;
}

struct GtkTreeViewColumn
{
	GObject parentInstance;
	GtkTreeViewColumnPrivate* priv;
}

struct GtkTreeViewColumnClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkTreeViewColumn* treeColumn) clicked;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkTreeViewColumnPrivate;

struct GtkTreeViewPrivate;

struct GtkUIManager
{
	GObject parent;
	GtkUIManagerPrivate* privateData;
}

struct GtkUIManagerClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkUIManager* manager, GtkWidget* widget) addWidget;
	/** */
	extern(C) void function(GtkUIManager* manager) actionsChanged;
	/** */
	extern(C) void function(GtkUIManager* manager, GtkAction* action, GtkWidget* proxy) connectProxy;
	/** */
	extern(C) void function(GtkUIManager* manager, GtkAction* action, GtkWidget* proxy) disconnectProxy;
	/** */
	extern(C) void function(GtkUIManager* manager, GtkAction* action) preActivate;
	/** */
	extern(C) void function(GtkUIManager* manager, GtkAction* action) postActivate;
	/**
	 *
	 * Params:
	 *     manager = a #GtkUIManager
	 *     path = a path
	 * Return: the widget found by following the path,
	 *     or %NULL if no widget was found
	 */
	extern(C) GtkWidget* function(GtkUIManager* manager, const(char)* path) getWidget;
	/**
	 *
	 * Params:
	 *     manager = a #GtkUIManager
	 *     path = a path
	 * Return: the action whose proxy widget is found by following the path,
	 *     or %NULL if no widget was found.
	 */
	extern(C) GtkAction* function(GtkUIManager* manager, const(char)* path) getAction;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkUIManagerPrivate;

struct GtkVBox
{
	GtkBox box;
}

struct GtkVBoxClass
{
	GtkBoxClass parentClass;
}

struct GtkVButtonBox
{
	GtkButtonBox buttonBox;
}

struct GtkVButtonBoxClass
{
	GtkButtonBoxClass parentClass;
}

struct GtkVPaned
{
	GtkPaned paned;
}

struct GtkVPanedClass
{
	GtkPanedClass parentClass;
}

struct GtkVScale
{
	GtkScale scale;
}

struct GtkVScaleClass
{
	GtkScaleClass parentClass;
}

struct GtkVScrollbar
{
	GtkScrollbar scrollbar;
}

struct GtkVScrollbarClass
{
	GtkScrollbarClass parentClass;
}

struct GtkVSeparator
{
	GtkSeparator separator;
}

struct GtkVSeparatorClass
{
	GtkSeparatorClass parentClass;
}

struct GtkViewport
{
	GtkBin bin;
	GtkViewportPrivate* priv;
}

struct GtkViewportClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkViewportPrivate;

struct GtkVolumeButton
{
	GtkScaleButton parent;
}

struct GtkVolumeButtonClass
{
	GtkScaleButtonClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkWidget
{
	GObject parentInstance;
	GtkWidgetPrivate* priv;
}

struct GtkWidgetAccessible
{
	GtkAccessible parent;
	GtkWidgetAccessiblePrivate* priv;
}

struct GtkWidgetAccessibleClass
{
	GtkAccessibleClass parentClass;
	/** */
	extern(C) void function(GObject* object, GParamSpec* pspec) notifyGtk;
}

struct GtkWidgetAccessiblePrivate;

struct GtkWidgetClass
{
	/**
	 * The object class structure needs to be the first
	 * element in the widget class structure in order for the class mechanism
	 * to work correctly. This allows a GtkWidgetClass pointer to be cast to
	 * a GObjectClass pointer.
	 */
	GObjectClass parentClass;
	/**
	 * The signal to emit when a widget of this class is
	 * activated, gtk_widget_activate() handles the emission.
	 * Implementation of this signal is optional.
	 */
	uint activateSignal;
	/** */
	extern(C) void function(GtkWidget* widget, uint nPspecs, GParamSpec** pspecs) dispatchChildPropertiesChanged;
	/** */
	extern(C) void function(GtkWidget* widget) destroy;
	/** */
	extern(C) void function(GtkWidget* widget) show;
	/** */
	extern(C) void function(GtkWidget* widget) showAll;
	/** */
	extern(C) void function(GtkWidget* widget) hide;
	/** */
	extern(C) void function(GtkWidget* widget) map;
	/** */
	extern(C) void function(GtkWidget* widget) unmap;
	/** */
	extern(C) void function(GtkWidget* widget) realize;
	/** */
	extern(C) void function(GtkWidget* widget) unrealize;
	/** */
	extern(C) void function(GtkWidget* widget, GtkAllocation* allocation) sizeAllocate;
	/** */
	extern(C) void function(GtkWidget* widget, GtkStateType previousState) stateChanged;
	/** */
	extern(C) void function(GtkWidget* widget, GtkStateFlags previousStateFlags) stateFlagsChanged;
	/** */
	extern(C) void function(GtkWidget* widget, GtkWidget* previousParent) parentSet;
	/** */
	extern(C) void function(GtkWidget* widget, GtkWidget* previousToplevel) hierarchyChanged;
	/** */
	extern(C) void function(GtkWidget* widget, GtkStyle* previousStyle) styleSet;
	/** */
	extern(C) void function(GtkWidget* widget, GtkTextDirection previousDirection) directionChanged;
	/** */
	extern(C) void function(GtkWidget* widget, int wasGrabbed) grabNotify;
	/** */
	extern(C) void function(GtkWidget* widget, GParamSpec* childProperty) childNotify;
	/** */
	extern(C) int function(GtkWidget* widget, cairo_t* cr) draw;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget instance
	 * Return: The #GtkSizeRequestMode preferred by @widget.
	 */
	extern(C) GtkSizeRequestMode function(GtkWidget* widget) getRequestMode;
	/** */
	extern(C) void function(GtkWidget* widget, int* minimumHeight, int* naturalHeight) getPreferredHeight;
	/** */
	extern(C) void function(GtkWidget* widget, int height, int* minimumWidth, int* naturalWidth) getPreferredWidthForHeight;
	/** */
	extern(C) void function(GtkWidget* widget, int* minimumWidth, int* naturalWidth) getPreferredWidth;
	/** */
	extern(C) void function(GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight) getPreferredHeightForWidth;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     groupCycling = %TRUE if there are other widgets with the same mnemonic
	 * Return: %TRUE if the signal has been handled
	 */
	extern(C) int function(GtkWidget* widget, int groupCycling) mnemonicActivate;
	/** */
	extern(C) void function(GtkWidget* widget) grabFocus;
	/** */
	extern(C) int function(GtkWidget* widget, GtkDirectionType direction) focus;
	/** */
	extern(C) void function(GtkWidget* widget, GtkDirectionType direction) moveFocus;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     direction = direction of focus movement
	 * Return: %TRUE if stopping keyboard navigation is fine, %FALSE
	 *     if the emitting widget should try to handle the keyboard
	 *     navigation attempt in its parent container(s).
	 */
	extern(C) int function(GtkWidget* widget, GtkDirectionType direction) keynavFailed;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     event = a #GdkEvent
	 * Return: return from the event signal emission (%TRUE if
	 *     the event was handled)
	 */
	extern(C) int function(GtkWidget* widget, GdkEvent* event) event;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventButton* event) buttonPressEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventButton* event) buttonReleaseEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventScroll* event) scrollEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventMotion* event) motionNotifyEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventAny* event) deleteEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventAny* event) destroyEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventKey* event) keyPressEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventKey* event) keyReleaseEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventCrossing* event) enterNotifyEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventCrossing* event) leaveNotifyEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventConfigure* event) configureEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventFocus* event) focusInEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventFocus* event) focusOutEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventAny* event) mapEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventAny* event) unmapEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventProperty* event) propertyNotifyEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventSelection* event) selectionClearEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventSelection* event) selectionRequestEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventSelection* event) selectionNotifyEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventProximity* event) proximityInEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventProximity* event) proximityOutEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventVisibility* event) visibilityNotifyEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventWindowState* event) windowStateEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventExpose* event) damageEvent;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventGrabBroken* event) grabBrokenEvent;
	/** */
	extern(C) void function(GtkWidget* widget, GtkSelectionData* selectionData, uint info, uint time) selectionGet;
	/** */
	extern(C) void function(GtkWidget* widget, GtkSelectionData* selectionData, uint time) selectionReceived;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDragContext* context) dragBegin;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDragContext* context) dragEnd;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDragContext* context, GtkSelectionData* selectionData, uint info, uint time) dragDataGet;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDragContext* context) dragDataDelete;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDragContext* context, uint time) dragLeave;
	/** */
	extern(C) int function(GtkWidget* widget, GdkDragContext* context, int x, int y, uint time) dragMotion;
	/** */
	extern(C) int function(GtkWidget* widget, GdkDragContext* context, int x, int y, uint time) dragDrop;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDragContext* context, int x, int y, GtkSelectionData* selectionData, uint info, uint time) dragDataReceived;
	/** */
	extern(C) int function(GtkWidget* widget, GdkDragContext* context, GtkDragResult result) dragFailed;
	/** */
	extern(C) int function(GtkWidget* widget) popupMenu;
	/** */
	extern(C) int function(GtkWidget* widget, GtkWidgetHelpType helpType) showHelp;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 * Return: the #AtkObject associated with @widget
	 */
	extern(C) AtkObject* function(GtkWidget* widget) getAccessible;
	/** */
	extern(C) void function(GtkWidget* widget, GdkScreen* previousScreen) screenChanged;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     signalId = the ID of a signal installed on @widget
	 * Return: %TRUE if the accelerator can be activated.
	 */
	extern(C) int function(GtkWidget* widget, uint signalId) canActivateAccel;
	/** */
	extern(C) void function(GtkWidget* widget) compositedChanged;
	/** */
	extern(C) int function(GtkWidget* widget, int x, int y, int keyboardTooltip, GtkTooltip* tooltip) queryTooltip;
	/** */
	extern(C) void function(GtkWidget* widget, int* hexpandP, int* vexpandP) computeExpand;
	/** */
	extern(C) void function(GtkWidget* widget, GtkOrientation orientation, int* minimumSize, int* naturalSize) adjustSizeRequest;
	/** */
	extern(C) void function(GtkWidget* widget, GtkOrientation orientation, int* minimumSize, int* naturalSize, int* allocatedPos, int* allocatedSize) adjustSizeAllocation;
	/** */
	extern(C) void function(GtkWidget* widget) styleUpdated;
	/** */
	extern(C) int function(GtkWidget* widget, GdkEventTouch* event) touchEvent;
	/** */
	extern(C) void function(GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight, int* minimumBaseline, int* naturalBaseline) getPreferredHeightAndBaselineForWidth;
	/** */
	extern(C) void function(GtkWidget* widget, int* minimumBaseline, int* naturalBaseline) adjustBaselineRequest;
	/** */
	extern(C) void function(GtkWidget* widget, int* baseline) adjustBaselineAllocation;
	/** */
	extern(C) void function(GtkWidget* widget, cairo_region_t* region) queueDrawRegion;
	GtkWidgetClassPrivate* priv;
	/** */
	extern(C) void function() GtkReserved6;
	/** */
	extern(C) void function() GtkReserved7;
}

struct GtkWidgetClassPrivate;

struct GtkWidgetPath;

struct GtkWidgetPrivate;

struct GtkWindow
{
	GtkBin bin;
	GtkWindowPrivate* priv;
}

struct GtkWindowAccessible
{
	GtkContainerAccessible parent;
	GtkWindowAccessiblePrivate* priv;
}

struct GtkWindowAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkWindowAccessiblePrivate;

struct GtkWindowClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function(GtkWindow* window, GtkWidget* focus) setFocus;
	/** */
	extern(C) void function(GtkWindow* window) activateFocus;
	/** */
	extern(C) void function(GtkWindow* window) activateDefault;
	/** */
	extern(C) void function(GtkWindow* window) keysChanged;
	/** */
	extern(C) int function(GtkWindow* window, int toggle) enableDebugging;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
}

struct GtkWindowGeometryInfo;

struct GtkWindowGroup
{
	GObject parentInstance;
	GtkWindowGroupPrivate* priv;
}

struct GtkWindowGroupClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkWindowGroupPrivate;

struct GtkWindowPrivate;

/** */
public alias extern(C) int function(GtkAccelGroup* accelGroup, GObject* acceleratable, uint keyval, GdkModifierType modifier) GtkAccelGroupActivate;

/** */
public alias extern(C) int function(GtkAccelKey* key, GClosure* closure, void* data) GtkAccelGroupFindFunc;

/** */
public alias extern(C) void function(void* data, const(char)* accelPath, uint accelKey, GdkModifierType accelMods, int changed) GtkAccelMapForeach;

/**
 * A function used by gtk_assistant_set_forward_page_func() to know which
 * is the next page given a current one. It’s called both for computing the
 * next page when the user presses the “forward” button and for handling
 * the behavior of the “last” button.
 *
 * Params:
 *     currentPage = The page number used to calculate the next page.
 *     data = user data.
 *
 * Return: The next page number.
 */
public alias extern(C) int function(int currentPage, void* data) GtkAssistantPageFunc;

/**
 * This is the signature of a function used to connect signals.  It is used
 * by the gtk_builder_connect_signals() and gtk_builder_connect_signals_full()
 * methods.  It is mainly intended for interpreted language bindings, but
 * could be useful where the programmer wants more control over the signal
 * connection process. Note that this function can only be called once,
 * subsequent calls will do nothing.
 *
 * Params:
 *     builder = a #GtkBuilder
 *     object = object to connect a signal to
 *     signalName = name of the signal
 *     handlerName = name of the handler
 *     connectObject = a #GObject, if non-%NULL, use g_signal_connect_object()
 *     flags = #GConnectFlags to use
 *     userData = user data
 *
 * Since: 2.12
 */
public alias extern(C) void function(GtkBuilder* builder, GObject* object, const(char)* signalName, const(char)* handlerName, GObject* connectObject, GConnectFlags flags, void* userData) GtkBuilderConnectFunc;

/**
 * This kind of functions provide Pango markup with detail information for the
 * specified day. Examples for such details are holidays or appointments. The
 * function returns %NULL when no information is available.
 *
 * Params:
 *     calendar = a #GtkCalendar.
 *     year = the year for which details are needed.
 *     month = the month for which details are needed.
 *     day = the day of @month for which details are needed.
 *     userData = the data passed with gtk_calendar_set_detail_func().
 *
 * Return: Newly allocated string with Pango markup
 *     with details for the specified day or %NULL.
 *
 * Since: 2.14
 */
public alias extern(C) char* function(GtkCalendar* calendar, uint year, uint month, uint day, void* userData) GtkCalendarDetailFunc;

/**
 * The type of the callback functions used for e.g. iterating over
 * the children of a container, see gtk_container_foreach().
 *
 * Params:
 *     widget = the widget to operate on
 *     data = user-supplied data
 */
public alias extern(C) void function(GtkWidget* widget, void* data) GtkCallback;

/**
 * The type of the callback functions used for iterating over the
 * cell renderers and their allocated areas inside a #GtkCellArea,
 * see gtk_cell_area_foreach_alloc().
 *
 * Params:
 *     renderer = the cell renderer to operate on
 *     cellArea = the area allocated to @renderer inside the rectangle
 *         provided to gtk_cell_area_foreach_alloc().
 *     cellBackground = the background area for @renderer inside the
 *         background area provided to gtk_cell_area_foreach_alloc().
 *     data = user-supplied data
 *
 * Return: %TRUE to stop iterating over cells.
 */
public alias extern(C) int function(GtkCellRenderer* renderer, GdkRectangle* cellArea, GdkRectangle* cellBackground, void* data) GtkCellAllocCallback;

/**
 * The type of the callback functions used for iterating over
 * the cell renderers of a #GtkCellArea, see gtk_cell_area_foreach().
 *
 * Params:
 *     renderer = the cell renderer to operate on
 *     data = user-supplied data
 *
 * Return: %TRUE to stop iterating over cells.
 */
public alias extern(C) int function(GtkCellRenderer* renderer, void* data) GtkCellCallback;

/**
 * A function which should set the value of @cell_layout’s cell renderer(s)
 * as appropriate.
 *
 * Params:
 *     cellLayout = a #GtkCellLayout
 *     cell = the cell renderer whose value is to be set
 *     treeModel = the model
 *     iter = a #GtkTreeIter indicating the row to set the value for
 *     data = user data passed to gtk_cell_layout_set_cell_data_func()
 */
public alias extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, GtkTreeModel* treeModel, GtkTreeIter* iter, void* data) GtkCellLayoutDataFunc;

/**
 * A function that will be called when the contents of the clipboard are changed
 * or cleared. Once this has called, the @user_data_or_owner argument
 * will not be used again.
 *
 * Params:
 *     clipboard = the #GtkClipboard
 *     userDataOrOwner = the @user_data argument passed to gtk_clipboard_set_with_data(),
 *         or the @owner argument passed to gtk_clipboard_set_with_owner()
 */
public alias extern(C) void function(GtkClipboard* clipboard, void* userDataOrOwner) GtkClipboardClearFunc;

/**
 * A function that will be called to provide the contents of the selection.
 * If multiple types of data were advertised, the requested type can
 * be determined from the @info parameter or by checking the target field
 * of @selection_data. If the data could successfully be converted into
 * then it should be stored into the @selection_data object by
 * calling gtk_selection_data_set() (or related functions such
 * as gtk_selection_data_set_text()). If no data is set, the requestor
 * will be informed that the attempt to get the data failed.
 *
 * Params:
 *     clipboard = the #GtkClipboard
 *     selectionData = a #GtkSelectionData argument in which the requested
 *         data should be stored.
 *     info = the info field corresponding to the requested target from the
 *         #GtkTargetEntry array passed to gtk_clipboard_set_with_data() or
 *         gtk_clipboard_set_with_owner().
 *     userDataOrOwner = the @user_data argument passed to
 *         gtk_clipboard_set_with_data(), or the @owner argument passed to
 *         gtk_clipboard_set_with_owner()
 */
public alias extern(C) void function(GtkClipboard* clipboard, GtkSelectionData* selectionData, uint info, void* userDataOrOwner) GtkClipboardGetFunc;

/**
 * A function to be called when the results of gtk_clipboard_request_image()
 * are received, or when the request fails.
 *
 * Params:
 *     clipboard = the #GtkClipboard
 *     pixbuf = the received image
 *     data = the @user_data supplied to
 *         gtk_clipboard_request_image().
 *
 * Since: 2.6
 */
public alias extern(C) void function(GtkClipboard* clipboard, GdkPixbuf* pixbuf, void* data) GtkClipboardImageReceivedFunc;

/**
 * A function to be called when the results of gtk_clipboard_request_contents()
 * are received, or when the request fails.
 *
 * Params:
 *     clipboard = the #GtkClipboard
 *     selectionData = a #GtkSelectionData containing the data was received.
 *         If retrieving the data failed, then then length field
 *         of @selection_data will be negative.
 *     data = the @user_data supplied to
 *         gtk_clipboard_request_contents().
 */
public alias extern(C) void function(GtkClipboard* clipboard, GtkSelectionData* selectionData, void* data) GtkClipboardReceivedFunc;

/**
 * A function to be called when the results of
 * gtk_clipboard_request_rich_text() are received, or when the request
 * fails.
 *
 * Params:
 *     clipboard = the #GtkClipboard
 *     format = The format of the rich text
 *     text = the rich text received, as
 *         a UTF-8 encoded string, or %NULL if retrieving the data failed.
 *     length = Length of the text.
 *     data = the @user_data supplied to
 *         gtk_clipboard_request_rich_text().
 *
 * Since: 2.10
 */
public alias extern(C) void function(GtkClipboard* clipboard, GdkAtom format, ubyte* text, size_t length, void* data) GtkClipboardRichTextReceivedFunc;

/**
 * A function to be called when the results of gtk_clipboard_request_targets()
 * are received, or when the request fails.
 *
 * Params:
 *     clipboard = the #GtkClipboard
 *     atoms = the supported targets,
 *         as array of #GdkAtom, or %NULL if retrieving the data failed.
 *     nAtoms = the length of the @atoms array.
 *     data = the @user_data supplied to
 *         gtk_clipboard_request_targets().
 *
 * Since: 2.4
 */
public alias extern(C) void function(GtkClipboard* clipboard, GdkAtom* atoms, int nAtoms, void* data) GtkClipboardTargetsReceivedFunc;

/**
 * A function to be called when the results of gtk_clipboard_request_text()
 * are received, or when the request fails.
 *
 * Params:
 *     clipboard = the #GtkClipboard
 *     text = the text received, as a UTF-8 encoded string, or
 *         %NULL if retrieving the data failed.
 *     data = the @user_data supplied to
 *         gtk_clipboard_request_text().
 */
public alias extern(C) void function(GtkClipboard* clipboard, const(char)* text, void* data) GtkClipboardTextReceivedFunc;

/**
 * A function to be called when the results of
 * gtk_clipboard_request_uris() are received, or when the request
 * fails.
 *
 * Params:
 *     clipboard = the #GtkClipboard
 *     uris = the received URIs
 *     data = the @user_data supplied to
 *         gtk_clipboard_request_uris().
 *
 * Since: 2.14
 */
public alias extern(C) void function(GtkClipboard* clipboard, char** uris, void* data) GtkClipboardURIReceivedFunc;

/** */
public alias extern(C) void function(GdkColor* colors, int nColors) GtkColorSelectionChangePaletteFunc;

/** */
public alias extern(C) void function(GdkScreen* screen, GdkColor* colors, int nColors) GtkColorSelectionChangePaletteWithScreenFunc;

/**
 * A function which decides whether the row indicated by @iter matches
 * a given @key, and should be displayed as a possible completion for @key.
 * Note that @key is normalized and case-folded (see g_utf8_normalize()
 * and g_utf8_casefold()). If this is not appropriate, match functions
 * have access to the unmodified key via
 * `gtk_entry_get_text (GTK_ENTRY (gtk_entry_completion_get_entry ()))`.
 *
 * Params:
 *     completion = the #GtkEntryCompletion
 *     key = the string to match, normalized and case-folded
 *     iter = a #GtkTreeIter indicating the row to match
 *     userData = user data given to gtk_entry_completion_set_match_func()
 *
 * Return: %TRUE if @iter should be displayed as a possible completion
 *     for @key
 */
public alias extern(C) int function(GtkEntryCompletion* completion, const(char)* key, GtkTreeIter* iter, void* userData) GtkEntryCompletionMatchFunc;

/**
 * The type of function that is used with custom filters, see
 * gtk_file_filter_add_custom().
 *
 * Params:
 *     filterInfo = a #GtkFileFilterInfo that is filled according
 *         to the @needed flags passed to gtk_file_filter_add_custom()
 *     data = user data passed to gtk_file_filter_add_custom()
 *
 * Return: %TRUE if the file should be displayed
 */
public alias extern(C) int function(GtkFileFilterInfo* filterInfo, void* data) GtkFileFilterFunc;

/**
 * Called for flow boxes that are bound to a #GListModel with
 * gtk_flow_box_bind_model() for each item that gets added to the model.
 *
 * Params:
 *     item = the item from the model for which to create a widget for
 *     userData = user data from gtk_flow_box_bind_model()
 *
 * Return: a #GtkWidget that represents @item
 *
 * Since: 3.18
 */
public alias extern(C) GtkWidget* function(void* item, void* userData) GtkFlowBoxCreateWidgetFunc;

/**
 * A function that will be called whenrever a child changes
 * or is added. It lets you control if the child should be
 * visible or not.
 *
 * Params:
 *     child = a #GtkFlowBoxChild that may be filtered
 *     userData = user data
 *
 * Return: %TRUE if the row should be visible, %FALSE otherwise
 *
 * Since: 3.12
 */
public alias extern(C) int function(GtkFlowBoxChild* child, void* userData) GtkFlowBoxFilterFunc;

/**
 * A function used by gtk_flow_box_selected_foreach().
 * It will be called on every selected child of the @box.
 *
 * Params:
 *     box = a #GtkFlowBox
 *     child = a #GtkFlowBoxChild
 *     userData = user data
 *
 * Since: 3.12
 */
public alias extern(C) void function(GtkFlowBox* box, GtkFlowBoxChild* child, void* userData) GtkFlowBoxForeachFunc;

/**
 * A function to compare two children to determine which
 * should come first.
 *
 * Params:
 *     child1 = the first child
 *     child2 = the second child
 *     userData = user data
 *
 * Return: < 0 if @child1 should be before @child2, 0 if
 *     the are equal, and > 0 otherwise
 *
 * Since: 3.12
 */
public alias extern(C) int function(GtkFlowBoxChild* child1, GtkFlowBoxChild* child2, void* userData) GtkFlowBoxSortFunc;

/**
 * The type of function that is used for deciding what fonts get
 * shown in a #GtkFontChooser. See gtk_font_chooser_set_filter_func().
 *
 * Params:
 *     family = a #PangoFontFamily
 *     face = a #PangoFontFace belonging to @family
 *     data = user data passed to gtk_font_chooser_set_filter_func()
 *
 * Return: %TRUE if the font should be displayed
 */
public alias extern(C) int function(PangoFontFamily* family, PangoFontFace* face, void* data) GtkFontFilterFunc;

/**
 * A function used by gtk_icon_view_selected_foreach() to map all
 * selected rows.  It will be called on every selected row in the view.
 *
 * Params:
 *     iconView = a #GtkIconView
 *     path = The #GtkTreePath of a selected row
 *     data = user data
 */
public alias extern(C) void function(GtkIconView* iconView, GtkTreePath* path, void* data) GtkIconViewForeachFunc;

/**
 * Key snooper functions are called before normal event delivery.
 * They can be used to implement custom key event handling.
 *
 * Params:
 *     grabWidget = the widget to which the event will be delivered
 *     event = the key event
 *     funcData = data supplied to gtk_key_snooper_install()
 *
 * Return: %TRUE to stop further processing of @event, %FALSE to continue.
 */
public alias extern(C) int function(GtkWidget* grabWidget, GdkEventKey* event, void* funcData) GtkKeySnoopFunc;

/**
 * Called for list boxes that are bound to a #GListModel with
 * gtk_list_box_bind_model() for each item that gets added to the model.
 *
 * Versions of GTK+ prior to 3.18 called gtk_widget_show_all() on the rows
 * created by the GtkListBoxCreateWidgetFunc, but this forced all widgets
 * inside the row to be shown, and is no longer the case. Applications should
 * be updated to show the desired row widgets.
 *
 * Params:
 *     item = the item from the model for which to create a widget for
 *     userData = user data
 *
 * Return: a #GtkWidget that represents @item
 *
 * Since: 3.16
 */
public alias extern(C) GtkWidget* function(void* item, void* userData) GtkListBoxCreateWidgetFunc;

/**
 * Will be called whenever the row changes or is added and lets you control
 * if the row should be visible or not.
 *
 * Params:
 *     row = the row that may be filtered
 *     userData = user data
 *
 * Return: %TRUE if the row should be visible, %FALSE otherwise
 *
 * Since: 3.10
 */
public alias extern(C) int function(GtkListBoxRow* row, void* userData) GtkListBoxFilterFunc;

/**
 * A function used by gtk_list_box_selected_foreach().
 * It will be called on every selected child of the @box.
 *
 * Params:
 *     box = a #GtkListBox
 *     row = a #GtkListBoxRow
 *     userData = user data
 *
 * Since: 3.14
 */
public alias extern(C) void function(GtkListBox* box, GtkListBoxRow* row, void* userData) GtkListBoxForeachFunc;

/**
 * Compare two rows to determine which should be first.
 *
 * Params:
 *     row1 = the first row
 *     row2 = the second row
 *     userData = user data
 *
 * Return: < 0 if @row1 should be before @row2, 0 if they are
 *     equal and > 0 otherwise
 *
 * Since: 3.10
 */
public alias extern(C) int function(GtkListBoxRow* row1, GtkListBoxRow* row2, void* userData) GtkListBoxSortFunc;

/**
 * Whenever @row changes or which row is before @row changes this
 * is called, which lets you update the header on @row. You may
 * remove or set a new one via gtk_list_box_row_set_header() or
 * just change the state of the current header widget.
 *
 * Params:
 *     row = the row to update
 *     before = the row before @row, or %NULL if it is first
 *     userData = user data
 *
 * Since: 3.10
 */
public alias extern(C) void function(GtkListBoxRow* row, GtkListBoxRow* before, void* userData) GtkListBoxUpdateHeaderFunc;

/**
 * A user function supplied when calling gtk_menu_attach_to_widget() which
 * will be called when the menu is later detached from the widget.
 *
 * Params:
 *     attachWidget = the #GtkWidget that the menu is being detached from.
 *     menu = the #GtkMenu being detached.
 */
public alias extern(C) void function(GtkWidget* attachWidget, GtkMenu* menu) GtkMenuDetachFunc;

/**
 * A user function supplied when calling gtk_menu_popup() which
 * controls the positioning of the menu when it is displayed.  The
 * function sets the @x and @y parameters to the coordinates where the
 * menu is to be drawn.  To make the menu appear on a different
 * monitor than the mouse pointer, gtk_menu_set_monitor() must be
 * called.
 *
 * Params:
 *     menu = a #GtkMenu.
 *     x = address of the #gint representing the horizontal
 *         position where the menu shall be drawn.
 *     y = address of the #gint representing the vertical position
 *         where the menu shall be drawn.  This is an output parameter.
 *     pushIn = This parameter controls how menus placed outside
 *         the monitor are handled.  If this is set to %TRUE and part of
 *         the menu is outside the monitor then GTK+ pushes the window
 *         into the visible area, effectively modifying the popup
 *         position.  Note that moving and possibly resizing the menu
 *         around will alter the scroll position to keep the menu items
 *         “in place”, i.e. at the same monitor position they would have
 *         been without resizing.  In practice, this behavior is only
 *         useful for combobox popups or option menus and cannot be used
 *         to simply confine a menu to monitor boundaries.  In that case,
 *         changing the scroll offset is not desirable.
 *     userData = the data supplied by the user in the gtk_menu_popup()
 *         @data parameter.
 */
public alias extern(C) void function(GtkMenu* menu, int* x, int* y, int* pushIn, void* userData) GtkMenuPositionFunc;

/**
 * A multihead-aware GTK+ module may have a gtk_module_display_init() function
 * with this prototype. GTK+ calls this function for each opened display.
 *
 * Params:
 *     display = an open #GdkDisplay
 *
 * Since: 2.2
 */
public alias extern(C) void function(GdkDisplay* display) GtkModuleDisplayInitFunc;

/**
 * Each GTK+ module must have a function gtk_module_init() with this prototype.
 * This function is called after loading the module.
 *
 * Params:
 *     argc = GTK+ always passes %NULL for this argument
 *     argv = GTK+ always passes %NULL for this argument
 */
public alias extern(C) void function(int* argc, char*** argv) GtkModuleInitFunc;

/**
 * The type of function that is passed to
 * gtk_print_run_page_setup_dialog_async().
 *
 * This function will be called when the page setup dialog
 * is dismissed, and also serves as destroy notify for @data.
 *
 * Params:
 *     pageSetup = the #GtkPageSetup that has been
 *     data = user data that has been passed to
 *         gtk_print_run_page_setup_dialog_async()
 */
public alias extern(C) void function(GtkPageSetup* pageSetup, void* data) GtkPageSetupDoneFunc;

/** */
public alias extern(C) void function(const(char)* key, const(char)* value, void* userData) GtkPrintSettingsFunc;

/** */
public alias extern(C) int function(GParamSpec* pspec, GString* rcString, GValue* propertyValue) GtkRcPropertyParser;

/**
 * The type of function that is used with custom filters,
 * see gtk_recent_filter_add_custom().
 *
 * Params:
 *     filterInfo = a #GtkRecentFilterInfo that is filled according
 *         to the @needed flags passed to gtk_recent_filter_add_custom()
 *     userData = user data passed to gtk_recent_filter_add_custom()
 *
 * Return: %TRUE if the file should be displayed
 */
public alias extern(C) int function(GtkRecentFilterInfo* filterInfo, void* userData) GtkRecentFilterFunc;

/** */
public alias extern(C) int function(GtkRecentInfo* a, GtkRecentInfo* b, void* userData) GtkRecentSortFunc;

/** */
public alias extern(C) int function(const(char)* str, GValue* value, GError** err) GtkStylePropertyParser;

/**
 * A function that is called to deserialize rich text that has been
 * serialized with gtk_text_buffer_serialize(), and insert it at @iter.
 *
 * Params:
 *     registerBuffer = the #GtkTextBuffer the format is registered with
 *     contentBuffer = the #GtkTextBuffer to deserialize into
 *     iter = insertion point for the deserialized text
 *     data = data to deserialize
 *     length = length of @data
 *     createTags = %TRUE if deserializing may create tags
 *     userData = user data that was specified when registering the format
 *
 * Return: %TRUE on success, %FALSE otherwise
 *
 * Throws: GException on failure.
 */
public alias extern(C) int function(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GtkTextIter* iter, ubyte* data, size_t length, int createTags, void* userData, GError** err) GtkTextBufferDeserializeFunc;

/**
 * A function that is called to serialize the content of a text buffer.
 * It must return the serialized form of the content.
 *
 * Params:
 *     registerBuffer = the #GtkTextBuffer for which the format is registered
 *     contentBuffer = the #GtkTextBuffer to serialize
 *     start = start of the block of text to serialize
 *     end = end of the block of text to serialize
 *     length = Return location for the length of the serialized data
 *     userData = user data that was specified when registering the format
 *
 * Return: a newly-allocated array of guint8 which contains
 *     the serialized data, or %NULL if an error occurred
 */
public alias extern(C) ubyte* function(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GtkTextIter* start, GtkTextIter* end, size_t* length, void* userData) GtkTextBufferSerializeFunc;

/** */
public alias extern(C) int function(dchar ch, void* userData) GtkTextCharPredicate;

/** */
public alias extern(C) void function(GtkTextTag* tag, void* data) GtkTextTagTableForeach;

/**
 * Callback type for adding a function to update animations. See gtk_widget_add_tick_callback().
 *
 * Params:
 *     widget = the widget
 *     frameClock = the frame clock for the widget (same as calling gtk_widget_get_frame_clock())
 *     userData = user data passed to gtk_widget_add_tick_callback().
 *
 * Return: %G_SOURCE_CONTINUE if the tick callback should continue to be called,
 *     %G_SOURCE_REMOVE if the tick callback should be removed.
 *
 * Since: 3.8
 */
public alias extern(C) int function(GtkWidget* widget, GdkFrameClock* frameClock, void* userData) GtkTickCallback;

/**
 * The function used to translate messages in e.g. #GtkIconFactory
 * and #GtkActionGroup.
 *
 * Params:
 *     path = The id of the message. In #GtkActionGroup this will be a label
 *         or tooltip from a #GtkActionEntry.
 *     funcData = user data passed in when registering the
 *         function
 *
 * Return: the translated message
 */
public alias extern(C) char* function(const(char)* path, void* funcData) GtkTranslateFunc;

/**
 * A function to set the properties of a cell instead of just using the
 * straight mapping between the cell and the model.  This is useful for
 * customizing the cell renderer.  For example, a function might get an
 * integer from the @tree_model, and render it to the “text” attribute of
 * “cell” by converting it to its written equivilent.  This is set by
 * calling gtk_tree_view_column_set_cell_data_func()
 *
 * Params:
 *     treeColumn = A #GtkTreeViewColumn
 *     cell = The #GtkCellRenderer that is being rendered by @tree_column
 *     treeModel = The #GtkTreeModel being rendered
 *     iter = A #GtkTreeIter of the current row rendered
 *     data = user data
 */
public alias extern(C) void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, GtkTreeModel* treeModel, GtkTreeIter* iter, void* data) GtkTreeCellDataFunc;

/** */
public alias extern(C) void function(GtkTreeView* treeView, GtkTreePath* path, int children, void* userData) GtkTreeDestroyCountFunc;

/**
 * A GtkTreeIterCompareFunc should return a negative integer, zero, or a positive
 * integer if @a sorts before @b, @a sorts with @b, or @a sorts after @b
 * respectively. If two iters compare as equal, their order in the sorted model
 * is undefined. In order to ensure that the #GtkTreeSortable behaves as
 * expected, the GtkTreeIterCompareFunc must define a partial order on
 * the model, i.e. it must be reflexive, antisymmetric and transitive.
 *
 * For example, if @model is a product catalogue, then a compare function
 * for the “price” column could be one which returns
 * `price_of(@a) - price_of(@b)`.
 *
 * Params:
 *     model = The #GtkTreeModel the comparison is within
 *     a = A #GtkTreeIter in @model
 *     b = Another #GtkTreeIter in @model
 *     userData = Data passed when the compare func is assigned e.g. by
 *         gtk_tree_sortable_set_sort_func()
 *
 * Return: a negative integer, zero or a positive integer depending on whether
 *     @a sorts before, with or after @b
 */
public alias extern(C) int function(GtkTreeModel* model, GtkTreeIter* a, GtkTreeIter* b, void* userData) GtkTreeIterCompareFunc;

/**
 * A function which calculates display values from raw values in the model.
 * It must fill @value with the display value for the column @column in the
 * row indicated by @iter.
 *
 * Since this function is called for each data access, it’s not a
 * particularly efficient operation.
 *
 * Params:
 *     model = the #GtkTreeModelFilter
 *     iter = a #GtkTreeIter pointing to the row whose display values are determined
 *     value = A #GValue which is already initialized for
 *         with the correct type for the column @column.
 *     column = the column whose display value is determined
 *     data = user data given to gtk_tree_model_filter_set_modify_func()
 */
public alias extern(C) void function(GtkTreeModel* model, GtkTreeIter* iter, GValue* value, int column, void* data) GtkTreeModelFilterModifyFunc;

/**
 * A function which decides whether the row indicated by @iter is visible.
 *
 * Params:
 *     model = the child model of the #GtkTreeModelFilter
 *     iter = a #GtkTreeIter pointing to the row in @model whose visibility
 *         is determined
 *     data = user data given to gtk_tree_model_filter_set_visible_func()
 *
 * Return: Whether the row indicated by @iter is visible.
 */
public alias extern(C) int function(GtkTreeModel* model, GtkTreeIter* iter, void* data) GtkTreeModelFilterVisibleFunc;

/**
 * Type of the callback passed to gtk_tree_model_foreach() to
 * iterate over the rows in a tree model.
 *
 * Params:
 *     model = the #GtkTreeModel being iterated
 *     path = the current #GtkTreePath
 *     iter = the current #GtkTreeIter
 *     data = The user data passed to gtk_tree_model_foreach()
 *
 * Return: %TRUE to stop iterating, %FALSE to continue
 */
public alias extern(C) int function(GtkTreeModel* model, GtkTreePath* path, GtkTreeIter* iter, void* data) GtkTreeModelForeachFunc;

/**
 * A function used by gtk_tree_selection_selected_foreach() to map all
 * selected rows.  It will be called on every selected row in the view.
 *
 * Params:
 *     model = The #GtkTreeModel being viewed
 *     path = The #GtkTreePath of a selected row
 *     iter = A #GtkTreeIter pointing to a selected row
 *     data = user data
 */
public alias extern(C) void function(GtkTreeModel* model, GtkTreePath* path, GtkTreeIter* iter, void* data) GtkTreeSelectionForeachFunc;

/**
 * A function used by gtk_tree_selection_set_select_function() to filter
 * whether or not a row may be selected.  It is called whenever a row's
 * state might change.  A return value of %TRUE indicates to @selection
 * that it is okay to change the selection.
 *
 * Params:
 *     selection = A #GtkTreeSelection
 *     model = A #GtkTreeModel being viewed
 *     path = The #GtkTreePath of the row in question
 *     pathCurrentlySelected = %TRUE, if the path is currently selected
 *     data = user data
 *
 * Return: %TRUE, if the selection state of the row can be toggled
 */
public alias extern(C) int function(GtkTreeSelection* selection, GtkTreeModel* model, GtkTreePath* path, int pathCurrentlySelected, void* data) GtkTreeSelectionFunc;

/**
 * Function type for determining whether @column can be dropped in a
 * particular spot (as determined by @prev_column and @next_column).  In
 * left to right locales, @prev_column is on the left of the potential drop
 * spot, and @next_column is on the right.  In right to left mode, this is
 * reversed.  This function should return %TRUE if the spot is a valid drop
 * spot.  Please note that returning %TRUE does not actually indicate that
 * the column drop was made, but is meant only to indicate a possible drop
 * spot to the user.
 *
 * Params:
 *     treeView = A #GtkTreeView
 *     column = The #GtkTreeViewColumn being dragged
 *     prevColumn = A #GtkTreeViewColumn on one side of @column
 *     nextColumn = A #GtkTreeViewColumn on the other side of @column
 *     data = user data
 *
 * Return: %TRUE, if @column can be dropped in this spot
 */
public alias extern(C) int function(GtkTreeView* treeView, GtkTreeViewColumn* column, GtkTreeViewColumn* prevColumn, GtkTreeViewColumn* nextColumn, void* data) GtkTreeViewColumnDropFunc;

/**
 * Function used for gtk_tree_view_map_expanded_rows().
 *
 * Params:
 *     treeView = A #GtkTreeView
 *     path = The path that’s expanded
 *     userData = user data
 */
public alias extern(C) void function(GtkTreeView* treeView, GtkTreePath* path, void* userData) GtkTreeViewMappingFunc;

/**
 * Function type for determining whether the row pointed to by @iter should
 * be rendered as a separator. A common way to implement this is to have a
 * boolean column in the model, whose values the #GtkTreeViewRowSeparatorFunc
 * returns.
 *
 * Params:
 *     model = the #GtkTreeModel
 *     iter = a #GtkTreeIter pointing at a row in @model
 *     data = user data
 *
 * Return: %TRUE if the row is a separator
 */
public alias extern(C) int function(GtkTreeModel* model, GtkTreeIter* iter, void* data) GtkTreeViewRowSeparatorFunc;

/**
 * A function used for checking whether a row in @model matches
 * a search key string entered by the user. Note the return value
 * is reversed from what you would normally expect, though it
 * has some similarity to strcmp() returning 0 for equal strings.
 *
 * Params:
 *     model = the #GtkTreeModel being searched
 *     column = the search column set by gtk_tree_view_set_search_column()
 *     key = the key string to compare with
 *     iter = a #GtkTreeIter pointing the row of @model that should be compared
 *         with @key.
 *     searchData = user data from gtk_tree_view_set_search_equal_func()
 *
 * Return: %FALSE if the row matches, %TRUE otherwise.
 */
public alias extern(C) int function(GtkTreeModel* model, int column, const(char)* key, GtkTreeIter* iter, void* searchData) GtkTreeViewSearchEqualFunc;

/** */
public alias extern(C) void function(GtkTreeView* treeView, GtkWidget* searchDialog, void* userData) GtkTreeViewSearchPositionFunc;
/**
 * A priority that can be used when adding a gtk.StyleProvider
 * for application-specific style information.
 */
public enum STYLE_PROVIDER_PRIORITY_APPLICATION = 600;
alias STYLE_PROVIDER_PRIORITY_APPLICATION GTK_STYLE_PROVIDER_PRIORITY_APPLICATION;

/**
 * The priority used for default style information
 * that is used in the absence of themes.
 *
 * Note that this is not very useful for providing default
 * styling for custom style classes - themes are likely to
 * override styling provided at this priority with
 * catch-all `* {...}` rules.
 */
public enum STYLE_PROVIDER_PRIORITY_FALLBACK = 1;
alias STYLE_PROVIDER_PRIORITY_FALLBACK GTK_STYLE_PROVIDER_PRIORITY_FALLBACK;

/**
 * The priority used for style information provided
 * via gtk.Settings.
 *
 * This priority is higher than STYLE_PROVIDER_PRIORITY_THEME
 * to let settings override themes.
 */
public enum STYLE_PROVIDER_PRIORITY_SETTINGS = 400;
alias STYLE_PROVIDER_PRIORITY_SETTINGS GTK_STYLE_PROVIDER_PRIORITY_SETTINGS;

/**
 * The priority used for style information provided
 * by themes.
 */
public enum STYLE_PROVIDER_PRIORITY_THEME = 200;
alias STYLE_PROVIDER_PRIORITY_THEME GTK_STYLE_PROVIDER_PRIORITY_THEME;

/**
 * The priority used for the style information from
 * `~/.gtk-3.0.css`.
 *
 * You should not use priorities higher than this, to
 * give the user the last word.
 */
public enum STYLE_PROVIDER_PRIORITY_USER = 800;
alias STYLE_PROVIDER_PRIORITY_USER GTK_STYLE_PROVIDER_PRIORITY_USER;

/**
 * StockIds
 */
public enum StockID
{
	/**
	 * The “About” item.
	 * ![](help-about.png)
	 *
	 * Deprecated: Use named icon &quot;help-about&quot; or the label &quot;_About&quot;.
	 */
	ABOUT = "gtk-about",
	/**
	 * The “Add” item and icon.
	 *
	 * Deprecated: Use named icon &quot;list-add&quot; or the label &quot;_Add&quot;.
	 */
	ADD = "gtk-add",
	/**
	 * The “Apply” item and icon.
	 *
	 * Deprecated: Do not use an icon. Use label &quot;_Apply&quot;.
	 */
	APPLY = "gtk-apply",
	/**
	 * The “Bold” item and icon.
	 *
	 * Deprecated: Use named icon &quot;format-text-bold&quot;.
	 */
	BOLD = "gtk-bold",
	/**
	 * The “Cancel” item and icon.
	 *
	 * Deprecated: Do not use an icon. Use label &quot;_Cancel&quot;.
	 */
	CANCEL = "gtk-cancel",
	/**
	 * The “Caps Lock Warning” icon.
	 *
	 * Deprecated: Use named icon &quot;dialog-warning-symbolic&quot;.
	 */
	CAPS_LOCK_WARNING = "gtk-caps-lock-warning",
	/**
	 * The “CD-Rom” item and icon.
	 *
	 * Deprecated: Use named icon &quot;media-optical&quot;.
	 */
	CDROM = "gtk-cdrom",
	/**
	 * The “Clear” item and icon.
	 *
	 * Deprecated: Use named icon &quot;edit-clear&quot;.
	 */
	CLEAR = "gtk-clear",
	/**
	 * The “Close” item and icon.
	 *
	 * Deprecated: Use named icon &quot;window-close&quot; or the label &quot;_Close&quot;.
	 */
	CLOSE = "gtk-close",
	/**
	 * The “Color Picker” item and icon.
	 */
	COLOR_PICKER = "gtk-color-picker",
	/**
	 * The “Connect” icon.
	 */
	CONNECT = "gtk-connect",
	/**
	 * The “Convert” item and icon.
	 */
	CONVERT = "gtk-convert",
	/**
	 * The “Copy” item and icon.
	 *
	 * Deprecated: Use the named icon &quot;edit-copy&quot; or the label &quot;_Copy&quot;.
	 */
	COPY = "gtk-copy",
	/**
	 * The “Cut” item and icon.
	 *
	 * Deprecated: Use the named icon &quot;edit-cut&quot; or the label &quot;Cu_t&quot;.
	 */
	CUT = "gtk-cut",
	/**
	 * The “Delete” item and icon.
	 *
	 * Deprecated: Use the named icon &quot;edit-delete&quot; or the label &quot;_Delete&quot;.
	 */
	DELETE = "gtk-delete",
	/**
	 * The “Authentication” item and icon.
	 *
	 * Deprecated: Use named icon &quot;dialog-password&quot;.
	 */
	DIALOG_AUTHENTICATION = "gtk-dialog-authentication",
	/**
	 * The “Error” item and icon.
	 *
	 * Deprecated: Use named icon &quot;dialog-error&quot;.
	 */
	DIALOG_ERROR = "gtk-dialog-error",
	/**
	 * The “Information” item and icon.
	 *
	 * Deprecated: Use named icon &quot;dialog-information&quot;.
	 */
	DIALOG_INFO = "gtk-dialog-info",
	/**
	 * The “Question” item and icon.
	 *
	 * Deprecated: Use named icon &quot;dialog-question&quot;.
	 */
	DIALOG_QUESTION = "gtk-dialog-question",
	/**
	 * The “Warning” item and icon.
	 *
	 * Deprecated: Use named icon &quot;dialog-warning&quot;.
	 */
	DIALOG_WARNING = "gtk-dialog-warning",
	/**
	 * The “Directory” icon.
	 *
	 * Deprecated: Use named icon &quot;folder&quot;.
	 */
	DIRECTORY = "gtk-directory",
	/**
	 * The “Discard” item.
	 */
	DISCARD = "gtk-discard",
	/**
	 * The “Disconnect” icon.
	 */
	DISCONNECT = "gtk-disconnect",
	/**
	 * The “Drag-And-Drop” icon.
	 */
	DND = "gtk-dnd",
	/**
	 * The “Drag-And-Drop multiple” icon.
	 */
	DND_MULTIPLE = "gtk-dnd-multiple",
	/**
	 * The “Edit” item and icon.
	 */
	EDIT = "gtk-edit",
	/**
	 * The “Execute” item and icon.
	 *
	 * Deprecated: Use named icon &quot;system-run&quot;.
	 */
	EXECUTE = "gtk-execute",
	/**
	 * The “File” item and icon.
	 *
	 * Since 3.0, this item has a label, before it only had an icon.
	 *
	 * Deprecated: Use named icon &quot;text-x-generic&quot;.
	 */
	FILE = "gtk-file",
	/**
	 * The “Find” item and icon.
	 *
	 * Deprecated: Use named icon &quot;edit-find&quot;.
	 */
	FIND = "gtk-find",
	/**
	 * The “Find and Replace” item and icon.
	 *
	 * Deprecated: Use named icon &quot;edit-find-replace&quot;.
	 */
	FIND_AND_REPLACE = "gtk-find-and-replace",
	/**
	 * The “Floppy” item and icon.
	 */
	FLOPPY = "gtk-floppy",
	/**
	 * The “Fullscreen” item and icon.
	 *
	 * Deprecated: Use named icon &quot;view-fullscreen&quot;.
	 */
	FULLSCREEN = "gtk-fullscreen",
	/**
	 * The “Bottom” item and icon.
	 *
	 * Deprecated: Use named icon &quot;go-bottom&quot;.
	 */
	GOTO_BOTTOM = "gtk-goto-bottom",
	/**
	 * The “First” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;go-first&quot;.
	 */
	GOTO_FIRST = "gtk-goto-first",
	/**
	 * The “Last” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;go-last&quot;.
	 */
	GOTO_LAST = "gtk-goto-last",
	/**
	 * The “Top” item and icon.
	 *
	 * Deprecated: Use named icon &quot;go-top&quot;.
	 */
	GOTO_TOP = "gtk-goto-top",
	/**
	 * The “Back” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;go-previous&quot;.
	 */
	GO_BACK = "gtk-go-back",
	/**
	 * The “Down” item and icon.
	 *
	 * Deprecated: Use named icon &quot;go-down&quot;.
	 */
	GO_DOWN = "gtk-go-down",
	/**
	 * The “Forward” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;go-next&quot;.
	 */
	GO_FORWARD = "gtk-go-forward",
	/**
	 * The “Up” item and icon.
	 *
	 * Deprecated: Use named icon &quot;go-up&quot;.
	 */
	GO_UP = "gtk-go-up",
	/**
	 * The “Harddisk” item and icon.
	 *
	 * Deprecated: Use named icon &quot;drive-harddisk&quot;.
	 */
	HARDDISK = "gtk-harddisk",
	/**
	 * The “Help” item and icon.
	 *
	 * Deprecated: Use named icon &quot;help-browser&quot;.
	 */
	HELP = "gtk-help",
	/**
	 * The “Home” item and icon.
	 *
	 * Deprecated: Use named icon &quot;go-home&quot;.
	 */
	HOME = "gtk-home",
	/**
	 * The “Indent” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;format-indent-more&quot;.
	 */
	INDENT = "gtk-indent",
	/**
	 * The “Index” item and icon.
	 */
	INDEX = "gtk-index",
	/**
	 * The “Info” item and icon.
	 *
	 * Deprecated: Use named icon &quot;dialog-information&quot;.
	 */
	INFO = "gtk-info",
	/**
	 * The “Italic” item and icon.
	 *
	 * Deprecated: Use named icon &quot;format-text-italic&quot;.
	 */
	ITALIC = "gtk-italic",
	/**
	 * The “Jump to” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;go-jump&quot;.
	 */
	JUMP_TO = "gtk-jump-to",
	/**
	 * The “Center” item and icon.
	 *
	 * Deprecated: Use named icon &quot;format-justify-center&quot;.
	 */
	JUSTIFY_CENTER = "gtk-justify-center",
	/**
	 * The “Fill” item and icon.
	 *
	 * Deprecated: Use named icon &quot;format-justify-fill&quot;.
	 */
	JUSTIFY_FILL = "gtk-justify-fill",
	/**
	 * The “Left” item and icon.
	 *
	 * Deprecated: Use named icon &quot;format-justify-left&quot;.
	 */
	JUSTIFY_LEFT = "gtk-justify-left",
	/**
	 * The “Right” item and icon.
	 *
	 * Deprecated: Use named icon &quot;format-justify-right&quot;.
	 */
	JUSTIFY_RIGHT = "gtk-justify-right",
	/**
	 * The “Leave Fullscreen” item and icon.
	 *
	 * Deprecated: Use named icon &quot;view-restore&quot;.
	 */
	LEAVE_FULLSCREEN = "gtk-leave-fullscreen",
	/**
	 * The “Media Forward” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;media-seek-forward&quot; or the label &quot;_Forward&quot;.
	 */
	MEDIA_FORWARD = "gtk-media-forward",
	/**
	 * The “Media Next” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;media-skip-forward&quot; or the label &quot;_Next&quot;.
	 */
	MEDIA_NEXT = "gtk-media-next",
	/**
	 * The “Media Pause” item and icon.
	 *
	 * Deprecated: Use named icon &quot;media-playback-pause&quot; or the label &quot;P_ause&quot;.
	 */
	MEDIA_PAUSE = "gtk-media-pause",
	/**
	 * The “Media Play” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;media-playback-start&quot; or the label &quot;_Play&quot;.
	 */
	MEDIA_PLAY = "gtk-media-play",
	/**
	 * The “Media Previous” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;media-skip-backward&quot; or the label &quot;Pre_vious&quot;.
	 */
	MEDIA_PREVIOUS = "gtk-media-previous",
	/**
	 * The “Media Record” item and icon.
	 *
	 * Deprecated: Use named icon &quot;media-record&quot; or the label &quot;_Record&quot;.
	 */
	MEDIA_RECORD = "gtk-media-record",
	/**
	 * The “Media Rewind” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;media-seek-backward&quot; or the label &quot;R_ewind&quot;.
	 */
	MEDIA_REWIND = "gtk-media-rewind",
	/**
	 * The “Media Stop” item and icon.
	 *
	 * Deprecated: Use named icon &quot;media-playback-stop&quot; or the label &quot;_Stop&quot;.
	 */
	MEDIA_STOP = "gtk-media-stop",
	/**
	 * The “Missing image” icon.
	 *
	 * Deprecated: Use named icon &quot;image-missing&quot;.
	 */
	MISSING_IMAGE = "gtk-missing-image",
	/**
	 * The “Network” item and icon.
	 *
	 * Deprecated: Use named icon &quot;network-workgroup&quot;.
	 */
	NETWORK = "gtk-network",
	/**
	 * The “New” item and icon.
	 *
	 * Deprecated: Use named icon &quot;document-new&quot; or the label &quot;_New&quot;.
	 */
	NEW = "gtk-new",
	/**
	 * The “No” item and icon.
	 */
	NO = "gtk-no",
	/**
	 * The “OK” item and icon.
	 *
	 * Deprecated: Do not use an icon. Use label &quot;_OK&quot;.
	 */
	OK = "gtk-ok",
	/**
	 * The “Open” item and icon.
	 *
	 * Deprecated: Use named icon &quot;document-open&quot; or the label &quot;_Open&quot;.
	 */
	OPEN = "gtk-open",
	/**
	 * The “Landscape Orientation” item and icon.
	 */
	ORIENTATION_LANDSCAPE = "gtk-orientation-landscape",
	/**
	 * The “Portrait Orientation” item and icon.
	 */
	ORIENTATION_PORTRAIT = "gtk-orientation-portrait",
	/**
	 * The “Reverse Landscape Orientation” item and icon.
	 */
	ORIENTATION_REVERSE_LANDSCAPE = "gtk-orientation-reverse-landscape",
	/**
	 * The “Reverse Portrait Orientation” item and icon.
	 */
	ORIENTATION_REVERSE_PORTRAIT = "gtk-orientation-reverse-portrait",
	/**
	 * The “Page Setup” item and icon.
	 *
	 * Deprecated: Use named icon &quot;document-page-setup&quot; or the label &quot;Page Set_up&quot;.
	 */
	PAGE_SETUP = "gtk-page-setup",
	/**
	 * The “Paste” item and icon.
	 *
	 * Deprecated: Use named icon &quot;edit-paste&quot; or the label &quot;_Paste&quot;.
	 */
	PASTE = "gtk-paste",
	/**
	 * The “Preferences” item and icon.
	 *
	 * Deprecated: Use named icon &quot;preferences-system&quot; or the label &quot;_Preferences&quot;.
	 */
	PREFERENCES = "gtk-preferences",
	/**
	 * The “Print” item and icon.
	 *
	 * Deprecated: Use named icon &quot;document-print&quot; or the label &quot;_Print&quot;.
	 */
	PRINT = "gtk-print",
	/**
	 * The “Print Error” icon.
	 *
	 * Deprecated: Use named icon &quot;printer-error&quot;.
	 */
	PRINT_ERROR = "gtk-print-error",
	/**
	 * The “Print Paused” icon.
	 */
	PRINT_PAUSED = "gtk-print-paused",
	/**
	 * The “Print Preview” item and icon.
	 *
	 * Deprecated: Use label &quot;Pre_view&quot;.
	 */
	PRINT_PREVIEW = "gtk-print-preview",
	/**
	 * The “Print Report” icon.
	 */
	PRINT_REPORT = "gtk-print-report",
	/**
	 * The “Print Warning” icon.
	 */
	PRINT_WARNING = "gtk-print-warning",
	/**
	 * The “Properties” item and icon.
	 *
	 * Deprecated: Use named icon &quot;document-properties&quot; or the label &quot;_Properties&quot;.
	 */
	PROPERTIES = "gtk-properties",
	/**
	 * The “Quit” item and icon.
	 *
	 * Deprecated: Use named icon &quot;application-exit&quot; or the label &quot;_Quit&quot;.
	 */
	QUIT = "gtk-quit",
	/**
	 * The “Redo” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;edit-redo&quot; or the label &quot;_Redo&quot;.
	 */
	REDO = "gtk-redo",
	/**
	 * The “Refresh” item and icon.
	 *
	 * Deprecated: Use named icon &quot;view-refresh&quot; or the label &quot;_Refresh&quot;.
	 */
	REFRESH = "gtk-refresh",
	/**
	 * The “Remove” item and icon.
	 *
	 * Deprecated: Use named icon &quot;list-remove&quot; or the label &quot;_Remove&quot;.
	 */
	REMOVE = "gtk-remove",
	/**
	 * The “Revert” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;document-revert&quot; or the label &quot;_Revert&quot;.
	 */
	REVERT_TO_SAVED = "gtk-revert-to-saved",
	/**
	 * The “Save” item and icon.
	 *
	 * Deprecated: Use named icon &quot;document-save&quot; or the label &quot;_Save&quot;.
	 */
	SAVE = "gtk-save",
	/**
	 * The “Save As” item and icon.
	 *
	 * Deprecated: Use named icon &quot;document-save-as&quot; or the label &quot;Save _As&quot;.
	 */
	SAVE_AS = "gtk-save-as",
	/**
	 * The “Select All” item and icon.
	 *
	 * Deprecated: Use named icon &quot;edit-select-all&quot; or the label &quot;Select _All&quot;.
	 */
	SELECT_ALL = "gtk-select-all",
	/**
	 * The “Color” item and icon.
	 */
	SELECT_COLOR = "gtk-select-color",
	/**
	 * The “Font” item and icon.
	 */
	SELECT_FONT = "gtk-select-font",
	/**
	 * The “Ascending” item and icon.
	 *
	 * Deprecated: Use named icon &quot;view-sort-ascending&quot;.
	 */
	SORT_ASCENDING = "gtk-sort-ascending",
	/**
	 * The “Descending” item and icon.
	 *
	 * Deprecated: Use named icon &quot;view-sort-descending&quot;.
	 */
	SORT_DESCENDING = "gtk-sort-descending",
	/**
	 * The “Spell Check” item and icon.
	 *
	 * Deprecated: Use named icon &quot;tools-check-spelling&quot;.
	 */
	SPELL_CHECK = "gtk-spell-check",
	/**
	 * The “Stop” item and icon.
	 *
	 * Deprecated: Use named icon &quot;process-stop&quot; or the label &quot;_Stop&quot;.
	 */
	STOP = "gtk-stop",
	/**
	 * The “Strikethrough” item and icon.
	 *
	 * Deprecated: Use named icon &quot;format-text-strikethrough&quot; or the label &quot;_Strikethrough&quot;.
	 */
	STRIKETHROUGH = "gtk-strikethrough",
	/**
	 * The “Undelete” item and icon. The icon has an RTL variant.
	 */
	UNDELETE = "gtk-undelete",
	/**
	 * The “Underline” item and icon.
	 *
	 * Deprecated: Use named icon &quot;format-text-underline&quot; or the label &quot;_Underline&quot;.
	 */
	UNDERLINE = "gtk-underline",
	/**
	 * The “Undo” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;edit-undo&quot; or the label &quot;_Undo&quot;.
	 */
	UNDO = "gtk-undo",
	/**
	 * The “Unindent” item and icon. The icon has an RTL variant.
	 *
	 * Deprecated: Use named icon &quot;format-indent-less&quot;.
	 */
	UNINDENT = "gtk-unindent",
	/**
	 * The “Yes” item and icon.
	 */
	YES = "gtk-yes",
	/**
	 * The “Zoom 100%” item and icon.
	 *
	 * Deprecated: Use named icon &quot;zoom-original&quot; or the label &quot;_Normal Size&quot;.
	 */
	ZOOM_100 = "gtk-zoom-100",
	/**
	 * The “Zoom to Fit” item and icon.
	 *
	 * Deprecated: Use named icon &quot;zoom-fit-best&quot; or the label &quot;Best _Fit&quot;.
	 */
	ZOOM_FIT = "gtk-zoom-fit",
	/**
	 * The “Zoom In” item and icon.
	 *
	 * Deprecated: Use named icon &quot;zoom-in&quot; or the label &quot;Zoom _In&quot;.
	 */
	ZOOM_IN = "gtk-zoom-in",
	/**
	 * The “Zoom Out” item and icon.
	 *
	 * Deprecated: Use named icon &quot;zoom-out&quot; or the label &quot;Zoom _Out&quot;.
	 */
	ZOOM_OUT = "gtk-zoom-out",
}
