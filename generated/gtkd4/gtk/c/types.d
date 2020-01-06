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


module gtk.c.types;

public import atk.c.types;
public import cairo.c.types;
public import gdk.c.types;
public import gdkpixbuf.c.types;
public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import graphene.c.types;
public import gsk.c.types;
public import pango.c.types;

alias GtkAllocation* Allocation;

/**
 * A #GtkAllocation-struct of a widget represents region
 * which has been allocated to the widget by its parent. It is a subregion
 * of its parents allocation. See
 * [GtkWidget’s geometry management section][geometry-management] for
 * more information.
 */
public alias GdkRectangle GtkAllocation;

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
	 * align the widget according to the baseline
	 */
	BASELINE = 4,
}
alias GtkAlign Align;

/**
 * Types of user actions that may be blocked by gtk_application_inhibit().
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
	 * No arrow.
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
 * Whenever a container has some form of natural row it may align
 * children in that row along a common typographical baseline. If
 * the amount of verical space in the row is taller than the total
 * requested height of the baseline-aligned children then it can use a
 * #GtkBaselinePosition to select where to put the baseline inside the
 * extra availible space.
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
 * The list of flags that can be passed to gtk_builder_scope_create_closure().
 * New values may be added in the future for new features, so external
 * implementations of GtkBuilderScopeInterface should test the flags for unknown
 * values and raise a %@GTK_BUILDER_ERROR_INVALID_ATTRIBUTE error when they
 * encounter one.
 */
public enum GtkBuilderClosureFlags
{
	/**
	 * The closure should be created swapped. See
	 * g_cclosure_new_swap() for details.
	 */
	SWAPPED = 1,
}
alias GtkBuilderClosureFlags BuilderClosureFlags;

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
	 * An object id is unknown.
	 */
	INVALID_ID = 13,
	/**
	 * A function could not be found. This often happens
	 * when symbols are set to be kept private. Compiling code with -rdynamic or using the
	 * `gmodule-export-2.0` pkgconfig module can fix this problem.
	 */
	INVALID_FUNCTION = 14,
}
alias GtkBuilderError BuilderError;

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
	 * The cell is in a row that can be expanded
	 */
	EXPANDABLE = 32,
	/**
	 * The cell is in a row that is expanded
	 */
	EXPANDED = 64,
}
alias GtkCellRendererState CellRendererState;

/**
 * The widget attributes that can be used when creating a #GtkConstraint.
 */
public enum GtkConstraintAttribute
{
	/**
	 * No attribute, used for constant
	 * relations
	 */
	NONE = 0,
	/**
	 * The left edge of a widget, regardless of
	 * text direction
	 */
	LEFT = 1,
	/**
	 * The right edge of a widget, regardless
	 * of text direction
	 */
	RIGHT = 2,
	/**
	 * The top edge of a widget
	 */
	TOP = 3,
	/**
	 * The bottom edge of a widget
	 */
	BOTTOM = 4,
	/**
	 * The leading edge of a widget, depending
	 * on text direction; equivalent to %GTK_CONSTRAINT_ATTRIBUTE_LEFT for LTR
	 * languages, and %GTK_CONSTRAINT_ATTRIBUTE_RIGHT for RTL ones
	 */
	START = 5,
	/**
	 * The trailing edge of a widget, depending
	 * on text direction; equivalent to %GTK_CONSTRAINT_ATTRIBUTE_RIGHT for LTR
	 * languages, and %GTK_CONSTRAINT_ATTRIBUTE_LEFT for RTL ones
	 */
	END = 6,
	/**
	 * The width of a widget
	 */
	WIDTH = 7,
	/**
	 * The height of a widget
	 */
	HEIGHT = 8,
	/**
	 * The center of a widget, on the
	 * horizontal axis
	 */
	CENTER_X = 9,
	/**
	 * The center of a widget, on the
	 * vertical axis
	 */
	CENTER_Y = 10,
	/**
	 * The baseline of a widget
	 */
	BASELINE = 11,
}
alias GtkConstraintAttribute ConstraintAttribute;

/**
 * The relation between two terms of a constraint.
 */
public enum GtkConstraintRelation
{
	/**
	 * Less than, or equal
	 */
	LE = -1,
	/**
	 * Equal
	 */
	EQ = 0,
	/**
	 * Greater than, or equal
	 */
	GE = 1,
}
alias GtkConstraintRelation ConstraintRelation;

/**
 * The strength of a constraint, expressed as a symbolic constant.
 *
 * The strength of a #GtkConstraint can be expressed with any positive
 * integer; the values of this enumeration can be used for readability.
 */
public enum GtkConstraintStrength
{
	/**
	 * The constraint is required towards solving the layout
	 */
	REQUIRED = 1001001000,
	/**
	 * A strong constraint
	 */
	STRONG = 1000000000,
	/**
	 * A medium constraint
	 */
	MEDIUM = 1000,
	/**
	 * A weak constraint
	 */
	WEAK = 1,
}
alias GtkConstraintStrength ConstraintStrength;

/**
 * Domain for VFL parsing errors.
 */
public enum GtkConstraintVflParserError
{
	/**
	 * Invalid or unknown symbol
	 */
	SYMBOL = 0,
	/**
	 * Invalid or unknown attribute
	 */
	ATTRIBUTE = 1,
	/**
	 * Invalid or unknown view
	 */
	VIEW = 2,
	/**
	 * Invalid or unknown metric
	 */
	METRIC = 3,
	/**
	 * Invalid or unknown priority
	 */
	PRIORITY = 4,
	/**
	 * Invalid or unknown relation
	 */
	RELATION = 5,
}
alias GtkConstraintVflParserError ConstraintVflParserError;

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
 * Errors that can occur while parsing CSS.
 *
 * These errors are unexpected and will cause parts of the given CSS
 * to be ignored.
 */
public enum GtkCssParserError
{
	/**
	 * Unknown failure.
	 */
	FAILED = 0,
	/**
	 * The given text does not form valid
	 * syntax
	 */
	SYNTAX = 1,
	/**
	 * Failed to import a resource
	 */
	IMPORT = 2,
	/**
	 * The given name has not been defined
	 */
	NAME = 3,
	/**
	 * The given value is not
	 * correct
	 */
	UNKNOWN_VALUE = 4,
}
alias GtkCssParserError CssParserError;

/**
 * Warnings that can occur while parsing CSS.
 *
 * Unlike #GtkCssParserErrors, warnings do not cause the parser to
 * skip any input, but they indicate issues that should be fixed.
 */
public enum GtkCssParserWarning
{
	/**
	 * The given construct is
	 * deprecated and will be removed in a future version
	 */
	DEPRECATED = 0,
	/**
	 * A syntax construct was used
	 * that should be avoided
	 */
	SYNTAX = 1,
	/**
	 * A feature is not
	 * implemented
	 */
	UNIMPLEMENTED = 2,
}
alias GtkCssParserWarning CssParserWarning;

public enum GtkDebugFlag
{
	TEXT = 1,
	TREE = 2,
	KEYBINDINGS = 4,
	MODULES = 8,
	GEOMETRY = 16,
	ICONTHEME = 32,
	PRINTING = 64,
	BUILDER = 128,
	SIZE_REQUEST = 256,
	NO_CSS_CACHE = 512,
	BASELINES = 1024,
	INTERACTIVE = 2048,
	TOUCHSCREEN = 4096,
	ACTIONS = 8192,
	RESIZE = 16384,
	LAYOUT = 32768,
	SNAPSHOT = 65536,
	CONSTRAINTS = 131072,
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
	 * widget will check if the drag matches this widget’s list of possible formats
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
	 * will check if the drag matches this widget’s list of possible formats and
	 * actions. If so, GTK+ will call gtk_drag_get_data() on behalf of the widget.
	 * Whether or not the drop is successful, GTK+ will call gdk_drag_finish(). If
	 * the action was a move, then if the drag was successful, then %TRUE will be
	 * passed for the @delete parameter to gdk_drag_finish().
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
	 * bar instead of action area
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

public enum GtkEditableProperties
{
	PROP_TEXT = 0,
	PROP_CURSOR_POSITION = 1,
	PROP_SELECTION_BOUND = 2,
	PROP_EDITABLE = 3,
	PROP_WIDTH_CHARS = 4,
	PROP_MAX_WIDTH_CHARS = 5,
	PROP_XALIGN = 6,
	PROP_ENABLE_UNDO = 7,
	NUM_PROPERTIES = 8,
}
alias GtkEditableProperties EditableProperties;

/**
 * Specifies the side of the entry at which an icon is placed.
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
 * Describes the behavior of a #GtkEventControllerScroll.
 */
public enum GtkEventControllerScrollFlags
{
	/**
	 * Don't emit scroll.
	 */
	NONE = 0,
	/**
	 * Emit scroll with vertical deltas.
	 */
	VERTICAL = 1,
	/**
	 * Emit scroll with horizontal deltas.
	 */
	HORIZONTAL = 2,
	/**
	 * Only emit deltas that are multiples of 1.
	 */
	DISCRETE = 4,
	/**
	 * Emit #GtkEventControllerScroll::decelerate
	 * after continuous scroll finishes.
	 */
	KINETIC = 8,
	/**
	 * Emit scroll on both axes.
	 */
	BOTH_AXES = 3,
}
alias GtkEventControllerScrollFlags EventControllerScrollFlags;

/**
 * Describes the state of a #GdkEventSequence in a #GtkGesture.
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
 * This enumeration specifies the granularity of font selection
 * that is desired in a font chooser.
 *
 * This enumeration may be extended in the future; applications should
 * ignore unknown values.
 */
public enum GtkFontChooserLevel
{
	/**
	 * Allow selecting a font family
	 */
	FAMILY = 0,
	/**
	 * Allow selecting a specific font face
	 */
	STYLE = 1,
	/**
	 * Allow selecting a specific font size
	 */
	SIZE = 2,
	/**
	 * Allow changing OpenType font variation axes
	 */
	VARIATIONS = 4,
	/**
	 * Allow selecting specific OpenType font features
	 */
	FEATURES = 8,
}
alias GtkFontChooserLevel FontChooserLevel;

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
	 * fallback, see gtk_icon_theme_choose_icon()
	 */
	GENERIC_FALLBACK = 8,
	/**
	 * Always get the icon scaled to the
	 * requested size
	 */
	FORCE_SIZE = 16,
	/**
	 * Try to always load regular icons, even
	 * when symbolic icon names are given
	 */
	FORCE_REGULAR = 32,
	/**
	 * Try to always load symbolic icons, even
	 * when regular icon names are given
	 */
	FORCE_SYMBOLIC = 64,
	/**
	 * Try to load a variant of the icon for left-to-right
	 * text direction
	 */
	DIR_LTR = 128,
	/**
	 * Try to load a variant of the icon for right-to-left
	 * text direction
	 */
	DIR_RTL = 256,
}
alias GtkIconLookupFlags IconLookupFlags;

/**
 * Built-in icon sizes.
 *
 * Icon sizes default to being inherited. Where they cannot be
 * inherited, text size is the default.
 *
 * All widgets which use GtkIconSize set the normal-icons or large-icons
 * style classes correspondingly, and let themes determine the actual size
 * to be used with the -gtk-icon-size CSS property.
 */
public enum GtkIconSize
{
	/**
	 * Keep the size of the parent element
	 */
	INHERIT = 0,
	/**
	 * Size similar to text size
	 */
	NORMAL = 1,
	/**
	 * Large size, for example in an icon view
	 */
	LARGE = 2,
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
 * gtk_image_get_storage_type() returns #GTK_IMAGE_PAINTABLE, then you can
 * call gtk_image_get_paintable().  For empty images, you can request any
 * storage type (call any of the "get" functions), but they will all
 * return %NULL values.
 */
public enum GtkImageType
{
	/**
	 * there is no image displayed by the widget
	 */
	EMPTY = 0,
	/**
	 * the widget contains a named icon.
	 * This image type was added in GTK+ 2.6
	 */
	ICON_NAME = 1,
	/**
	 * the widget contains a #GIcon.
	 * This image type was added in GTK+ 2.14
	 */
	GICON = 2,
	/**
	 * the widget contains a #GdkPaintable.
	 * This image type was added in GTK+ 3.96
	 */
	PAINTABLE = 3,
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
	 * The text is vertical
	 */
	VERTICAL_WRITING = 256,
	/**
	 * Suggest offering Emoji support
	 */
	EMOJI = 512,
	/**
	 * Suggest not offering Emoji support
	 */
	NO_EMOJI = 1024,
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
	/**
	 * Allow any character, in addition to control codes
	 */
	TERMINAL = 10,
}
alias GtkInputPurpose InputPurpose;

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
	 * The GNU General Public License, version 2.0 only
	 */
	GPL_2_0_ONLY = 9,
	/**
	 * The GNU General Public License, version 3.0 only
	 */
	GPL_3_0_ONLY = 10,
	/**
	 * The GNU Lesser General Public License, version 2.1 only
	 */
	LGPL_2_1_ONLY = 11,
	/**
	 * The GNU Lesser General Public License, version 3.0 only
	 */
	LGPL_3_0_ONLY = 12,
	/**
	 * The GNU Affero General Public License, version 3.0 or later
	 */
	AGPL_3_0 = 13,
	/**
	 * The GNU Affero General Public License, version 3.0 only
	 */
	AGPL_3_0_ONLY = 14,
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
 * Defines how content overflowing a given area should be handled, such as
 * with gtk_widget_set_overflow(). This property is modeled after the CSS overflow
 * property, but implements it only partially.
 */
public enum GtkOverflow
{
	/**
	 * No change is applied. Content is drawn at the specified
	 * position.
	 */
	VISIBLE = 0,
	/**
	 * Content is clipped to the bounds of the area. Content
	 * outside the area is not drawn and cannot be interacted with.
	 */
	HIDDEN = 1,
}
alias GtkOverflow Overflow;

/**
 * Represents the packing location #GtkBox children
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
 * The type of a pad action.
 */
public enum GtkPadActionType
{
	/**
	 * Action is triggered by a pad button
	 */
	BUTTON = 0,
	/**
	 * Action is triggered by a pad ring
	 */
	RING = 1,
	/**
	 * Action is triggered by a pad strip
	 */
	STRIP = 2,
}
alias GtkPadActionType PadActionType;

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
 * Flags that influence the behavior of gtk_widget_pick()
 */
public enum GtkPickFlags
{
	/**
	 * The default behavior, include widgets that are receiving events
	 */
	DEFAULT = 0,
	/**
	 * Include widgets that are insensitive
	 */
	INSENSITIVE = 1,
	/**
	 * Include widgets that are marked as non-targetable. See #GtkWidget::can-target
	 */
	NON_TARGETABLE = 2,
}
alias GtkPickFlags PickFlags;

public enum GtkPlacesOpenFlags
{
	NORMAL = 1,
	NEW_TAB = 2,
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
	 * scrolled windows share a scrollbar.
	 */
	EXTERNAL = 3,
}
alias GtkPolicyType PolicyType;

/**
 * Describes constraints to positioning of popovers. More values
 * may be added to this enumeration in the future.
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
 * Flags that affect how popover menus are created from
 * a menu model.
 */
public enum GtkPopoverMenuFlags
{
	/**
	 * Create submenus as nested
	 * popovers. Without this flag, submenus are created as
	 * sliding pages that replace the main menu.
	 */
	NESTED = 1,
}
alias GtkPopoverMenuFlags PopoverMenuFlags;

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
 * Describes limits of a #GtkEventController for handling events
 * targeting other widgets.
 */
public enum GtkPropagationLimit
{
	/**
	 * Events are handled regardless of what their
	 * target is.
	 */
	NONE = 0,
	/**
	 * Events are only handled if their target
	 * is in the same #GtkNative as the event controllers widget. Note
	 * that some event types have two targets (origin and destination).
	 */
	SAME_NATIVE = 1,
}
alias GtkPropagationLimit PropagationLimit;

/**
 * Describes the stage at which events are fed into a #GtkEventController.
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
 * Error codes for #GtkRecentManager operations
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
 * Indicated the relief to be drawn around a #GtkButton.
 */
public enum GtkReliefStyle
{
	/**
	 * Draw a normal relief.
	 */
	NORMAL = 0,
	/**
	 * No relief.
	 */
	NONE = 1,
}
alias GtkReliefStyle ReliefStyle;

/**
 * Predefined values for use as response ids in gtk_dialog_add_button().
 * All predefined values are negative; GTK+ leaves values of 0 or greater for
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
	/**
	 * Floop in from the left
	 */
	SWING_RIGHT = 6,
	/**
	 * Floop in from the right
	 */
	SWING_LEFT = 7,
	/**
	 * Floop in from the bottom
	 */
	SWING_UP = 8,
	/**
	 * Floop in from the top
	 */
	SWING_DOWN = 9,
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
 * various shadow types: Either there is no visible shadow (@GTK_SHADOW_NONE),
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
 */
public enum GtkShortcutType
{
	/**
	 * The shortcut is a keyboard accelerator. The #GtkShortcutsShortcut:accelerator
	 * property will be used.
	 */
	ACCELERATOR = 0,
	/**
	 * The shortcut is a pinch gesture. GTK+ provides an icon and subtitle.
	 */
	GESTURE_PINCH = 1,
	/**
	 * The shortcut is a stretch gesture. GTK+ provides an icon and subtitle.
	 */
	GESTURE_STRETCH = 2,
	/**
	 * The shortcut is a clockwise rotation gesture. GTK+ provides an icon and subtitle.
	 */
	GESTURE_ROTATE_CLOCKWISE = 3,
	/**
	 * The shortcut is a counterclockwise rotation gesture. GTK+ provides an icon and subtitle.
	 */
	GESTURE_ROTATE_COUNTERCLOCKWISE = 4,
	/**
	 * The shortcut is a two-finger swipe gesture. GTK+ provides an icon and subtitle.
	 */
	GESTURE_TWO_FINGER_SWIPE_LEFT = 5,
	/**
	 * The shortcut is a two-finger swipe gesture. GTK+ provides an icon and subtitle.
	 */
	GESTURE_TWO_FINGER_SWIPE_RIGHT = 6,
	/**
	 * The shortcut is a gesture. The #GtkShortcutsShortcut:icon property will be
	 * used.
	 */
	GESTURE = 7,
	/**
	 * The shortcut is a swipe gesture. GTK+ provides an icon and subtitle.
	 */
	GESTURE_SWIPE_LEFT = 8,
	/**
	 * The shortcut is a swipe gesture. GTK+ provides an icon and subtitle.
	 */
	GESTURE_SWIPE_RIGHT = 9,
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
	 * Cover the old page by sliding up
	 */
	OVER_UP = 8,
	/**
	 * Cover the old page by sliding down
	 */
	OVER_DOWN = 9,
	/**
	 * Cover the old page by sliding to the left
	 */
	OVER_LEFT = 10,
	/**
	 * Cover the old page by sliding to the right
	 */
	OVER_RIGHT = 11,
	/**
	 * Uncover the new page by sliding up
	 */
	UNDER_UP = 12,
	/**
	 * Uncover the new page by sliding down
	 */
	UNDER_DOWN = 13,
	/**
	 * Uncover the new page by sliding to the left
	 */
	UNDER_LEFT = 14,
	/**
	 * Uncover the new page by sliding to the right
	 */
	UNDER_RIGHT = 15,
	/**
	 * Cover the old page sliding up or uncover the new page sliding down, according to order
	 */
	OVER_UP_DOWN = 16,
	/**
	 * Cover the old page sliding down or uncover the new page sliding up, according to order
	 */
	OVER_DOWN_UP = 17,
	/**
	 * Cover the old page sliding left or uncover the new page sliding right, according to order
	 */
	OVER_LEFT_RIGHT = 18,
	/**
	 * Cover the old page sliding right or uncover the new page sliding left, according to order
	 */
	OVER_RIGHT_LEFT = 19,
	/**
	 * Pretend the pages are sides of a cube and rotate that cube to the left
	 */
	ROTATE_LEFT = 20,
	/**
	 * Pretend the pages are sides of a cube and rotate that cube to the right
	 */
	ROTATE_RIGHT = 21,
	/**
	 * Pretend the pages are sides of a cube and rotate that cube to the left or right according to the children order
	 */
	ROTATE_LEFT_RIGHT = 22,
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
	 * State during normal operation
	 */
	NORMAL = 0,
	/**
	 * Widget is active
	 */
	ACTIVE = 1,
	/**
	 * Widget has a mouse pointer over it
	 */
	PRELIGHT = 2,
	/**
	 * Widget is selected
	 */
	SELECTED = 4,
	/**
	 * Widget is insensitive
	 */
	INSENSITIVE = 8,
	/**
	 * Widget is inconsistent
	 */
	INCONSISTENT = 16,
	/**
	 * Widget has the keyboard focus
	 */
	FOCUSED = 32,
	/**
	 * Widget is in a background toplevel window
	 */
	BACKDROP = 64,
	/**
	 * Widget is in left-to-right text direction
	 */
	DIR_LTR = 128,
	/**
	 * Widget is in right-to-left text direction
	 */
	DIR_RTL = 256,
	/**
	 * Widget is a link
	 */
	LINK = 512,
	/**
	 * The location the widget points to has already been visited
	 */
	VISITED = 1024,
	/**
	 * Widget is checked
	 */
	CHECKED = 2048,
	/**
	 * Widget is highlighted as a drop target for DND
	 */
	DROP_ACTIVE = 4096,
	/**
	 * Widget has the visible focus
	 */
	FOCUS_VISIBLE = 8192,
}
alias GtkStateFlags StateFlags;

/**
 * Flags that modify the behavior of gtk_style_context_to_string().
 * New values may be added to this enumeration.
 */
public enum GtkStyleContextPrintFlags
{
	/**
	 * Default value.
	 */
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
 * embedded textures or child widgets.
 */
public enum GtkTextSearchFlags
{
	/**
	 * Search only visible data. A search match may
	 * have invisible text interspersed.
	 */
	VISIBLE_ONLY = 1,
	/**
	 * Search only text. A match may have textures or
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
 * drawing with the ::snapshot_layer vfunc.
 */
public enum GtkTextViewLayer
{
	/**
	 * The layer rendered below the text (but above the background).
	 */
	BELOW_TEXT = 0,
	/**
	 * The layer rendered above the text.
	 */
	ABOVE_TEXT = 1,
}
alias GtkTextViewLayer TextViewLayer;

/**
 * Used to reference the parts of #GtkTextView.
 */
public enum GtkTextWindowType
{
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
 * A #GtkWindow can be one of these types. Most things you’d consider a
 * “window” should have type #GTK_WINDOW_TOPLEVEL; windows with this type
 * are managed by the window manager and have a frame by default (call
 * gtk_window_set_decorated() to toggle the frame).  Windows with type
 * #GTK_WINDOW_POPUP are ignored by the window manager; window manager
 * keybindings won’t work on them, the window manager won’t decorate the
 * window with a frame, many GTK+ features that rely on the window
 * manager will not work (e.g. maximization/minimization).
 * #GTK_WINDOW_POPUP is used to implement
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

struct GtkAboutDialog;

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

struct GtkAccelLabel;

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
	extern(C) void function(GtkAccessible* accessible) widgetSet;
	/** */
	extern(C) void function(GtkAccessible* accessible) widgetUnset;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkAccessiblePrivate;

struct GtkActionBar;

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
	 * Returns: the action name, or %NULL if none is set
	 */
	extern(C) const(char)* function(GtkActionable* actionable) getActionName;
	/** */
	extern(C) void function(GtkActionable* actionable, const(char)* actionName) setActionName;
	/**
	 *
	 * Params:
	 *     actionable = a #GtkActionable widget
	 * Returns: the current target value
	 */
	extern(C) GVariant* function(GtkActionable* actionable) getActionTargetValue;
	/** */
	extern(C) void function(GtkActionable* actionable, GVariant* targetValue) setActionTargetValue;
}

struct GtkAdjustment
{
	GObject parentInstance;
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

struct GtkAppChooser;

struct GtkAppChooserButton;

struct GtkAppChooserDialog;

struct GtkAppChooserWidget;

struct GtkApplication
{
	GApplication parentInstance;
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
	void*[8] padding;
}

struct GtkApplicationWindow
{
	GtkWindow parentInstance;
}

struct GtkApplicationWindowClass
{
	/**
	 * The parent class.
	 */
	GtkWindowClass parentClass;
	void*[8] padding;
}

struct GtkAspectFrame;

struct GtkAssistant;

struct GtkAssistantPage;

struct GtkBin
{
	GtkContainer parentInstance;
}

struct GtkBinClass
{
	/**
	 * The parent class.
	 */
	GtkContainerClass parentClass;
	void*[8] padding;
}

struct GtkBinLayout;

struct GtkBinLayoutClass
{
	GtkLayoutManagerClass parentClass;
}

struct GtkBindingSet;

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
	GtkContainer parentInstance;
}

struct GtkBoxClass
{
	/**
	 * The parent class.
	 */
	GtkContainerClass parentClass;
	void*[8] padding;
}

struct GtkBoxLayout;

struct GtkBoxLayoutClass
{
	GtkLayoutManagerClass parentClass;
}

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
	 * Returns: the name set with gtk_buildable_set_name()
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
	 * Returns: the constructed child
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
	 * Returns: %TRUE if an object has a custom implementation, %FALSE
	 *     if it doesn't.
	 */
	extern(C) int function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, const(char)* tagname, GtkBuildableParser* parser, void** data) customTagStart;
	/** */
	extern(C) void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, const(char)* tagname, void* data) customTagEnd;
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
	 * Returns: the internal child of the buildable object
	 */
	extern(C) GObject* function(GtkBuildable* buildable, GtkBuilder* builder, const(char)* childname) getInternalChild;
}

struct GtkBuildableParseContext;

struct GtkBuildableParser
{
	/** */
	extern(C) void function(GtkBuildableParseContext* context, const(char)* elementName, char** attributeNames, char** attributeValues, void* userData, GError** err) startElement;
	/** */
	extern(C) void function(GtkBuildableParseContext* context, const(char)* elementName, void* userData, GError** err) endElement;
	/** */
	extern(C) void function(GtkBuildableParseContext* context, const(char)* text, size_t textLen, void* userData, GError** err) text;
	/** */
	extern(C) void function(GtkBuildableParseContext* context, GError* error, void* userData) error;
	void*[4] padding;
}

struct GtkBuilder;

struct GtkBuilderCScope
{
	GObject parentInstance;
}

struct GtkBuilderCScopeClass
{
	GObjectClass parentClass;
}

struct GtkBuilderClass;

struct GtkBuilderScope;

/**
 * The virtual function table to implement for #GtkBuilderScope implementations.
 * Default implementations for each function do exist, but they usually just fail,
 * so it is suggested that implementations implement all of them.
 */
struct GtkBuilderScopeInterface
{
	GTypeInterface gIface;
	/** */
	extern(C) GType function(GtkBuilderScope* self, GtkBuilder* builder, const(char)* typeName) getTypeFromName;
	/** */
	extern(C) GType function(GtkBuilderScope* self, GtkBuilder* builder, const(char)* functionName) getTypeFromFunction;
	/** */
	extern(C) GClosure* function(GtkBuilderScope* self, GtkBuilder* builder, const(char)* functionName, GtkBuilderClosureFlags flags, GObject* object, GError** err) createClosure;
}

struct GtkButton
{
	GtkBin parentInstance;
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

struct GtkButtonClass
{
	/**
	 * The parent class.
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function(GtkButton* button) clicked;
	/** */
	extern(C) void function(GtkButton* button) activate;
	void*[8] padding;
}

struct GtkButtonPrivate;

struct GtkCalendar;

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
	/** */
	extern(C) void function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell, int* row, int* column) getCellPosition;
	/** */
	extern(C) GPtrArray* function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell) getColumnHeaderCells;
	/** */
	extern(C) GPtrArray* function(GtkCellAccessibleParent* parent, GtkCellAccessible* cell) getRowHeaderCells;
}

struct GtkCellAccessiblePrivate;

struct GtkCellArea
{
	GObject parentInstance;
}

struct GtkCellAreaBox;

struct GtkCellAreaClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellRenderer* renderer) add;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellRenderer* renderer) remove;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellCallback callback, void* callbackData) foreach_;
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
	 * Returns: %TRUE if the event was handled by @area.
	 */
	extern(C) int function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkEvent* event, GdkRectangle* cellArea, GtkCellRendererState flags) event;
	/** */
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GtkSnapshot* snapshot, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags, int paintFocus) snapshot;
	/** */
	extern(C) void function(GtkCellArea* area, GtkTreeModel* treeModel, GtkTreeIter* iter, int isExpander, int isExpanded) applyAttributes;
	/**
	 *
	 * Params:
	 *     area = a #GtkCellArea
	 * Returns: a newly created #GtkCellAreaContext which can be used with @area.
	 */
	extern(C) GtkCellAreaContext* function(GtkCellArea* area) createContext;
	/**
	 *
	 * Params:
	 *     area = a #GtkCellArea
	 *     context = the #GtkCellAreaContext to copy
	 * Returns: a newly created #GtkCellAreaContext copy of @context.
	 */
	extern(C) GtkCellAreaContext* function(GtkCellArea* area, GtkCellAreaContext* context) copyContext;
	/**
	 *
	 * Params:
	 *     area = a #GtkCellArea
	 * Returns: The #GtkSizeRequestMode preferred by @area.
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
	 * Returns: %TRUE if focus remains inside @area as a result of this call.
	 */
	extern(C) int function(GtkCellArea* area, GtkDirectionType direction) focus;
	/**
	 *
	 * Params:
	 *     area = a #GtkCellArea
	 * Returns: whether @area can do anything when activated.
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
	 * Returns: Whether @area was successfully activated.
	 */
	extern(C) int function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, GtkCellRendererState flags, int editOnly) activate;
	void*[8] padding;
}

struct GtkCellAreaContext
{
	GObject parentInstance;
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
	void*[8] padding;
}

struct GtkCellAreaContextPrivate;

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
	 * Returns: a list of cell renderers. The list, but not the renderers has
	 *     been newly allocated and should be freed with g_list_free()
	 *     when no longer needed.
	 */
	extern(C) GList* function(GtkCellLayout* cellLayout) getCells;
	/**
	 *
	 * Params:
	 *     cellLayout = a #GtkCellLayout
	 * Returns: the cell area used by @cell_layout,
	 *     or %NULL in case no cell area is used.
	 */
	extern(C) GtkCellArea* function(GtkCellLayout* cellLayout) getArea;
}

struct GtkCellRenderer
{
	GObject parentInstance;
	GtkCellRendererPrivate* priv;
}

struct GtkCellRendererAccel;

struct GtkCellRendererClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     cell = a #GtkCellRenderer    instance
	 * Returns: The #GtkSizeRequestMode preferred by this renderer.
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
	extern(C) void function(GtkCellRenderer* cell, GtkSnapshot* snapshot, GtkWidget* widget, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) snapshot;
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
	 * Returns: %TRUE if the event was consumed/handled
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
	 * Returns: A new #GtkCellEditable for editing this
	 *     @cell, or %NULL if editing is not possible
	 */
	extern(C) GtkCellEditable* function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, const(char)* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) startEditing;
	/** */
	extern(C) void function(GtkCellRenderer* cell) editingCanceled;
	/** */
	extern(C) void function(GtkCellRenderer* cell, GtkCellEditable* editable, const(char)* path) editingStarted;
	GtkCellRendererClassPrivate* priv;
	void*[8] padding;
}

struct GtkCellRendererClassPrivate;

struct GtkCellRendererCombo;

struct GtkCellRendererPixbuf;

struct GtkCellRendererPrivate;

struct GtkCellRendererProgress;

struct GtkCellRendererSpin;

struct GtkCellRendererSpinner;

struct GtkCellRendererText
{
	GtkCellRenderer parent;
}

struct GtkCellRendererTextClass
{
	GtkCellRendererClass parentClass;
	/** */
	extern(C) void function(GtkCellRendererText* cellRendererText, const(char)* path, const(char)* newText) edited;
	void*[8] padding;
}

struct GtkCellRendererToggle;

struct GtkCellView;

struct GtkCenterBox;

struct GtkCenterBoxClass;

struct GtkCenterLayout;

struct GtkCenterLayoutClass
{
	GtkLayoutManagerClass parentClass;
}

struct GtkCheckButton
{
	GtkToggleButton toggleButton;
}

struct GtkCheckButtonClass
{
	GtkToggleButtonClass parentClass;
	void*[8] padding;
}

struct GtkClipboard;

struct GtkColorButton;

struct GtkColorChooser;

struct GtkColorChooserDialog;

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

struct GtkColorChooserWidget;

struct GtkComboBox
{
	GtkBin parentInstance;
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
	void*[8] padding;
}

struct GtkComboBoxText;

struct GtkConstraint;

struct GtkConstraintClass
{
	GObjectClass parentClass;
}

struct GtkConstraintGuide;

struct GtkConstraintGuideClass
{
	GObjectClass parentClass;
}

struct GtkConstraintLayout;

struct GtkConstraintLayoutChild;

struct GtkConstraintLayoutChildClass
{
	GtkLayoutChildClass parentClass;
}

struct GtkConstraintLayoutClass
{
	GtkLayoutManagerClass parentClass;
}

struct GtkConstraintTarget;

struct GtkConstraintTargetInterface;

struct GtkContainer
{
	GtkWidget widget;
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

/**
 * Base class for containers.
 */
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
	extern(C) void function(GtkContainer* container, GtkCallback callback, void* callbackData) forall;
	/** */
	extern(C) void function(GtkContainer* container, GtkWidget* child) setFocusChild;
	/**
	 *
	 * Params:
	 *     container = a #GtkContainer
	 * Returns: a #GType
	 */
	extern(C) GType function(GtkContainer* container) childType;
	/**
	 *
	 * Params:
	 *     container = a #GtkContainer
	 *     child = a child of @container
	 * Returns: A newly created #GtkWidgetPath
	 */
	extern(C) GtkWidgetPath* function(GtkContainer* container, GtkWidget* child) getPathForChild;
	void*[8] padding;
}

struct GtkContainerPrivate;

/**
 * @GtkCssLocation is used to present a location in a file - or other
 * source of data parsed by the CSS engine.
 *
 * The @bytes and @line_bytes offsets are meant to be used to
 * programmatically match data. The @lines and @line_chars offsets
 * can be used for printing the location in a file.
 *
 * Note that the @lines parameter starts from 0 and is increased
 * whenever a CSS line break is encountered. (CSS defines the C character
 * sequences "\r\n", "\r", "\n" and "\f" as newlines.)
 * If your document uses different rules for line breaking, you might want
 * run into problems here.
 */
struct GtkCssLocation
{
	/**
	 * number of bytes parsed since the beginning
	 */
	size_t bytes;
	/**
	 * number of characters parsed since the beginning
	 */
	size_t chars;
	/**
	 * number of full lines that have been parsed
	 * If you want to display this as a line number, you
	 * need to add 1 to this.
	 */
	size_t lines;
	/**
	 * Number of bytes parsed since the last line break
	 */
	size_t lineBytes;
	/**
	 * Number of characters parsed since the last line
	 * break
	 */
	size_t lineChars;
}

struct GtkCssProvider
{
	GObject parentInstance;
}

struct GtkCssProviderClass;

struct GtkCssProviderPrivate;

struct GtkCssSection;

struct GtkCustomLayout;

struct GtkCustomLayoutClass
{
	GtkLayoutManagerClass parentClass;
}

struct GtkDialog
{
	GtkWindow parentInstance;
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
	void*[8] padding;
}

struct GtkDrawingArea
{
	GtkWidget widget;
}

struct GtkDrawingAreaClass
{
	GtkWidgetClass parentClass;
	void*[8] padding;
}

struct GtkEditable;

struct GtkEditableInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) void function(GtkEditable* editable, const(char)* text, int length, int* position) insertText;
	/** */
	extern(C) void function(GtkEditable* editable, int startPos, int endPos) deleteText;
	/** */
	extern(C) void function(GtkEditable* editable) changed;
	/**
	 *
	 * Params:
	 *     editable = a #GtkEditable
	 * Returns: a pointer to the contents of the editable.
	 */
	extern(C) const(char)* function(GtkEditable* editable) getText;
	/** */
	extern(C) void function(GtkEditable* editable, const(char)* text, int length, int* position) doInsertText;
	/** */
	extern(C) void function(GtkEditable* editable, int startPos, int endPos) doDeleteText;
	/**
	 *
	 * Params:
	 *     editable = a #GtkEditable
	 *     startPos = location to store the starting position, or %NULL
	 *     endPos = location to store the end position, or %NULL
	 * Returns: %TRUE if there is a non-empty selection, %FALSE otherwise
	 */
	extern(C) int function(GtkEditable* editable, int* startPos, int* endPos) getSelectionBounds;
	/** */
	extern(C) void function(GtkEditable* editable, int startPos, int endPos) setSelectionBounds;
	/** */
	extern(C) GtkEditable* function(GtkEditable* editable) getDelegate;
}

struct GtkEntry
{
	GtkWidget parentInstance;
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
	 * Returns: The number of characters in the buffer.
	 */
	extern(C) uint function(GtkEntryBuffer* buffer) getLength;
	/**
	 *
	 * Params:
	 *     buffer = a #GtkEntryBuffer
	 *     position = the position at which to insert text.
	 *     chars = the text to insert into the buffer.
	 *     nChars = the length of the text in characters, or -1
	 * Returns: The number of characters actually inserted.
	 */
	extern(C) uint function(GtkEntryBuffer* buffer, uint position, const(char)* chars, uint nChars) insertText;
	/**
	 *
	 * Params:
	 *     buffer = a #GtkEntryBuffer
	 *     position = position at which to delete text
	 *     nChars = number of characters to delete
	 * Returns: The number of characters deleted.
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
	extern(C) void function(GtkEntry* entry) activate;
	void*[8] padding;
}

struct GtkEntryCompletion;

struct GtkEntryIconAccessible;

struct GtkEventController;

struct GtkEventControllerClass;

struct GtkEventControllerKey;

struct GtkEventControllerKeyClass;

struct GtkEventControllerLegacy;

struct GtkEventControllerLegacyClass;

struct GtkEventControllerMotion;

struct GtkEventControllerMotionClass;

struct GtkEventControllerScroll;

struct GtkEventControllerScrollClass;

struct GtkExpander;

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

struct GtkFileChooser;

struct GtkFileChooserButton;

struct GtkFileChooserDialog;

struct GtkFileChooserNative;

struct GtkFileChooserNativeClass
{
	GtkNativeDialogClass parentClass;
}

struct GtkFileChooserWidget;

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

struct GtkFilterListModel;

struct GtkFilterListModelClass
{
	GObjectClass parentClass;
}

struct GtkFixed
{
	GtkContainer parentInstance;
}

struct GtkFixedClass
{
	GtkContainerClass parentClass;
	void*[8] padding;
}

struct GtkFixedLayout;

struct GtkFixedLayoutChild;

struct GtkFixedLayoutChildClass
{
	GtkLayoutChildClass parentClass;
}

struct GtkFixedLayoutClass
{
	GtkLayoutManagerClass parentClass;
}

struct GtkFlattenListModel;

struct GtkFlattenListModelClass
{
	GObjectClass parentClass;
}

struct GtkFlowBox;

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
	void*[8] padding;
}

struct GtkFontButton;

struct GtkFontChooser;

struct GtkFontChooserDialog;

struct GtkFontChooserIface
{
	GTypeInterface baseIface;
	/**
	 *
	 * Params:
	 *     fontchooser = a #GtkFontChooser
	 * Returns: A #PangoFontFamily representing the
	 *     selected font family, or %NULL. The returned object is owned by @fontchooser
	 *     and must not be modified or freed.
	 */
	extern(C) PangoFontFamily* function(GtkFontChooser* fontchooser) getFontFamily;
	/**
	 *
	 * Params:
	 *     fontchooser = a #GtkFontChooser
	 * Returns: A #PangoFontFace representing the
	 *     selected font group details, or %NULL. The returned object is owned by
	 *     @fontchooser and must not be modified or freed.
	 */
	extern(C) PangoFontFace* function(GtkFontChooser* fontchooser) getFontFace;
	/**
	 *
	 * Params:
	 *     fontchooser = a #GtkFontChooser
	 * Returns: A n integer representing the selected font size,
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
	 * Returns: a #PangoFontMap, or %NULL
	 */
	extern(C) PangoFontMap* function(GtkFontChooser* fontchooser) getFontMap;
	void*[10] padding;
}

struct GtkFontChooserWidget;

struct GtkFrame
{
	GtkBin parentInstance;
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
	void*[8] padding;
}

struct GtkGLArea
{
	GtkWidget parentInstance;
}

/**
 * The `GtkGLAreaClass` structure contains only private data.
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
	void*[8] Padding;
}

struct GtkGesture;

struct GtkGestureClass;

struct GtkGestureClick;

struct GtkGestureClickClass;

struct GtkGestureDrag;

struct GtkGestureDragClass;

struct GtkGestureLongPress;

struct GtkGestureLongPressClass;

struct GtkGesturePan;

struct GtkGesturePanClass;

struct GtkGestureRotate;

struct GtkGestureRotateClass;

struct GtkGestureSingle;

struct GtkGestureSingleClass;

struct GtkGestureStylus;

struct GtkGestureStylusClass;

struct GtkGestureSwipe;

struct GtkGestureSwipeClass;

struct GtkGestureZoom;

struct GtkGestureZoomClass;

struct GtkGrid
{
	GtkContainer parentInstance;
}

struct GtkGridClass
{
	/**
	 * The parent class.
	 */
	GtkContainerClass parentClass;
	void*[8] padding;
}

struct GtkGridLayout;

struct GtkGridLayoutChild;

struct GtkGridLayoutChildClass
{
	GtkLayoutChildClass parentClass;
}

struct GtkGridLayoutClass
{
	GtkLayoutManagerClass parentClass;
}

struct GtkHeaderBar;

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
	 * Returns: %TRUE if the signal was handled.
	 */
	extern(C) int function(GtkIMContext* context, int offset, int nChars) deleteSurrounding;
	/** */
	extern(C) void function(GtkIMContext* context, GtkWidget* widget) setClientWidget;
	/** */
	extern(C) void function(GtkIMContext* context, char** str, PangoAttrList** attrs, int* cursorPos) getPreeditString;
	/**
	 *
	 * Params:
	 *     context = a #GtkIMContext
	 *     event = the key event
	 * Returns: %TRUE if the input method handled the key event.
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
	 * Returns: %TRUE if surrounding text was provided; in this case
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

struct GtkIconInfo;

struct GtkIconTheme;

struct GtkIconView;

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

struct GtkImage;

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

struct GtkInfoBar;

struct GtkLabel;

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

struct GtkLayoutChild
{
	GObject parentInstance;
}

struct GtkLayoutChildClass
{
	GObjectClass parentClass;
}

struct GtkLayoutManager
{
	GObject parentInstance;
}

/**
 * The `GtkLayoutManagerClass` structure contains only private data, and
 * should only be accessed through the provided API, or when subclassing
 * #GtkLayoutManager.
 */
struct GtkLayoutManagerClass
{
	GObjectClass parentClass;
	/** */
	extern(C) GtkSizeRequestMode function(GtkLayoutManager* manager, GtkWidget* widget) getRequestMode;
	/** */
	extern(C) void function(GtkLayoutManager* manager, GtkWidget* widget, GtkOrientation orientation, int forSize, int* minimum, int* natural, int* minimumBaseline, int* naturalBaseline) measure;
	/** */
	extern(C) void function(GtkLayoutManager* manager, GtkWidget* widget, int width, int height, int baseline) allocate;
	/**
	 * the type of #GtkLayoutChild used by this layout manager
	 */
	GType layoutChildType;
	/** */
	extern(C) GtkLayoutChild* function(GtkLayoutManager* manager, GtkWidget* widget, GtkWidget* forChild) createLayoutChild;
	/** */
	extern(C) void function(GtkLayoutManager* manager) root;
	/** */
	extern(C) void function(GtkLayoutManager* manager) unroot;
	void*[16] Padding;
}

struct GtkLevelBar;

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

struct GtkLinkButton;

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

struct GtkListBox;

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
	void*[8] padding;
}

struct GtkListStore
{
	GObject parent;
	GtkListStorePrivate* priv;
}

struct GtkListStoreClass
{
	GObjectClass parentClass;
	void*[8] padding;
}

struct GtkListStorePrivate;

struct GtkLockButton;

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

struct GtkMapListModel;

struct GtkMapListModelClass
{
	GObjectClass parentClass;
}

struct GtkMediaControls;

struct GtkMediaControlsClass
{
	GtkWidgetClass parentClass;
}

struct GtkMediaFile
{
	GtkMediaStream parentInstance;
}

struct GtkMediaFileClass
{
	GtkMediaStreamClass parentClass;
	/** */
	extern(C) void function(GtkMediaFile* self) open;
	/** */
	extern(C) void function(GtkMediaFile* self) close;
	/** */
	extern(C) void function() GtkReserved1;
	/** */
	extern(C) void function() GtkReserved2;
	/** */
	extern(C) void function() GtkReserved3;
	/** */
	extern(C) void function() GtkReserved4;
}

struct GtkMediaStream
{
	GObject parentInstance;
}

struct GtkMediaStreamClass
{
	GObjectClass parentClass;
	/** */
	extern(C) int function(GtkMediaStream* self) play;
	/** */
	extern(C) void function(GtkMediaStream* self) pause;
	/** */
	extern(C) void function(GtkMediaStream* self, long timestamp) seek;
	/** */
	extern(C) void function(GtkMediaStream* self, int muted, double volume) updateAudio;
	/** */
	extern(C) void function(GtkMediaStream* self, GdkSurface* surface) realize;
	/** */
	extern(C) void function(GtkMediaStream* self, GdkSurface* surface) unrealize;
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

struct GtkMenuButton;

struct GtkMenuButtonAccessible
{
	GtkWidgetAccessible parent;
	GtkMenuButtonAccessiblePrivate* priv;
}

struct GtkMenuButtonAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
}

struct GtkMenuButtonAccessiblePrivate;

struct GtkMenuToolButton;

struct GtkMessageDialog
{
	GtkDialog parentInstance;
}

struct GtkMessageDialogClass;

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

struct GtkNative;

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

struct GtkNativeInterface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     self = a #GtkNative
	 * Returns: the surface of @self
	 */
	extern(C) GdkSurface* function(GtkNative* self) getSurface;
	/**
	 *
	 * Params:
	 *     self = a #GtkNative
	 * Returns: the renderer for @self
	 */
	extern(C) GskRenderer* function(GtkNative* self) getRenderer;
	/** */
	extern(C) void function(GtkNative* self, int* x, int* y) getSurfaceTransform;
	/** */
	extern(C) void function(GtkNative* self) checkResize;
}

struct GtkNoSelection;

struct GtkNoSelectionClass
{
	GObjectClass parentClass;
}

struct GtkNotebook;

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

struct GtkNotebookPage;

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

struct GtkOrientable;

struct GtkOrientableIface
{
	GTypeInterface baseIface;
}

struct GtkOverlay;

/**
 * Struct defining a pad action entry.
 */
struct GtkPadActionEntry
{
	/**
	 * the type of pad feature that will trigger this action entry.
	 */
	GtkPadActionType type;
	/**
	 * the 0-indexed button/ring/strip number that will trigger this action
	 * entry.
	 */
	int index;
	/**
	 * the mode that will trigger this action entry, or -1 for all modes.
	 */
	int mode;
	/**
	 * Human readable description of this action entry, this string should
	 * be deemed user-visible.
	 */
	char* label;
	/**
	 * action name that will be activated in the #GActionGroup.
	 */
	char* actionName;
}

struct GtkPadController;

struct GtkPadControllerClass;

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

struct GtkPaned;

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

struct GtkPaperSize;

struct GtkPasswordEntry
{
	GtkWidget parent;
}

struct GtkPasswordEntryClass;

struct GtkPicture;

struct GtkPictureClass
{
	GtkWidgetClass parentClass;
}

struct GtkPopover
{
	GtkBin parent;
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
	/** */
	extern(C) void function(GtkPopover* popover) activateDefault;
	void*[8] reserved;
}

struct GtkPopoverMenu;

struct GtkPopoverMenuBar;

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
	void*[8] padding;
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
	 * Returns: %TRUE if the page has been selected for printing
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

struct GtkProgressBar;

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

struct GtkRadioButton;

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

struct GtkRadioToolButton;

struct GtkRange
{
	GtkWidget parentInstance;
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
	void*[8] padding;
}

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

struct GtkRecentInfo;

struct GtkRecentManager
{
	GObject parentInstance;
	GtkRecentManagerPrivate* priv;
}

/**
 * #GtkRecentManagerClass contains only private data.
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

struct GtkRevealer;

struct GtkRoot;

struct GtkRootInterface;

struct GtkScale
{
	GtkRange parentInstance;
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
	GtkButton parentInstance;
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
	void*[8] padding;
}

struct GtkScaleClass
{
	GtkRangeClass parentClass;
	/** */
	extern(C) void function(GtkScale* scale, int* x, int* y) getLayoutOffsets;
	void*[8] padding;
}

struct GtkScrollable;

struct GtkScrollableInterface
{
	GTypeInterface baseIface;
	/**
	 *
	 * Params:
	 *     scrollable = a #GtkScrollable
	 *     border = return location for the results
	 * Returns: %TRUE if @border has been set
	 */
	extern(C) int function(GtkScrollable* scrollable, GtkBorder* border) getBorder;
}

struct GtkScrollbar;

struct GtkScrolledWindow;

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

struct GtkSearchBar;

struct GtkSearchEntry;

struct GtkSelectionData;

struct GtkSelectionModel;

/**
 * The list of virtual functions for the #GtkSelectionModel interface.
 * All getter functions are mandatory to implement, but the model does
 * not need to implement any functions to support selecting or unselecting
 * items. Of course, if the model does not do that, it means that users
 * cannot select or unselect items in a list widgets using the model.
 */
struct GtkSelectionModelInterface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     model = a #GtkSelectionModel
	 *     position = the position of the item to query
	 * Returns: %TRUE if the item is selected
	 */
	extern(C) int function(GtkSelectionModel* model, uint position) isSelected;
	/** */
	extern(C) int function(GtkSelectionModel* model, uint position, int exclusive) selectItem;
	/** */
	extern(C) int function(GtkSelectionModel* model, uint position) unselectItem;
	/** */
	extern(C) int function(GtkSelectionModel* model, uint position, uint nItems, int exclusive) selectRange;
	/** */
	extern(C) int function(GtkSelectionModel* model, uint position, uint nItems) unselectRange;
	/** */
	extern(C) int function(GtkSelectionModel* model) selectAll;
	/** */
	extern(C) int function(GtkSelectionModel* model) unselectAll;
	/** */
	extern(C) void function(GtkSelectionModel* model, uint position, uint* startRange, uint* nItems, int* selected) queryRange;
}

struct GtkSeparator;

struct GtkSeparatorToolItem;

struct GtkSettings
{
	GObject parentInstance;
}

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

struct GtkShortcutLabel;

struct GtkShortcutLabelClass;

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

struct GtkShortcutsWindowClass;

struct GtkSingleSelection;

struct GtkSingleSelectionClass
{
	GObjectClass parentClass;
}

struct GtkSizeGroup
{
	GObject parentInstance;
}

struct GtkSliceListModel;

struct GtkSliceListModelClass
{
	GObjectClass parentClass;
}

struct GtkSnapshot;

struct GtkSnapshotClass;

struct GtkSortListModel;

struct GtkSortListModelClass
{
	GObjectClass parentClass;
}

struct GtkSpinButton;

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

struct GtkSpinner;

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

struct GtkStack;

struct GtkStackAccessible
{
	GtkContainerAccessible parent;
}

struct GtkStackAccessibleClass
{
	GtkContainerAccessibleClass parentClass;
}

struct GtkStackPage;

struct GtkStackSidebar;

struct GtkStackSwitcher;

struct GtkStatusbar;

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

struct GtkStyleContext
{
	GObject parentObject;
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

struct GtkStyleProvider;

struct GtkSwitch;

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

struct GtkText
{
	GtkWidget parentInstance;
}

struct GtkTextAccessible
{
	GtkWidgetAccessible parent;
	GtkTextAccessiblePrivate* priv;
}

struct GtkTextAccessibleClass
{
	GtkWidgetAccessibleClass parentClass;
}

struct GtkTextAccessiblePrivate;

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
	extern(C) void function(GtkTextBuffer* buffer, GtkTextIter* iter, GdkTexture* texture) insertTexture;
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
	extern(C) void function(GtkTextBuffer* buffer, GdkClipboard* clipboard) pasteDone;
	/** */
	extern(C) void function(GtkTextBuffer* buffer) undo;
	/** */
	extern(C) void function(GtkTextBuffer* buffer) redo;
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
	void*[8] padding;
}

struct GtkTextTag
{
	GObject parentInstance;
	GtkTextTagPrivate* priv;
}

struct GtkTextTagClass
{
	GObjectClass parentClass;
	void*[8] padding;
}

struct GtkTextTagPrivate;

struct GtkTextTagTable;

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
	extern(C) void function(GtkTextView* textView, GtkTextViewLayer layer, GtkSnapshot* snapshot) snapshotLayer;
	/** */
	extern(C) int function(GtkTextView* textView, GtkTextExtendSelection granularity, GtkTextIter* location, GtkTextIter* start, GtkTextIter* end) extendSelection;
	/** */
	extern(C) void function(GtkTextView* textView) insertEmoji;
	void*[8] padding;
}

struct GtkTextViewPrivate;

struct GtkToggleButton
{
	GtkButton button;
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
	void*[8] padding;
}

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
	void*[8] padding;
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
	void*[8] padding;
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
	extern(C) void function(GtkToolItem* toolItem) toolbarReconfigured;
	void*[8] padding;
}

struct GtkToolItemPrivate;

struct GtkToolShell;

/**
 * Virtual function table for the #GtkToolShell interface.
 */
struct GtkToolShellIface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Returns: the current orientation of @shell
	 */
	extern(C) GtkOrientation function(GtkToolShell* shell) getOrientation;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Returns: the current style of @shell
	 */
	extern(C) GtkToolbarStyle function(GtkToolShell* shell) getStyle;
	/** */
	extern(C) void function(GtkToolShell* shell) rebuildMenu;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Returns: the current text orientation of @shell
	 */
	extern(C) GtkOrientation function(GtkToolShell* shell) getTextOrientation;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Returns: the current text alignment of @shell
	 */
	extern(C) float function(GtkToolShell* shell) getTextAlignment;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Returns: the current ellipsize mode of @shell
	 */
	extern(C) PangoEllipsizeMode function(GtkToolShell* shell) getEllipsizeMode;
	/**
	 *
	 * Params:
	 *     shell = a #GtkToolShell
	 * Returns: the current text size group of @shell
	 */
	extern(C) GtkSizeGroup* function(GtkToolShell* shell) getTextSizeGroup;
}

struct GtkToolbar;

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
	 * Returns: whether a new row was created before position @dest
	 */
	extern(C) int function(GtkTreeDragDest* dragDest, GtkTreePath* dest, GtkSelectionData* selectionData) dragDataReceived;
	/**
	 *
	 * Params:
	 *     dragDest = a #GtkTreeDragDest
	 *     destPath = destination row
	 *     selectionData = the data being dragged
	 * Returns: %TRUE if a drop is possible before @dest_path
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
	 * Returns: %TRUE if the row can be dragged
	 */
	extern(C) int function(GtkTreeDragSource* dragSource, GtkTreePath* path) rowDraggable;
	/**
	 *
	 * Params:
	 *     dragSource = a #GtkTreeDragSource
	 *     path = row that was dragged
	 *     selectionData = a #GtkSelectionData to fill with data
	 *         from the dragged row
	 * Returns: %TRUE if data of the required type was provided
	 */
	extern(C) int function(GtkTreeDragSource* dragSource, GtkTreePath* path, GtkSelectionData* selectionData) dragDataGet;
	/**
	 *
	 * Params:
	 *     dragSource = a #GtkTreeDragSource
	 *     path = row that was being dragged
	 * Returns: %TRUE if the row was successfully deleted
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

struct GtkTreeListModel;

struct GtkTreeListModelClass
{
	GObjectClass parentClass;
}

struct GtkTreeListRow;

struct GtkTreeListRowClass
{
	GObjectClass parentClass;
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
	void*[8] padding;
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
	 * Returns: the flags supported by this interface
	 */
	extern(C) GtkTreeModelFlags function(GtkTreeModel* treeModel) getFlags;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 * Returns: the number of columns
	 */
	extern(C) int function(GtkTreeModel* treeModel) getNColumns;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     index = the column index
	 * Returns: the type of the column
	 */
	extern(C) GType function(GtkTreeModel* treeModel, int index) getColumnType;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the uninitialized #GtkTreeIter-struct
	 *     path = the #GtkTreePath-struct
	 * Returns: %TRUE, if @iter was set
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreePath* path) getIter;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct
	 * Returns: a newly-created #GtkTreePath-struct
	 */
	extern(C) GtkTreePath* function(GtkTreeModel* treeModel, GtkTreeIter* iter) getPath;
	/** */
	extern(C) void function(GtkTreeModel* treeModel, GtkTreeIter* iter, int column, GValue* value) getValue;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct
	 * Returns: %TRUE if @iter has been changed to the next node
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter) iterNext;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct
	 * Returns: %TRUE if @iter has been changed to the previous node
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter) iterPrevious;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the new #GtkTreeIter-struct to be set to the child
	 *     parent = the #GtkTreeIter-struct, or %NULL
	 * Returns: %TRUE, if @iter has been set to the first child
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent) iterChildren;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct to test for children
	 * Returns: %TRUE if @iter has children
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter) iterHasChild;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct, or %NULL
	 * Returns: the number of children of @iter
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter) iterNChildren;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the #GtkTreeIter-struct to set to the nth child
	 *     parent = the #GtkTreeIter-struct to get the child from, or %NULL.
	 *     n = the index of the desired child
	 * Returns: %TRUE, if @parent has an @n-th child
	 */
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent, int n) iterNthChild;
	/**
	 *
	 * Params:
	 *     treeModel = a #GtkTreeModel
	 *     iter = the new #GtkTreeIter-struct to set to the parent
	 *     child = the #GtkTreeIter-struct
	 * Returns: %TRUE, if @iter is set to the parent of @child
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
	void*[8] padding;
}

struct GtkTreeModelSortPrivate;

struct GtkTreePath;

struct GtkTreeRowReference;

struct GtkTreeSelection;

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
	 * Returns: %TRUE if the sort column is not one of the special sort
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
	 * Returns: %TRUE, if the model has a default sort function
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
	void*[8] padding;
}

struct GtkTreeStorePrivate;

struct GtkTreeView;

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

struct GtkTreeViewColumn;

struct GtkVideo;

struct GtkVideoClass
{
	GtkWidgetClass parentClass;
}

struct GtkViewport;

struct GtkVolumeButton
{
	GtkScaleButton parent;
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
	extern(C) void function(GtkWidget* widget) destroy;
	/** */
	extern(C) void function(GtkWidget* widget) show;
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
	extern(C) void function(GtkWidget* widget) root;
	/** */
	extern(C) void function(GtkWidget* widget) unroot;
	/** */
	extern(C) void function(GtkWidget* widget, int width, int height, int baseline) sizeAllocate;
	/** */
	extern(C) void function(GtkWidget* widget, GtkStateFlags previousStateFlags) stateFlagsChanged;
	/** */
	extern(C) void function(GtkWidget* widget, GtkTextDirection previousDirection) directionChanged;
	/** */
	extern(C) void function(GtkWidget* widget, int wasGrabbed) grabNotify;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget instance
	 * Returns: The #GtkSizeRequestMode preferred by @widget.
	 */
	extern(C) GtkSizeRequestMode function(GtkWidget* widget) getRequestMode;
	/** */
	extern(C) void function(GtkWidget* widget, GtkOrientation orientation, int forSize, int* minimum, int* natural, int* minimumBaseline, int* naturalBaseline) measure;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     groupCycling = %TRUE if there are other widgets with the same mnemonic
	 * Returns: %TRUE if the signal has been handled
	 */
	extern(C) int function(GtkWidget* widget, int groupCycling) mnemonicActivate;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 * Returns: %TRUE if focus is now inside @widget.
	 */
	extern(C) int function(GtkWidget* widget) grabFocus;
	/** */
	extern(C) int function(GtkWidget* widget, GtkDirectionType direction) focus;
	/** */
	extern(C) void function(GtkWidget* widget, GtkDirectionType direction) moveFocus;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     direction = direction of focus movement
	 * Returns: %TRUE if stopping keyboard navigation is fine, %FALSE
	 *     if the emitting widget should try to handle the keyboard
	 *     navigation attempt in its parent container(s).
	 */
	extern(C) int function(GtkWidget* widget, GtkDirectionType direction) keynavFailed;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDrag* drag) dragBegin;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDrag* drag) dragEnd;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDrag* drag, GtkSelectionData* selectionData) dragDataGet;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDrag* drag) dragDataDelete;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDrop* drop) dragLeave;
	/** */
	extern(C) int function(GtkWidget* widget, GdkDrop* drop, int x, int y) dragMotion;
	/** */
	extern(C) int function(GtkWidget* widget, GdkDrop* drop, int x, int y) dragDrop;
	/** */
	extern(C) void function(GtkWidget* widget, GdkDrop* drop, GtkSelectionData* selectionData) dragDataReceived;
	/** */
	extern(C) int function(GtkWidget* widget, GdkDrag* drag, GtkDragResult result) dragFailed;
	/** */
	extern(C) int function(GtkWidget* widget) popupMenu;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 * Returns: the #AtkObject associated with @widget
	 */
	extern(C) AtkObject* function(GtkWidget* widget) getAccessible;
	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     signalId = the ID of a signal installed on @widget
	 * Returns: %TRUE if the accelerator can be activated.
	 */
	extern(C) int function(GtkWidget* widget, uint signalId) canActivateAccel;
	/** */
	extern(C) int function(GtkWidget* widget, int x, int y, int keyboardTooltip, GtkTooltip* tooltip) queryTooltip;
	/** */
	extern(C) void function(GtkWidget* widget, int* hexpandP, int* vexpandP) computeExpand;
	/** */
	extern(C) void function(GtkWidget* widget) styleUpdated;
	/** */
	extern(C) void function(GtkWidget* widget, GtkSnapshot* snapshot) snapshot;
	/**
	 *
	 * Params:
	 *     widget = the widget to query
	 *     x = X coordinate to test, relative to @widget's origin
	 *     y = Y coordinate to test, relative to @widget's origin
	 * Returns: %TRUE if @widget contains (@x, @y).
	 */
	extern(C) int function(GtkWidget* widget, double x, double y) contains;
	GtkWidgetClassPrivate* priv;
	void*[8] padding;
}

struct GtkWidgetClassPrivate;

struct GtkWidgetPaintable;

struct GtkWidgetPaintableClass
{
	GObjectClass parentClass;
}

struct GtkWidgetPath;

struct GtkWidgetPrivate;

struct GtkWindow
{
	GtkBin parentInstance;
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
	extern(C) void function(GtkWindow* window) activateFocus;
	/** */
	extern(C) void function(GtkWindow* window) activateDefault;
	/** */
	extern(C) void function(GtkWindow* window) keysChanged;
	/** */
	extern(C) int function(GtkWindow* window, int toggle) enableDebugging;
	/** */
	extern(C) int function(GtkWindow* window) closeRequest;
	void*[8] padding;
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
 * Returns: The next page number.
 */
public alias extern(C) int function(int currentPage, void* data) GtkAssistantPageFunc;

/**
 * Prototype of the callback function registered with
 * gtk_binding_entry_add_callback.
 *
 * Params:
 *     widget = The object to invoke the callback on
 *     args = The arguments or %NULL if none
 *     userData = The user data passed when registering the callback
 */
public alias extern(C) void function(GtkWidget* widget, GVariant* args, void* userData) GtkBindingCallback;

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
 * Returns: Newly allocated string with Pango markup
 *     with details for the specified day or %NULL.
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
 * Returns: %TRUE to stop iterating over cells.
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
 * Returns: %TRUE to stop iterating over cells.
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
 * A function to be used by #GtkCustomLayout to allocate a widget.
 *
 * Params:
 *     widget = the widget to allocate
 *     width = the new width of the widget
 *     height = the new height of the widget
 *     baseline = the new baseline of the widget, or -1
 */
public alias extern(C) void function(GtkWidget* widget, int width, int height, int baseline) GtkCustomAllocateFunc;

/**
 * A function to be used by #GtkCustomLayout to measure a widget.
 *
 * Params:
 *     widget = the widget to be measured
 *     orientation = the direction to be measured
 *     forSize = the size to be measured for
 *     minimum = the measured minimum size of the widget
 *     natural = the measured natural size of the widget
 *     minimumBaseline = the measured minimum baseline of the widget
 *     naturalBaseline = the measured natural baseline of the widget
 */
public alias extern(C) void function(GtkWidget* widget, GtkOrientation orientation, int forSize, int* minimum, int* natural, int* minimumBaseline, int* naturalBaseline) GtkCustomMeasureFunc;

/**
 * Queries a widget for its preferred size request mode.
 *
 * Params:
 *     widget = the widget to be queried
 *
 * Returns: the size request mode
 */
public alias extern(C) GtkSizeRequestMode function(GtkWidget* widget) GtkCustomRequestModeFunc;

/**
 * Whenever @drawing_area needs to redraw, this function will be called.
 *
 * This function should exclusively redraw the contents of the drawing area
 * and must not call any widget functions that cause changes.
 *
 * Params:
 *     drawingArea = the #GtkDrawingArea to redraw
 *     cr = the context to draw to
 *     width = the actual width of the contents. This value will be at least
 *         as wide as GtkDrawingArea:width.
 *     height = the actual height of the contents. This value will be at least
 *         as wide as GtkDrawingArea:height.
 *     userData = user data
 */
public alias extern(C) void function(GtkDrawingArea* drawingArea, cairo_t* cr, int width, int height, void* userData) GtkDrawingAreaDrawFunc;

/**
 * A function which decides whether the row indicated by @iter matches
 * a given @key, and should be displayed as a possible completion for @key.
 * Note that @key is normalized and case-folded (see g_utf8_normalize()
 * and g_utf8_casefold()). If this is not appropriate, match functions
 * have access to the unmodified key via
 * `gtk_editable_get_text (GTK_EDITABLE (gtk_entry_completion_get_entry ()))`.
 *
 * Params:
 *     completion = the #GtkEntryCompletion
 *     key = the string to match, normalized and case-folded
 *     iter = a #GtkTreeIter indicating the row to match
 *     userData = user data given to gtk_entry_completion_set_match_func()
 *
 * Returns: %TRUE if @iter should be displayed as a possible completion
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
 * Returns: %TRUE if the file should be displayed
 */
public alias extern(C) int function(GtkFileFilterInfo* filterInfo, void* data) GtkFileFilterFunc;

/**
 * User function that is called to determine if the @item of the original model should be visible.
 * If it should be visible, this function must return %TRUE. If the model should filter out the
 * @item, %FALSE must be returned.
 *
 * Params:
 *     item = The item that may be filtered
 *     userData = user data
 *
 * Returns: %TRUE to keep the item around
 */
public alias extern(C) int function(void* item, void* userData) GtkFilterListModelFilterFunc;

/**
 * Called for flow boxes that are bound to a #GListModel with
 * gtk_flow_box_bind_model() for each item that gets added to the model.
 *
 * Params:
 *     item = the item from the model for which to create a widget for
 *     userData = user data from gtk_flow_box_bind_model()
 *
 * Returns: a #GtkWidget that represents @item
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
 * Returns: %TRUE if the row should be visible, %FALSE otherwise
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
 * Returns: < 0 if @child1 should be before @child2, 0 if
 *     the are equal, and > 0 otherwise
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
 * Returns: %TRUE if the font should be displayed
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
 * Called for list boxes that are bound to a #GListModel with
 * gtk_list_box_bind_model() for each item that gets added to the model.
 *
 * Params:
 *     item = the item from the model for which to create a widget for
 *     userData = user data
 *
 * Returns: a #GtkWidget that represents @item
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
 * Returns: %TRUE if the row should be visible, %FALSE otherwise
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
 * Returns: < 0 if @row1 should be before @row2, 0 if they are
 *     equal and > 0 otherwise
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
 */
public alias extern(C) void function(GtkListBoxRow* row, GtkListBoxRow* before, void* userData) GtkListBoxUpdateHeaderFunc;

/**
 * User function that is called to map an @item of the original model to
 * an item expected by the map model.
 *
 * The returned items must conform to the item type of the model they are
 * used with.
 *
 * Params:
 *     item = The item to map
 *     userData = user data
 *
 * Returns: The item to map to.
 *     This function may not return %NULL
 */
public alias extern(C) void* function(void* item, void* userData) GtkMapListModelMapFunc;

/**
 * User-provided callback function to create a popup for @menu_button on demand.
 * This function is called when the popoup of @menu_button is shown, but none has
 * been provided via gtk_menu_buton_set_popup(), gtk_menu_button_set_popover()
 * or gtk_menu_button_set_menu_model().
 *
 * Params:
 *     menuButton = the #GtkMenuButton
 */
public alias extern(C) void function(GtkMenuButton* menuButton, void* userData) GtkMenuButtonCreatePopupFunc;

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

/**
 *
 * Params:
 *     scale = The #GtkScale
 *     value = The numeric value to format
 *     userData = user data
 * Returns: A newly allocated string describing a textual representation
 *     of the given numerical value.
 */
public alias extern(C) char* function(GtkScale* scale, double value, void* userData) GtkScaleFormatValueFunc;

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
 * Returns: %G_SOURCE_CONTINUE if the tick callback should continue to be called,
 *     %G_SOURCE_REMOVE if the tick callback should be removed.
 */
public alias extern(C) int function(GtkWidget* widget, GdkFrameClock* frameClock, void* userData) GtkTickCallback;

/**
 * A function to set the properties of a cell instead of just using the
 * straight mapping between the cell and the model.  This is useful for
 * customizing the cell renderer.  For example, a function might get an
 * integer from the @tree_model, and render it to the “text” attribute of
 * “cell” by converting it to its written equivalent.  This is set by
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
 * Returns: a negative integer, zero or a positive integer depending on whether
 *     @a sorts before, with or after @b
 */
public alias extern(C) int function(GtkTreeModel* model, GtkTreeIter* a, GtkTreeIter* b, void* userData) GtkTreeIterCompareFunc;

/**
 * Prototype of the function called to create new child models when
 * gtk_tree_list_row_set_expanded() is called.
 *
 * This function can return %NULL to indicate that @item is guaranteed to be
 * a leave node and will never have children.
 * If it does not have children but may get children later, it should return
 * an empty model that is filled once children arrive.
 *
 * Params:
 *     item = The item that is being expanded
 *     userData = User data passed when registering the function
 *
 * Returns: The model tracking the children of @item or %NULL if
 *     @item can never have children
 */
public alias extern(C) GListModel* function(void* item, void* userData) GtkTreeListModelCreateModelFunc;

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
 * Returns: Whether the row indicated by @iter is visible.
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
 * Returns: %TRUE to stop iterating, %FALSE to continue
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
 * Returns: %TRUE, if the selection state of the row can be toggled
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
 * Returns: %TRUE, if @column can be dropped in this spot
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
 * Returns: %TRUE if the row is a separator
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
 * Returns: %FALSE if the row matches, %TRUE otherwise.
 */
public alias extern(C) int function(GtkTreeModel* model, int column, const(char)* key, GtkTreeIter* iter, void* searchData) GtkTreeViewSearchEqualFunc;

/**
 * The type of the callback functions used for activating
 * actions installed with gtk_widget_class_install_action().
 *
 * The @parameter must match the @parameter_type of the action.
 *
 * Params:
 *     widget = the widget to which the action belongs
 *     actionName = the action name
 *     parameter = parameter for activation
 */
public alias extern(C) void function(GtkWidget* widget, const(char)* actionName, GVariant* parameter) GtkWidgetActionActivateFunc;

/**
 * Like gtk_get_binary_age(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum BINARY_AGE = 9600;
alias GTK_BINARY_AGE = BINARY_AGE;

enum IM_MODULE_EXTENSION_POINT_NAME = "gtk-im-module";
alias GTK_IM_MODULE_EXTENSION_POINT_NAME = IM_MODULE_EXTENSION_POINT_NAME;

/**
 * Constant to return from a signal handler for the #GtkSpinButton::input
 * signal in case of conversion failure.
 */
enum INPUT_ERROR = -1;
alias GTK_INPUT_ERROR = INPUT_ERROR;

/**
 * Like gtk_get_interface_age(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum INTERFACE_AGE = 0;
alias GTK_INTERFACE_AGE = INTERFACE_AGE;

/**
 * The name used for the stock full offset included by #GtkLevelBar.
 */
enum LEVEL_BAR_OFFSET_FULL = "full";
alias GTK_LEVEL_BAR_OFFSET_FULL = LEVEL_BAR_OFFSET_FULL;

/**
 * The name used for the stock high offset included by #GtkLevelBar.
 */
enum LEVEL_BAR_OFFSET_HIGH = "high";
alias GTK_LEVEL_BAR_OFFSET_HIGH = LEVEL_BAR_OFFSET_HIGH;

/**
 * The name used for the stock low offset included by #GtkLevelBar.
 */
enum LEVEL_BAR_OFFSET_LOW = "low";
alias GTK_LEVEL_BAR_OFFSET_LOW = LEVEL_BAR_OFFSET_LOW;

/**
 * Like gtk_get_major_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MAJOR_VERSION = 3;
alias GTK_MAJOR_VERSION = MAJOR_VERSION;

/**
 * The maximum length of sequences in compose tables.
 */
enum MAX_COMPOSE_LEN = 7;
alias GTK_MAX_COMPOSE_LEN = MAX_COMPOSE_LEN;

enum MEDIA_FILE_EXTENSION_POINT_NAME = "gtk-media-file";
alias GTK_MEDIA_FILE_EXTENSION_POINT_NAME = MEDIA_FILE_EXTENSION_POINT_NAME;

/**
 * Like gtk_get_micro_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MICRO_VERSION = 0;
alias GTK_MICRO_VERSION = MICRO_VERSION;

/**
 * Like gtk_get_minor_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MINOR_VERSION = 96;
alias GTK_MINOR_VERSION = MINOR_VERSION;

/**
 * Name for the A3 paper size.
 */
enum PAPER_NAME_A3 = "iso_a3";
alias GTK_PAPER_NAME_A3 = PAPER_NAME_A3;

/**
 * Name for the A4 paper size.
 */
enum PAPER_NAME_A4 = "iso_a4";
alias GTK_PAPER_NAME_A4 = PAPER_NAME_A4;

/**
 * Name for the A5 paper size.
 */
enum PAPER_NAME_A5 = "iso_a5";
alias GTK_PAPER_NAME_A5 = PAPER_NAME_A5;

/**
 * Name for the B5 paper size.
 */
enum PAPER_NAME_B5 = "iso_b5";
alias GTK_PAPER_NAME_B5 = PAPER_NAME_B5;

/**
 * Name for the Executive paper size.
 */
enum PAPER_NAME_EXECUTIVE = "na_executive";
alias GTK_PAPER_NAME_EXECUTIVE = PAPER_NAME_EXECUTIVE;

/**
 * Name for the Legal paper size.
 */
enum PAPER_NAME_LEGAL = "na_legal";
alias GTK_PAPER_NAME_LEGAL = PAPER_NAME_LEGAL;

/**
 * Name for the Letter paper size.
 */
enum PAPER_NAME_LETTER = "na_letter";
alias GTK_PAPER_NAME_LETTER = PAPER_NAME_LETTER;

enum PRINT_SETTINGS_COLLATE = "collate";
alias GTK_PRINT_SETTINGS_COLLATE = PRINT_SETTINGS_COLLATE;

enum PRINT_SETTINGS_DEFAULT_SOURCE = "default-source";
alias GTK_PRINT_SETTINGS_DEFAULT_SOURCE = PRINT_SETTINGS_DEFAULT_SOURCE;

enum PRINT_SETTINGS_DITHER = "dither";
alias GTK_PRINT_SETTINGS_DITHER = PRINT_SETTINGS_DITHER;

enum PRINT_SETTINGS_DUPLEX = "duplex";
alias GTK_PRINT_SETTINGS_DUPLEX = PRINT_SETTINGS_DUPLEX;

enum PRINT_SETTINGS_FINISHINGS = "finishings";
alias GTK_PRINT_SETTINGS_FINISHINGS = PRINT_SETTINGS_FINISHINGS;

enum PRINT_SETTINGS_MEDIA_TYPE = "media-type";
alias GTK_PRINT_SETTINGS_MEDIA_TYPE = PRINT_SETTINGS_MEDIA_TYPE;

enum PRINT_SETTINGS_NUMBER_UP = "number-up";
alias GTK_PRINT_SETTINGS_NUMBER_UP = PRINT_SETTINGS_NUMBER_UP;

enum PRINT_SETTINGS_NUMBER_UP_LAYOUT = "number-up-layout";
alias GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT = PRINT_SETTINGS_NUMBER_UP_LAYOUT;

enum PRINT_SETTINGS_N_COPIES = "n-copies";
alias GTK_PRINT_SETTINGS_N_COPIES = PRINT_SETTINGS_N_COPIES;

enum PRINT_SETTINGS_ORIENTATION = "orientation";
alias GTK_PRINT_SETTINGS_ORIENTATION = PRINT_SETTINGS_ORIENTATION;

/**
 * The key used by the “Print to file” printer to store the file
 * name of the output without the path to the directory and the
 * file extension.
 */
enum PRINT_SETTINGS_OUTPUT_BASENAME = "output-basename";
alias GTK_PRINT_SETTINGS_OUTPUT_BASENAME = PRINT_SETTINGS_OUTPUT_BASENAME;

enum PRINT_SETTINGS_OUTPUT_BIN = "output-bin";
alias GTK_PRINT_SETTINGS_OUTPUT_BIN = PRINT_SETTINGS_OUTPUT_BIN;

/**
 * The key used by the “Print to file” printer to store the
 * directory to which the output should be written.
 */
enum PRINT_SETTINGS_OUTPUT_DIR = "output-dir";
alias GTK_PRINT_SETTINGS_OUTPUT_DIR = PRINT_SETTINGS_OUTPUT_DIR;

/**
 * The key used by the “Print to file” printer to store the format
 * of the output. The supported values are “PS” and “PDF”.
 */
enum PRINT_SETTINGS_OUTPUT_FILE_FORMAT = "output-file-format";
alias GTK_PRINT_SETTINGS_OUTPUT_FILE_FORMAT = PRINT_SETTINGS_OUTPUT_FILE_FORMAT;

/**
 * The key used by the “Print to file” printer to store the URI
 * to which the output should be written. GTK+ itself supports
 * only “file://” URIs.
 */
enum PRINT_SETTINGS_OUTPUT_URI = "output-uri";
alias GTK_PRINT_SETTINGS_OUTPUT_URI = PRINT_SETTINGS_OUTPUT_URI;

enum PRINT_SETTINGS_PAGE_RANGES = "page-ranges";
alias GTK_PRINT_SETTINGS_PAGE_RANGES = PRINT_SETTINGS_PAGE_RANGES;

enum PRINT_SETTINGS_PAGE_SET = "page-set";
alias GTK_PRINT_SETTINGS_PAGE_SET = PRINT_SETTINGS_PAGE_SET;

enum PRINT_SETTINGS_PAPER_FORMAT = "paper-format";
alias GTK_PRINT_SETTINGS_PAPER_FORMAT = PRINT_SETTINGS_PAPER_FORMAT;

enum PRINT_SETTINGS_PAPER_HEIGHT = "paper-height";
alias GTK_PRINT_SETTINGS_PAPER_HEIGHT = PRINT_SETTINGS_PAPER_HEIGHT;

enum PRINT_SETTINGS_PAPER_WIDTH = "paper-width";
alias GTK_PRINT_SETTINGS_PAPER_WIDTH = PRINT_SETTINGS_PAPER_WIDTH;

enum PRINT_SETTINGS_PRINTER = "printer";
alias GTK_PRINT_SETTINGS_PRINTER = PRINT_SETTINGS_PRINTER;

enum PRINT_SETTINGS_PRINTER_LPI = "printer-lpi";
alias GTK_PRINT_SETTINGS_PRINTER_LPI = PRINT_SETTINGS_PRINTER_LPI;

enum PRINT_SETTINGS_PRINT_PAGES = "print-pages";
alias GTK_PRINT_SETTINGS_PRINT_PAGES = PRINT_SETTINGS_PRINT_PAGES;

enum PRINT_SETTINGS_QUALITY = "quality";
alias GTK_PRINT_SETTINGS_QUALITY = PRINT_SETTINGS_QUALITY;

enum PRINT_SETTINGS_RESOLUTION = "resolution";
alias GTK_PRINT_SETTINGS_RESOLUTION = PRINT_SETTINGS_RESOLUTION;

enum PRINT_SETTINGS_RESOLUTION_X = "resolution-x";
alias GTK_PRINT_SETTINGS_RESOLUTION_X = PRINT_SETTINGS_RESOLUTION_X;

enum PRINT_SETTINGS_RESOLUTION_Y = "resolution-y";
alias GTK_PRINT_SETTINGS_RESOLUTION_Y = PRINT_SETTINGS_RESOLUTION_Y;

enum PRINT_SETTINGS_REVERSE = "reverse";
alias GTK_PRINT_SETTINGS_REVERSE = PRINT_SETTINGS_REVERSE;

enum PRINT_SETTINGS_SCALE = "scale";
alias GTK_PRINT_SETTINGS_SCALE = PRINT_SETTINGS_SCALE;

enum PRINT_SETTINGS_USE_COLOR = "use-color";
alias GTK_PRINT_SETTINGS_USE_COLOR = PRINT_SETTINGS_USE_COLOR;

enum PRINT_SETTINGS_WIN32_DRIVER_EXTRA = "win32-driver-extra";
alias GTK_PRINT_SETTINGS_WIN32_DRIVER_EXTRA = PRINT_SETTINGS_WIN32_DRIVER_EXTRA;

enum PRINT_SETTINGS_WIN32_DRIVER_VERSION = "win32-driver-version";
alias GTK_PRINT_SETTINGS_WIN32_DRIVER_VERSION = PRINT_SETTINGS_WIN32_DRIVER_VERSION;

/**
 * Use this priority for functionality related to size allocation.
 *
 * It is used internally by GTK+ to compute the sizes of widgets.
 * This priority is higher than %GDK_PRIORITY_REDRAW to avoid
 * resizing a widget which was just redrawn.
 */
enum PRIORITY_RESIZE = 110;
alias GTK_PRIORITY_RESIZE = PRIORITY_RESIZE;

/**
 * A CSS class to match an accelerator.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_ACCELERATOR = "accelerator";
alias GTK_STYLE_CLASS_ACCELERATOR = STYLE_CLASS_ACCELERATOR;

/**
 * A CSS class used when rendering an arrow element.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_ARROW = "arrow";
alias GTK_STYLE_CLASS_ARROW = STYLE_CLASS_ARROW;

/**
 * A CSS class to match the window background.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_BACKGROUND = "background";
alias GTK_STYLE_CLASS_BACKGROUND = STYLE_CLASS_BACKGROUND;

/**
 * A CSS class to indicate an area at the bottom of a widget.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_BOTTOM = "bottom";
alias GTK_STYLE_CLASS_BOTTOM = STYLE_CLASS_BOTTOM;

/**
 * A CSS class to match buttons.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_BUTTON = "button";
alias GTK_STYLE_CLASS_BUTTON = STYLE_CLASS_BUTTON;

/**
 * A CSS class to match calendars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_CALENDAR = "calendar";
alias GTK_STYLE_CLASS_CALENDAR = STYLE_CLASS_CALENDAR;

/**
 * A CSS class to match content rendered in cell views.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_CELL = "cell";
alias GTK_STYLE_CLASS_CELL = STYLE_CLASS_CELL;

/**
 * A CSS class to match check boxes.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_CHECK = "check";
alias GTK_STYLE_CLASS_CHECK = STYLE_CLASS_CHECK;

/**
 * A CSS class to match combobox entries.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_COMBOBOX_ENTRY = "combobox-entry";
alias GTK_STYLE_CLASS_COMBOBOX_ENTRY = STYLE_CLASS_COMBOBOX_ENTRY;

/**
 * A CSS class to match context menus.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_CONTEXT_MENU = "context-menu";
alias GTK_STYLE_CLASS_CONTEXT_MENU = STYLE_CLASS_CONTEXT_MENU;

/**
 * A CSS class that gets added to windows which have client-side decorations.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_CSD = "csd";
alias GTK_STYLE_CLASS_CSD = STYLE_CLASS_CSD;

/**
 * A CSS class used when rendering a drag handle for
 * text selection.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_CURSOR_HANDLE = "cursor-handle";
alias GTK_STYLE_CLASS_CURSOR_HANDLE = STYLE_CLASS_CURSOR_HANDLE;

/**
 * A CSS class to match the default widget.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_DEFAULT = "default";
alias GTK_STYLE_CLASS_DEFAULT = STYLE_CLASS_DEFAULT;

/**
 * A CSS class used when an action (usually a button) is
 * one that is expected to remove or destroy something visible
 * to the user.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_DESTRUCTIVE_ACTION = "destructive-action";
alias GTK_STYLE_CLASS_DESTRUCTIVE_ACTION = STYLE_CLASS_DESTRUCTIVE_ACTION;

/**
 * A CSS class to match dimmed labels.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_DIM_LABEL = "dim-label";
alias GTK_STYLE_CLASS_DIM_LABEL = STYLE_CLASS_DIM_LABEL;

/**
 * A CSS class for a drag-and-drop indicator.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_DND = "dnd";
alias GTK_STYLE_CLASS_DND = STYLE_CLASS_DND;

/**
 * A CSS class defining a dock area.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_DOCK = "dock";
alias GTK_STYLE_CLASS_DOCK = STYLE_CLASS_DOCK;

/**
 * A CSS class to match text entries.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_ENTRY = "entry";
alias GTK_STYLE_CLASS_ENTRY = STYLE_CLASS_ENTRY;

/**
 * A CSS class for an area displaying an error message,
 * such as those in infobars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_ERROR = "error";
alias GTK_STYLE_CLASS_ERROR = STYLE_CLASS_ERROR;

/**
 * A CSS class defining an expander, such as those in treeviews.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_EXPANDER = "expander";
alias GTK_STYLE_CLASS_EXPANDER = STYLE_CLASS_EXPANDER;

/**
 * A CSS class that is added when widgets that usually have
 * a frame or border (like buttons or entries) should appear
 * without it.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_FLAT = "flat";
alias GTK_STYLE_CLASS_FLAT = STYLE_CLASS_FLAT;

/**
 * A CSS class defining a frame delimiting content, such as
 * #GtkFrame or the scrolled window frame around the
 * scrollable area.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_FRAME = "frame";
alias GTK_STYLE_CLASS_FRAME = STYLE_CLASS_FRAME;

/**
 * A CSS class to match a header element.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_HEADER = "header";
alias GTK_STYLE_CLASS_HEADER = STYLE_CLASS_HEADER;

/**
 * A CSS class defining a highlighted area, such as headings in
 * assistants and calendars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_HIGHLIGHT = "highlight";
alias GTK_STYLE_CLASS_HIGHLIGHT = STYLE_CLASS_HIGHLIGHT;

/**
 * A CSS class for horizontally layered widgets.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_HORIZONTAL = "horizontal";
alias GTK_STYLE_CLASS_HORIZONTAL = STYLE_CLASS_HORIZONTAL;

/**
 * A CSS class defining an image, such as the icon in an entry.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_IMAGE = "image";
alias GTK_STYLE_CLASS_IMAGE = STYLE_CLASS_IMAGE;

/**
 * A CSS class for an area displaying an informational message,
 * such as those in infobars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_INFO = "info";
alias GTK_STYLE_CLASS_INFO = STYLE_CLASS_INFO;

/**
 * A CSS class to match inline toolbars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_INLINE_TOOLBAR = "inline-toolbar";
alias GTK_STYLE_CLASS_INLINE_TOOLBAR = STYLE_CLASS_INLINE_TOOLBAR;

/**
 * A CSS class used when rendering a drag handle for
 * the insertion cursor position.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_INSERTION_CURSOR = "insertion-cursor";
alias GTK_STYLE_CLASS_INSERTION_CURSOR = STYLE_CLASS_INSERTION_CURSOR;

/**
 * A CSS class to match labels.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_LABEL = "label";
alias GTK_STYLE_CLASS_LABEL = STYLE_CLASS_LABEL;

/**
 * A CSS class to indicate an area at the left of a widget.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_LEFT = "left";
alias GTK_STYLE_CLASS_LEFT = STYLE_CLASS_LEFT;

/**
 * A CSS class used when rendering a level indicator, such
 * as a battery charge level, or a password strength.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_LEVEL_BAR = "level-bar";
alias GTK_STYLE_CLASS_LEVEL_BAR = STYLE_CLASS_LEVEL_BAR;

/**
 * A CSS class to match a linked area, such as a box containing buttons
 * belonging to the same control.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_LINKED = "linked";
alias GTK_STYLE_CLASS_LINKED = STYLE_CLASS_LINKED;

/**
 * A CSS class to match lists.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_LIST = "list";
alias GTK_STYLE_CLASS_LIST = STYLE_CLASS_LIST;

/**
 * A CSS class to match list rows.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_LIST_ROW = "list-row";
alias GTK_STYLE_CLASS_LIST_ROW = STYLE_CLASS_LIST_ROW;

/**
 * A CSS class defining marks in a widget, such as in scales.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_MARK = "mark";
alias GTK_STYLE_CLASS_MARK = STYLE_CLASS_MARK;

/**
 * A CSS class to match menus.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_MENU = "menu";
alias GTK_STYLE_CLASS_MENU = STYLE_CLASS_MENU;

/**
 * A CSS class to menubars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_MENUBAR = "menubar";
alias GTK_STYLE_CLASS_MENUBAR = STYLE_CLASS_MENUBAR;

/**
 * A CSS class to match menu items.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_MENUITEM = "menuitem";
alias GTK_STYLE_CLASS_MENUITEM = STYLE_CLASS_MENUITEM;

/**
 * A CSS class that is added to message dialogs.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_MESSAGE_DIALOG = "message-dialog";
alias GTK_STYLE_CLASS_MESSAGE_DIALOG = STYLE_CLASS_MESSAGE_DIALOG;

/**
 * A CSS class that is added to text view that should use
 * a monospace font.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_MONOSPACE = "monospace";
alias GTK_STYLE_CLASS_MONOSPACE = STYLE_CLASS_MONOSPACE;

/**
 * A CSS class used when an element needs the user attention,
 * for instance a button in a stack switcher corresponding to
 * a hidden page that changed state.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_NEEDS_ATTENTION = "needs-attention";
alias GTK_STYLE_CLASS_NEEDS_ATTENTION = STYLE_CLASS_NEEDS_ATTENTION;

/**
 * A CSS class defining a notebook.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_NOTEBOOK = "notebook";
alias GTK_STYLE_CLASS_NOTEBOOK = STYLE_CLASS_NOTEBOOK;

/**
 * A CSS class used when rendering an OSD (On Screen Display) element,
 * on top of another container.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_OSD = "osd";
alias GTK_STYLE_CLASS_OSD = STYLE_CLASS_OSD;

/**
 * A CSS class that is added on the visual hints that happen
 * when scrolling is attempted past the limits of a scrollable
 * area.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_OVERSHOOT = "overshoot";
alias GTK_STYLE_CLASS_OVERSHOOT = STYLE_CLASS_OVERSHOOT;

/**
 * A CSS class for a pane separator, such as those in #GtkPaned.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_PANE_SEPARATOR = "pane-separator";
alias GTK_STYLE_CLASS_PANE_SEPARATOR = STYLE_CLASS_PANE_SEPARATOR;

/**
 * A CSS class that is added to areas that should look like paper.
 *
 * This is used in print previews and themes are encouraged to
 * style it as black text on white background.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_PAPER = "paper";
alias GTK_STYLE_CLASS_PAPER = STYLE_CLASS_PAPER;

/**
 * A CSS class that matches popovers.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_POPOVER = "popover";
alias GTK_STYLE_CLASS_POPOVER = STYLE_CLASS_POPOVER;

/**
 * A CSS class that is added to the toplevel windows used for menus.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_POPUP = "popup";
alias GTK_STYLE_CLASS_POPUP = STYLE_CLASS_POPUP;

/**
 * A CSS class to match primary toolbars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_PRIMARY_TOOLBAR = "primary-toolbar";
alias GTK_STYLE_CLASS_PRIMARY_TOOLBAR = STYLE_CLASS_PRIMARY_TOOLBAR;

/**
 * A CSS class to use when rendering activity as a progressbar.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_PROGRESSBAR = "progressbar";
alias GTK_STYLE_CLASS_PROGRESSBAR = STYLE_CLASS_PROGRESSBAR;

/**
 * A CSS class to use when rendering a pulse in an indeterminate progress bar.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_PULSE = "pulse";
alias GTK_STYLE_CLASS_PULSE = STYLE_CLASS_PULSE;

/**
 * A CSS class for an area displaying a question to the user,
 * such as those in infobars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_QUESTION = "question";
alias GTK_STYLE_CLASS_QUESTION = STYLE_CLASS_QUESTION;

/**
 * A CSS class to match radio buttons.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_RADIO = "radio";
alias GTK_STYLE_CLASS_RADIO = STYLE_CLASS_RADIO;

/**
 * A CSS class to match a raised control, such as a raised
 * button on a toolbar.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_RAISED = "raised";
alias GTK_STYLE_CLASS_RAISED = STYLE_CLASS_RAISED;

/**
 * A CSS class used to indicate a read-only state.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_READ_ONLY = "read-only";
alias GTK_STYLE_CLASS_READ_ONLY = STYLE_CLASS_READ_ONLY;

/**
 * A CSS class to indicate an area at the right of a widget.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_RIGHT = "right";
alias GTK_STYLE_CLASS_RIGHT = STYLE_CLASS_RIGHT;

/**
 * A CSS class to match the rubberband selection rectangle.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_RUBBERBAND = "rubberband";
alias GTK_STYLE_CLASS_RUBBERBAND = STYLE_CLASS_RUBBERBAND;

/**
 * A CSS class to match scale widgets.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SCALE = "scale";
alias GTK_STYLE_CLASS_SCALE = STYLE_CLASS_SCALE;

/**
 * A CSS class to match scale widgets with marks attached,
 * all the marks are above for horizontal #GtkScale.
 * left for vertical #GtkScale.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SCALE_HAS_MARKS_ABOVE = "scale-has-marks-above";
alias GTK_STYLE_CLASS_SCALE_HAS_MARKS_ABOVE = STYLE_CLASS_SCALE_HAS_MARKS_ABOVE;

/**
 * A CSS class to match scale widgets with marks attached,
 * all the marks are below for horizontal #GtkScale,
 * right for vertical #GtkScale.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SCALE_HAS_MARKS_BELOW = "scale-has-marks-below";
alias GTK_STYLE_CLASS_SCALE_HAS_MARKS_BELOW = STYLE_CLASS_SCALE_HAS_MARKS_BELOW;

/**
 * A CSS class to match scrollbars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SCROLLBAR = "scrollbar";
alias GTK_STYLE_CLASS_SCROLLBAR = STYLE_CLASS_SCROLLBAR;

/**
 * A CSS class to match the junction area between a horizontal
 * and vertical scrollbar, when they’re both shown.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SCROLLBARS_JUNCTION = "scrollbars-junction";
alias GTK_STYLE_CLASS_SCROLLBARS_JUNCTION = STYLE_CLASS_SCROLLBARS_JUNCTION;

/**
 * A CSS class for a separator.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SEPARATOR = "separator";
alias GTK_STYLE_CLASS_SEPARATOR = STYLE_CLASS_SEPARATOR;

/**
 * A CSS class defining a sidebar, such as the left side in
 * a file chooser.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SIDEBAR = "sidebar";
alias GTK_STYLE_CLASS_SIDEBAR = STYLE_CLASS_SIDEBAR;

/**
 * A CSS class to match sliders.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SLIDER = "slider";
alias GTK_STYLE_CLASS_SLIDER = STYLE_CLASS_SLIDER;

/**
 * A CSS class defining a spinbutton.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SPINBUTTON = "spinbutton";
alias GTK_STYLE_CLASS_SPINBUTTON = STYLE_CLASS_SPINBUTTON;

/**
 * A CSS class to use when rendering activity as a “spinner”.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SPINNER = "spinner";
alias GTK_STYLE_CLASS_SPINNER = STYLE_CLASS_SPINNER;

/**
 * A CSS class to match statusbars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_STATUSBAR = "statusbar";
alias GTK_STYLE_CLASS_STATUSBAR = STYLE_CLASS_STATUSBAR;

/**
 * A CSS class used for the subtitle label in a titlebar in
 * a toplevel window.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SUBTITLE = "subtitle";
alias GTK_STYLE_CLASS_SUBTITLE = STYLE_CLASS_SUBTITLE;

/**
 * A CSS class used when an action (usually a button) is the
 * primary suggested action in a specific context.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_SUGGESTED_ACTION = "suggested-action";
alias GTK_STYLE_CLASS_SUGGESTED_ACTION = STYLE_CLASS_SUGGESTED_ACTION;

/**
 * A CSS class used for the title label in a titlebar in
 * a toplevel window.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_TITLE = "title";
alias GTK_STYLE_CLASS_TITLE = STYLE_CLASS_TITLE;

/**
 * A CSS class used when rendering a titlebar in a toplevel window.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_TITLEBAR = "titlebar";
alias GTK_STYLE_CLASS_TITLEBAR = STYLE_CLASS_TITLEBAR;

/**
 * A CSS class to match toolbars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_TOOLBAR = "toolbar";
alias GTK_STYLE_CLASS_TOOLBAR = STYLE_CLASS_TOOLBAR;

/**
 * A CSS class to match tooltip windows.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_TOOLTIP = "tooltip";
alias GTK_STYLE_CLASS_TOOLTIP = STYLE_CLASS_TOOLTIP;

/**
 * A CSS class to indicate an area at the top of a widget.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_TOP = "top";
alias GTK_STYLE_CLASS_TOP = STYLE_CLASS_TOP;

/**
 * A CSS class for touch selection popups on entries
 * and text views.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_TOUCH_SELECTION = "touch-selection";
alias GTK_STYLE_CLASS_TOUCH_SELECTION = STYLE_CLASS_TOUCH_SELECTION;

/**
 * A CSS class to match troughs, as in scrollbars and progressbars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_TROUGH = "trough";
alias GTK_STYLE_CLASS_TROUGH = STYLE_CLASS_TROUGH;

/**
 * A CSS class that is added on the visual hints that happen
 * where content is 'scrolled off' and can be made visible
 * by scrolling.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_UNDERSHOOT = "undershoot";
alias GTK_STYLE_CLASS_UNDERSHOOT = STYLE_CLASS_UNDERSHOOT;

/**
 * A CSS class for vertically layered widgets.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_VERTICAL = "vertical";
alias GTK_STYLE_CLASS_VERTICAL = STYLE_CLASS_VERTICAL;

/**
 * A CSS class defining a view, such as iconviews or treeviews.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_VIEW = "view";
alias GTK_STYLE_CLASS_VIEW = STYLE_CLASS_VIEW;

/**
 * A CSS class for an area displaying a warning message,
 * such as those in infobars.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_WARNING = "warning";
alias GTK_STYLE_CLASS_WARNING = STYLE_CLASS_WARNING;

/**
 * A CSS class to indicate that a UI element should be 'wide'.
 * Used by #GtkPaned.
 *
 * Refer to individual widget documentation for used style classes.
 */
enum STYLE_CLASS_WIDE = "wide";
alias GTK_STYLE_CLASS_WIDE = STYLE_CLASS_WIDE;

/**
 * A property holding the background color of rendered elements as a #GdkRGBA.
 */
enum STYLE_PROPERTY_BACKGROUND_COLOR = "background-color";
alias GTK_STYLE_PROPERTY_BACKGROUND_COLOR = STYLE_PROPERTY_BACKGROUND_COLOR;

/**
 * A property holding the element’s background as a #cairo_pattern_t.
 */
enum STYLE_PROPERTY_BACKGROUND_IMAGE = "background-image";
alias GTK_STYLE_PROPERTY_BACKGROUND_IMAGE = STYLE_PROPERTY_BACKGROUND_IMAGE;

/**
 * A property holding the element’s border color as a #GdkRGBA.
 */
enum STYLE_PROPERTY_BORDER_COLOR = "border-color";
alias GTK_STYLE_PROPERTY_BORDER_COLOR = STYLE_PROPERTY_BORDER_COLOR;

/**
 * A property holding the rendered element’s border radius in pixels as a #gint.
 */
enum STYLE_PROPERTY_BORDER_RADIUS = "border-radius";
alias GTK_STYLE_PROPERTY_BORDER_RADIUS = STYLE_PROPERTY_BORDER_RADIUS;

/**
 * A property holding the element’s border style as a #GtkBorderStyle.
 */
enum STYLE_PROPERTY_BORDER_STYLE = "border-style";
alias GTK_STYLE_PROPERTY_BORDER_STYLE = STYLE_PROPERTY_BORDER_STYLE;

/**
 * A property holding the rendered element’s border width in pixels as
 * a #GtkBorder. The border is the intermediary spacing property of the
 * padding/border/margin series.
 *
 * gtk_render_frame() uses this property to find out the frame line width,
 * so #GtkWidgets rendering frames may need to add up this padding when
 * requesting size
 */
enum STYLE_PROPERTY_BORDER_WIDTH = "border-width";
alias GTK_STYLE_PROPERTY_BORDER_WIDTH = STYLE_PROPERTY_BORDER_WIDTH;

/**
 * A property holding the foreground color of rendered elements as a #GdkRGBA.
 */
enum STYLE_PROPERTY_COLOR = "color";
alias GTK_STYLE_PROPERTY_COLOR = STYLE_PROPERTY_COLOR;

/**
 * A property holding the font properties used when rendering text
 * as a #PangoFontDescription.
 */
enum STYLE_PROPERTY_FONT = "font";
alias GTK_STYLE_PROPERTY_FONT = STYLE_PROPERTY_FONT;

/**
 * A property holding the rendered element’s margin as a #GtkBorder. The
 * margin is defined as the spacing between the border of the element
 * and its surrounding elements. It is external to #GtkWidget's
 * size allocations, and the most external spacing property of the
 * padding/border/margin series.
 */
enum STYLE_PROPERTY_MARGIN = "margin";
alias GTK_STYLE_PROPERTY_MARGIN = STYLE_PROPERTY_MARGIN;

/**
 * A property holding the rendered element’s padding as a #GtkBorder. The
 * padding is defined as the spacing between the inner part of the element border
 * and its child. It’s the innermost spacing property of the padding/border/margin
 * series.
 */
enum STYLE_PROPERTY_PADDING = "padding";
alias GTK_STYLE_PROPERTY_PADDING = STYLE_PROPERTY_PADDING;

/**
 * A priority that can be used when adding a #GtkStyleProvider
 * for application-specific style information.
 */
enum STYLE_PROVIDER_PRIORITY_APPLICATION = 600;
alias GTK_STYLE_PROVIDER_PRIORITY_APPLICATION = STYLE_PROVIDER_PRIORITY_APPLICATION;

/**
 * The priority used for default style information
 * that is used in the absence of themes.
 *
 * Note that this is not very useful for providing default
 * styling for custom style classes - themes are likely to
 * override styling provided at this priority with
 * catch-all `* {...}` rules.
 */
enum STYLE_PROVIDER_PRIORITY_FALLBACK = 1;
alias GTK_STYLE_PROVIDER_PRIORITY_FALLBACK = STYLE_PROVIDER_PRIORITY_FALLBACK;

/**
 * The priority used for style information provided
 * via #GtkSettings.
 *
 * This priority is higher than #GTK_STYLE_PROVIDER_PRIORITY_THEME
 * to let settings override themes.
 */
enum STYLE_PROVIDER_PRIORITY_SETTINGS = 400;
alias GTK_STYLE_PROVIDER_PRIORITY_SETTINGS = STYLE_PROVIDER_PRIORITY_SETTINGS;

/**
 * The priority used for style information provided
 * by themes.
 */
enum STYLE_PROVIDER_PRIORITY_THEME = 200;
alias GTK_STYLE_PROVIDER_PRIORITY_THEME = STYLE_PROVIDER_PRIORITY_THEME;

/**
 * The priority used for the style information from
 * `$XDG_CONFIG_HOME/gtk-4.0/gtk.css`.
 *
 * You should not use priorities higher than this, to
 * give the user the last word.
 */
enum STYLE_PROVIDER_PRIORITY_USER = 800;
alias GTK_STYLE_PROVIDER_PRIORITY_USER = STYLE_PROVIDER_PRIORITY_USER;

/**
 * The priority at which the text view validates onscreen lines
 * in an idle job in the background.
 */
enum TEXT_VIEW_PRIORITY_VALIDATE = 125;
alias GTK_TEXT_VIEW_PRIORITY_VALIDATE = TEXT_VIEW_PRIORITY_VALIDATE;

/**
 * The GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID can be used to make a
 * #GtkTreeSortable use the default sort function.
 *
 * See also gtk_tree_sortable_set_sort_column_id()
 */
enum TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID = -1;
alias GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID = TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID;

/**
 * The GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID can be used to make a
 * #GtkTreeSortable use no sorting.
 *
 * See also gtk_tree_sortable_set_sort_column_id()
 */
enum TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID = -2;
alias GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID = TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID;
