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

version(LDC)
{
	version(D_Version2)
	{
		extern(C) Object _d_newclass(ClassInfo ci);
	}
	else
	{
		extern (C) void* _d_allocclass(ClassInfo ci);
	}
}
else
{
	extern(C) Object _d_newclass(ClassInfo ci);
}

alias void GtkAccelGroupEntry;
alias void GtkContainerClass;

public struct GtkStylePropertiesPrivate{}
public struct GtkCellRendererClassPrivate{}


/**
 * typedef 	GdkRectangle	 GtkAllocation;
 * A GtkAllocation of a widget represents region
 * which has been allocated to the widget by its parent. It is a subregion
 * of its parents allocation. See the section called “Height-for-width Geometry Management” for
 * more information.
 */
public alias Rectangle GtkAllocation;
/** The GtkNotebookTab is not documented */
public enum GtkNotebookTab
{
	FIRST,
	LAST
}
alias GtkNotebookTab NotebookTab;
/**
 * The GtkDestDefaults enumeration specifies the various
 * types of action that will be taken on behalf
 * of the user for a drag destination site.
 * GTK_DEST_DEFAULT_MOTION
 * If set for a widget, GTK+, during a drag over this
 *  widget will check if the drag matches this widget's list of possible targets
 *  and actions.
 *  GTK+ will then call gdk_drag_status() as appropriate.
 * GTK_DEST_DEFAULT_HIGHLIGHT
 * If set for a widget, GTK+ will draw a highlight on
 *  this widget as long as a drag is over this widget and the widget drag format
 *  and action are acceptable.
 * GTK_DEST_DEFAULT_DROP
 * If set for a widget, when a drop occurs, GTK+ will
 *  will check if the drag matches this widget's list of possible targets and
 *  actions. If so, GTK+ will call gtk_drag_get_data() on behalf of the widget.
 *  Whether or not the drop is successful, GTK+ will call gtk_drag_finish(). If
 *  the action was a move, then if the drag was successful, then TRUE will be
 *  passed for the delete parameter to gtk_drag_finish().
 * GTK_DEST_DEFAULT_ALL
 * If set, specifies that all default actions should
 *  be taken.
 */
public enum GtkDestDefaults
{
	MOTION = 1 << 0, /+* respond to "dragMotion" +/
	HIGHLIGHT = 1 << 1, /+* auto-highlight +/
	DROP = 1 << 2, /+* respond to "dragDrop" +/
	ALL = 0x07
}
alias GtkDestDefaults DestDefaults;

/**
 * The GtkTargetFlags enumeration is used to specify
 * constraints on an entry in a GtkTargetTable.
 * GTK_TARGET_SAME_APP
 * If this is set, the target will only be selected
 *  for drags within a single application.
 * GTK_TARGET_SAME_WIDGET
 * If this is set, the target will only be selected
 *  for drags within a single widget.
 * GTK_TARGET_OTHER_APP
 * If this is set, the target will not be selected
 *  for drags within a single application.
 * GTK_TARGET_OTHER_WIDGET
 * If this is set, the target will not be selected
 *  for drags withing a single widget.
 */
public enum GtkTargetFlags
{
	SAME_APP = 1 << 0, /+*< nick=same-app >+/
	SAME_WIDGET = 1 << 1, /+*< nick=same-widget >+/
	OTHER_APP = 1 << 2, /+*< nick=other-app >+/
	OTHER_WIDGET = 1 << 3 /+*< nick=other-widget >+/
}
alias GtkTargetFlags TargetFlags;

public enum GtkAccelFlags
{
	VISIBLE = 1 << 0, /+* display inn GtkAccelLabel? +/
	LOCKED = 1 << 1, /+* is it removable? +/
	MASK = 0x07
}
alias GtkAccelFlags AccelFlags;

/**
 * Used to specify the placement of scroll arrows in scrolling menus.
 * GTK_ARROWS_BOTH
 * Place one arrow on each end of the menu.
 * GTK_ARROWS_START
 * Place both arrows at the top of the menu.
 * GTK_ARROWS_END
 * Place both arrows at the bottom of the menu.
 */
public enum GtkArrowPlacement
{
	ARROWS_BOTH,
	ARROWS_START,
	ARROWS_END
}
alias GtkArrowPlacement ArrowPlacement;

/**
 * Used to indicate the direction in which a GtkArrow should point.
 * GTK_ARROW_UP
 * Represents an upward pointing arrow.
 * GTK_ARROW_DOWN
 * Represents a downward pointing arrow.
 * GTK_ARROW_LEFT
 * Represents a left pointing arrow.
 * GTK_ARROW_RIGHT
 * Represents a right pointing arrow.
 * GTK_ARROW_NONE
 * No arrow. Since 2.10.
 */
public enum GtkArrowType
{
	UP,
	DOWN,
	LEFT,
	RIGHT,
	NONE
}
alias GtkArrowType ArrowType;

/**
 * Denotes the expansion properties that a widget will have when it (or its
 * parent) is resized.
 * GTK_EXPAND
 * the widget should expand to take up any extra space in its
 * container that has been allocated.
 * GTK_SHRINK
 * the widget should shrink as and when possible.
 * GTK_FILL
 * the widget should fill the space allocated to it.
 */
public enum GtkAttachOptions
{
	EXPAND = 1 << 0,
	SHRINK = 1 << 1,
	FILL = 1 << 2
}
alias GtkAttachOptions AttachOptions;

/**
 * Used to dictate the style that a GtkButtonBox uses to layout the buttons it
 * contains. (See also: GtkVButtonBox and GtkHButtonBox).
 * GTK_BUTTONBOX_SPREAD
 * Buttons are evenly spread across the box.
 * GTK_BUTTONBOX_EDGE
 * Buttons are placed at the edges of the box.
 * GTK_BUTTONBOX_START
 * Buttons are grouped towards the start of the box,
 *  (on the left for a HBox, or the top for a VBox).
 * GTK_BUTTONBOX_END
 * Buttons are grouped towards the end of the box,
 *  (on the right for a HBox, or the bottom for a VBox).
 * GTK_BUTTONBOX_CENTER
 * Buttons are centered in the box. Since 2.12.
 */
public enum GtkButtonBoxStyle
{
	SPREAD = 1,
	EDGE,
	START,
	END,
	CENTER
}
alias GtkButtonBoxStyle ButtonBoxStyle;

/**
 * Specifies which corner a child widget should be placed in when packed into
 * a GtkScrolledWindow. This is effectively the opposite of where the scroll
 * bars are placed.
 * GTK_CORNER_TOP_LEFT
 * Place the scrollbars on the right and bottom of the
 *  widget (default behaviour).
 * GTK_CORNER_BOTTOM_LEFT
 * Place the scrollbars on the top and right of the
 *  widget.
 * GTK_CORNER_TOP_RIGHT
 * Place the scrollbars on the left and bottom of the
 *  widget.
 * GTK_CORNER_BOTTOM_RIGHT
 * Place the scrollbars on the top and left of the
 *  widget.
 */
public enum GtkCornerType
{
	TOP_LEFT,
	BOTTOM_LEFT,
	TOP_RIGHT,
	BOTTOM_RIGHT
}
alias GtkCornerType CornerType;

public enum GtkDeleteType
{
	CHARS,
	WORD_ENDS, /+* delet only the portion of the word to the
	 * left/right of cursor if we're inn the middle
	 * of a word +/
	WORDS,
	DISPLAY_LINES,
	DISPLAY_LINE_ENDS,
	PARAGRAPH_ENDS, /+* like C-k inn Emacs (or its reverse) +/
	PARAGRAPHS, /+* C-k inn pico, kill whole line +/
	WHITESPACE /+* M-\ inn Emacs +/
}
alias GtkDeleteType DeleteType;

public enum GtkDirectionType
{
	TAB_FORWARD,
	TAB_BACKWARD,
	UP,
	DOWN,
	LEFT,
	RIGHT
}
alias GtkDirectionType DirectionType;

/**
 * Used to specify the style of the expanders drawn by a GtkTreeView.
 * GTK_EXPANDER_COLLAPSED
 * The style used for a collapsed subtree.
 * GTK_EXPANDER_SEMI_COLLAPSED
 * Intermediate style used during animation.
 * GTK_EXPANDER_SEMI_EXPANDED
 * Intermediate style used during animation.
 * GTK_EXPANDER_EXPANDED
 * The style used for an expanded subtree.
 */
public enum GtkExpanderStyle
{
	COLLAPSED,
	SEMI_COLLAPSED,
	SEMI_EXPANDED,
	EXPANDED
}
alias GtkExpanderStyle ExpanderStyle;

public enum GtkIMPreeditStyle
{
	NOTHING,
	CALLBACK,
	NONE
}
alias GtkIMPreeditStyle IMPreeditStyle;

public enum GtkIMStatusStyle
{
	NOTHING,
	CALLBACK,
	NONE
}
alias GtkIMStatusStyle IMStatusStyle;

/**
 * Used for justifying the text inside a GtkLabel widget. (See also
 * GtkAlignment).
 * GTK_JUSTIFY_LEFT
 * The text is placed at the left edge of the label.
 * GTK_JUSTIFY_RIGHT
 * The text is placed at the right edge of the label.
 * GTK_JUSTIFY_CENTER
 * The text is placed in the center of the label.
 * GTK_JUSTIFY_FILL
 * The text is placed is distributed across the label.
 */
public enum GtkJustification
{
	JUSTIFY_LEFT,
	JUSTIFY_RIGHT,
	JUSTIFY_CENTER,
	JUSTIFY_FILL
}
alias GtkJustification Justification;

/**
 * GTK_MOVEMENT_LOGICAL_POSITIONS
 * Move forward or back by graphemes
 * GTK_MOVEMENT_VISUAL_POSITIONS
 * Move left or right by graphemes
 * GTK_MOVEMENT_WORDS
 * Move forward or back by words
 * GTK_MOVEMENT_DISPLAY_LINES
 * Move up or down lines (wrapped lines)
 * GTK_MOVEMENT_DISPLAY_LINE_ENDS
 * Move to either end of a line
 * GTK_MOVEMENT_PARAGRAPHS
 * Move up or down paragraphs (newline-ended lines)
 * GTK_MOVEMENT_PARAGRAPH_ENDS
 * Move to either end of a paragraph
 * GTK_MOVEMENT_PAGES
 * Move by pages
 * GTK_MOVEMENT_BUFFER_ENDS
 * Move to ends of the buffer
 * GTK_MOVEMENT_HORIZONTAL_PAGES
 * Move horizontally by pages
 */
public enum GtkMovementStep
{
	LOGICAL_POSITIONS,
	VISUAL_POSITIONS,
	WORDS,
	DISPLAY_LINES,
	DISPLAY_LINE_ENDS,
	PARAGRAPHS,
	PARAGRAPH_ENDS,
	PAGES,
	BUFFER_ENDS,
	HORIZONTAL_PAGES
}
alias GtkMovementStep MovementStep;

/**
 * Represents the orientation of widgets which can be switched between horizontal
 * and vertical orientation on the fly, like GtkToolbar.
 * GTK_ORIENTATION_HORIZONTAL
 * The widget is in horizontal orientation.
 * GTK_ORIENTATION_VERTICAL
 * The widget is in vertical orientation.
 */
public enum GtkOrientation
{
	HORIZONTAL,
	VERTICAL
}
alias GtkOrientation Orientation;

/**
 * Represents the packing location GtkBox children. (See: GtkVBox,
 * GtkHBox, and GtkButtonBox).
 * GTK_PACK_START
 * The child is packed into the start of the box
 * GTK_PACK_END
 * The child is packed into the end of the box
 */
public enum GtkPackType
{
	START,
	END
}
alias GtkPackType PackType;

public enum GtkPathPriorityType
{
	LOWEST = 0,
	GTK = 4,
	APPLICATION = 8,
	THEME = 10,
	RC = 12,
	HIGHEST = 15
}
alias GtkPathPriorityType PathPriorityType;

public enum GtkPathType
{
	WIDGET,
	WIDGET_CLASS,
	CLASS
}
alias GtkPathType PathType;

/**
 * Determines when a scroll bar will be visible.
 * GTK_POLICY_ALWAYS
 * The scrollbar is always visible.
 * GTK_POLICY_AUTOMATIC
 * The scrollbar will appear and disappear as necessary. For example,
 *  when all of a GtkCList can not be seen.
 * GTK_POLICY_NEVER
 * The scrollbar will never appear.
 */
public enum GtkPolicyType
{
	ALWAYS,
	AUTOMATIC,
	NEVER
}
alias GtkPolicyType PolicyType;

/**
 * Describes which edge of a widget a certain feature is positioned at, e.g. the
 * tabs of a GtkNotebook, the handle of a GtkHandleBox or the label of a
 * GtkScale.
 * GTK_POS_LEFT
 * The feature is at the left edge.
 * GTK_POS_RIGHT
 * The feature is at the right edge.
 * GTK_POS_TOP
 * The feature is at the top edge.
 * GTK_POS_BOTTOM
 * The feature is at the bottom edge.
 */
public enum GtkPositionType
{
	LEFT,
	RIGHT,
	TOP,
	BOTTOM
}
alias GtkPositionType PositionType;

/**
 * Indicated the relief to be drawn around a GtkButton.
 * GTK_RELIEF_NORMAL
 * Draw a normal relief.
 * GTK_RELIEF_HALF
 * A half relief.
 * GTK_RELIEF_NONE
 * No relief.
 */
public enum GtkReliefStyle
{
	NORMAL,
	HALF,
	NONE
}
alias GtkReliefStyle ReliefStyle;

/**
 * GTK_RESIZE_PARENT
 * Pass resize request to the parent
 * GTK_RESIZE_QUEUE
 * Queue resizes on this widget
 * GTK_RESIZE_IMMEDIATE
 * Resize immediately. Deprecated.
 */
public enum GtkResizeMode
{
	PARENT,
	QUEUE,
	IMMEDIATE
}
alias GtkResizeMode ResizeMode;

public enum GtkScrollStep
{
	STEPS,
	PAGES,
	ENDS,
	HORIZONTAL_STEPS,
	HORIZONTAL_PAGES,
	HORIZONTAL_ENDS
}
alias GtkScrollStep ScrollStep;

public enum GtkScrollType
{
	NONE,
	JUMP,
	STEP_BACKWARD,
	STEP_FORWARD,
	PAGE_BACKWARD,
	PAGE_FORWARD,
	STEP_UP,
	STEP_DOWN,
	PAGE_UP,
	PAGE_DOWN,
	STEP_LEFT,
	STEP_RIGHT,
	PAGE_LEFT,
	PAGE_RIGHT,
	START,
	END
}
alias GtkScrollType ScrollType;

/**
 * Used to control what selections users are allowed to make.
 * GTK_SELECTION_NONE
 * No selection is possible.
 * GTK_SELECTION_SINGLE
 * Zero or one element may be selected.
 * GTK_SELECTION_BROWSE
 * Exactly one element is selected.
 *  In some circumstances, such as initially or during a search
 *  operation, it's possible for no element to be selected with
 *  GTK_SELECTION_BROWSE. What is really enforced is that the user
 *  can't deselect a currently selected element except by selecting
 *  another element.
 * GTK_SELECTION_MULTIPLE
 * Any number of elements may be selected.
 *  The Ctrl key may be used to enlarge the selection, and Shift
 *  key to select between the focus and the child pointed to.
 *  Some widgets may also allow Click-drag to select a range of elements.
 */
public enum GtkSelectionMode
{
	NONE,
	SINGLE,
	BROWSE,
	MULTIPLE
}
alias GtkSelectionMode SelectionMode;

/**
 * Used to change the appearance of an outline typically provided by a GtkFrame.
 * GTK_SHADOW_NONE
 * No outline.
 * GTK_SHADOW_IN
 * The outline is bevelled inwards.
 * GTK_SHADOW_OUT
 * The outline is bevelled outwards like a button.
 * GTK_SHADOW_ETCHED_IN
 * The outline has a sunken 3d appearance.
 * GTK_SHADOW_ETCHED_OUT
 * The outline has a raised 3d appearance.
 */
public enum GtkShadowType
{
	NONE,
	IN,
	OUT,
	ETCHED_IN,
	ETCHED_OUT
}
alias GtkShadowType ShadowType;

/**
 * This type indicates the current state of a widget; the state determines how
 * the widget is drawn. The GtkStateType enumeration is also used to
 * identify different colors in a GtkStyle for drawing, so states can be
 * used for subparts of a widget as well as entire widgets.
 * GTK_STATE_NORMAL
 * State during normal operation.
 * GTK_STATE_ACTIVE
 * State of a currently active widget, such as a depressed button.
 * GTK_STATE_PRELIGHT
 * State indicating that the mouse pointer is over
 *  the widget and the widget will respond to mouse clicks.
 * GTK_STATE_SELECTED
 * State of a selected item, such the selected row in a list.
 * GTK_STATE_INSENSITIVE
 * State indicating that the widget is
 *  unresponsive to user actions.
 * GTK_STATE_INCONSISTENT
 * The widget is inconsistent, such as checkbuttons
 *  or radiobuttons that aren't either set to TRUE nor FALSE,
 *  or buttons requiring the user attention.
 * GTK_STATE_FOCUSED
 * The widget has the keyboard focus.
 */
public enum GtkStateType
{
	NORMAL,
	ACTIVE,
	PRELIGHT,
	SELECTED,
	INSENSITIVE,
	INCONSISTENT,
	FOCUSED
}
alias GtkStateType StateType;

/**
 * Describes a widget state. Widget states are used to match the widget
 * against CSS pseudo-classes. Note that GTK extends the regular CSS
 * classes and sometimes uses different names.
 * GTK_STATE_FLAG_NORMAL
 * State during normal operation.
 * GTK_STATE_FLAG_ACTIVE
 * Widget is active.
 * GTK_STATE_FLAG_PRELIGHT
 * Widget has a mouse pointer over it.
 * GTK_STATE_FLAG_SELECTED
 * Widget is selected.
 * GTK_STATE_FLAG_INSENSITIVE
 * Widget is insensitive.
 * GTK_STATE_FLAG_INCONSISTENT
 * Widget is inconsistent.
 * GTK_STATE_FLAG_FOCUSED
 * Widget has the keyboard focus.
 * GTK_STATE_FLAG_BACKDROP
 * Widget is in a background toplevel window.
 * GTK_STATE_FLAG_DIR_LTR
 * Widget is in left-to-right text direction. Since 3.8
 * GTK_STATE_FLAG_DIR_RTL
 * Widget is in right-to-left text direction. Since 3.8
 */
public enum GtkStateFlags
{
	NORMAL = 0,
	ACTIVE = 1 << 0,
	PRELIGHT = 1 << 1,
	SELECTED = 1 << 2,
	INSENSITIVE = 1 << 3,
	INCONSISTENT = 1 << 4,
	FOCUSED = 1 << 5,
	BACKDROP = 1 << 6,
	DIR_LTR = 1 << 7,
	DIR_RTL = 1 << 8
}
alias GtkStateFlags StateFlags;

/**
 * Used to customize the appearance of a GtkToolbar. Note that
 * setting the toolbar style overrides the user's preferences
 * for the default toolbar style. Note that if the button has only
 * a label set and GTK_TOOLBAR_ICONS is used, the label will be
 * visible, and vice versa.
 * GTK_TOOLBAR_ICONS
 * Buttons display only icons in the toolbar.
 * GTK_TOOLBAR_TEXT
 * Buttons display only text labels in the toolbar.
 * GTK_TOOLBAR_BOTH
 * Buttons display text and icons in the toolbar.
 * GTK_TOOLBAR_BOTH_HORIZ
 * Buttons display icons and text alongside each
 *  other, rather than vertically stacked
 */
public enum GtkToolbarStyle
{
	ICONS,
	TEXT,
	BOTH,
	BOTH_HORIZ
}
alias GtkToolbarStyle ToolbarStyle;

/**
 * Window placement can be influenced using this enumeration. Note that
 * using GTK_WIN_POS_CENTER_ALWAYS is almost always a bad idea.
 * It won't necessarily work well with all window managers or on all windowing systems.
 * GTK_WIN_POS_NONE
 * No influence is made on placement.
 * GTK_WIN_POS_CENTER
 * Windows should be placed in the center of the screen.
 * GTK_WIN_POS_MOUSE
 * Windows should be placed at the current mouse position.
 * GTK_WIN_POS_CENTER_ALWAYS
 * Keep window centered as it changes size, etc.
 * GTK_WIN_POS_CENTER_ON_PARENT
 * Center the window on its transient
 *  parent (see gtk_window_set_transient_for()).
 */
public enum GtkWindowPosition
{
	POS_NONE,
	POS_CENTER,
	POS_MOUSE,
	POS_CENTER_ALWAYS,
	POS_CENTER_ON_PARENT
}
alias GtkWindowPosition WindowPosition;

/**
 * A GtkWindow can be one of these types. Most things you'd consider a
 * "window" should have type GTK_WINDOW_TOPLEVEL; windows with this type
 * are managed by the window manager and have a frame by default (call
 * gtk_window_set_decorated() to toggle the frame). Windows with type
 * GTK_WINDOW_POPUP are ignored by the window manager; window manager
 * keybindings won't work on them, the window manager won't decorate the
 * window with a frame, many GTK+ features that rely on the window
 * manager will not work (e.g. resize grips and
 * maximization/minimization). GTK_WINDOW_POPUP is used to implement
 * widgets such as GtkMenu or tooltips that you normally don't think of
 * as windows per se. Nearly all windows should be GTK_WINDOW_TOPLEVEL.
 * In particular, do not use GTK_WINDOW_POPUP just to turn off
 * the window borders; use gtk_window_set_decorated() for that.
 * GTK_WINDOW_TOPLEVEL
 * A regular window, such as a dialog.
 * GTK_WINDOW_POPUP
 * A special window such as a tooltip.
 */
public enum GtkWindowType
{
	TOPLEVEL,
	POPUP
}
alias GtkWindowType WindowType;

/**
 * Determines the direction of a sort.
 * GTK_SORT_ASCENDING
 * Sorting is in ascending order.
 * GTK_SORT_DESCENDING
 * Sorting is in descending order.
 */
public enum GtkSortType
{
	ASCENDING,
	DESCENDING
}
alias GtkSortType SortType;

/**
 * Gives an indication why a drag operation failed.
 * The value can by obtained by connecting to the
 * "drag-failed" signal.
 * GTK_DRAG_RESULT_SUCCESS
 * The drag operation was successful.
 * GTK_DRAG_RESULT_NO_TARGET
 * No suitable drag target.
 * GTK_DRAG_RESULT_USER_CANCELLED
 * The user cancelled the drag operation.
 * GTK_DRAG_RESULT_TIMEOUT_EXPIRED
 * The drag operation timed out.
 * GTK_DRAG_RESULT_GRAB_BROKEN
 * The pointer or keyboard grab used
 *  for the drag operation was broken.
 * GTK_DRAG_RESULT_ERROR
 * The drag operation failed due to some
 *  unspecified error.
 */
public enum GtkDragResult
{
	SUCCESS,
	NO_TARGET,
	USER_CANCELLED,
	TIMEOUT_EXPIRED,
	GRAB_BROKEN,
	ERROR
}
alias GtkDragResult DragResult;

/**
 * Describes how a rendered element connects to adjacent elements.
 * GTK_JUNCTION_NONE
 * No junctions.
 * GTK_JUNCTION_CORNER_TOPLEFT
 * Element connects on the top-left corner.
 * GTK_JUNCTION_CORNER_TOPRIGHT
 * Element connects on the top-right corner.
 * GTK_JUNCTION_CORNER_BOTTOMLEFT
 * Element connects on the bottom-left corner.
 * GTK_JUNCTION_CORNER_BOTTOMRIGHT
 * Element connects on the bottom-right corner.
 * GTK_JUNCTION_TOP
 * Element connects on the top side.
 * GTK_JUNCTION_BOTTOM
 * Element connects on the bottom side.
 * GTK_JUNCTION_LEFT
 * Element connects on the left side.
 * GTK_JUNCTION_RIGHT
 * Element connects on the right side.
 */
public enum GtkJunctionSides
{
	NONE = 0,
	CORNER_TOPLEFT = 1 << 0,
	CORNER_TOPRIGHT = 1 << 1,
	CORNER_BOTTOMLEFT = 1 << 2,
	CORNER_BOTTOMRIGHT = 1 << 3,
	TOP = (CORNER_TOPLEFT | CORNER_TOPRIGHT),
	BOTTOM = (CORNER_BOTTOMLEFT | CORNER_BOTTOMRIGHT),
	LEFT = (CORNER_TOPLEFT | CORNER_BOTTOMLEFT),
	RIGHT = (CORNER_TOPRIGHT | CORNER_BOTTOMRIGHT)
}
alias GtkJunctionSides JunctionSides;

/**
 * Describes how the border of a UI element should be rendered.
 * GTK_BORDER_STYLE_NONE
 * No visible border
 * GTK_BORDER_STYLE_SOLID
 * A single line segment
 * GTK_BORDER_STYLE_INSET
 * Looks as if the content is sunken into the canvas
 * GTK_BORDER_STYLE_OUTSET
 * Looks as if the content is coming out of the canvas
 * GTK_BORDER_STYLE_HIDDEN
 * Same as GTK_BORDER_STYLE_NONE
 * GTK_BORDER_STYLE_DOTTED
 * A series of round dots
 * GTK_BORDER_STYLE_DASHED
 * A series of square-ended dashes
 * GTK_BORDER_STYLE_DOUBLE
 * Two parallel lines with some space between them
 * GTK_BORDER_STYLE_GROOVE
 * Looks as if it were carved in the canvas
 * GTK_BORDER_STYLE_RIDGE
 * Looks as if it were coming out of the canvas
 */
public enum GtkBorderStyle
{
	NONE,
	SOLID,
	INSET,
	OUTSET,
	HIDDEN,
	DOTTED,
	DASHED,
	DOUBLE,
	GROOVE,
	RIDGE
}
alias GtkBorderStyle BorderStyle;

/**
 * Describes a region within a widget.
 * GTK_REGION_EVEN
 * Region has an even number within a set.
 * GTK_REGION_ODD
 * Region has an odd number within a set.
 * GTK_REGION_FIRST
 * Region is the first one within a set.
 * GTK_REGION_LAST
 * Region is the last one within a set.
 * GTK_REGION_ONLY
 * Region is the only one within a set.
 * GTK_REGION_SORTED
 * Region is part of a sorted area.
 */
public enum GtkRegionFlags
{
	EVEN = 1 << 0,
	ODD = 1 << 1,
	FIRST = 1 << 2,
	LAST = 1 << 3,
	ONLY = 1 << 4,
	SORTED = 1 << 5
}
alias GtkRegionFlags RegionFlags;

public enum GtkCssProviderError
{
	FAILED,
	SYNTAX,
	IMPORT,
	NAME,
	DEPRECATED,
	UNKNOWN_VALUE
}
alias GtkCssProviderError CssProviderError;

/**
 * The different types of sections indicate parts of a CSS document as
 * parsed by GTK's CSS parser. They are oriented towards the CSS grammar
 * CSS grammer,
 * but may contain extensions.
 * More types might be added in the future as the parser incorporates
 * more features.
 * GTK_CSS_SECTION_DOCUMENT
 * The section describes a complete document.
 *  This section time is the only one where gtk_css_section_get_parent()
 *  might return NULL.
 * GTK_CSS_SECTION_IMPORT
 * The section defines an import rule.
 * GTK_CSS_SECTION_COLOR_DEFINITION
 * The section defines a color. This
 *  is a GTK extension to CSS.
 * GTK_CSS_SECTION_BINDING_SET
 * The section defines a binding set. This
 *  is a GTK extension to CSS.
 * GTK_CSS_SECTION_RULESET
 * The section defines a CSS ruleset.
 * GTK_CSS_SECTION_SELECTOR
 * The section defines a CSS selector.
 * GTK_CSS_SECTION_DECLARATION
 * The section defines the declaration of
 *  a CSS variable.
 * GTK_CSS_SECTION_VALUE
 * The section defines the value of a CSS declaration.
 * GTK_CSS_SECTION_KEYFRAMES
 * The section defines keyframes. See CSS
 *  animations for details. Since 3.6
 * Since 3.2
 */
public enum GtkCssSectionType
{
	DOCUMENT,
	IMPORT,
	COLOR_DEFINITION,
	BINDING_SET,
	RULESET,
	SELECTOR,
	DECLARATION,
	VALUE,
	KEYFRAMES
}
alias GtkCssSectionType CssSectionType;

/**
 * Used to specify options for gtk_icon_theme_lookup_icon()
 * GTK_ICON_LOOKUP_NO_SVG
 * Never return SVG icons, even if gdk-pixbuf
 *  supports them. Cannot be used together with GTK_ICON_LOOKUP_FORCE_SVG.
 * GTK_ICON_LOOKUP_FORCE_SVG
 * Return SVG icons, even if gdk-pixbuf
 *  doesn't support them.
 *  Cannot be used together with GTK_ICON_LOOKUP_NO_SVG.
 * GTK_ICON_LOOKUP_USE_BUILTIN
 * When passed to
 *  gtk_icon_theme_lookup_icon() includes builtin icons
 *  as well as files. For a builtin icon, gtk_icon_info_get_filename()
 *  returns NULL and you need to call gtk_icon_info_get_builtin_pixbuf().
 * GTK_ICON_LOOKUP_GENERIC_FALLBACK
 * Try to shorten icon name at '-'
 *  characters before looking at inherited themes. For more general
 *  fallback, see gtk_icon_theme_choose_icon(). Since 2.12.
 * GTK_ICON_LOOKUP_FORCE_SIZE
 * Always return the icon scaled to the
 *  requested size. Since 2.14.
 */
public enum GtkIconLookupFlags
{
	NO_SVG = 1 << 0,
	FORCE_SVG = 1 << 1,
	USE_BUILTIN = 1 << 2,
	GENERIC_FALLBACK = 1 << 3,
	FORCE_SIZE = 1 << 4
}
alias GtkIconLookupFlags IconLookupFlags;

/**
 * Error codes for GtkIconTheme operations.
 * GTK_ICON_THEME_NOT_FOUND
 * The icon specified does not exist in the theme
 * GTK_ICON_THEME_FAILED
 * An unspecified error occurred.
 */
public enum GtkIconThemeError
{
	NOT_FOUND,
	FAILED
}
alias GtkIconThemeError IconThemeError;

public enum GtkIconSize
{
	INVALID,
	MENU,
	SMALL_TOOLBAR,
	LARGE_TOOLBAR,
	BUTTON,
	DND,
	DIALOG
}
alias GtkIconSize IconSize;

public enum GtkRcFlags
{
	FG = 1 << 0,
	BG = 1 << 1,
	TEXT = 1 << 2,
	BASE = 1 << 3
}
alias GtkRcFlags RcFlags;

/**
 * Warning
 * GtkRcTokenType has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkCssProvider instead.
 * The GtkRcTokenType enumeration represents the tokens
 * in the RC file. It is exposed so that theme engines
 * can reuse these tokens when parsing the theme-engine
 * specific portions of a RC file.
 */
public enum GtkRcTokenType
{
	INVALID = TokenType.LAST,
	INCLUDE,
	NORMAL,
	ACTIVE,
	PRELIGHT,
	SELECTED,
	INSENSITIVE,
	FG,
	BG,
	TEXT,
	BASE,
	XTHICKNESS,
	YTHICKNESS,
	FONT,
	FONTSET,
	FONT_NAME,
	BG_PIXMAP,
	PIXMAP_PATH,
	STYLE,
	BINDING,
	BIND,
	WIDGET,
	WIDGET_CLASS,
	CLASS,
	LOWEST,
	GTK,
	APPLICATION,
	THEME,
	RC,
	HIGHEST,
	ENGINE,
	MODULE_PATH,
	IM_MODULE_PATH,
	IM_MODULE_FILE,
	STOCK,
	LTR,
	RTL,
	COLOR,
	UNBIND,
	LAST
}
alias GtkRcTokenType RcTokenType;

/**
 * Flags used to influence dialog construction.
 * GTK_DIALOG_MODAL
 * Make the constructed dialog modal,
 *  see gtk_window_set_modal()
 * GTK_DIALOG_DESTROY_WITH_PARENT
 * Destroy the dialog when its
 *  parent is destroyed, see gtk_window_set_destroy_with_parent()
 */
public enum GtkDialogFlags
{
	MODAL = 1 << 0,
	DESTROY_WITH_PARENT = 1 << 1
}
alias GtkDialogFlags DialogFlags;

/**
 * Predefined values for use as response ids in gtk_dialog_add_button().
 * All predefined values are negative, GTK+ leaves positive values for
 * application-defined response ids.
 * GTK_RESPONSE_NONE
 * Returned if an action widget has no response id,
 *  or if the dialog gets programmatically hidden or destroyed
 * GTK_RESPONSE_REJECT
 * Generic response id, not used by GTK+ dialogs
 * GTK_RESPONSE_ACCEPT
 * Generic response id, not used by GTK+ dialogs
 * GTK_RESPONSE_DELETE_EVENT
 * Returned if the dialog is deleted
 * GTK_RESPONSE_OK
 * Returned by OK buttons in GTK+ dialogs
 * GTK_RESPONSE_CANCEL
 * Returned by Cancel buttons in GTK+ dialogs
 * GTK_RESPONSE_CLOSE
 * Returned by Close buttons in GTK+ dialogs
 * GTK_RESPONSE_YES
 * Returned by Yes buttons in GTK+ dialogs
 * GTK_RESPONSE_NO
 * Returned by No buttons in GTK+ dialogs
 * GTK_RESPONSE_APPLY
 * Returned by Apply buttons in GTK+ dialogs
 * GTK_RESPONSE_HELP
 * Returned by Help buttons in GTK+ dialogs
 */
public enum GtkResponseType
{
	NONE = -1,
	REJECT = -2,
	ACCEPT = -3,
	DELETE_EVENT = -4,
	OK = -5,
	CANCEL = -6,
	CLOSE = -7,
	YES = -8,
	NO = -9,
	APPLY = -10,
	HELP = -11
}
alias GtkResponseType ResponseType;

/**
 * The type of message being displayed in the dialog.
 * GTK_MESSAGE_INFO
 * Informational message
 * GTK_MESSAGE_WARNING
 * Non-fatal warning message
 * GTK_MESSAGE_QUESTION
 * Question requiring a choice
 * GTK_MESSAGE_ERROR
 * Fatal error message
 * GTK_MESSAGE_OTHER
 * None of the above, doesn't get an icon
 */
public enum GtkMessageType
{
	INFO,
	WARNING,
	QUESTION,
	ERROR,
	OTHER
}
alias GtkMessageType MessageType;

/**
 * Prebuilt sets of buttons for the dialog. If
 * none of these choices are appropriate, simply use GTK_BUTTONS_NONE
 * then call gtk_dialog_add_buttons().
 * Note
 *  Please note that GTK_BUTTONS_OK, GTK_BUTTONS_YES_NO
 *  and GTK_BUTTONS_OK_CANCEL are discouraged by the
 *  GNOME HIG.
 * GTK_BUTTONS_NONE
 * no buttons at all
 * GTK_BUTTONS_OK
 * an OK button
 * GTK_BUTTONS_CLOSE
 * a Close button
 * GTK_BUTTONS_CANCEL
 * a Cancel button
 * GTK_BUTTONS_YES_NO
 * Yes and No buttons
 * GTK_BUTTONS_OK_CANCEL
 * OK and Cancel buttons
 */
public enum GtkButtonsType
{
	NONE,
	OK,
	CLOSE,
	CANCEL,
	YES_NO,
	OK_CANCEL
}
alias GtkButtonsType ButtonsType;

/**
 * The type of license for an application.
 * This enumeration can be expanded at later date.
 * GTK_LICENSE_UNKNOWN
 * No license specified
 * GTK_LICENSE_CUSTOM
 * A license text is going to be specified by the
 *  developer
 * GTK_LICENSE_GPL_2_0
 * The GNU General Public License, version 2.0
 * GTK_LICENSE_GPL_3_0
 * The GNU General Public License, version 3.0
 * GTK_LICENSE_LGPL_2_1
 * The GNU Lesser General Public License, version 2.1
 * GTK_LICENSE_LGPL_3_0
 * The GNU Lesser General Public License, version 3.0
 * GTK_LICENSE_BSD
 * The BSD standard license
 * GTK_LICENSE_MIT_X11
 * The MIT/X11 standard license
 * GTK_LICENSE_ARTISTIC
 * The Artistic License, version 2.0
 * Since 3.0
 */
public enum GtkLicense
{
	UNKNOWN,
	CUSTOM,
	GPL_2_0,
	GPL_3_0,
	LGPL_2_1,
	LGPL_3_0,
	BSD,
	MIT_X11,
	ARTISTIC
}
alias GtkLicense License;

/**
 * An enum for determining the page role inside the GtkAssistant. It's
 * used to handle buttons sensitivity and visibility.
 * Note that an assistant needs to end its page flow with a page of type
 * GTK_ASSISTANT_PAGE_CONFIRM, GTK_ASSISTANT_PAGE_SUMMARY or
 * GTK_ASSISTANT_PAGE_PROGRESS to be correct.
 * The Cancel button will only be shown if the page isn't "committed".
 * See gtk_assistant_commit() for details.
 * GTK_ASSISTANT_PAGE_CONTENT
 * The page has regular contents. Both the
 *  Back and forward buttons will be shown.
 * GTK_ASSISTANT_PAGE_INTRO
 * The page contains an introduction to the
 *  assistant task. Only the Forward button will be shown if there is a
 *  next page.
 * GTK_ASSISTANT_PAGE_CONFIRM
 * The page lets the user confirm or deny the
 *  changes. The Back and Apply buttons will be shown.
 * GTK_ASSISTANT_PAGE_SUMMARY
 * The page informs the user of the changes
 *  done. Only the Close button will be shown.
 * GTK_ASSISTANT_PAGE_PROGRESS
 * Used for tasks that take a long time to
 *  complete, blocks the assistant until the page is marked as complete.
 *  Only the back button will be shown.
 * GTK_ASSISTANT_PAGE_CUSTOM
 * Used for when other page types are not
 *  appropriate. No buttons will be shown, and the application must
 *  add its own buttons through gtk_assistant_add_action_widget().
 */
public enum GtkAssistantPageType
{
	CONTENT,
	INTRO,
	CONFIRM,
	SUMMARY,
	PROGRESS,
	CUSTOM
}
alias GtkAssistantPageType AssistantPageType;

/**
 * Describes the image data representation used by a GtkImage. If you
 * want to get the image from the widget, you can only get the
 * currently-stored representation. e.g. if the
 * gtk_image_get_storage_type() returns GTK_IMAGE_PIXBUF, then you can
 * call gtk_image_get_pixbuf() but not gtk_image_get_stock(). For empty
 * images, you can request any storage type (call any of the "get"
 * functions), but they will all return NULL values.
 * GTK_IMAGE_EMPTY
 * there is no image displayed by the widget
 * GTK_IMAGE_PIXBUF
 * the widget contains a GdkPixbuf
 * GTK_IMAGE_STOCK
 * the widget contains a stock icon name (see
 *  Stock Items(3))
 * GTK_IMAGE_ICON_SET
 * the widget contains a GtkIconSet
 * GTK_IMAGE_ANIMATION
 * the widget contains a GdkPixbufAnimation
 * GTK_IMAGE_ICON_NAME
 * the widget contains a named icon.
 *  This image type was added in GTK+ 2.6
 * GTK_IMAGE_GICON
 * the widget contains a GIcon.
 *  This image type was added in GTK+ 2.14
 */
public enum GtkImageType
{
	EMPTY,
	PIXBUF,
	STOCK,
	ICON_SET,
	ANIMATION,
	ICON_NAME,
	GICON
}
alias GtkImageType ImageType;

/**
 * Describes how GtkLevelBar contents should be rendered.
 * Note that this enumeration could be extended with additional modes
 * in the future.
 * GTK_LEVEL_BAR_MODE_CONTINUOUS
 * the bar has a continuous mode
 * GTK_LEVEL_BAR_MODE_DISCRETE
 * the bar has a discrete mode
 * Since 3.6
 */
public enum GtkLevelBarMode
{
	MODE_CONTINUOUS,
	MODE_DISCRETE
}
alias GtkLevelBarMode LevelBarMode;

/**
 * Specifies the side of the entry at which an icon is placed.
 * GTK_ENTRY_ICON_PRIMARY
 * At the beginning of the entry (depending on the text direction).
 * GTK_ENTRY_ICON_SECONDARY
 * At the end of the entry (depending on the text direction).
 * Since 2.16
 */
public enum GtkEntryIconPosition
{
	PRIMARY,
	SECONDARY
}
alias GtkEntryIconPosition EntryIconPosition;

/**
 * Describes primary purpose of the input widget. This information is
 * useful for on-screen keyboards and similar input methods to decide
 * which keys should be presented to the user.
 * Note that the purpose is not meant to impose a totally strict rule
 * about allowed characters, and does not replace input validation.
 * It is fine for an on-screen keyboard to let the user override the
 * character set restriction that is expressed by the purpose. The
 * application is expected to validate the entry contents, even if
 * it specified a purpose.
 * The difference between GTK_INPUT_PURPOSE_DIGITS and
 * GTK_INPUT_PURPOSE_NUMBER is that the former accepts only digits
 * while the latter also some punctuation (like commas or points, plus,
 * minus) and 'e' or 'E' as in 3.14E+000.
 * This enumeration may be extended in the future; input methods should
 * interpret unknown values as 'free form'.
 * GTK_INPUT_PURPOSE_FREE_FORM
 * Allow any character
 * GTK_INPUT_PURPOSE_ALPHA
 * Allow only alphabetic characters
 * GTK_INPUT_PURPOSE_DIGITS
 * Allow only digits
 * GTK_INPUT_PURPOSE_NUMBER
 * Edited field expects numbers
 * GTK_INPUT_PURPOSE_PHONE
 * Edited field expects phone number
 * GTK_INPUT_PURPOSE_URL
 * Edited field expects URL
 * GTK_INPUT_PURPOSE_EMAIL
 * Edited field expects email address
 * GTK_INPUT_PURPOSE_NAME
 * Edited field expects the name of a person
 * GTK_INPUT_PURPOSE_PASSWORD
 * Like GTK_INPUT_PURPOSE_FREE_FORM, but characters are hidden
 * GTK_INPUT_PURPOSE_PIN
 * Like GTK_INPUT_PURPOSE_DIGITS, but characters are hidden
 * Since 3.6
 */
public enum GtkInputPurpose
{
	FREE_FORM,
	ALPHA,
	DIGITS,
	NUMBER,
	PHONE,
	URL,
	EMAIL,
	NAME,
	PASSWORD,
	PIN
}
alias GtkInputPurpose InputPurpose;

/**
 * Describes hints that might be taken into account by input methods
 * or applications. Note that input methods may already tailor their
 * behaviour according to the GtkInputPurpose of the entry.
 * Some common sense is expected when using these flags - mixing
 * GTK_INPUT_HINT_LOWERCASE with any of the uppercase hints makes no sense.
 * This enumeration may be extended in the future; input methods should
 * ignore unknown values.
 * GTK_INPUT_HINT_NONE
 * No special behaviour suggested
 * GTK_INPUT_HINT_SPELLCHECK
 * Suggest checking for typos
 * GTK_INPUT_HINT_NO_SPELLCHECK
 * Suggest not checking for typos
 * GTK_INPUT_HINT_WORD_COMPLETION
 * Suggest word completion
 * GTK_INPUT_HINT_LOWERCASE
 * Suggest to convert all text to lowercase
 * GTK_INPUT_HINT_UPPERCASE_CHARS
 * Suggest to capitalize all text
 * GTK_INPUT_HINT_UPPERCASE_WORDS
 * Suggest to capitalize the first
 *  character of each word
 * GTK_INPUT_HINT_UPPERCASE_SENTENCES
 * Suggest to capitalize the
 *  first word of each sentence
 * GTK_INPUT_HINT_INHIBIT_OSK
 * Suggest to not show an onscreen keyboard
 *  (e.g for a calculator that already has all the keys).
 * Since 3.6
 */
public enum GtkInputHints
{
	NONE = 0,
	SPELLCHECK = 1 << 0,
	NO_SPELLCHECK = 1 << 1,
	WORD_COMPLETION = 1 << 2,
	LOWERCASE = 1 << 3,
	UPPERCASE_CHARS = 1 << 4,
	UPPERCASE_WORDS = 1 << 5,
	UPPERCASE_SENTENCES = 1 << 6,
	INHIBIT_OSK = 1 << 7
}
alias GtkInputHints InputHints;

/**
 * The spin button update policy determines whether the spin button displays
 * values even if they are outside the bounds of its adjustment.
 * See gtk_spin_button_set_update_policy().
 * GTK_UPDATE_ALWAYS
 * When refreshing your GtkSpinButton, the value is
 *  always displayed
 * GTK_UPDATE_IF_VALID
 * When refreshing your GtkSpinButton, the value is
 *  only displayed if it is valid within the bounds of the spin button's
 *  adjustment
 */
public enum GtkSpinButtonUpdatePolicy
{
	UPDATE_ALWAYS,
	UPDATE_IF_VALID
}
alias GtkSpinButtonUpdatePolicy SpinButtonUpdatePolicy;

/**
 * The values of the GtkSpinType enumeration are used to specify the
 * change to make in gtk_spin_button_spin().
 * GTK_SPIN_STEP_FORWARD
 * Increment by the adjustments step increment.
 * GTK_SPIN_STEP_BACKWARD
 * Decrement by the adjustments step increment.
 * GTK_SPIN_PAGE_FORWARD
 * Increment by the adjustments page increment.
 * GTK_SPIN_PAGE_BACKWARD
 * Decrement by the adjustments page increment.
 * GTK_SPIN_HOME
 * Go to the adjustments lower bound.
 * GTK_SPIN_END
 * Go to the adjustments upper bound.
 * GTK_SPIN_USER_DEFINED
 * Change by a specified amount.
 */
public enum GtkSpinType
{
	STEP_FORWARD,
	STEP_BACKWARD,
	PAGE_FORWARD,
	PAGE_BACKWARD,
	HOME,
	END,
	USER_DEFINED
}
alias GtkSpinType SpinType;

public enum GtkTextSearchFlags
{
	VISIBLE_ONLY = 1 << 0,
	TEXT_ONLY = 1 << 1,
	CASE_INSENSITIVE = 1 << 2
	/+* Possible future plans: SEARCH_REGEXP +/
}
alias GtkTextSearchFlags TextSearchFlags;

public enum GtkTextBufferTargetInfo
{
	BUFFER_CONTENTS = - 1,
	RICH_TEXT = - 2,
	TEXT = - 3
}
alias GtkTextBufferTargetInfo TextBufferTargetInfo;

/**
 * Describes a type of line wrapping.
 * GTK_WRAP_NONE
 * do not wrap lines; just make the text area wider
 * GTK_WRAP_CHAR
 * wrap text, breaking lines anywhere the cursor can
 *  appear (between characters, usually - if you want to be technical,
 *  between graphemes, see pango_get_log_attrs())
 * GTK_WRAP_WORD
 * wrap text, breaking lines in between words
 * GTK_WRAP_WORD_CHAR
 * wrap text, breaking lines in between words, or if
 *  that is not enough, also between graphemes
 */
public enum GtkWrapMode
{
	NONE,
	CHAR,
	WORD,
	WORD_CHAR
}
alias GtkWrapMode WrapMode;

public enum GtkTextWindowType
{
	PRIVATE,
	WIDGET,
	TEXT,
	LEFT,
	RIGHT,
	TOP,
	BOTTOM
}
alias GtkTextWindowType TextWindowType;

/**
 * These flags indicate various properties of a GtkTreeModel.
 * They are returned by gtk_tree_model_get_flags(), and must be
 * static for the lifetime of the object. A more complete description
 * of GTK_TREE_MODEL_ITERS_PERSIST can be found in the overview of
 * this section.
 * GTK_TREE_MODEL_ITERS_PERSIST
 * iterators survive all signals
 *  emitted by the tree
 * GTK_TREE_MODEL_LIST_ONLY
 * the model is a list only, and never
 *  has children
 */
public enum GtkTreeModelFlags
{
	ITERS_PERSIST = 1 << 0,
	LIST_ONLY = 1 << 1
}
alias GtkTreeModelFlags TreeModelFlags;

/**
 * The sizing method the column uses to determine its width. Please note
 * that GTK_TREE_VIEW_COLUMN_AUTOSIZE are inefficient for large views, and
 * can make columns appear choppy.
 * GTK_TREE_VIEW_COLUMN_GROW_ONLY
 * Columns only get bigger in reaction to changes in the model
 * GTK_TREE_VIEW_COLUMN_AUTOSIZE
 * Columns resize to be the optimal size everytime the model changes.
 * GTK_TREE_VIEW_COLUMN_FIXED
 * Columns are a fixed numbers of pixels wide.
 */
public enum GtkTreeViewColumnSizing
{
	GROW_ONLY,
	AUTOSIZE,
	FIXED
}
alias GtkTreeViewColumnSizing TreeViewColumnSizing;

/**
 * An enum for determining where a dropped row goes.
 * GTK_TREE_VIEW_DROP_BEFORE
 * dropped row is inserted before
 * GTK_TREE_VIEW_DROP_AFTER
 * dropped row is inserted after
 * GTK_TREE_VIEW_DROP_INTO_OR_BEFORE
 * dropped row becomes a child or is inserted before
 * GTK_TREE_VIEW_DROP_INTO_OR_AFTER
 * dropped row becomes a child or is inserted after
 */
public enum GtkTreeViewDropPosition
{
	BEFORE,
	AFTER,
	/+* drop as a child of this row (with fallback to before or after
	 * if into is not possible)
	+/
	INTO_OR_BEFORE,
	INTO_OR_AFTER
}
alias GtkTreeViewDropPosition TreeViewDropPosition;

/**
 * Used to indicate which grid lines to draw in a tree view.
 * GTK_TREE_VIEW_GRID_LINES_NONE
 * No grid lines.
 * GTK_TREE_VIEW_GRID_LINES_HORIZONTAL
 * Horizontal grid lines.
 * GTK_TREE_VIEW_GRID_LINES_VERTICAL
 * Vertical grid lines.
 * GTK_TREE_VIEW_GRID_LINES_BOTH
 * Horizontal and vertical grid lines.
 */
public enum GtkTreeViewGridLines
{
	NONE,
	HORIZONTAL,
	VERTICAL,
	BOTH
}
alias GtkTreeViewGridLines TreeViewGridLines;

/**
 * An enum for determining where a dropped item goes.
 * GTK_ICON_VIEW_NO_DROP
 * no drop possible
 * GTK_ICON_VIEW_DROP_INTO
 * dropped item replaces the item
 * GTK_ICON_VIEW_DROP_LEFT
 * droppped item is inserted to the left
 * GTK_ICON_VIEW_DROP_RIGHT
 * dropped item is inserted to the right
 * GTK_ICON_VIEW_DROP_ABOVE
 * dropped item is inserted above
 * GTK_ICON_VIEW_DROP_BELOW
 * dropped item is inserted below
 */
public enum GtkIconViewDropPosition
{
	NO_DROP,
	DROP_INTO,
	DROP_LEFT,
	DROP_RIGHT,
	DROP_ABOVE,
	DROP_BELOW
}
alias GtkIconViewDropPosition IconViewDropPosition;

/**
 * Tells how a cell is to be rendered.
 * GTK_CELL_RENDERER_SELECTED
 * The cell is currently selected, and
 *  probably has a selection colored background to render to.
 * GTK_CELL_RENDERER_PRELIT
 * The mouse is hovering over the cell.
 * GTK_CELL_RENDERER_INSENSITIVE
 * The cell is drawn in an insensitive manner
 * GTK_CELL_RENDERER_SORTED
 * The cell is in a sorted row
 * GTK_CELL_RENDERER_FOCUSED
 * The cell is in the focus row.
 * GTK_CELL_RENDERER_EXPANDABLE
 * The cell is in a row that can be expanded. Since 3.4
 * GTK_CELL_RENDERER_EXPANDED
 * The cell is in a row that is expanded. Since 3.4
 */
public enum GtkCellRendererState
{
	SELECTED = 1 << 0,
	PRELIT = 1 << 1,
	INSENSITIVE = 1 << 2,
	/+* this flag means the cell is inn the sort column/row +/
	SORTED = 1 << 3,
	FOCUSED = 1 << 4,
	EXPANDABLE = 1 << 5,
	EXPANDED = 1 << 6
}
alias GtkCellRendererState CellRendererState;

/**
 * Identifies how the user can interact with a particular cell.
 * GTK_CELL_RENDERER_MODE_INERT
 * The cell is just for display
 *  and cannot be interacted with. Note that this doesn't mean that eg. the
 *  row being drawn can't be selected -- just that a particular element of
 *  it cannot be individually modified.
 * GTK_CELL_RENDERER_MODE_ACTIVATABLE
 * The cell can be clicked.
 * GTK_CELL_RENDERER_MODE_EDITABLE
 * The cell can be edited or otherwise modified.
 */
public enum GtkCellRendererMode
{
	MODE_INERT,
	MODE_ACTIVATABLE,
	MODE_EDITABLE
}
alias GtkCellRendererMode CellRendererMode;

public enum GtkCellRendererAccelMode
{
	MODE_GTK,
	MODE_OTHER
}
alias GtkCellRendererAccelMode CellRendererAccelMode;

/**
 * Determines how widgets should be packed inside menubars
 * and menuitems contained in menubars.
 * GTK_PACK_DIRECTION_LTR
 * Widgets are packed left-to-right
 * GTK_PACK_DIRECTION_RTL
 * Widgets are packed right-to-left
 * GTK_PACK_DIRECTION_TTB
 * Widgets are packed top-to-bottom
 * GTK_PACK_DIRECTION_BTT
 * Widgets are packed bottom-to-top
 */
public enum GtkPackDirection
{
	LTR,
	RTL,
	TTB,
	BTT
}
alias GtkPackDirection PackDirection;

public enum GtkToolbarSpaceStyle
{
	EMPTY,
	LINE
}
alias GtkToolbarSpaceStyle ToolbarSpaceStyle;

/**
 * Flags used to specify the supported drag targets.
 * GTK_TOOL_PALETTE_DRAG_ITEMS
 * Support drag of items.
 * GTK_TOOL_PALETTE_DRAG_GROUPS
 * Support drag of groups.
 */
public enum GtkToolPaletteDragTargets
{
	ITEMS = (1 << 0),
	GROUPS = (1 << 1)
}
alias GtkToolPaletteDragTargets ToolPaletteDragTargets;

/**
 * These enumeration values are used by gtk_ui_manager_add_ui() to determine
 * what UI element to create.
 * GTK_UI_MANAGER_AUTO
 * Pick the type of the UI element according to context.
 * GTK_UI_MANAGER_MENUBAR
 * Create a menubar.
 * GTK_UI_MANAGER_MENU
 * Create a menu.
 * GTK_UI_MANAGER_TOOLBAR
 * Create a toolbar.
 * GTK_UI_MANAGER_PLACEHOLDER
 * Insert a placeholder.
 * GTK_UI_MANAGER_POPUP
 * Create a popup menu.
 * GTK_UI_MANAGER_MENUITEM
 * Create a menuitem.
 * GTK_UI_MANAGER_TOOLITEM
 * Create a toolitem.
 * GTK_UI_MANAGER_SEPARATOR
 * Create a separator.
 * GTK_UI_MANAGER_ACCELERATOR
 * Install an accelerator.
 * GTK_UI_MANAGER_POPUP_WITH_ACCELS
 * Same as GTK_UI_MANAGER_POPUP, but the
 *  actions' accelerators are shown.
 */
public enum GtkUIManagerItemType
{
	AUTO = 0,
	MENUBAR = 1 << 0,
	MENU = 1 << 1,
	TOOLBAR = 1 << 2,
	PLACEHOLDER = 1 << 3,
	POPUP = 1 << 4,
	MENUITEM = 1 << 5,
	TOOLITEM = 1 << 6,
	SEPARATOR = 1 << 7,
	ACCELERATOR = 1 << 8,
	POPUP_WITH_ACCELS = 1 << 9
}
alias GtkUIManagerItemType UIManagerItemType;

/**
 * Describes whether a GtkFileChooser is being used to open existing files
 * or to save to a possibly new file.
 * GTK_FILE_CHOOSER_ACTION_OPEN
 * Indicates open mode. The file chooser
 *  will only let the user pick an existing file.
 * GTK_FILE_CHOOSER_ACTION_SAVE
 * Indicates save mode. The file chooser
 *  will let the user pick an existing file, or type in a new
 *  filename.
 * GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER
 * Indicates an Open mode for
 *  selecting folders. The file chooser will let the user pick an
 *  existing folder.
 * GTK_FILE_CHOOSER_ACTION_CREATE_FOLDER
 * Indicates a mode for creating a
 *  new folder. The file chooser will let the user name an existing or
 *  new folder.
 */
public enum GtkFileChooserAction
{
	OPEN,
	SAVE,
	SELECT_FOLDER,
	CREATE_FOLDER
}
alias GtkFileChooserAction FileChooserAction;

/**
 * Used as a return value of handlers for the
 * "confirm-overwrite" signal of a GtkFileChooser. This
 * value determines whether the file chooser will present the stock
 * confirmation dialog, accept the user's choice of a filename, or
 * let the user choose another filename.
 * GTK_FILE_CHOOSER_CONFIRMATION_CONFIRM
 * The file chooser will present
 *  its stock dialog to confirm about overwriting an existing file.
 * GTK_FILE_CHOOSER_CONFIRMATION_ACCEPT_FILENAME
 * The file chooser will
 *  terminate and accept the user's choice of a file name.
 * GTK_FILE_CHOOSER_CONFIRMATION_SELECT_AGAIN
 * The file chooser will
 *  continue running, so as to let the user select another file name.
 * Since 2.8
 */
public enum GtkFileChooserConfirmation
{
	CONFIRM,
	ACCEPT_FILENAME,
	SELECT_AGAIN
}
alias GtkFileChooserConfirmation FileChooserConfirmation;

/**
 * These identify the various errors that can occur while calling
 * GtkFileChooser functions.
 * GTK_FILE_CHOOSER_ERROR_NONEXISTENT
 * Indicates that a file does not exist.
 * GTK_FILE_CHOOSER_ERROR_BAD_FILENAME
 * Indicates a malformed filename.
 * GTK_FILE_CHOOSER_ERROR_ALREADY_EXISTS
 * Indicates a duplicate path (e.g. when
 *  adding a bookmark).
 * GTK_FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME
 * Indicates an incomplete hostname (e.g. "http://foo" without a slash after that).
 */
public enum GtkFileChooserError
{
	NONEXISTENT,
	BAD_FILENAME,
	ALREADY_EXISTS,
	INCOMPLETE_HOSTNAME
}
alias GtkFileChooserError FileChooserError;

/**
 * These flags indicate what parts of a GtkFileFilterInfo struct
 * are filled or need to be filled.
 * GTK_FILE_FILTER_FILENAME
 * the filename of the file being tested
 * GTK_FILE_FILTER_URI
 * the URI for the file being tested
 * GTK_FILE_FILTER_DISPLAY_NAME
 * the string that will be used to
 *  display the file in the file chooser
 * GTK_FILE_FILTER_MIME_TYPE
 * the mime type of the file
 */
public enum GtkFileFilterFlags
{
	FILENAME = 1 << 0,
	URI = 1 << 1,
	DISPLAY_NAME = 1 << 2,
	MIME_TYPE = 1 << 3
}
alias GtkFileFilterFlags FileFilterFlags;

/**
 * Defines the policy to be used in a scrollable widget when updating
 * the scrolled window adjustments in a given orientation.
 * GTK_SCROLL_MINIMUM
 * Scrollable adjustments are based on the minimum size
 * GTK_SCROLL_NATURAL
 * Scrollable adjustments are based on the natural size
 */
public enum GtkScrollablePolicy
{
	MINIMUM = 0,
	NATURAL
}
alias GtkScrollablePolicy ScrollablePolicy;

/**
 * The status gives a rough indication of the completion of a running
 * print operation.
 * GTK_PRINT_STATUS_INITIAL
 * The printing has not started yet; this
 *  status is set initially, and while the print dialog is shown.
 * GTK_PRINT_STATUS_PREPARING
 * This status is set while the begin-print
 *  signal is emitted and during pagination.
 * GTK_PRINT_STATUS_GENERATING_DATA
 * This status is set while the
 *  pages are being rendered.
 * GTK_PRINT_STATUS_SENDING_DATA
 * The print job is being sent off to the
 *  printer.
 * GTK_PRINT_STATUS_PENDING
 * The print job has been sent to the printer,
 *  but is not printed for some reason, e.g. the printer may be stopped.
 * GTK_PRINT_STATUS_PENDING_ISSUE
 * Some problem has occurred during
 *  printing, e.g. a paper jam.
 * GTK_PRINT_STATUS_PRINTING
 * The printer is processing the print job.
 * GTK_PRINT_STATUS_FINISHED
 * The printing has been completed successfully.
 * GTK_PRINT_STATUS_FINISHED_ABORTED
 * The printing has been aborted.
 */
public enum GtkPrintStatus
{
	INITIAL,
	PREPARING,
	GENERATING_DATA,
	SENDING_DATA,
	PENDING,
	PENDING_ISSUE,
	PRINTING,
	FINISHED,
	FINISHED_ABORTED
}
alias GtkPrintStatus PrintStatus;

/**
 * The action parameter to gtk_print_operation_run()
 * determines what action the print operation should perform.
 * GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG
 * Show the print dialog.
 * GTK_PRINT_OPERATION_ACTION_PRINT
 * Start to print without showing
 *  the print dialog, based on the current print settings.
 * GTK_PRINT_OPERATION_ACTION_PREVIEW
 * Show the print preview.
 * GTK_PRINT_OPERATION_ACTION_EXPORT
 * Export to a file. This requires
 *  the export-filename property to be set.
 */
public enum GtkPrintOperationAction
{
	PRINT_DIALOG,
	PRINT,
	PREVIEW,
	EXPORT
}
alias GtkPrintOperationAction PrintOperationAction;

/**
 * A value of this type is returned by gtk_print_operation_run().
 * GTK_PRINT_OPERATION_RESULT_ERROR
 * An error has occured.
 * GTK_PRINT_OPERATION_RESULT_APPLY
 * The print settings should be stored.
 * GTK_PRINT_OPERATION_RESULT_CANCEL
 * The print operation has been canceled,
 *  the print settings should not be stored.
 * GTK_PRINT_OPERATION_RESULT_IN_PROGRESS
 * The print operation is not complete
 *  yet. This value will only be returned when running asynchronously.
 */
public enum GtkPrintOperationResult
{
	ERROR,
	APPLY,
	CANCEL,
	IN_PROGRESS
}
alias GtkPrintOperationResult PrintOperationResult;

/**
 * Error codes that identify various errors that can occur while
 * using the GTK+ printing support.
 * GTK_PRINT_ERROR_GENERAL
 * An unspecified error occurred.
 * GTK_PRINT_ERROR_INTERNAL_ERROR
 * An internal error occurred.
 * GTK_PRINT_ERROR_NOMEM
 * A memory allocation failed.
 * GTK_PRINT_ERROR_INVALID_FILE
 * An error occurred while loading a page setup
 *  or paper size from a key file.
 */
public enum GtkPrintError
{
	GENERAL,
	INTERNAL_ERROR,
	NOMEM,
	INVALID_FILE
}
alias GtkPrintError PrintError;

public enum GtkPageOrientation
{
	PORTRAIT,
	LANDSCAPE,
	REVERSE_PORTRAIT,
	REVERSE_LANDSCAPE
}
alias GtkPageOrientation PageOrientation;

public enum GtkPrintDuplex
{
	SIMPLEX,
	HORIZONTAL,
	VERTICAL
}
alias GtkPrintDuplex PrintDuplex;

public enum GtkPrintQuality
{
	LOW,
	NORMAL,
	HIGH,
	DRAFT
}
alias GtkPrintQuality PrintQuality;

/**
 * Used to determine the layout of pages on a sheet when printing
 * multiple pages per sheet.
 * GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_TOP_TO_BOTTOM
 * GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_BOTTOM_TO_TOP
 * GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_TOP_TO_BOTTOM
 * GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_BOTTOM_TO_TOP
 * GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_LEFT_TO_RIGHT
 * GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_RIGHT_TO_LEFT
 * GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_LEFT_TO_RIGHT
 * GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_RIGHT_TO_LEFT
 */
public enum GtkNumberUpLayout
{
	LEFT_TO_RIGHT_TOP_TO_BOTTOM, /+*< nick= lrtb >+/
	LEFT_TO_RIGHT_BOTTOM_TO_TOP, /+*< nick= lrbt >+/
	RIGHT_TO_LEFT_TOP_TO_BOTTOM, /+*< nick= rltb >+/
	RIGHT_TO_LEFT_BOTTOM_TO_TOP, /+*< nick= rlbt >+/
	TOP_TO_BOTTOM_LEFT_TO_RIGHT, /+*< nick= tblr >+/
	TOP_TO_BOTTOM_RIGHT_TO_LEFT, /+*< nick= tbrl >+/
	BOTTOM_TO_TOP_LEFT_TO_RIGHT, /+*< nick= btlr >+/
	BOTTOM_TO_TOP_RIGHT_TO_LEFT /+*< nick= btrl >+/
}
alias GtkNumberUpLayout NumberUpLayout;

public enum GtkPrintPages
{
	ALL,
	CURRENT,
	RANGES,
	SELECTION
}
alias GtkPrintPages PrintPages;

public enum GtkPageSet
{
	ALL,
	EVEN,
	ODD
}
alias GtkPageSet PageSet;

public enum GtkUnit
{
	NONE,
	POINTS,
	INCH,
	MM
}
alias GtkUnit Unit;

/**
 * An enum for specifying which features the print dialog should offer.
 * If neither GTK_PRINT_CAPABILITY_GENERATE_PDF nor
 * GTK_PRINT_CAPABILITY_GENERATE_PS is specified, GTK+ assumes that all
 * formats are supported.
 * GTK_PRINT_CAPABILITY_PAGE_SET
 * Print dialog will offer printing even/odd pages.
 * GTK_PRINT_CAPABILITY_COPIES
 * Print dialog will allow to print multiple copies.
 * GTK_PRINT_CAPABILITY_COLLATE
 * Print dialog will allow to collate multiple copies.
 * GTK_PRINT_CAPABILITY_REVERSE
 * Print dialog will allow to print pages in reverse order.
 * GTK_PRINT_CAPABILITY_SCALE
 * Print dialog will allow to scale the output.
 * GTK_PRINT_CAPABILITY_GENERATE_PDF
 * The program will send the document to
 *  the printer in PDF format
 * GTK_PRINT_CAPABILITY_GENERATE_PS
 * The program will send the document to
 *  the printer in Postscript format
 * GTK_PRINT_CAPABILITY_PREVIEW
 * Print dialog will offer a preview
 * GTK_PRINT_CAPABILITY_NUMBER_UP
 * Print dialog will offer printing multiple
 *  pages per sheet. Since 2.12
 * GTK_PRINT_CAPABILITY_NUMBER_UP_LAYOUT
 * Print dialog will allow to rearrange
 *  pages when printing multiple pages per sheet. Since 2.14
 */
public enum GtkPrintCapabilities
{
	CAPABILITY_PAGE_SET = 1 << 0,
	CAPABILITY_COPIES = 1 << 1,
	CAPABILITY_COLLATE = 1 << 2,
	CAPABILITY_REVERSE = 1 << 3,
	CAPABILITY_SCALE = 1 << 4,
	CAPABILITY_GENERATE_PDF = 1 << 5,
	CAPABILITY_GENERATE_PS = 1 << 6,
	CAPABILITY_PREVIEW = 1 << 7,
	CAPABILITY_NUMBER_UP = 1 << 8,
	CAPABILITY_NUMBER_UP_LAYOUT = 1 << 9
}
alias GtkPrintCapabilities PrintCapabilities;

/**
 * These options can be used to influence the display and behaviour of a GtkCalendar.
 * GTK_CALENDAR_SHOW_HEADING
 * Specifies that the month and year should be displayed.
 * GTK_CALENDAR_SHOW_DAY_NAMES
 * Specifies that three letter day descriptions should be present.
 * GTK_CALENDAR_NO_MONTH_CHANGE
 * Prevents the user from switching months with the calendar.
 * GTK_CALENDAR_SHOW_WEEK_NUMBERS
 * Displays each week numbers of the current year, down the
 * left side of the calendar.
 * GTK_CALENDAR_SHOW_DETAILS
 * Just show an indicator, not the full details
 * text when details are provided. See gtk_calendar_set_detail_func().
 */
public enum GtkCalendarDisplayOptions
{
	SHOW_HEADING = 1 << 0,
	SHOW_DAY_NAMES = 1 << 1,
	NO_MONTH_CHANGE = 1 << 2,
	SHOW_WEEK_NUMBERS = 1 << 3,
	SHOW_DETAILS = 1 << 5
}
alias GtkCalendarDisplayOptions CalendarDisplayOptions;

/**
 * The mode of the size group determines the directions in which the size
 * group affects the requested sizes of its component widgets.
 * GTK_SIZE_GROUP_NONE
 * group has no effect
 * GTK_SIZE_GROUP_HORIZONTAL
 * group affects horizontal requisition
 * GTK_SIZE_GROUP_VERTICAL
 * group affects vertical requisition
 * GTK_SIZE_GROUP_BOTH
 * group affects both horizontal and vertical requisition
 */
public enum GtkSizeGroupMode
{
	NONE,
	HORIZONTAL,
	VERTICAL,
	BOTH
}
alias GtkSizeGroupMode SizeGroupMode;

public enum GtkWidgetHelpType
{
	TOOLTIP,
	WHATS_THIS
}
alias GtkWidgetHelpType WidgetHelpType;

public enum GtkTextDirection
{
	NONE,
	LTR,
	RTL
}
alias GtkTextDirection TextDirection;

/**
 * Specifies a preference for height-for-width or
 * width-for-height geometry management.
 * GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH
 * Prefer height-for-width geometry management
 * GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT
 * Prefer width-for-height geometry management
 * GTK_SIZE_REQUEST_CONSTANT_SIZE
 * Don't trade height-for-width or width-for-height
 */
public enum GtkSizeRequestMode
{
	HEIGHT_FOR_WIDTH = 0,
	WIDTH_FOR_HEIGHT,
	CONSTANT_SIZE
}
alias GtkSizeRequestMode SizeRequestMode;

/**
 * Controls how a widget deals with extra space in a single (x or y)
 * dimension.
 * Alignment only matters if the widget receives a "too large" allocation,
 * for example if you packed the widget with the "expand"
 * flag inside a GtkBox, then the widget might get extra space. If
 * you have for example a 16x16 icon inside a 32x32 space, the icon
 * could be scaled and stretched, it could be centered, or it could be
 * positioned to one side of the space.
 * Note that in horizontal context GTK_ALIGN_START and GTK_ALIGN_END
 * are interpreted relative to text direction.
 * GTK_ALIGN_FILL
 * stretch to fill all space if possible, center if
 *  no meaningful way to stretch
 * GTK_ALIGN_START
 * snap to left or top side, leaving space on right
 *  or bottom
 * GTK_ALIGN_END
 * snap to right or bottom side, leaving space on left
 *  or top
 * GTK_ALIGN_CENTER
 * center natural width of widget inside the
 *  allocation
 */
public enum GtkAlign
{
	FILL,
	START,
	END,
	CENTER
}
alias GtkAlign Align;

/**
 * An enumeration representing directional movements within a menu.
 * GTK_MENU_DIR_PARENT
 * To the parent menu shell
 * GTK_MENU_DIR_CHILD
 * To the submenu, if any, associated with the item
 * GTK_MENU_DIR_NEXT
 * To the next menu item
 * GTK_MENU_DIR_PREV
 * To the previous menu item
 * Property Details
 * The "take-focus" property
 *  "take-focus" gboolean : Read / Write
 * A boolean that determines whether the menu and its submenus grab the
 * keyboard focus. See gtk_menu_shell_set_take_focus() and
 * gtk_menu_shell_get_take_focus().
 * Default value: TRUE
 * Since 2.8
 * Signal Details
 * The "activate-current" signal
 * void user_function (GtkMenuShell *menushell,
 *  gboolean force_hide,
 *  gpointer user_data) : Action
 * An action signal that activates the current menu item within
 * the menu shell.
 * menushell :
 * the object which received the signal
 * force_hide :
 * if TRUE, hide the menu after activating the menu item
 * user_data :
 * user data set when the signal handler was connected.
 */
public enum GtkMenuDirectionType
{
	PARENT,
	CHILD,
	NEXT,
	PREV
}
alias GtkMenuDirectionType MenuDirectionType;

/**
 * Determines how GTK+ handles the sensitivity of stepper arrows
 * at the end of range widgets.
 * GTK_SENSITIVITY_AUTO
 * The arrow is made insensitive if the
 *  thumb is at the end
 * GTK_SENSITIVITY_ON
 * The arrow is always sensitive
 * GTK_SENSITIVITY_OFF
 * The arrow is always insensitive
 */
public enum GtkSensitivityType
{
	AUTO,
	ON,
	OFF
}
alias GtkSensitivityType SensitivityType;

/**
 * Error codes for GtkRecentManager operations
 * GTK_RECENT_MANAGER_ERROR_NOT_FOUND
 * the URI specified does not exists in
 *  the recently used resources list.
 * GTK_RECENT_MANAGER_ERROR_INVALID_URI
 * the URI specified is not valid.
 * GTK_RECENT_MANAGER_ERROR_INVALID_ENCODING
 * the supplied string is not
 *  UTF-8 encoded.
 * GTK_RECENT_MANAGER_ERROR_NOT_REGISTERED
 * no application has registered
 *  the specified item.
 * GTK_RECENT_MANAGER_ERROR_READ
 * failure while reading the recently used
 *  resources file.
 * GTK_RECENT_MANAGER_ERROR_WRITE
 * failure while writing the recently used
 *  resources file.
 * GTK_RECENT_MANAGER_ERROR_UNKNOWN
 * unspecified error.
 * Since 2.10
 */
public enum GtkRecentManagerError
{
	NOT_FOUND,
	INVALID_URI,
	INVALID_ENCODING,
	NOT_REGISTERED,
	READ,
	WRITE,
	UNKNOWN
}
alias GtkRecentManagerError RecentManagerError;

/**
 * These identify the various errors that can occur while calling
 * GtkRecentChooser functions.
 * GTK_RECENT_CHOOSER_ERROR_NOT_FOUND
 * Indicates that a file does not exist
 * GTK_RECENT_CHOOSER_ERROR_INVALID_URI
 * Indicates a malformed URI
 * Since 2.10
 */
public enum GtkRecentChooserError
{
	NOT_FOUND,
	INVALID_URI
}
alias GtkRecentChooserError RecentChooserError;

/**
 * Used to specify the sorting method to be applyed to the recently
 * used resource list.
 * GTK_RECENT_SORT_NONE
 * Do not sort the returned list of recently used
 *  resources.
 * GTK_RECENT_SORT_MRU
 * Sort the returned list with the most recently used
 *  items first.
 * GTK_RECENT_SORT_LRU
 * Sort the returned list with the least recently used
 *  items first.
 * GTK_RECENT_SORT_CUSTOM
 * Sort the returned list using a custom sorting
 *  function passed using gtk_recent_chooser_set_sort_func().
 * Since 2.10
 */
public enum GtkRecentSortType
{
	NONE = 0,
	MRU,
	LRU,
	CUSTOM
}
alias GtkRecentSortType RecentSortType;

/**
 * These flags indicate what parts of a GtkRecentFilterInfo struct
 * are filled or need to be filled.
 * GTK_RECENT_FILTER_URI
 * the URI of the file being tested
 * GTK_RECENT_FILTER_DISPLAY_NAME
 * the string that will be used to
 *  display the file in the recent chooser
 * GTK_RECENT_FILTER_MIME_TYPE
 * the mime type of the file
 * GTK_RECENT_FILTER_APPLICATION
 * the list of applications that have
 *  registered the file
 * GTK_RECENT_FILTER_GROUP
 * the groups to which the file belongs to
 * GTK_RECENT_FILTER_AGE
 * the number of days elapsed since the file
 *  has been registered
 */
public enum GtkRecentFilterFlags
{
	URI = 1 << 0,
	DISPLAY_NAME = 1 << 1,
	MIME_TYPE = 1 << 2,
	APPLICATION = 1 << 3,
	GROUP = 1 << 4,
	AGE = 1 << 5
}
alias GtkRecentFilterFlags RecentFilterFlags;

/**
 * Error codes that identify various errors that can occur while using
 * GtkBuilder.
 * GTK_BUILDER_ERROR_INVALID_TYPE_FUNCTION
 * A type-func attribute didn't name
 *  a function that returns a GType.
 * GTK_BUILDER_ERROR_UNHANDLED_TAG
 * The input contained a tag that GtkBuilder
 *  can't handle.
 * GTK_BUILDER_ERROR_MISSING_ATTRIBUTE
 * An attribute that is required by
 *  GtkBuilder was missing.
 * GTK_BUILDER_ERROR_INVALID_ATTRIBUTE
 * GtkBuilder found an attribute that
 *  it doesn't understand.
 * GTK_BUILDER_ERROR_INVALID_TAG
 * GtkBuilder found a tag that
 *  it doesn't understand.
 * GTK_BUILDER_ERROR_MISSING_PROPERTY_VALUE
 * A required property value was
 *  missing.
 * GTK_BUILDER_ERROR_INVALID_VALUE
 * GtkBuilder couldn't parse
 *  some attribute value.
 * GTK_BUILDER_ERROR_VERSION_MISMATCH
 * The input file requires a newer version
 *  of GTK+.
 * GTK_BUILDER_ERROR_DUPLICATE_ID
 * An object id occurred twice.
 */
public enum GtkBuilderError
{
	INVALID_TYPE_FUNCTION,
	UNHANDLED_TAG,
	MISSING_ATTRIBUTE,
	INVALID_ATTRIBUTE,
	INVALID_TAG,
	MISSING_PROPERTY_VALUE,
	INVALID_VALUE,
	VERSION_MISMATCH,
	DUPLICATE_ID
}
alias GtkBuilderError BuilderError;

/**
 * Types of user actions that may be blocked by gtk_application_inhibit().
 * GTK_APPLICATION_INHIBIT_LOGOUT
 * Inhibit ending the user session
 *  by logging out or by shutting down the computer
 * GTK_APPLICATION_INHIBIT_SWITCH
 * Inhibit user switching
 * GTK_APPLICATION_INHIBIT_SUSPEND
 * Inhibit suspending the
 *  session or computer
 * GTK_APPLICATION_INHIBIT_IDLE
 * Inhibit the session being
 *  marked as idle (and possibly locked)
 * Since 3.4
 */
public enum GtkApplicationInhibitFlags
{
	LOGOUT = (1 << 0),
	SWITCH = (1 << 1),
	SUSPEND = (1 << 2),
	IDLE = (1 << 3)
}
alias GtkApplicationInhibitFlags ApplicationInhibitFlags;


struct GtkWidgetClass
{
	GObjectClass parent_class;
	
	guint activate_signal;
	
	/* seldomly overidden */
	extern(C) void  function(GtkWidget *widget,uint nPspecs,GParamSpec **pspecs) dispatchChildPropertiesChanged;
	
	/* basics */
	extern(C) void function(GtkWidget* widget) destroy;
	extern(C) void function(GtkWidget* widget) show;
	extern(C) void function(GtkWidget* widget) show_all;
	extern(C) void function(GtkWidget* widget) hide;
	extern(C) void function(GtkWidget* widget) map;
	extern(C) void function(GtkWidget* widget) unmap;
	extern(C) void function(GtkWidget* widget) realize;
	extern(C) void function(GtkWidget* widget) unrealize;
	extern(C) void function(GtkWidget* widget, GtkAllocation* allocation) size_allocate;
	extern(C) void function(GtkWidget* widget, GtkStateType previous_state) state_changed;
	extern(C) void function(GtkWidget* widget, GtkStateFlags previous_state_flags) state_flags_changed;
	extern(C) void function(GtkWidget* widget, GtkWidget* previous_parent) parent_set;
	extern(C) void function(GtkWidget* widget, GtkWidget* previous_toplevel) hierarchy_changed;
	extern(C) void function(GtkWidget* widget, GtkStyle* previous_style) style_set;
	extern(C) void function(GtkWidget* widget, GtkTextDirection previous_direction) direction_changed;
	extern(C) void function(GtkWidget* widget, gboolean was_grabbed) grab_notify;
	extern(C) void function(GtkWidget* widget, GParamSpec* pspec) child_notify;
	extern(C) gboolean function(GtkWidget* widget, cairo_t* cr) draw;
	
	/* size requests */
	extern(C) GtkSizeRequestMode function(GtkWidget* widget) get_request_mode;
	
	extern(C) void function(GtkWidget* widget, gint* minimum_height, gint* natural_height) get_preferred_height;
	extern(C) void function(GtkWidget* widget, gint height, gint* minimum_width, gint            *natural_width) get_preferred_width_for_height;
	extern(C) void function(GtkWidget* widget, gint* minimum_width, gint* natural_width) get_preferred_width;
	extern(C) void function(GtkWidget* widget, gint width, gint* minimum_height,gint            *natural_height) get_preferred_height_for_width;
	
	/* Mnemonics */
	extern(C) gboolean function(GtkWidget* widget, gboolean group_cycling) mnemonic_activate;
	
	/* explicit focus */
	extern(C) void function(GtkWidget* widget) grab_focus;
	extern(C) gboolean function(GtkWidget* widget, GtkDirectionType direction) focus;
	
	/* keyboard navigation */
	extern(C) void function(GtkWidget* widget, GtkDirectionType direction) move_focus;
	extern(C) gboolean function(GtkWidget* widget, GtkDirectionType direction) keynav_failed;
	
	/* events */
	extern(C) gboolean function(GtkWidget* widget, GdkEvent* event) event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventButton* event) button_press_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventButton* event) button_release_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventScroll* event) scroll_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventMotion* event) motion_notify_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventAny* event) delete_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventAny* event) destroy_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventKey* event) key_press_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventKey* event) key_release_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventCrossing* event) enter_notify_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventCrossing* sevent) leave_notify_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventConfigure* event) configure_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventFocus* event) focus_in_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventFocus* event) focus_out_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventAny* event) map_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventAny* event) unmap_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventProperty* event) property_notify_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventSelection* event) selection_clear_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventSelection* event) selection_request_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventSelection* event) selection_notify_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventProximity* event) proximity_in_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventProximity* event) proximity_out_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventVisibility* event) visibility_notify_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventWindowState* event) window_state_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventExpose* event) damage_event;
	extern(C) gboolean function(GtkWidget* widget, GdkEventGrabBroken* event) grab_broken_event;
	
	/* selection */
	extern(C) void function(GtkWidget* widget, GtkSelectionData* selection_data, guint info, guint time_) selection_get;
	extern(C) void function(GtkWidget* widget, GtkSelectionData* selection_data, guint time_) selection_received;
	
	/* Source side drag signals */
	extern(C) void function(GtkWidget* widget, GdkDragContext* context) drag_begin;
	extern(C) void function(GtkWidget* widget, GdkDragContext* context) drag_end;
	extern(C) void function(GtkWidget* widget, GdkDragContext* context, GtkSelectionData* selection_data, guint info, guint time_) drag_data_get;
	extern(C) void function(GtkWidget* widget, GdkDragContext* context) drag_data_delete;
	
	/* Target side drag signals */
	extern(C) void function(GtkWidget* widget, GdkDragContext* context, guint time_) drag_leave;
	extern(C) gboolean function(GtkWidget* widget, GdkDragContext* context, gint x, gint y, guint time_) drag_motion;
	extern(C) gboolean function(GtkWidget* widget, GdkDragContext* context, gint x, gint y, guint time_) drag_drop;
	extern(C) void function(GtkWidget* widget, GdkDragContext* context, gint x, gint y, GtkSelectionData* selection_data, guint info, guint time_) drag_data_received;
	extern(C) gboolean function(GtkWidget* widget, GdkDragContext* context, GtkDragResult result) drag_failed;
	
	/* Signals used only for keybindings */
	extern(C) gboolean function(GtkWidget* widget) popup_menu;
	
	/* If a widget has multiple tooltips/whatsthis, it should show the
	 * one for the current focus location, or if that doesn't make
	 * sense, should cycle through them showing each tip alongside
	 * whatever piece of the widget it applies to.
	 */
	extern(C) gboolean function(GtkWidget* widget, GtkWidgetHelpType help_type) show_help;
	
	/* accessibility support */
	extern(C) AtkObject* function(GtkWidget* widget) get_accessible;
	
	extern(C) void function(GtkWidget* widget, GdkScreen* previous_screen) screen_changed;
	extern(C) gboolean function(GtkWidget* widget, guint signal_id) can_activate_accel;
	extern(C) void function(GtkWidget* widget) composited_changed;
	extern(C) gboolean function(GtkWidget* widget, gint x, gint y, gboolean keyboard_tooltip, GtkTooltip* tooltip) query_tooltip;
	extern(C) void function(GtkWidget* widget, gboolean* hexpand_p, gboolean* vexpand_p) compute_expand;
	extern(C) void function(GtkWidget* widget, GtkOrientation orientation, gint* minimum_size, gint* natural_size) adjust_size_request;
	extern(C) void function(GtkWidget* widget, GtkOrientation orientation, gint* minimum_size, gint* natural_size, gint* allocated_pos, gint* allocated_size) adjust_size_allocation;
	extern(C) void function(GtkWidget* widget) style_updated;
	
	/*< private >*/
	/* Padding for future expansion */
	extern(C) void function() _gtk_reserved1;
	extern(C) void function() _gtk_reserved2;
	extern(C) void function() _gtk_reserved3;
	extern(C) void function() _gtk_reserved4;
	extern(C) void function() _gtk_reserved5;
	extern(C) void function() _gtk_reserved6;
	extern(C) void function() _gtk_reserved7;
	extern(C) void function() _gtk_reserved8;
};

struct GtkTextIter
{
	/* GtkTextIter is an opaque datatype; ignore all these fields.
	 * Initialize the iter with gtk_text_buffer_get_iter_*
	 * functions
	 */
	/*< private >*/
	gpointer dummy1;
	gpointer dummy2;
	gint dummy3;
	gint dummy4;
	gint dummy5;
	gint dummy6;
	gint dummy7;
	gint dummy8;
	gpointer dummy9;
	gpointer dummy10;
	gint dummy11;
	gint dummy12;
	/* padding */
	gint dummy13;
	gpointer dummy14;
}

struct GtkTreeIter
{
	gint stamp;
	gpointer userData;
	gpointer userData2;
	gpointer userData3;
}

struct GtkRequisition
{
	gint width;
	gint height;
}

/**
 * A GtkTargetList structure is a reference counted list
 * of GtkTargetPair. It is used to represent the same
 * information as a table of GtkTargetEntry, but in
 * an efficient form. This structure should be treated as
 * opaque.
 */
public struct GtkTargetList
{
	GList *list;
	uint refCount;
}

public struct GtkTargetPair
{
	GdkAtom target;
	uint flags;
	uint info;
}


/**
 * Main Gtk struct.
 * An object representing and maintaining a group of accelerators.
 */
public struct GtkAccelGroup{}


public struct GtkAccelKey
{
	uint accelKey;
	GdkModifierType accelMods;
	uint bitfield0;
	//uint accelFlags : 16;
}


/**
 * Main Gtk struct.
 */
public struct GtkAccelMap{}


/**
 * Main Gtk struct.
 */
public struct GtkClipboard{}


/**
 * Main Gtk struct.
 */
public struct GtkStockItem
{
	char *stockId;
	char *label;
	GdkModifierType modifier;
	uint keyval;
	char *translationDomain;
}


/**
 * Main Gtk struct.
 */
public struct GtkSettings{}


public struct GtkSettingsValue
{
	/+* origin should be something like "filename:linenumber" for rc files,
	 * or e.g. "XProperty" for other sources
	+/
	char *origin;
	/+* valid types are LONG, DOUBLE and STRING corresponding to the token parsed,
	 * or a GSTRING holding an unparsed statement
	+/
	GValue value;
}


/**
 * Main Gtk struct.
 * A binding set maintains a list of activatable key bindings.
 * A single binding set can match multiple types of widgets.
 * Similar to style contexts, can be matched by any information contained
 * in a widgets GtkWidgetPath. When a binding within a set is matched upon
 * activation, an action signal is emitted on the target widget to carry out
 * the actual activation.
 * gchar *set_name;
 * unique name of this binding set
 * gint priority;
 * unused
 * GSList *widget_path_pspecs;
 * unused
 * GSList *widget_class_pspecs;
 * unused
 * GSList *class_branch_pspecs;
 * unused
 * GtkBindingEntry *entries;
 * the key binding entries in this binding set
 * GtkBindingEntry *current;
 * implementation detail
 * guint parsed : 1;
 * whether this binding set stems from a CSS file and is reset upon theme changes
 */
public struct GtkBindingSet
{
	char *setName;
	int priority;
	GSList *widgetPathPspecs;
	GSList *widgetClassPspecs;
	GSList *classBranchPspecs;
	GtkBindingEntry *entries;
	GtkBindingEntry *current;
	uint bitfield0;
	//uint parsed : 1;
}


/**
 * Each key binding element of a binding sets binding list is
 * represented by a GtkBindingEntry.
 * guint keyval;
 * key value to match
 * GdkModifierType modifiers;
 * key modifiers to match
 * GtkBindingSet *binding_set;
 * binding set this entry belongs to
 * guint destroyed : 1;
 * implementation detail
 * guint in_emission : 1;
 * implementation detail
 * guint marks_unbound : 1;
 * implementation detail
 * GtkBindingEntry *set_next;
 * linked list of entries maintained by binding set
 * GtkBindingEntry *hash_next;
 * implementation detail
 * GtkBindingSignal *signals;
 * action signals of this entry
 */
public struct GtkBindingEntry
{
	/+* key portion +/
	uint keyval;
	GdkModifierType modifiers;
	GtkBindingSet *bindingSet;
	uint bitfield0;
	//uint destroyed : 1;
	//uint inEmission : 1;
	//uint marksUnbound : 1;
	GtkBindingEntry *setNext;
	GtkBindingEntry *hashNext;
	GtkBindingSignal *signals;
}


/**
 * A GtkBindingSignal stores the necessary information to
 * activate a widget in response to a key press via a signal
 * emission.
 * GtkBindingSignal *next;
 * implementation detail
 * gchar *signal_name;
 * the action signal to be emitted
 * guint n_args;
 * number of arguments specified for the signal
 * GtkBindingArg *args;
 * the arguments specified for the signal
 */
public struct GtkBindingSignal
{
	GtkBindingSignal *next;
	char *signalName;
	uint nArgs;
	GtkBindingArg *args;
}


/**
 * A GtkBindingArg holds the data associated with
 * an argument for a key binding signal emission as
 * stored in GtkBindingSignal.
 * GType arg_type;
 * implementation detail
 */
public struct GtkBindingArg
{
	GType argType;
	union D
	{
		glong longData;
		double doubleData;
		char *stringData;
	}
	D d;
}


public struct GtkSelectionData
{
	GdkAtom selection;
	GdkAtom target;
	GdkAtom type;
	int format;
	char *data;
	int length;
	GdkDisplay *display;
}


/**
 * Main Gtk struct.
 * A GtkTargetEntry structure represents a single type of
 * data than can be supplied for by a widget for a selection
 * or for supplied or received during drag-and-drop.
 * gchar *target;
 * a string representation of the target type
 * guint flags;
 * GtkTargetFlags for DND
 * guint info;
 * an application-assigned integer ID which will
 * get passed as a parameter to e.g the "selection-get"
 * signal. It allows the application to identify the target
 * type without extensive string compares.
 */
public struct GtkTargetEntry
{
	char *target;
	uint flags;
	uint info;
}


/**
 * Main Gtk struct.
 * This should not be accessed directly. Use the accessor functions below.
 */
public struct GtkMountOperation{}


/**
 * Main Gtk struct.
 */
public struct GtkStyleContext{}


/**
 * A struct that specifies a border around a rectangular area
 * that can be of different width on each side.
 * gint16 left;
 * The width of the left border
 * gint16 right;
 * The width of the right border
 * gint16 top;
 * The width of the top border
 * gint16 bottom;
 * The width of the bottom border
 */
public struct GtkBorder
{
	short left;
	short right;
	short top;
	short bottom;
}


/**
 * Main Gtk struct.
 */
public struct GtkCssProvider{}


/**
 * Defines a part of a CSS document. Because sections are nested into
 * one another, you can use gtk_css_section_get_parent() to get the
 * containing region.
 * Since 3.2
 */
public struct GtkCssSection{}


/**
 * GTypeInterface g_iface;
 * get_style ()
 * Gets a set of style information that applies to a widget path.
 * get_style_property ()
 * Gets the value of a widget style property that applies to a widget path.
 * get_icon_factory ()
 * Gets the icon factory that applies to a widget path.
 */
public struct GtkStyleProviderIface
{
	GTypeInterface gIface;
	extern(C) GtkStyleProperties * function(GtkStyleProvider* provider, GtkWidgetPath* path)  getStyle;
	extern(C) int function(GtkStyleProvider* provider, GtkWidgetPath* path, GtkStateFlags state, GParamSpec* pspec, GValue* value)  getStyleProperty;
	extern(C) GtkIconFactory * function(GtkStyleProvider* provider, GtkWidgetPath* path)  getIconFactory;
}


/**
 * Main Gtk struct.
 */
public struct GtkStyleProvider{}


/**
 * Main Gtk struct.
 */
public struct GtkStyleProperties
{
	GObject parentObject;
	GtkStylePropertiesPrivate *priv;
}


/**
 * Base class for theming engines.
 * GObjectClass parent_class;
 * The parent class.
 * render_line ()
 * Renders a line between two points.
 * render_background ()
 * Renders the background area of a widget region.
 * render_frame ()
 * Renders the frame around a widget area.
 * render_frame_gap ()
 * Renders the frame around a widget area with a gap in it.
 * render_extension ()
 * Renders a extension to a box, usually a notebook tab.
 * render_check ()
 * Renders a checkmark, as in GtkCheckButton.
 * render_option ()
 * Renders an option, as in GtkRadioButton.
 * render_arrow ()
 * Renders an arrow pointing to a certain direction.
 * render_expander ()
 * Renders an element what will expose/expand part of
 * the UI, as in GtkExpander.
 * render_focus ()
 * Renders the focus indicator.
 * render_layout ()
 * Renders a PangoLayout
 * render_slider ()
 * Renders a slider control, as in GtkScale.
 * render_handle ()
 * Renders a handle to drag UI elements, as in GtkPaned.
 * render_activity ()
 * Renders an area displaying activity, such as in GtkSpinner,
 * or GtkProgressBar.
 * render_icon_pixbuf ()
 * Renders an icon as a GdkPixbuf.
 * render_icon ()
 * Renders an icon given as a GdkPixbuf.
 */
public struct GtkThemingEngineClass
{
	GObjectClass parentClass;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x0, double y0, double x1, double y1)  renderLine;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height)  renderBackground;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height)  renderFrame;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height, GtkPositionType gapSide, double xy0_Gap, double xy1_Gap)  renderFrameGap;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height, GtkPositionType gapSide)  renderExtension;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height)  renderCheck;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height)  renderOption;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double angle, double x, double y, double size)  renderArrow;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height)  renderExpander;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height)  renderFocus;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, PangoLayout* layout)  renderLayout;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height, GtkOrientation orientation)  renderSlider;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height)  renderHandle;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, double x, double y, double width, double height)  renderActivity;
	extern(C) GdkPixbuf * function(GtkThemingEngine* engine, GtkIconSource* source, GtkIconSize size)  renderIconPixbuf;
	extern(C) void function(GtkThemingEngine* engine, cairo_t* cr, GdkPixbuf* pixbuf, double x, double y)  renderIcon;
}


/**
 * Main Gtk struct.
 */
public struct GtkThemingEngine{}


/**
 * Main Gtk struct.
 */
public struct GtkWidgetPath{}


/**
 * Main Gtk struct.
 */
public struct GtkSymbolicColor{}


/**
 * Main Gtk struct.
 */
public struct GtkGradient{}


/**
 * Contains information found when looking up an icon in
 * an icon theme.
 */
public struct GtkIconInfo{}


/**
 * Main Gtk struct.
 * Acts as a database of information about an icon theme.
 * Normally, you retrieve the icon theme for a particular
 * screen using gtk_icon_theme_get_for_screen() and it
 * will contain information about current icon theme for
 * that screen, but you can also create a new GtkIconTheme
 * object and set the icon theme name explicitely using
 * gtk_icon_theme_set_custom_theme().
 */
public struct GtkIconTheme{}


/**
 * Main Gtk struct.
 */
public struct GtkIconSource{}


public struct GtkIconFactory{}


public struct GtkIconSet{}


/**
 * Main Gtk struct.
 */
public struct GtkNumerableIcon{}


/**
 * Main Gtk struct.
 * The GtkRcStyle structure is used to represent a set
 * of information about the appearance of a widget.
 * This can later be composited together with other
 * GtkRcStyle structures to form a GtkStyle.
 */
public struct GtkRcStyle
{
	char *name;
	char *bgPixmapName[5];
	PangoFontDescription *fontDesc;
	GtkRcFlags colorFlags[5];
	GdkColor fg[5];
	GdkColor bg[5];
	GdkColor text[5];
	GdkColor base[5];
	int xthickness;
	int ythickness;
}


/**
 * Main Gtk struct.
 */
public struct GtkStyle
{
	GdkColor fg[5];
	GdkColor bg[5];
	GdkColor light[5];
	GdkColor dark[5];
	GdkColor mid[5];
	GdkColor text[5];
	GdkColor base[5];
	GdkColor textAa[5]; /+* Halfway between text/base +/
	GdkColor black;
	GdkColor white;
	PangoFontDescription *fontDesc;
	int xthickness;
	int ythickness;
	cairo_pattern_t *background[5];
}


public struct GtkRcProperty
{
	/+* quark-ified property identifier like "GtkScrollbar::spacing" +/
	GQuark typeName;
	GQuark propertyName;
	/+* fields similar to GtkSettingsValue +/
	char *origin;
	GValue value;
}


/**
 * Main Gtk struct.
 * The GtkDialog struct contains only private fields
 * and should not be directly accessed.
 */
public struct GtkDialog{}


/**
 * Main Gtk struct.
 */
public struct GtkInvisible{}


/**
 * Main Gtk struct.
 */
public struct GtkMessageDialog{}


/**
 * Main Gtk struct.
 */
public struct GtkWindow{}


/**
 * Main Gtk struct.
 */
public struct GtkWindowGroup{}


/**
 * Main Gtk struct.
 * The GtkAboutDialog struct contains
 * only private fields and should not be directly accessed.
 */
public struct GtkAboutDialog{}


/**
 * Main Gtk struct.
 */
public struct GtkAssistant{}


/**
 * Main Gtk struct.
 */
public struct GtkOffscreenWindow{}


/**
 * Main Gtk struct.
 * The GtkAccelLabel struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkAccelLabel{}


/**
 * Main Gtk struct.
 * This struct contain private data only and should be accessed by the functions
 * below.
 */
public struct GtkImage{}


/**
 * Main Gtk struct.
 */
public struct GtkLabel{}


/**
 * Main Gtk struct.
 */
public struct GtkProgressBar{}


/**
 * Main Gtk struct.
 */
public struct GtkStatusbar{}


/**
 * Main Gtk struct.
 */
public struct GtkLevelBar{}


/**
 * Main Gtk struct.
 */
public struct GtkInfoBar{}


/**
 * Main Gtk struct.
 */
public struct GtkStatusIcon{}


/**
 * Main Gtk struct.
 */
public struct GtkSpinner{}


/**
 * Main Gtk struct.
 */
public struct GtkButton{}


/**
 * Main Gtk struct.
 */
public struct GtkCheckButton{}


/**
 * Main Gtk struct.
 */
public struct GtkRadioButton{}


/**
 * Main Gtk struct.
 */
public struct GtkToggleButton{}


/**
 * Main Gtk struct.
 * The GtkLinkButton structure contains only
 * private data and should be accessed using the provided API.
 */
public struct GtkLinkButton{}


/**
 * Main Gtk struct.
 */
public struct GtkScaleButton{}


/**
 * Main Gtk struct.
 */
public struct GtkVolumeButton{}


/**
 * Main Gtk struct.
 * The GtkSwitch structure contains private
 * data and it should only be accessed using the provided API.
 */
public struct GtkSwitch{}


/**
 * Main Gtk struct.
 */
public struct GtkLockButton{}


/**
 * Main Gtk struct.
 */
public struct GtkMenuButton{}


/**
 * Main Gtk struct.
 */
public struct GtkEntry{}


/**
 * Main Gtk struct.
 */
public struct GtkEntryBuffer{}


/**
 * Main Gtk struct.
 */
public struct GtkEntryCompletion{}


/**
 * Main Gtk struct.
 */
public struct GtkScale{}


/**
 * Main Gtk struct.
 */
public struct GtkHScale{}


/**
 * Main Gtk struct.
 * The GtkVScale struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkVScale{}


/**
 * Main Gtk struct.
 * The GtkSpinButton struct contains only private data and should
 * not be directly modified.
 */
public struct GtkSpinButton{}


/**
 * Main Gtk struct.
 */
public struct GtkSearchEntry{}


/**
 * Main Gtk struct.
 */
public struct GtkEditable{}


/**
 * Main Gtk struct.
 */
public struct GtkTextMark{}


/**
 * Main Gtk struct.
 */
public struct GtkTextBuffer{}


/**
 * Main Gtk struct.
 */
public struct GtkTextTag{}


/**
 * Using GtkTextAttributes directly should rarely be necessary.
 * It's primarily useful with gtk_text_iter_get_attributes().
 * As with most GTK+ structs, the fields in this struct should only
 * be read, never modified directly.
 */
public struct GtkTextAttributes
{
	GtkTextAppearance appearance;
	GtkJustification justification;
	GtkTextDirection direction;
	/+* Individual chunks of this can be set/unset as a group +/
	PangoFontDescription *font;
	double fontScale;
	int leftMargin;
	int rightMargin;
	int indent;
	int pixelsAboveLines;
	int pixelsBelowLines;
	int pixelsInsideWrap;
	PangoTabArray *tabs;
	GtkWrapMode wrapMode; /+* How to handle wrap-around for this tag.
	 * Must be GTK_WRAPMODE_CHAR,
	 * GTK_WRAPMODE_NONE, GTK_WRAPMODE_WORD
	+/
	PangoLanguage *language;
	/+* hide the text +/
	uint bitfield0;
	//uint invisible : 1;
	/+* Background is fit to full line height rather than
	 * baseline +\- ascent\descent (font height)
	+/
	//uint bgFullHeight : 1;
	/+* can edit this text +/
	//uint editable : 1;
}


public struct GtkTextAppearance
{
	GdkColor bgColor;
	GdkColor fgColor;
	/+* super/subscript rise, can be negative +/
	int rise;
	uint bitfield0;
	//uint underline : 4; /+* PangoUnderline +/
	//uint strikethrough : 1;
	/+* Whether to use background-related values; this is irrelevant for
	 * the values struct when inn a tag, but is used for the composite
	 * values struct; it's true if any of the tags being composited
	 * had background stuff set.
	+/
	//uint drawBg : 1;
	/+* These are only used when we are actually laying out and rendering
	 * a paragraph; not when a GtkTextAppearance is part of a
	 * GtkTextAttributes.
	+/
	//uint insideSelection : 1;
	//uint isText : 1;
	GdkRGBA *rgba[2];
	static if (int.sizeof == ptrdiff_t.sizeof)
	{
		/+* unusable, just for ABI compat +/
		uint padding[2];
	}
}


/**
 * Main Gtk struct.
 */
public struct GtkTextTagTable{}


/**
 * Main Gtk struct.
 */
public struct GtkTextView{}


/**
 * A GtkTextChildAnchor is a spot in the buffer where child widgets can
 * be "anchored" (inserted inline, as if they were characters). The anchor
 * can have multiple widgets anchored, to allow for multiple views.
 */
public struct GtkTextChildAnchor{}


/**
 * Main Gtk struct.
 */
public struct GtkTreeModel{}


public struct GtkTreePath{}


/**
 * A GtkTreeRowReference tracks model changes so that it always refers to the
 * same row (a GtkTreePath refers to a position, not a fixed row). Create a
 * new GtkTreeRowReference with gtk_tree_row_reference_new().
 */
public struct GtkTreeRowReference{}


public struct GtkTreeModelIface
{
	GTypeInterface gIface;
	/+* Signals +/
	extern(C) void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter)  rowChanged;
	extern(C) void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter)  rowInserted;
	extern(C) void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter)  rowHasChildToggled;
	extern(C) void function(GtkTreeModel* treeModel, GtkTreePath* path)  rowDeleted;
	extern(C) void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter, int* newOrder)  rowsReordered;
	/+* Virtual Table +/
	extern(C) GtkTreeModelFlags function(GtkTreeModel* treeModel)  getFlags;
	extern(C) int function(GtkTreeModel* treeModel)  getNColumns;
	extern(C) GType function(GtkTreeModel* treeModel, int index)  getColumnType;
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreePath* path)  getIter;
	extern(C) GtkTreePath * function(GtkTreeModel* treeModel, GtkTreeIter* iter)  getPath;
	extern(C) void function(GtkTreeModel* treeModel, GtkTreeIter* iter, int column, GValue* value)  getValue;
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter)  iterNext;
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter)  iterPrevious;
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent)  iterChildren;
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter)  iterHasChild;
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter)  iterNChildren;
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent, int n)  iterNthChild;
	extern(C) int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* child)  iterParent;
	extern(C) void function(GtkTreeModel* treeModel, GtkTreeIter* iter)  refNode;
	extern(C) void function(GtkTreeModel* treeModel, GtkTreeIter* iter)  unrefNode;
}


/**
 * Main Gtk struct.
 */
public struct GtkTreeSelection{}


/**
 * Main Gtk struct.
 */
public struct GtkTreeViewColumn{}


/**
 * Main Gtk struct.
 */
public struct GtkTreeView{}


public struct GtkTreeViewPrivate{}


/**
 * Main Gtk struct.
 */
public struct GtkTreeDragSource{}


public struct GtkTreeDragSourceIface
{
	GTypeInterface gIface;
	/+* VTable - not signals +/
	extern(C) int function(GtkTreeDragSource* dragSource, GtkTreePath* path)  rowDraggable;
	extern(C) int function(GtkTreeDragSource* dragSource, GtkTreePath* path, GtkSelectionData* selectionData)  dragDataGet;
	extern(C) int function(GtkTreeDragSource* dragSource, GtkTreePath* path)  dragDataDelete;
}


public struct GtkTreeDragDest{}


public struct GtkTreeDragDestIface
{
	GTypeInterface gIface;
	/+* VTable - not signals +/
	extern(C) int function(GtkTreeDragDest* dragDest, GtkTreePath* dest, GtkSelectionData* selectionData)  dragDataReceived;
	extern(C) int function(GtkTreeDragDest* dragDest, GtkTreePath* destPath, GtkSelectionData* selectionData)  rowDropPossible;
}


/**
 * Main Gtk struct.
 */
public struct GtkCellView{}


/**
 * Main Gtk struct.
 */
public struct GtkIconView{}


/**
 * Main Gtk struct.
 */
public struct GtkTreeSortable{}


public struct GtkTreeSortableIface
{
	GTypeInterface gIface;
	/+* signals +/
	extern(C) void function(GtkTreeSortable* sortable)  sortColumnChanged;
	/+* virtual table +/
	extern(C) int function(GtkTreeSortable* sortable, int* sortColumnId, GtkSortType* order)  getSortColumnId;
	extern(C) void function(GtkTreeSortable* sortable, int sortColumnId, GtkSortType order)  setSortColumnId;
	extern(C) void function(GtkTreeSortable* sortable, int sortColumnId, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy)  setSortFunc;
	extern(C) void function(GtkTreeSortable* sortable, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy)  setDefaultSortFunc;
	extern(C) int function(GtkTreeSortable* sortable)  hasDefaultSortFunc;
}


/**
 * Main Gtk struct.
 */
public struct GtkTreeModelSort{}


/**
 * Main Gtk struct.
 */
public struct GtkTreeModelFilter{}


/**
 * Main Gtk struct.
 */
public struct GtkCellLayout{}


public struct GtkCellLayoutIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int expand)  packStart;
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int expand)  packEnd;
	extern(C) void function(GtkCellLayout* cellLayout)  clear;
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, char* attribute, int column)  addAttribute;
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, GtkCellLayoutDataFunc func, void* funcData, GDestroyNotify destroy)  setCellDataFunc;
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell)  clearAttributes;
	extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int position)  reorder;
	extern(C) GList* function(GtkCellLayout* cellLayout)  getCells;
	extern(C) GtkCellArea * function(GtkCellLayout* cellLayout)  getArea;
}


/**
 * Main Gtk struct.
 */
public struct GtkCellArea{}


/**
 * add ()
 * adds a GtkCellRenderer to the area.
 * remove ()
 * removes a GtkCellRenderer from the area.
 * foreach ()
 * calls the GtkCellCallback function on every GtkCellRenderer in
 * the area with the provided user data until the callback returns TRUE.
 * foreach_alloc ()
 * Calls the GtkCellAllocCallback function on every
 * GtkCellRenderer in the area with the allocated area for the cell
 * and the provided user data until the callback returns TRUE.
 * event ()
 * Handle an event in the area, this is generally used to activate
 * a cell at the event location for button events but can also be used
 * to generically pass events to GtkWidgets drawn onto the area.
 * render ()
 * Actually render the area's cells to the specified rectangle,
 * background_area should be correctly distributed to the cells
 * corresponding background areas.
 * apply_attributes ()
 * Apply the cell attributes to the cells. This is
 * implemented as a signal and generally GtkCellArea subclasses don't
 * need to implement it since it is handled by the base class.
 * create_context ()
 * Creates and returns a class specific GtkCellAreaContext
 * to store cell alignment and allocation details for a said GtkCellArea
 * class.
 * copy_context ()
 * Creates a new GtkCellAreaContext in the same state as
 * the passed context with any cell alignment data and allocations intact.
 * get_request_mode ()
 * This allows an area to tell its layouting widget whether
 * it prefers to be allocated in GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH or
 * GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT mode.
 * get_preferred_width ()
 * Calculates the minimum and natural width of the
 * areas cells with the current attributes applied while considering
 * the particular layouting details of the said GtkCellArea. While
 * requests are performed over a series of rows, alignments and overall
 * minimum and natural sizes should be stored in the corresponding
 * GtkCellAreaContext.
 * get_preferred_height_for_width ()
 * Calculates the minimum and natural height
 * for the area if the passed context would be allocated the given width.
 * When implementing this virtual method it is safe to assume that context
 * has already stored the aligned cell widths for every GtkTreeModel row
 * that context will be allocated for since this information was stored
 * at GtkCellAreaClass.get_preferred_width() time. This virtual method
 * should also store any necessary alignments of cell heights for the
 * case that the context is allocated a height.
 * get_preferred_height ()
 * Calculates the minimum and natural height of the
 * areas cells with the current attributes applied. Essentially this is
 * the same as GtkCellAreaClass.get_preferred_width() only for areas
 * that are being requested as GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT.
 * get_preferred_width_for_height ()
 * Calculates the minimum and natural width
 * for the area if the passed context would be allocated the given
 * height. The same as GtkCellAreaClass.get_preferred_height_for_width()
 * only for handling requests in the GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT
 * mode.
 * set_cell_property ()
 * This should be implemented to handle changes in child
 * cell properties for a given GtkCellRenderer that were previously
 * installed on the GtkCellAreaClass with gtk_cell_area_class_install_cell_property().
 * get_cell_property ()
 * This should be implemented to report the values of
 * child cell properties for a given child GtkCellRenderer.
 * focus ()
 * This virtual method should be implemented to navigate focus from
 * cell to cell inside the GtkCellArea. The GtkCellArea should move
 * focus from cell to cell inside the area and return FALSE if focus
 * logically leaves the area with the following exceptions: When the
 * area contains no activatable cells, the entire area recieves focus.
 * Focus should not be given to cells that are actually "focus siblings"
 * of other sibling cells (see gtk_cell_area_get_focus_from_sibling()).
 * Focus is set by calling gtk_cell_area_set_focus_cell().
 * is_activatable ()
 * Returns whether the GtkCellArea can respond to
 * GtkCellAreaClass.activate(), usually this does not need to be
 * implemented since the base class takes care of this however it can
 * be enhanced if the GtkCellArea subclass can handle activation in
 * other ways than activating its GtkCellRenderers.
 * activate ()
 * This is called when the layouting widget rendering the
 * GtkCellArea activates the focus cell (see gtk_cell_area_get_focus_cell()).
 */
public struct GtkCellAreaClass
{
	/+* Basic methods +/
	extern(C) void function(GtkCellArea* area, GtkCellRenderer* renderer)  add;
	extern(C) void function(GtkCellArea* area, GtkCellRenderer* renderer)  remove;
	extern(C) void function(GtkCellArea* area, GtkCellCallback callback, void* callbackData)  foreac;
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, Rectangle* cellArea, Rectangle* backgroundArea, GtkCellAllocCallback callback, void* callbackData)  foreachAlloc;
	extern(C) int function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkEvent* event, Rectangle* cellArea, GtkCellRendererState flags)  event;
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, cairo_t* cr, Rectangle* backgroundArea, Rectangle* cellArea, GtkCellRendererState flags, int paintFocus)  render;
	extern(C) void function(GtkCellArea* area, GtkTreeModel* treeModel, GtkTreeIter* iter, int isExpander, int isExpanded)  applyAttributes;
	/+* Geometry +/
	extern(C) GtkCellAreaContext * function(GtkCellArea* area)  createContext;
	extern(C) GtkCellAreaContext * function(GtkCellArea* area, GtkCellAreaContext* context)  copyContext;
	extern(C) GtkSizeRequestMode function(GtkCellArea* area)  getRequestMode;
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int* minimumWidth, int* naturalWidth)  getPreferredWidth;
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight)  getPreferredHeightForWidth;
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int* minimumHeight, int* naturalHeight)  getPreferredHeight;
	extern(C) void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int height, int* minimumWidth, int* naturalWidth)  getPreferredWidthForHeight;
	/+* Cell Properties +/
	extern(C) void function(GtkCellArea* area, GtkCellRenderer* renderer, uint propertyId, GValue* value, GParamSpec* pspec)  setCellProperty;
	extern(C) void function(GtkCellArea* area, GtkCellRenderer* renderer, uint propertyId, GValue* value, GParamSpec* pspec)  getCellProperty;
	/+* Focus +/
	extern(C) int function(GtkCellArea* area, GtkDirectionType direction)  focus;
	extern(C) int function(GtkCellArea* area)  isActivatable;
	extern(C) int function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, Rectangle* cellArea, GtkCellRendererState flags, int editOnly)  activate;
}


/**
 * Main Gtk struct.
 */
public struct GtkCellAreaBox{}


public struct GtkCellAreaBoxClass{}


/**
 * allocate ()
 * This tells the context that an allocation width or height
 * (or both) have been decided for a group of rows. The context should
 * store any allocations for internally aligned cells at this point so
 * that they dont need to be recalculated at gtk_cell_area_render() time.
 * reset ()
 * Clear any previously stored information about requested and
 * allocated sizes for the context.
 * get_preferred_height_for_width ()
 * Returns the aligned height for the given
 * width that context must store while collecting sizes for it's rows.
 * get_preferred_width_for_height ()
 * Returns the aligned width for the given
 * height that context must store while collecting sizes for it's rows.
 */
public struct GtkCellAreaContextClass
{
	extern(C) void function(GtkCellAreaContext* context, int width, int height)  allocate;
	extern(C) void function(GtkCellAreaContext* context)  reset;
	extern(C) void function(GtkCellAreaContext* context, int width, int* minimumHeight, int* naturalHeight)  getPreferredHeightForWidth;
	extern(C) void function(GtkCellAreaContext* context, int height, int* minimumWidth, int* naturalWidth)  getPreferredWidthForHeight;
}


/**
 * Main Gtk struct.
 */
public struct GtkCellAreaContext{}


/**
 * Main Gtk struct.
 */
public struct GtkCellRenderer{}


public struct GtkCellRendererClass
{
	GInitiallyUnownedClass parentClass;
	/+* vtable - not signals +/
	extern(C) GtkSizeRequestMode function(GtkCellRenderer* cell)  getRequestMode;
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, int* minimumSize, int* naturalSize)  getPreferredWidth;
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight)  getPreferredHeightForWidth;
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, int* minimumSize, int* naturalSize)  getPreferredHeight;
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, int height, int* minimumWidth, int* naturalWidth)  getPreferredWidthForHeight;
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, GtkCellRendererState flags, Rectangle* cellArea, Rectangle* alignedArea)  getAlignedArea;
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, Rectangle* cellArea, int* xOffset, int* yOffset, int* width, int* height)  getSize;
	extern(C) void function(GtkCellRenderer* cell, cairo_t* cr, GtkWidget* widget, Rectangle* backgroundArea, Rectangle* cellArea, GtkCellRendererState flags)  render;
	extern(C) int function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, char* path, Rectangle* backgroundArea, Rectangle* cellArea, GtkCellRendererState flags)  activate;
	extern(C) GtkCellEditable * function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, char* path, Rectangle* backgroundArea, Rectangle* cellArea, GtkCellRendererState flags)  startEditing;
	/+* Signals +/
	extern(C) void function(GtkCellRenderer* cell)  editingCanceled;
	extern(C) void function(GtkCellRenderer* cell, GtkCellEditable* editable, char* path)  editingStarted;
	GtkCellRendererClassPrivate *priv;
	/+* Padding for future expansion +/
	extern(C) void function() _GtkReserved2;
	extern(C) void function() _GtkReserved3;
	extern(C) void function() _GtkReserved4;
}


/**
 * Main Gtk struct.
 */
public struct GtkCellEditable{}


public struct GtkCellEditableIface
{
	GTypeInterface gIface;
	/+* signals +/
	extern(C) void function(GtkCellEditable* cellEditable)  editingDone;
	extern(C) void function(GtkCellEditable* cellEditable)  removeWidget;
	/+* virtual table +/
	extern(C) void function(GtkCellEditable* cellEditable, GdkEvent* event)  startEditing;
}


/**
 * Main Gtk struct.
 */
public struct GtkCellRendererAccel{}


/**
 * Main Gtk struct.
 */
public struct GtkCellRendererCombo{}


/**
 * Main Gtk struct.
 */
public struct GtkCellRendererPixbuf{}


/**
 * Main Gtk struct.
 */
public struct GtkCellRendererProgress{}


/**
 * Main Gtk struct.
 */
public struct GtkCellRendererSpin{}


/**
 * Main Gtk struct.
 */
public struct GtkCellRendererText{}


/**
 * Main Gtk struct.
 */
public struct GtkCellRendererToggle{}


/**
 * Main Gtk struct.
 */
public struct GtkCellRendererSpinner{}


/**
 * Main Gtk struct.
 */
public struct GtkListStore{}


/**
 * Main Gtk struct.
 */
public struct GtkTreeStore{}


/**
 * Main Gtk struct.
 */
public struct GtkComboBox{}


/**
 * Main Gtk struct.
 */
public struct GtkComboBoxText{}


/**
 * Main Gtk struct.
 */
public struct GtkMenu{}


/**
 * Main Gtk struct.
 */
public struct GtkMenuBar{}


/**
 * Main Gtk struct.
 */
public struct GtkMenuItem{}


/**
 * Main Gtk struct.
 */
public struct GtkImageMenuItem{}


/**
 * Main Gtk struct.
 */
public struct GtkRadioMenuItem{}


/**
 * Main Gtk struct.
 */
public struct GtkCheckMenuItem{}


/**
 * Main Gtk struct.
 */
public struct GtkSeparatorMenuItem{}


/**
 * Main Gtk struct.
 */
public struct GtkTearoffMenuItem{}


/**
 * Main Gtk struct.
 * Dummy structure for accessing instances of GtkToolShellIface.
 */
public struct GtkToolShell{}


/**
 * Virtual function table for the GtkToolShell interface.
 * get_icon_size ()
 * mandatory implementation of gtk_tool_shell_get_icon_size().
 * get_orientation ()
 * mandatory implementation of gtk_tool_shell_get_orientation().
 * get_style ()
 * mandatory implementation of gtk_tool_shell_get_style().
 * get_relief_style ()
 * optional implementation of gtk_tool_shell_get_relief_style().
 * rebuild_menu ()
 * optional implementation of gtk_tool_shell_rebuild_menu().
 * get_text_orientation ()
 * optional implementation of gtk_tool_shell_get_text_orientation().
 * get_text_alignment ()
 * optional implementation of gtk_tool_shell_get_text_alignment().
 * get_ellipsize_mode ()
 * optional implementation of gtk_tool_shell_get_ellipsize_mode().
 * get_text_size_group ()
 * optional implementation of gtk_tool_shell_get_text_size_group().
 */
public struct GtkToolShellIface
{
	extern(C) GtkIconSize function(GtkToolShell* shell) getIconSize;
	extern(C) GtkOrientation function(GtkToolShell* shell) getOrientation;
	extern(C) GtkToolbarStyle function(GtkToolShell* shell) getStyle;
	extern(C) GtkReliefStyle function(GtkToolShell* shell) getReliefStyle;
	extern(C) void function(GtkToolShell* shell) rebuildMenu;
	extern(C) GtkOrientation function(GtkToolShell* shell) getTextOrientation;
	extern(C) float function(GtkToolShell* shell) getTextAlignment;
	extern(C) PangoEllipsizeMode function(GtkToolShell* shell) getEllipsizeMode;
	extern(C) GtkSizeGroup * function(GtkToolShell* shell) getTextSizeGroup;
}


/**
 * Main Gtk struct.
 */
public struct GtkToolbar{}


/**
 * Main Gtk struct.
 * The GtkToolItem struct contains only private data.
 * It should only be accessed through the functions described below.
 */
public struct GtkToolItem{}


/**
 * Main Gtk struct.
 * This should not be accessed directly. Use the accessor functions below.
 */
public struct GtkToolPalette{}


/**
 * Main Gtk struct.
 * This should not be accessed directly. Use the accessor functions below.
 */
public struct GtkToolItemGroup{}


/**
 * Main Gtk struct.
 */
public struct GtkSeparatorToolItem{}


/**
 * Main Gtk struct.
 */
public struct GtkToolButton{}


/**
 * Main Gtk struct.
 */
public struct GtkMenuToolButton{}


/**
 * Main Gtk struct.
 */
public struct GtkToggleToolButton{}


/**
 * Main Gtk struct.
 */
public struct GtkRadioToolButton{}


/**
 * Main Gtk struct.
 */
public struct GtkUIManager{}


/**
 * Main Gtk struct.
 */
public struct GtkActionGroup{}


/**
 * GtkActionEntry structs are used with gtk_action_group_add_actions() to
 * construct actions.
 * const gchar *name;
 * The name of the action.
 * const gchar *stock_id;
 * The stock id for the action, or the name of an icon from the
 * icon theme.
 * const gchar *label;
 * The label for the action. This field should typically be marked
 * for translation, see gtk_action_group_set_translation_domain(). If
 * label is NULL, the label of the stock item with id stock_id is used.
 * const gchar *accelerator;
 * The accelerator for the action, in the format understood by
 * gtk_accelerator_parse().
 * const gchar *tooltip;
 * The tooltip for the action. This field should typically be
 * marked for translation, see gtk_action_group_set_translation_domain().
 * GCallback callback;
 * The function to call when the action is activated.
 */
public struct GtkActionEntry
{
	char *name;
	char *stockId;
	char *label;
	char *accelerator;
	char *tooltip;
	GCallback callback;
}


/**
 * GtkToggleActionEntry structs are used with
 * gtk_action_group_add_toggle_actions() to construct toggle actions.
 * const gchar *name;
 * The name of the action.
 * const gchar *stock_id;
 * The stock id for the action, or the name of an icon from the
 * icon theme.
 * const gchar *label;
 * The label for the action. This field should typically be marked
 * for translation, see gtk_action_group_set_translation_domain().
 * const gchar *accelerator;
 * The accelerator for the action, in the format understood by
 * gtk_accelerator_parse().
 * const gchar *tooltip;
 * The tooltip for the action. This field should typically be
 * marked for translation, see gtk_action_group_set_translation_domain().
 * GCallback callback;
 * The function to call when the action is activated.
 * gboolean is_active;
 * The initial state of the toggle action.
 */
public struct GtkToggleActionEntry
{
	char *name;
	char *stockId;
	char *label;
	char *accelerator;
	char *tooltip;
	GCallback callback;
	int isActive;
}


/**
 * GtkRadioActionEntry structs are used with
 * gtk_action_group_add_radio_actions() to construct groups of radio actions.
 * const gchar *name;
 * The name of the action.
 * const gchar *stock_id;
 * The stock id for the action, or the name of an icon from the
 * icon theme.
 * const gchar *label;
 * The label for the action. This field should typically be marked
 * for translation, see gtk_action_group_set_translation_domain().
 * const gchar *accelerator;
 * The accelerator for the action, in the format understood by
 * gtk_accelerator_parse().
 * const gchar *tooltip;
 * The tooltip for the action. This field should typically be
 * marked for translation, see gtk_action_group_set_translation_domain().
 * gint value;
 * The value to set on the radio action. See
 * gtk_radio_action_get_current_value().
 */
public struct GtkRadioActionEntry
{
	char *name;
	char *stockId;
	char *label;
	char *accelerator;
	char *tooltip;
	int value;
}


/**
 * Main Gtk struct.
 */
public struct GtkAction{}


/**
 * Main Gtk struct.
 */
public struct GtkToggleAction{}


/**
 * Main Gtk struct.
 */
public struct GtkRadioAction{}


/**
 * Main Gtk struct.
 */
public struct GtkRecentAction{}


/**
 * Main Gtk struct.
 */
public struct GtkActivatable{}


/**
 * GTypeInterface g_iface;
 * update ()
 * Called to update the activatable when its related action's properties change.
 * You must check the "use-action-appearance" property only apply action
 * properties that are meant to effect the appearance accordingly.
 * sync_action_properties ()
 * Called to update the activatable completely, this is called internally when
 * "related-action" property is set or unset and by the implementor when
 * "use-action-appearance" changes.
 * Note
 * This method can be called
 * with a NULL action at times
 * Since 2.16
 */
public struct GtkActivatableIface
{
	GTypeInterface gIface;
	/+* virtual table +/
	extern(C) void function(GtkActivatable* activatable, GtkAction* action, char* propertyName)  update;
	extern(C) void function(GtkActivatable* activatable, GtkAction* action)  syncActionProperties;
}


/**
 * Main Gtk struct.
 */
public struct GtkColorChooser{}


/**
 * Main Gtk struct.
 */
public struct GtkColorButton{}


/**
 * Main Gtk struct.
 */
public struct GtkColorChooserWidget{}


/**
 * Main Gtk struct.
 */
public struct GtkColorChooserDialog{}


/**
 * Main Gtk struct.
 */
public struct GtkColorSelection{}


/**
 * Main Gtk struct.
 */
public struct GtkColorSelectionDialog{}


/**
 * Main Gtk struct.
 */
public struct GtkHSV{}


/**
 * Main Gtk struct.
 */
public struct GtkFileChooser{}


/**
 * Main Gtk struct.
 */
public struct GtkFileChooserButton{}


/**
 * Main Gtk struct.
 */
public struct GtkFileChooserDialog{}


/**
 * Main Gtk struct.
 */
public struct GtkFileChooserWidget{}


/**
 * Main Gtk struct.
 */
public struct GtkFileFilter{}


/**
 * A GtkFileFilterInfo struct is used to pass information about the
 * tested file to gtk_file_filter_filter().
 * GtkFileFilterFlags contains;
 * Flags indicating which of the following fields need
 * are filled
 * const gchar *filename;
 * the filename of the file being tested
 * const gchar *uri;
 * the URI for the file being tested
 * const gchar *display_name;
 * the string that will be used to display the file
 * in the file chooser
 * const gchar *mime_type;
 * the mime type of the file
 */
public struct GtkFileFilterInfo
{
	GtkFileFilterFlags contains;
	char *filename;
	char *uri;
	char *displayName;
	char *mimeType;
}


/**
 * Main Gtk struct.
 */
public struct GtkFontChooser{}


/**
 * Main Gtk struct.
 */
public struct GtkFontButton{}


/**
 * Main Gtk struct.
 */
public struct GtkFontChooserWidget{}


/**
 * Main Gtk struct.
 */
public struct GtkFontChooserDialog{}


/**
 * Main Gtk struct.
 */
public struct GtkFontSelection{}


/**
 * Main Gtk struct.
 */
public struct GtkFontSelectionDialog{}


/**
 * Main Gtk struct.
 */
public struct GtkGrid{}


/**
 * Main Gtk struct.
 */
public struct GtkAlignment{}


/**
 * Main Gtk struct.
 */
public struct GtkAspectFrame{}


/**
 * Main Gtk struct.
 */
public struct GtkBox{}


/**
 * Main Gtk struct.
 */
public struct GtkHBox{}


/**
 * Main Gtk struct.
 */
public struct GtkVBox{}


/**
 * Main Gtk struct.
 */
public struct GtkButtonBox{}


/**
 * Main Gtk struct.
 */
public struct GtkHButtonBox{}


/**
 * Main Gtk struct.
 */
public struct GtkVButtonBox{}


/**
 * Main Gtk struct.
 */
public struct GtkFixed{}


/**
 * Main Gtk struct.
 */
public struct GtkPaned{}


/**
 * Main Gtk struct.
 */
public struct GtkHPaned{}


/**
 * Main Gtk struct.
 */
public struct GtkVPaned{}


/**
 * Main Gtk struct.
 */
public struct GtkLayout{}


/**
 * Main Gtk struct.
 */
public struct GtkNotebook{}


/**
 * Main Gtk struct.
 */
public struct GtkTable{}


/**
 * Main Gtk struct.
 */
public struct GtkExpander{}


/**
 * Main Gtk struct.
 */
public struct GtkOverlay{}


/**
 * Main Gtk struct.
 */
public struct GtkOrientable{}


/**
 * Main Gtk struct.
 */
public struct GtkFrame{}


/**
 * Main Gtk struct.
 */
public struct GtkSeparator{}


/**
 * Main Gtk struct.
 */
public struct GtkHSeparator{}


/**
 * Main Gtk struct.
 * The GtkVSeparator struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkVSeparator{}


/**
 * Main Gtk struct.
 */
public struct GtkScrollbar{}


/**
 * Main Gtk struct.
 */
public struct GtkHScrollbar{}


/**
 * Main Gtk struct.
 * The GtkVScrollbar struct contains private data and should be accessed
 * using the functions below.
 */
public struct GtkVScrollbar{}


/**
 * Main Gtk struct.
 */
public struct GtkScrolledWindow{}


/**
 * Main Gtk struct.
 */
public struct GtkScrollable{}


/**
 * Main Gtk struct.
 */
public struct GtkPrintOperation{}


public struct GtkPrintOperationPreview{}


/**
 * Main Gtk struct.
 */
public struct GtkPrintContext{}


/**
 * Main Gtk struct.
 */
public struct GtkPrintSettings{}


public struct GtkPageRange
{
	int start;
	int end;
}


/**
 * Main Gtk struct.
 */
public struct GtkPageSetup{}


/**
 * Main Gtk struct.
 */
public struct GtkPaperSize{}


/**
 * Main Gtk struct.
 */
public struct GtkPrinter{}


public struct GtkPrintBackend{}


/**
 * Main Gtk struct.
 */
public struct GtkPrintJob{}


/**
 * Main Gtk struct.
 */
public struct GtkPrintUnixDialog{}


/**
 * Main Gtk struct.
 */
public struct GtkPageSetupUnixDialog{}


/**
 * Main Gtk struct.
 * The GtkAdjustment struct contains only private fields and
 * should not be directly accessed.
 */
public struct GtkAdjustment{}


/**
 * Main Gtk struct.
 */
public struct GtkArrow{}


/**
 * Main Gtk struct.
 */
public struct GtkCalendar{}


/**
 * Main Gtk struct.
 */
public struct GtkDrawingArea{}


/**
 * Main Gtk struct.
 */
public struct GtkEventBox{}


/**
 * Main Gtk struct.
 */
public struct GtkHandleBox{}


/**
 * Main Gtk struct.
 */
public struct GtkIMContextSimple{}


/**
 * Main Gtk struct.
 */
public struct GtkIMMulticontext{}


/**
 * Main Gtk struct.
 */
public struct GtkSizeGroup{}


/**
 * Main Gtk struct.
 */
public struct GtkTooltip{}


/**
 * Main Gtk struct.
 */
public struct GtkViewport{}


/**
 * Main Gtk struct.
 */
public struct GtkAccessible{}


/**
 * Main Gtk struct.
 */
public struct GtkWidget{}


public struct GtkWidgetAuxInfo
{
	int width;
	int height;
	uint bitfield0;
	//uint halign : 4;
	//uint valign : 4;
	GtkBorder margin;
}


/**
 * Represents a request of a screen object in a given orientation. These
 * are primarily used in container implementations when allocating a natural
 * size for children calling. See gtk_distribute_natural_allocation().
 * gpointer data;
 * A client pointer
 * gint minimum_size;
 * The minimum size needed for allocation in a given orientation
 * gint natural_size;
 * The natural size for allocation in a given orientation
 */
public struct GtkRequestedSize
{
	void* data;
	int minimumSize;
	int naturalSize;
}


/**
 * Main Gtk struct.
 */
public struct GtkContainer{}


/**
 * Main Gtk struct.
 */
public struct GtkBin{}


/**
 * Main Gtk struct.
 */
public struct GtkMenuShell{}


/**
 * Main Gtk struct.
 */
public struct GtkMisc{}


/**
 * Main Gtk struct.
 */
public struct GtkRange{}


/**
 * Main Gtk struct.
 */
public struct GtkIMContext{}


/**
 * preedit_start ()
 * Default handler of the "preedit-start" signal.
 * preedit_end ()
 * Default handler of the "preedit-end" signal.
 * preedit_changed ()
 * Default handler of the "preedit-changed"
 * signal.
 * commit ()
 * Default handler of the "commit" signal.
 * retrieve_surrounding ()
 * Default handler of the
 * "retrieve-surrounding" signal.
 * delete_surrounding ()
 * Default handler of the
 * "delete-surrounding" signal.
 * set_client_window ()
 * Called via gtk_im_context_set_client_window() when the
 * input window where the entered text will appear changes. Override this to
 * keep track of the current input window, for instance for the purpose of
 * positioning a status display of your input method.
 * get_preedit_string ()
 * Called via gtk_im_context_get_preedit_string() to
 * retrieve the text currently being preedited for display at the cursor
 * position. Any input method which composes complex characters or any
 * other compositions from multiple sequential key presses should override
 * this method to provide feedback.
 * filter_keypress ()
 * Called via gtk_im_context_filter_keypress() on every
 * key press or release event. Every non-trivial input method needs to
 * override this in order to implement the mapping from key events to text.
 * A return value of TRUE indicates to the caller that the event was
 * consumed by the input method. In that case, the "commit"
 * signal should be emitted upon completion of a key sequence to pass the
 * resulting text back to the input widget. Alternatively, FALSE may be
 * returned to indicate that the event wasn't handled by the input method.
 * If a builtin mapping exists for the key, it is used to produce a
 * character.
 * focus_in ()
 * Called via gtk_im_context_focus_in() when the input widget
 * has gained focus. May be overridden to keep track of the current focus.
 * focus_out ()
 * Called via gtk_im_context_focus_out() when the input widget
 * has lost focus. May be overridden to keep track of the current focus.
 * reset ()
 * Called via gtk_im_context_reset() to signal a change such as a
 * change in cursor position. An input method that implements preediting
 * should override this method to clear the preedit state on reset.
 * set_cursor_location ()
 * Called via gtk_im_context_set_cursor_location()
 * to inform the input method of the current cursor location relative to
 * the client window. May be overridden to implement the display of popup
 * windows at the cursor position.
 * set_use_preedit ()
 * Called via gtk_im_context_set_use_preedit() to control
 * the use of the preedit string. Override this to display feedback by some
 * other means if turned off.
 * set_surrounding ()
 * Called via gtk_im_context_set_surrounding() in response
 * to signal "retrieve-surrounding" to update the input
 * method's idea of the context around the cursor. It is not necessary to
 * override this method even with input methods which implement
 * context-dependent behavior. The base implementation is sufficient for
 * gtk_im_context_get_surrounding() to work.
 * get_surrounding ()
 * Called via gtk_im_context_get_surrounding() to update
 * the context around the cursor location. It is not necessary to override
 * this method even with input methods which implement context-dependent
 * behavior. The base implementation emits
 * "retrieve-surrounding" and records the context received
 * by the subsequent invocation of get_surrounding.
 */
public struct GtkIMContextClass
{
	/+* Signals +/
	extern(C) void function(GtkIMContext* context) preeditStart;
	extern(C) void function(GtkIMContext* context) preeditEnd;
	extern(C) void function(GtkIMContext* context) preeditChanged;
	extern(C) void function(GtkIMContext* context, char* str) commit;
	extern(C) int function(GtkIMContext* context) retrieveSurrounding;
	extern(C) int function(GtkIMContext* context, int offset, int nChars) deleteSurrounding;
	/+* Virtual functions +/
	extern(C) void function(GtkIMContext* context, GdkWindow* window) setClientWindow;
	extern(C) void function(GtkIMContext* context, char** str, PangoAttrList** attrs, int* cursorPos) getPreeditString;
	extern(C) int function(GtkIMContext* context, GdkEventKey* event) filterKeypress;
	extern(C) void function(GtkIMContext* context) focusIn;
	extern(C) void function(GtkIMContext* context) focusOut;
	extern(C) void function(GtkIMContext* context) reset;
	extern(C) void function(GtkIMContext* context, Rectangle* area) setCursorLocation;
	extern(C) void function(GtkIMContext* context, int usePreedit) setUsePreedit;
	extern(C) void function(GtkIMContext* context, char* text, int len, int cursorIndex) setSurrounding;
	extern(C) int function(GtkIMContext* context, char** text, int* cursorIndex) getSurrounding;
}


/**
 * Bookkeeping information about a loadable input method.
 * const gchar *context_id;
 * The unique identification string of the input method.
 * const gchar *context_name;
 * The human-readable name of the input method.
 * const gchar *domain;
 * Translation domain to be used with dgettext()
 * const gchar *domain_dirname;
 * Name of locale directory for use with bindtextdomain()
 * const gchar *default_locales;
 * A colon-separated list of locales where this input method
 * should be the default. The asterisk "*" sets the default for all locales.
 */
public struct GtkIMContextInfo
{
	char *contextId;
	char *contextName;
	char *domain;
	char *domainDirname;
	char *defaultLocales;
}


/**
 * Main Gtk struct.
 */
public struct GtkPlug{}


/**
 * Main Gtk struct.
 */
public struct GtkSocket{}


/**
 * Main Gtk struct.
 * GtkRecentManager contains only private data
 * and should be accessed using the provided API.
 * Since 2.10
 */
public struct GtkRecentManager{}


/**
 * GtkRecentInfo is an opaque data structure
 * whose members can only be accessed using the provided API.
 * GtkRecentInfo constains all the meta-data
 * associated with an entry in the recently used files list.
 * Since 2.10
 */
public struct GtkRecentInfo{}


/**
 * Meta-data to be passed to gtk_recent_manager_add_full() when
 * registering a recently used resource.
 * gchar *display_name;
 * a UTF-8 encoded string, containing the name of the recently
 * used resource to be displayed, or NULL;
 * gchar *description;
 * a UTF-8 encoded string, containing a short description of
 * the resource, or NULL;
 * gchar *mime_type;
 * the MIME type of the resource;
 * gchar *app_name;
 * the name of the application that is registering this recently
 * used resource;
 * gchar *app_exec;
 * command line used to launch this resource; may contain the
 * "%f" and "%u" escape characters which will be expanded
 * to the resource file path and URI respectively when the command line
 * is retrieved;
 * gchar **groups;
 * a vector of strings containing groups names;
 * gboolean is_private;
 * whether this resource should be displayed only by the
 * applications that have registered it or not.
 */
public struct GtkRecentData
{
	char *displayName;
	char *description;
	char *mimeType;
	char *appName;
	char *appExec;
	char **groups;
	int isPrivate;
}


/**
 * Main Gtk struct.
 */
public struct GtkRecentChooser{}


public struct GtkRecentChooserIface
{
	GTypeInterface baseIface;
	/+*
	 * Methods
	+/
	extern(C) int function(GtkRecentChooser* chooser, char* uri, GError** error)  setCurrentUri;
	extern(C) char * function(GtkRecentChooser* chooser)  getCurrentUri;
	extern(C) int function(GtkRecentChooser* chooser, char* uri, GError** error)  selectUri;
	extern(C) void function(GtkRecentChooser* chooser, char* uri)  unselectUri;
	extern(C) void function(GtkRecentChooser* chooser)  selectAll;
	extern(C) void function(GtkRecentChooser* chooser)  unselectAll;
	extern(C) GList * function(GtkRecentChooser* chooser)  getItems;
	extern(C) GtkRecentManager * function(GtkRecentChooser* chooser)  getRecentManager;
	extern(C) void function(GtkRecentChooser* chooser, GtkRecentFilter* filter)  addFilter;
	extern(C) void function(GtkRecentChooser* chooser, GtkRecentFilter* filter)  removeFilter;
	extern(C) GSList * function(GtkRecentChooser* chooser)  listFilters;
	extern(C) void function(GtkRecentChooser* chooser, GtkRecentSortFunc sortFunc, void* sortData, GDestroyNotify dataDestroy)  setSortFunc;
	/+*
	 * Signals
	+/
	extern(C) void function(GtkRecentChooser* chooser)  itemActivated;
	extern(C) void function(GtkRecentChooser* chooser)  selectionChanged;
}


/**
 * Main Gtk struct.
 */
public struct GtkRecentChooserDialog{}


/**
 * Main Gtk struct.
 */
public struct GtkRecentChooserMenu{}


/**
 * Main Gtk struct.
 */
public struct GtkRecentChooserWidget{}


/**
 * Main Gtk struct.
 */
public struct GtkRecentFilter{}


/**
 * A GtkRecentFilterInfo struct is used
 * to pass information about the tested file to gtk_recent_filter_filter().
 */
public struct GtkRecentFilterInfo
{
	GtkRecentFilterFlags contains;
	char *uri;
	char *displayName;
	char *mimeType;
	char **applications;
	char **groups;
	int age;
}


/**
 * Main Gtk struct.
 */
public struct GtkAppChooser{}


/**
 * Main Gtk struct.
 */
public struct GtkAppChooserButton{}


/**
 * Main Gtk struct.
 */
public struct GtkAppChooserDialog{}


/**
 * Main Gtk struct.
 */
public struct GtkAppChooserWidget{}


/**
 * Main Gtk struct.
 */
public struct GtkBuildable{}


/**
 * The GtkBuildableIface interface contains method that are
 * necessary to allow GtkBuilder to construct an object from
 * a GtkBuilder UI definition.
 * GTypeInterface g_iface;
 * the parent class
 * set_name ()
 * Stores the name attribute given in the GtkBuilder UI definition.
 * GtkWidget stores the name as object data. Implement this method if your
 * object has some notion of "name" and it makes sense to map the XML name
 * attribute to it.
 * get_name ()
 * The getter corresponding to set_name. Implement this
 * if you implement set_name.
 * add_child ()
 * Adds a child. The type parameter can be used to
 * differentiate the kind of child. GtkContainer implements this
 * to add add a child widget to the container, GtkNotebook uses
 * the type to distinguish between page labels (of type "page-label")
 * and normal children.
 * set_buildable_property ()
 * Sets a property of a buildable object.
 * It is normally not necessary to implement this, g_object_set_property()
 * is used by default. GtkWindow implements this to delay showing itself
 * (i.e. setting the "visible" property) until the whole interface
 * is created.
 * construct_child ()
 * Constructs a child of a buildable that has been
 * specified as "constructor" in the UI definition. GtkUIManager implements
 * this to reference to a widget created in a <ui> tag which is outside
 * of the normal GtkBuilder UI definition hierarchy. A reference to the
 * constructed object is returned and becomes owned by the caller.
 * custom_tag_start ()
 * Implement this if the buildable needs to parse
 * content below <child>. To handle an element, the implementation
 * must fill in the parser structure and user_data and return TRUE.
 * GtkWidget implements this to parse keyboard accelerators specified
 * in <accelerator> elements. GtkContainer implements it to map
 * properties defined via <packing> elements to child properties.
 * Note that user_data must be freed in custom_tag_end or custom_finished.
 * custom_tag_end ()
 * Called for the end tag of each custom element that is
 * handled by the buildable (see custom_tag_start).
 * custom_finished ()
 * Called for each custom tag handled by the buildable
 * when the builder finishes parsing (see custom_tag_start)
 * parser_finished ()
 * Called when a builder finishes the parsing
 * of a UI definition. It is normally not necessary to implement this,
 * unless you need to perform special cleanup actions. GtkWindow sets
 * the "visible" property here.
 * get_internal_child ()
 * Returns an internal child of a buildable.
 * GtkDialog implements this to give access to its vbox, making
 * it possible to add children to the vbox in a UI definition.
 * Implement this if the buildable has internal children that may
 * need to be accessed from a UI definition.
 */
public struct GtkBuildableIface
{
	GTypeInterface gIface;
	/+* virtual table +/
	extern(C) void function(GtkBuildable* buildable, char* name)  setName;
	extern(C) char * function(GtkBuildable* buildable)  getName;
	extern(C) void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, char* type)  addChild;
	extern(C) void function(GtkBuildable* buildable, GtkBuilder* builder, char* name, GValue* value)  setBuildableProperty;
	extern(C) GObject * function(GtkBuildable* buildable, GtkBuilder* builder, char* name)  constructChild;
	extern(C) int function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, char* tagname, GMarkupParser* parser, void** data)  customTagStart;
	extern(C) void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, char* tagname, void** data)  customTagEnd;
	extern(C) void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, char* tagname, void* data)  customFinished;
	extern(C) void function(GtkBuildable* buildable, GtkBuilder* builder)  parserFinished;
	extern(C) GObject * function(GtkBuildable* buildable, GtkBuilder* builder, char* childname)  getInternalChild;
}


/**
 * Main Gtk struct.
 */
public struct GtkBuilder{}


/**
 * Main Gtk struct.
 */
public struct GtkApplication{}


/**
 * Main Gtk struct.
 */
public struct GtkApplicationWindow{}


/**
 * Main Gtk struct.
 * An opaque pointer type.
 */
public struct GtkActionable{}


/**
 * The interface vtable for GtkActionable.
 * GTypeInterface g_iface;
 * get_action_name ()
 * virtual pointer for gtk_actionable_get_action_name()
 * set_action_name ()
 * virtual pointer for gtk_actionable_set_action_name()
 * get_action_target_value ()
 * virtual pointer for gtk_actionable_get_action_target_value()
 * set_action_target_value ()
 * virtual pointer for gtk_actionable_set_action_target_value
 */
public struct GtkActionableInterface
{
	GTypeInterface gIface;
	extern(C) char * function(GtkActionable* actionable)  getActionName;
	extern(C) void function(GtkActionable* actionable, char* actionName)  setActionName;
	extern(C) GVariant * function(GtkActionable* actionable)  getActionTargetValue;
	extern(C) void function(GtkActionable* actionable, GVariant* targetValue)  setActionTargetValue;
}


/*
 * major :
 * major version (e.g. 1 for version 1.2.5)
 * minor :
 * minor version (e.g. 2 for version 1.2.5)
 * micro :
 * micro version (e.g. 5 for version 1.2.5)
 * Returns :
 * TRUE if the version of the GTK+ header files
 * is the same as or newer than the passed-in version.
 */
// TODO
// #define GTK_CHECK_VERSION(major,minor,micro)

/*
 * style :
 * a GtkStyle.
 * Returns :
 * whether the style is attached to a window.
 */
// TODO
// #define GTK_STYLE_ATTACHED(style) (GTK_STYLE (style)->attach_count > 0)

/*
 * This macro should be used to emit a standard warning about unexpected
 * properties in set_cell_property() and get_cell_property() implementations.
 * object :
 * the GObject on which set_cell_property() or get_get_property()
 * was called
 * property_id :
 * the numeric id of the property
 * pspec :
 * the GParamSpec of the property
 */
// TODO
// #define GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID(object, property_id, pspec)

/*
 */
// TODO
// #define GTK_IS_RESIZE_CONTAINER(widget)

/*
 * This macro should be used to emit a standard warning about unexpected
 * properties in set_child_property() and get_child_property() implementations.
 * object :
 * the GObject on which set_child_property() or get_child_property()
 * was called
 * property_id :
 * the numeric id of the property
 * pspec :
 * the GParamSpec of the property
 */
// TODO
// #define GTK_CONTAINER_WARN_INVALID_CHILD_PROPERTY_ID(object, property_id, pspec)

/*
 * This macro should be used to emit a warning about and unexpected type value
 * in a GtkBuildable add_child implementation.
 * object :
 * the GtkBuildable on which the warning ocurred
 * type :
 * the unexpected type value
 */
// TODO
// #define GTK_BUILDER_WARN_INVALID_CHILD_TYPE(object, type)

/*
 * Each GTK+ module must have a function gtk_module_init()
 * with this prototype. This function is called after loading
 * the module.
 * argc :
 * GTK+ always passes NULL for this argument. [allow-none]
 * argv :
 * GTK+ always passes NULL for this argument. [allow-none][array length=argc]
 */
// void (*GtkModuleInitFunc) (gint *argc,  gchar ***argv);
public alias extern(C) void function(gint* argc, gchar*** argv) GtkModuleInitFunc;

/*
 * A multihead-aware GTK+ module may have a gtk_module_display_init()
 * function with this prototype. GTK+ calls this function for each
 * opened display.
 * display :
 * an open GdkDisplay
 * Since 2.2
 */
// void (*GtkModuleDisplayInitFunc) (GdkDisplay *display);
public alias extern(C) void function(GdkDisplay* display) GtkModuleDisplayInitFunc;

/*
 * Key snooper functions are called before normal event delivery.
 * They can be used to implement custom key event handling.
 * grab_widget :
 * the widget to which the event will be delivered
 * event :
 * the key event
 * func_data :
 * data supplied to gtk_key_snooper_install()
 * Returns :
 * TRUE to stop further processing of event, FALSE to continue.
 */
// gint (*GtkKeySnoopFunc) (GtkWidget *grab_widget,  GdkEventKey *event,  gpointer func_data);
public alias extern(C) int function(GtkWidget* grabWidget, GdkEventKey* event, void* funcData) GtkKeySnoopFunc;

/*
 */
// gboolean (*GtkAccelGroupActivate) (GtkAccelGroup *accel_group,  GObject *acceleratable,  guint keyval,  GdkModifierType modifier);
public alias extern(C) int function(GtkAccelGroup* accelGroup, GObject* acceleratable, uint keyval, GdkModifierType modifier) GtkAccelGroupActivate;

/*
 * data :
 * . [closure]
 * Since 2.2
 */
// gboolean (*GtkAccelGroupFindFunc) (GtkAccelKey *key,  GClosure *closure,  gpointer data);
public alias extern(C) int function(GtkAccelKey* key, GClosure* closure, void* data) GtkAccelGroupFindFunc;

/*
 * data :
 * User data passed to gtk_accel_map_foreach() or
 * gtk_accel_map_foreach_unfiltered()
 * accel_path :
 * Accel path of the current accelerator
 * accel_key :
 * Key of the current accelerator
 * accel_mods :
 * Modifiers of the current accelerator
 * changed :
 * Changed flag of the accelerator (if TRUE, accelerator has changed
 * during runtime and would need to be saved during an accelerator dump)
 */
// void (*GtkAccelMapForeach) (gpointer data,  const gchar *accel_path,  guint accel_key,  GdkModifierType accel_mods,  gboolean changed);
public alias extern(C) void function(void* data, char* accelPath, uint accelKey, GdkModifierType accelMods, int changed) GtkAccelMapForeach;

/*
 * A function to be called when the results of gtk_clipboard_request_contents()
 * are received, or when the request fails.
 * clipboard :
 * the GtkClipboard
 * selection_data :
 * a GtkSelectionData containing the data was received.
 * If retrieving the data failed, then then length field
 * of selection_data will be negative.
 * data :
 * the user_data supplied to gtk_clipboard_request_contents().
 */
// void (*GtkClipboardReceivedFunc) (GtkClipboard *clipboard,  GtkSelectionData *selection_data,  gpointer data);
public alias extern(C) void function(GtkClipboard* clipboard, GtkSelectionData* selectionData, void* data) GtkClipboardReceivedFunc;

/*
 * A function to be called when the results of gtk_clipboard_request_text()
 * are received, or when the request fails.
 * clipboard :
 * the GtkClipboard
 * text :
 * the text received, as a UTF-8 encoded string, or NULL
 * if retrieving the data failed.
 * data :
 * the user_data supplied to gtk_clipboard_request_text().
 */
// void (*GtkClipboardTextReceivedFunc) (GtkClipboard *clipboard,  const gchar *text,  gpointer data);
public alias extern(C) void function(GtkClipboard* clipboard, char* text, void* data) GtkClipboardTextReceivedFunc;

/*
 * A function to be called when the results of gtk_clipboard_request_image()
 * are received, or when the request fails.
 * clipboard :
 * the GtkClipboard
 * pixbuf :
 * the received image
 * data :
 * the user_data supplied to gtk_clipboard_request_image().
 * Since 2.6
 */
// void (*GtkClipboardImageReceivedFunc) (GtkClipboard *clipboard,  GdkPixbuf *pixbuf,  gpointer data);
public alias extern(C) void function(GtkClipboard* clipboard, GdkPixbuf* pixbuf, void* data) GtkClipboardImageReceivedFunc;

/*
 * A function to be called when the results of gtk_clipboard_request_targets()
 * are received, or when the request fails.
 * clipboard :
 * the GtkClipboard
 * atoms :
 * the supported targets, as array of GdkAtom, or NULL
 * if retrieving the data failed.
 * n_atoms :
 * the length of the atoms array.
 * data :
 * the user_data supplied to gtk_clipboard_request_targets().
 * Since 2.4
 */
// void (*GtkClipboardTargetsReceivedFunc) (GtkClipboard *clipboard,  GdkAtom *atoms,  gint n_atoms,  gpointer data);
public alias extern(C) void function(GtkClipboard* clipboard, GdkAtom* atoms, int nAtoms, void* data) GtkClipboardTargetsReceivedFunc;

/*
 */
// void (*GtkClipboardRichTextReceivedFunc) (GtkClipboard *clipboard,  GdkAtom format,  const guint8 *text,  gsize length,  gpointer data);
public alias extern(C) void function(GtkClipboard* clipboard, GdkAtom format, guint8* text, gsize length, void* data) GtkClipboardRichTextReceivedFunc;

/*
 */
// void (*GtkClipboardURIReceivedFunc) (GtkClipboard *clipboard,  gchar **uris,  gpointer data);
public alias extern(C) void function(GtkClipboard* clipboard, gchar** uris, void* data) GtkClipboardURIReceivedFunc;

/*
 * A function that will be called to provide the contents of the selection.
 * If multiple types of data were advertised, the requested type can
 * be determined from the info parameter or by checking the target field
 * of selection_data. If the data could successfully be converted into
 * then it should be stored into the selection_data object by
 * calling gtk_selection_data_set() (or related functions such
 * as gtk_selection_data_set_text()). If no data is set, the requestor
 * will be informed that the attempt to get the data failed.
 * clipboard :
 * the GtkClipboard
 * selection_data :
 * a GtkSelectionData argument in which the requested
 * data should be stored.
 * info :
 * the info field corresponding to the requested target from the
 * GtkTargetEntry array passed to gtk_clipboard_set_with_data() or
 * gtk_clipboard_set_with_owner().
 * user_data_or_owner :
 * the user_data argument passed to
 * gtk_clipboard_set_with_data(), or the owner argument passed to
 * gtk_clipboard_set_with_owner()
 */
// void (*GtkClipboardGetFunc) (GtkClipboard *clipboard,  GtkSelectionData *selection_data,  guint info,  gpointer user_data_or_owner);
public alias extern(C) void function(GtkClipboard* clipboard, GtkSelectionData* selectionData, uint info, void* userDataOrOwner) GtkClipboardGetFunc;

/*
 * A function that will be called when the contents of the clipboard are changed
 * or cleared. Once this has called, the user_data_or_owner argument
 * will not be used again.
 * clipboard :
 * the GtkClipboard
 * user_data_or_owner :
 * the user_data argument passed to gtk_clipboard_set_with_data(),
 * or the owner argument passed to gtk_clipboard_set_with_owner()
 */
// void (*GtkClipboardClearFunc) (GtkClipboard *clipboard,  gpointer user_data_or_owner);
public alias extern(C) void function(GtkClipboard* clipboard, void* userDataOrOwner) GtkClipboardClearFunc;

/*
 */
// gboolean (*GtkStylePropertyParser) (const gchar *string,  GValue *value,  GError **error);
public alias extern(C) int function(char* string, GValue* value, GError** error) GtkStylePropertyParser;

/*
 * Property Details
 * The "context" property
 *  "context" GtkStyleContext* : Read / Write / Construct Only
 * GtkStyleContext to get style from.
 * Signal Details
 * The "realize" signal
 * void user_function (GtkStyle *style,
 *  gpointer user_data) : Run First
 * Emitted when the style has been initialized for a particular
 * visual. Connecting to this signal is probably seldom
 * useful since most of the time applications and widgets only
 * deal with styles that have been already realized.
 * style :
 * the object which received the signal
 * user_data :
 * user data set when the signal handler was connected.
 * Since 2.4
 */
// gboolean (*GtkRcPropertyParser) (const GParamSpec *pspec,  const GString *rc_string,  GValue *property_value);
public alias extern(C) int function(GParamSpec* pspec, GString* rcString, GValue* propertyValue) GtkRcPropertyParser;

/*
 * A function used by gtk_assistant_set_forward_page_func() to know which
 * is the next page given a current one. It's called both for computing the
 * next page when the user presses the "forward" button and for handling
 * the behavior of the "last" button.
 * current_page :
 * The page number used to calculate the next page.
 * data :
 * user data. [closure]
 * Returns :
 * The next page number.
 */
// gint (*GtkAssistantPageFunc) (gint current_page,  gpointer data);
public alias extern(C) int function(int currentPage, void* data) GtkAssistantPageFunc;

/*
 * A function which decides whether the row indicated by iter matches
 * a given key, and should be displayed as a possible completion for key.
 * Note that key is normalized and case-folded (see g_utf8_normalize()
 * and g_utf8_casefold()). If this is not appropriate, match functions
 * have access to the unmodified key via
 * gtk_entry_get_text (GTK_ENTRY (gtk_entry_completion_get_entry ())).
 * completion :
 * the GtkEntryCompletion
 * key :
 * the string to match, normalized and case-folded
 * iter :
 * a GtkTreeIter indicating the row to match
 * user_data :
 * user data given to gtk_entry_completion_set_match_func()
 * Returns :
 * TRUE if iter should be displayed as a possible completion
 * for key
 */
// gboolean (*GtkEntryCompletionMatchFunc) (GtkEntryCompletion *completion,  const gchar *key,  GtkTreeIter *iter,  gpointer user_data);
public alias extern(C) int function(GtkEntryCompletion* completion, char* key, GtkTreeIter* iter, void* userData) GtkEntryCompletionMatchFunc;

/*
 */
// gboolean (*GtkTextCharPredicate) (gunichar ch,  gpointer user_data);
public alias extern(C) int function(gunichar ch, void* userData) GtkTextCharPredicate;

/*
 * A function that is called to deserialize rich text that has been
 * serialized with gtk_text_buffer_serialize(), and insert it at iter.
 * register_buffer :
 * the GtkTextBuffer the format is registered with
 * content_buffer :
 * the GtkTextBuffer to deserialize into
 * iter :
 * insertion point for the deserialized text
 * data :
 * data to deserialize
 * length :
 * length of data
 * create_tags :
 * TRUE if deserializing may create tags
 * user_data :
 * user data that was specified when registering the format
 * error :
 * return location for a GError
 * Returns :
 * TRUE on success, FALSE otherwise
 */
// gboolean (*GtkTextBufferDeserializeFunc) (GtkTextBuffer *register_buffer,  GtkTextBuffer *content_buffer,  GtkTextIter *iter,  const guint8 *data,  gsize length,  gboolean create_tags,  gpointer user_data,  GError **error);
public alias extern(C) int function(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GtkTextIter* iter, guint8* data, gsize length, int createTags, void* userData, GError** error) GtkTextBufferDeserializeFunc;

/*
 * A function that is called to serialize the content of a text buffer.
 * It must return the serialized form of the content.
 * register_buffer :
 * the GtkTextBuffer for which the format is registered
 * content_buffer :
 * the GtkTextBuffer to serialize
 * start :
 * start of the block of text to serialize
 * end :
 * end of the block of text to serialize
 * length :
 * Return location for the length of the serialized data
 * user_data :
 * user data that was specified when registering the format
 * Returns :
 * a newly-allocated array of guint8 which contains the serialized
 * data, or NULL if an error occurred
 */
// guint8 * (*GtkTextBufferSerializeFunc) (GtkTextBuffer *register_buffer,  GtkTextBuffer *content_buffer,  const GtkTextIter *start,  const GtkTextIter *end,  gsize *length,  gpointer user_data);
public alias extern(C) ubyte * function(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GtkTextIter* start, GtkTextIter* end, gsize* length, void* userData) GtkTextBufferSerializeFunc;

/*
 */
// void (*GtkTextTagTableForeach) (GtkTextTag *tag,  gpointer data);
public alias extern(C) void function(GtkTextTag* tag, void* data) GtkTextTagTableForeach;

/*
 * Type of the callback passed to gtk_tree_model_foreach() to
 * iterate over the rows in a tree model.
 * model :
 * the GtkTreeModel being iterated
 * path :
 * the current GtkTreePath
 * iter :
 * the current GtkTreeIter
 * data :
 * The user data passed to gtk_tree_model_foreach()
 * Returns :
 * TRUE to stop iterating, FALSE to continue
 */
// gboolean (*GtkTreeModelForeachFunc) (GtkTreeModel *model,  GtkTreePath *path,  GtkTreeIter *iter,  gpointer data);
public alias extern(C) int function(GtkTreeModel* model, GtkTreePath* path, GtkTreeIter* iter, void* data) GtkTreeModelForeachFunc;

/*
 * A function used by gtk_tree_selection_set_select_function() to filter
 * whether or not a row may be selected. It is called whenever a row's
 * state might change. A return value of TRUE indicates to selection
 * that it is okay to change the selection.
 * selection :
 * A GtkTreeSelection
 * model :
 * A GtkTreeModel being viewed
 * path :
 * The GtkTreePath of the row in question
 * path_currently_selected :
 * TRUE, if the path is currently selected
 * data :
 * user data. [closure]
 * Returns :
 * TRUE, if the selection state of the row can be toggled
 */
// gboolean (*GtkTreeSelectionFunc) (GtkTreeSelection *selection,  GtkTreeModel *model,  GtkTreePath *path,  gboolean path_currently_selected,  gpointer data);
public alias extern(C) int function(GtkTreeSelection* selection, GtkTreeModel* model, GtkTreePath* path, int pathCurrentlySelected, void* data) GtkTreeSelectionFunc;

/*
 * A function used by gtk_tree_selection_selected_foreach() to map all
 * selected rows. It will be called on every selected row in the view.
 * model :
 * The GtkTreeModel being viewed
 * path :
 * The GtkTreePath of a selected row
 * iter :
 * A GtkTreeIter pointing to a selected row
 * data :
 * user data. [closure]
 */
// void (*GtkTreeSelectionForeachFunc) (GtkTreeModel *model,  GtkTreePath *path,  GtkTreeIter *iter,  gpointer data);
public alias extern(C) void function(GtkTreeModel* model, GtkTreePath* path, GtkTreeIter* iter, void* data) GtkTreeSelectionForeachFunc;

/*
 * A function to set the properties of a cell instead of just using the
 * straight mapping between the cell and the model. This is useful for
 * customizing the cell renderer. For example, a function might get an
 * integer from the tree_model, and render it to the "text" attribute of
 * "cell" by converting it to its written equivilent. This is set by
 * calling gtk_tree_view_column_set_cell_data_func()
 * tree_column :
 * A GtkTreeViewColumn
 * cell :
 * The GtkCellRenderer that is being rendered by tree_column
 * tree_model :
 * The GtkTreeModel being rendered
 * iter :
 * A GtkTreeIter of the current row rendered
 * data :
 * user data
 */
// void (*GtkTreeCellDataFunc) (GtkTreeViewColumn *tree_column,  GtkCellRenderer *cell,  GtkTreeModel *tree_model,  GtkTreeIter *iter,  gpointer data);
public alias extern(C) void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, GtkTreeModel* treeModel, GtkTreeIter* iter, void* data) GtkTreeCellDataFunc;

/*
 * Function type for determining whether column can be dropped in a
 * particular spot (as determined by prev_column and next_column). In
 * left to right locales, prev_column is on the left of the potential drop
 * spot, and next_column is on the right. In right to left mode, this is
 * reversed. This function should return TRUE if the spot is a valid drop
 * spot. Please note that returning TRUE does not actually indicate that
 * the column drop was made, but is meant only to indicate a possible drop
 * spot to the user.
 * tree_view :
 * A GtkTreeView
 * column :
 * The GtkTreeViewColumn being dragged
 * prev_column :
 * A GtkTreeViewColumn on one side of column
 * next_column :
 * A GtkTreeViewColumn on the other side of column
 * data :
 * user data. [closure]
 * Returns :
 * TRUE, if column can be dropped in this spot
 */
// gboolean (*GtkTreeViewColumnDropFunc) (GtkTreeView *tree_view,  GtkTreeViewColumn *column,  GtkTreeViewColumn *prev_column,  GtkTreeViewColumn *next_column,  gpointer data);
public alias extern(C) int function(GtkTreeView* treeView, GtkTreeViewColumn* column, GtkTreeViewColumn* prevColumn, GtkTreeViewColumn* nextColumn, void* data) GtkTreeViewColumnDropFunc;

/*
 * Function used for gtk_tree_view_map_expanded_rows().
 * tree_view :
 * A GtkTreeView
 * path :
 * The path that's expanded
 * user_data :
 * user data
 */
// void (*GtkTreeViewMappingFunc) (GtkTreeView *tree_view,  GtkTreePath *path,  gpointer user_data);
public alias extern(C) void function(GtkTreeView* treeView, GtkTreePath* path, void* userData) GtkTreeViewMappingFunc;

/*
 * A function used for checking whether a row in model matches
 * a search key string entered by the user. Note the return value
 * is reversed from what you would normally expect, though it
 * has some similarity to strcmp() returning 0 for equal strings.
 * model :
 * the GtkTreeModel being searched
 * column :
 * the search column set by gtk_tree_view_set_search_column()
 * key :
 * the key string to compare with
 * iter :
 * a GtkTreeIter pointing the row of model that should be compared
 * with key.
 * search_data :
 * user data from gtk_tree_view_set_search_equal_func(). [closure]
 * Returns :
 * FALSE if the row matches, TRUE otherwise.
 */
// gboolean (*GtkTreeViewSearchEqualFunc) (GtkTreeModel *model,  gint column,  const gchar *key,  GtkTreeIter *iter,  gpointer search_data);
public alias extern(C) int function(GtkTreeModel* model, int column, char* key, GtkTreeIter* iter, void* searchData) GtkTreeViewSearchEqualFunc;

/*
 */
// void (*GtkTreeViewSearchPositionFunc) (GtkTreeView *tree_view,  GtkWidget *search_dialog,  gpointer user_data);
public alias extern(C) void function(GtkTreeView* treeView, GtkWidget* searchDialog, void* userData) GtkTreeViewSearchPositionFunc;

/*
 */
// void (*GtkTreeDestroyCountFunc) (GtkTreeView *tree_view,  GtkTreePath *path,  gint children,  gpointer user_data);
public alias extern(C) void function(GtkTreeView* treeView, GtkTreePath* path, int children, void* userData) GtkTreeDestroyCountFunc;

/*
 * Function type for determining whether the row pointed to by iter should
 * be rendered as a separator. A common way to implement this is to have a
 * boolean column in the model, whose values the GtkTreeViewRowSeparatorFunc
 * returns.
 * model :
 * the GtkTreeModel
 * iter :
 * a GtkTreeIter pointing at a row in model
 * data :
 * user data. [closure]
 * Returns :
 * TRUE if the row is a separator
 */
// gboolean (*GtkTreeViewRowSeparatorFunc) (GtkTreeModel *model,  GtkTreeIter *iter,  gpointer data);
public alias extern(C) int function(GtkTreeModel* model, GtkTreeIter* iter, void* data) GtkTreeViewRowSeparatorFunc;

/*
 * A function used by gtk_icon_view_selected_foreach() to map all
 * selected rows. It will be called on every selected row in the view.
 * icon_view :
 * a GtkIconView
 * path :
 * The GtkTreePath of a selected row
 * data :
 * user data
 */
// void (*GtkIconViewForeachFunc) (GtkIconView *icon_view,  GtkTreePath *path,  gpointer data);
public alias extern(C) void function(GtkIconView* iconView, GtkTreePath* path, void* data) GtkIconViewForeachFunc;

/*
 * A GtkTreeIterCompareFunc should return a negative integer, zero, or a positive
 * integer if a sorts before b, a sorts with b, or a sorts after b
 * respectively. If two iters compare as equal, their order in the sorted model
 * is undefined. In order to ensure that the GtkTreeSortable behaves as
 * expected, the GtkTreeIterCompareFunc must define a partial order on
 * the model, i.e. it must be reflexive, antisymmetric and transitive.
 * For example, if model is a product catalogue, then a compare function
 * for the "price" column could be one which returns
 * price_of(a) - price_of(b).
 * model :
 * The GtkTreeModel the comparison is within
 * a :
 * A GtkTreeIter in model
 * b :
 * Another GtkTreeIter in model
 * user_data :
 * Data passed when the compare func is assigned e.g. by
 * gtk_tree_sortable_set_sort_func()
 * Returns :
 * a negative integer, zero or a positive integer depending on whether
 * a sorts before, with or after b
 */
// gint (*GtkTreeIterCompareFunc) (GtkTreeModel *model,  GtkTreeIter *a,  GtkTreeIter *b,  gpointer user_data);
public alias extern(C) int function(GtkTreeModel* model, GtkTreeIter* a, GtkTreeIter* b, void* userData) GtkTreeIterCompareFunc;

/*
 * A function which decides whether the row indicated by iter is visible.
 * model :
 * the child model of the GtkTreeModelFilter
 * iter :
 * a GtkTreeIter pointing to the row in model whose visibility
 * is determined
 * data :
 * user data given to gtk_tree_model_filter_set_visible_func(). [closure]
 * Returns :
 * Whether the row indicated by iter is visible.
 */
// gboolean (*GtkTreeModelFilterVisibleFunc) (GtkTreeModel *model,  GtkTreeIter *iter,  gpointer data);
public alias extern(C) int function(GtkTreeModel* model, GtkTreeIter* iter, void* data) GtkTreeModelFilterVisibleFunc;

/*
 * A function which calculates display values from raw values in the model.
 * It must fill value with the display value for the column column in the
 * row indicated by iter.
 * Since this function is called for each data access, it's not a
 * particularly efficient operation.
 * model :
 * the GtkTreeModelFilter
 * iter :
 * a GtkTreeIter pointing to the row whose display values are determined
 * value :
 * A GValue which is already initialized for with the correct type for
 * the column column.
 * column :
 * the column whose display value is determined
 * data :
 * user data given to gtk_tree_model_filter_set_modify_func(). [closure]
 */
// void (*GtkTreeModelFilterModifyFunc) (GtkTreeModel *model,  GtkTreeIter *iter,  GValue *value,  gint column,  gpointer data);
public alias extern(C) void function(GtkTreeModel* model, GtkTreeIter* iter, GValue* value, int column, void* data) GtkTreeModelFilterModifyFunc;

/*
 * A function which should set the value of cell_layout's cell renderer(s)
 * as appropriate.
 * cell_layout :
 * a GtkCellLayout
 * cell :
 * the cell renderer whose value is to be set
 * tree_model :
 * the model
 * iter :
 * a GtkTreeIter indicating the row to set the value for
 * data :
 * user data passed to gtk_cell_layout_set_cell_data_func()
 */
// void (*GtkCellLayoutDataFunc) (GtkCellLayout *cell_layout,  GtkCellRenderer *cell,  GtkTreeModel *tree_model,  GtkTreeIter *iter,  gpointer data);
public alias extern(C) void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, GtkTreeModel* treeModel, GtkTreeIter* iter, void* data) GtkCellLayoutDataFunc;

/*
 * The type of the callback functions used for iterating over
 * the cell renderers of a GtkCellArea, see gtk_cell_area_foreach().
 * renderer :
 * the cell renderer to operate on
 * data :
 * user-supplied data. [closure]
 * Returns :
 * TRUE to stop iterating over cells.
 */
// gboolean (*GtkCellCallback) (GtkCellRenderer *renderer,  gpointer data);
public alias extern(C) int function(GtkCellRenderer* renderer, void* data) GtkCellCallback;

/*
 * The type of the callback functions used for iterating over the
 * cell renderers and their allocated areas inside a GtkCellArea,
 * see gtk_cell_area_foreach_alloc().
 * renderer :
 * the cell renderer to operate on
 * cell_area :
 * the area allocated to renderer inside the rectangle
 * provided to gtk_cell_area_foreach_alloc().
 * cell_background :
 * the background area for renderer inside the
 * background area provided to gtk_cell_area_foreach_alloc().
 * data :
 * user-supplied data. [closure]
 * Returns :
 * TRUE to stop iterating over cells.
 */
// gboolean (*GtkCellAllocCallback) (GtkCellRenderer *renderer,  const GdkRectangle *cell_area,  const GdkRectangle *cell_background,  gpointer data);
public alias extern(C) int function(GtkCellRenderer* renderer, GdkRectangle* cellArea, GdkRectangle* cellBackground, void* data) GtkCellAllocCallback;

/*
 * A user function supplied when calling gtk_menu_popup() which
 * controls the positioning of the menu when it is displayed. The
 * function sets the x and y parameters to the coordinates where the
 * menu is to be drawn. To make the menu appear on a different
 * monitor than the mouse pointer, gtk_menu_set_monitor() must be
 * called.
 * menu :
 * a GtkMenu.
 * x :
 * address of the gint representing the horizontal
 * position where the menu shall be drawn. [out]
 * y :
 * address of the gint representing the vertical position
 * where the menu shall be drawn. This is an output parameter. [out]
 * push_in :
 * This parameter controls how menus placed outside
 * the monitor are handled. If this is set to TRUE and part of
 * the menu is outside the monitor then GTK+ pushes the window
 * into the visible area, effectively modifying the popup
 * position. Note that moving and possibly resizing the menu
 * around will alter the scroll position to keep the menu items
 * "in place", i.e. at the same monitor position they would have
 * been without resizing. In practice, this behavior is only
 * useful for combobox popups or option menus and cannot be used
 * to simply confine a menu to monitor boundaries. In that case,
 * changing the scroll offset is not desirable. [out]
 * user_data :
 * the data supplied by the user in the gtk_menu_popup()
 * data parameter.
 */
// void (*GtkMenuPositionFunc) (GtkMenu *menu,  gint *x,  gint *y,  gboolean *push_in,  gpointer user_data);
public alias extern(C) void function(GtkMenu* menu, gint* x, gint* y, gboolean* pushIn, void* userData) GtkMenuPositionFunc;

/*
 * A user function supplied when calling gtk_menu_attach_to_widget() which
 * will be called when the menu is later detached from the widget.
 * attach_widget :
 * the GtkWidget that the menu is being detached from.
 * menu :
 * the GtkMenu being detached.
 * Property Details
 * The "accel-group" property
 *  "accel-group" GtkAccelGroup* : Read / Write
 * The accel group holding accelerators for the menu.
 * Since 2.14
 */
// void (*GtkMenuDetachFunc) (GtkWidget *attach_widget,  GtkMenu *menu);
public alias extern(C) void function(GtkWidget* attachWidget, GtkMenu* menu) GtkMenuDetachFunc;

/*
 */
// gchar * (*GtkTranslateFunc) (const gchar *path,  gpointer func_data);
public alias extern(C) char * function(char* path, void* funcData) GtkTranslateFunc;

/*
 */
// void (*GtkColorSelectionChangePaletteFunc)  (const GdkColor *colors,  gint n_colors);
public alias extern(C) void function(GdkColor* colors, int nColors) GtkColorSelectionChangePaletteFunc;

/*
 * Since 2.2
 * Property Details
 * The "current-alpha" property
 *  "current-alpha" guint : Read / Write
 * The current opacity value (0 fully transparent, 65535 fully opaque).
 * Allowed values: <= 65535
 * Default value: 65535
 */
// void (*GtkColorSelectionChangePaletteWithScreenFunc)  (GdkScreen *screen,  const GdkColor *colors,  gint n_colors);
public alias extern(C) void function(GdkScreen* screen, GdkColor* colors, int nColors) GtkColorSelectionChangePaletteWithScreenFunc;

/*
 * The type of function that is used with custom filters, see
 * gtk_file_filter_add_custom().
 * filter_info :
 * a GtkFileFilterInfo that is filled according
 * to the needed flags passed to gtk_file_filter_add_custom()
 * data :
 * user data passed to gtk_file_filter_add_custom(). [closure]
 * Returns :
 * TRUE if the file should be displayed
 */
// gboolean (*GtkFileFilterFunc) (const GtkFileFilterInfo *filter_info,  gpointer data);
public alias extern(C) int function(GtkFileFilterInfo* filterInfo, void* data) GtkFileFilterFunc;

/*
 * The type of function that is used for deciding what fonts get
 * shown in a GtkFontChooser. See gtk_font_chooser_set_filter_func().
 * family :
 * a PangoFontFamily
 * face :
 * a PangoFontFace belonging to family
 * data :
 * user data passed to gtk_font_chooser_set_filter_func(). [closure]
 * Returns :
 * TRUE if the font should be displayed
 */
// gboolean (*GtkFontFilterFunc) (const PangoFontFamily *family,  const PangoFontFace *face,  gpointer data);
public alias extern(C) int function(PangoFontFamily* family, PangoFontFace* face, void* data) GtkFontFilterFunc;

/*
 * The type of function that is passed to
 * gtk_print_run_page_setup_dialog_async().
 * This function will be called when the page setup dialog
 * is dismissed, and also serves as destroy notify for data.
 * page_setup :
 * the GtkPageSetup that has been
 * data :
 * user data that has been passed to
 * gtk_print_run_page_setup_dialog_async(). [closure]
 */
// void (*GtkPageSetupDoneFunc) (GtkPageSetup *page_setup,  gpointer data);
public alias extern(C) void function(GtkPageSetup* pageSetup, void* data) GtkPageSetupDoneFunc;

/*
 */
// void (*GtkPrintSettingsFunc) (const gchar *key,  const gchar *value,  gpointer user_data);
public alias extern(C) void function(char* key, char* value, void* userData) GtkPrintSettingsFunc;

/*
 * The type of function passed to gtk_enumerate_printers().
 * Note that you need to ref printer, if you want to keep
 * a reference to it after the function has returned.
 * printer :
 * a GtkPrinter
 * data :
 * user data passed to gtk_enumerate_printers(). [closure]
 * Returns :
 * TRUE to stop the enumeration, FALSE to continue
 * Since 2.10
 */
// gboolean (*GtkPrinterFunc) (GtkPrinter *printer,  gpointer data);
public alias extern(C) int function(GtkPrinter* printer, void* data) GtkPrinterFunc;

/*
 * The type of callback that is passed to gtk_print_job_send().
 * It is called when the print job has been completely sent.
 * print_job :
 * the GtkPrintJob
 * user_data :
 * user data that has been passed to gtk_print_job_send()
 * error :
 * a GError that contains error information if the sending
 * of the print job failed, otherwise NULL
 */
// void (*GtkPrintJobCompleteFunc) (GtkPrintJob *print_job,  gpointer user_data,  const GError *error);
public alias extern(C) void function(GtkPrintJob* printJob, void* userData, GError* error) GtkPrintJobCompleteFunc;

/*
 * This kind of functions provide Pango markup with detail information for the
 * specified day. Examples for such details are holidays or appointments. The
 * function returns NULL when no information is available.
 * calendar :
 * a GtkCalendar.
 * year :
 * the year for which details are needed.
 * month :
 * the month for which details are needed.
 * day :
 * the day of month for which details are needed.
 * user_data :
 * the data passed with gtk_calendar_set_detail_func().
 * Returns :
 * Newly allocated string with Pango markup with details
 * for the specified day, or NULL.
 * Since 2.14
 */
// gchar * (*GtkCalendarDetailFunc) (GtkCalendar *calendar,  guint year,  guint month,  guint day,  gpointer user_data);
public alias extern(C) char * function(GtkCalendar* calendar, uint year, uint month, uint day, void* userData) GtkCalendarDetailFunc;

/*
 * The type of the callback functions used for e.g. iterating over
 * the children of a container, see gtk_container_foreach().
 * widget :
 * the widget to operate on
 * data :
 * user-supplied data. [closure]
 */
// void (*GtkCallback) (GtkWidget *widget,  gpointer data);
public alias extern(C) void function(GtkWidget* widget, void* data) GtkCallback;

/*
 * Callback type for adding a function to update animations. See gtk_widget_add_tick_callback().
 * widget :
 * the widget
 * frame_clock :
 * the frame clock for the widget (same as calling gtk_widget_get_frame_clock())
 * user_data :
 * user data passed to gtk_widget_add_tick_callback().
 * Returns :
 * G_SOURCE_CONTINUE if the tick callback should continue to be called,
 * G_SOURCE_REMOVE if the tick callback should be removed.
 * Since 3.8
 */
// gboolean (*GtkTickCallback) (GtkWidget *widget,  GdkFrameClock *frame_clock,  gpointer user_data);
public alias extern(C) int function(GtkWidget* widget, GdkFrameClock* frameClock, void* userData) GtkTickCallback;

/*
 */
// gint (*GtkRecentSortFunc) (GtkRecentInfo *a,  GtkRecentInfo *b,  gpointer user_data);
public alias extern(C) int function(GtkRecentInfo* a, GtkRecentInfo* b, void* userData) GtkRecentSortFunc;

/*
 * The type of function that is used with custom filters,
 * see gtk_recent_filter_add_custom().
 * filter_info :
 * a GtkRecentFilterInfo that is filled according
 * to the needed flags passed to gtk_recent_filter_add_custom()
 * user_data :
 * user data passed to gtk_recent_filter_add_custom()
 * Returns :
 * TRUE if the file should be displayed
 */
// gboolean (*GtkRecentFilterFunc) (const GtkRecentFilterInfo *filter_info,  gpointer user_data);
public alias extern(C) int function(GtkRecentFilterInfo* filterInfo, void* userData) GtkRecentFilterFunc;

/*
 * This is the signature of a function used to connect signals. It is used
 * by the gtk_builder_connect_signals() and gtk_builder_connect_signals_full()
 * methods. It is mainly intended for interpreted language bindings, but
 * could be useful where the programmer wants more control over the signal
 * connection process. Note that this function can only be called once,
 * subsequent calls will do nothing.
 * builder :
 * a GtkBuilder
 * object :
 * object to connect a signal to
 * signal_name :
 * name of the signal
 * handler_name :
 * name of the handler
 * connect_object :
 * a GObject, if non-NULL, use g_signal_connect_object()
 * flags :
 * GConnectFlags to use
 * user_data :
 * user data
 * Since 2.12
 */
// void (*GtkBuilderConnectFunc) (GtkBuilder *builder,  GObject *object,  const gchar *signal_name,  const gchar *handler_name,  GObject *connect_object,  GConnectFlags flags,  gpointer user_data);
public alias extern(C) void function(GtkBuilder* builder, GObject* object, char* signalName, char* handlerName, GObject* connectObject, GConnectFlags flags, void* userData) GtkBuilderConnectFunc;


// StockIDs
enum StockID
{
	
	/**
	 * The "About" item.
	 * Since 2.6
	 */
	ABOUT,
	
	/**
	 * The "Add" item.
	 */
	ADD,
	
	/**
	 * The "Apply" item.
	 */
	APPLY,
	
	/**
	 * The "Bold" item.
	 */
	BOLD,
	
	/**
	 * The "Cancel" item.
	 */
	CANCEL,
	
	/**
	 * The "Caps Lock Warning" icon.
	 * Since 2.16
	 */
	CAPS_LOCK_WARNING,
	
	/**
	 * The "CD-Rom" item.
	 */
	CDROM,
	
	/**
	 * The "Clear" item.
	 */
	CLEAR,
	
	/**
	 * The "Close" item.
	 */
	CLOSE,
	
	/**
	 * The "Color Picker" item.
	 * Since 2.2
	 */
	COLOR_PICKER,
	
	/**
	 * The "Convert" item.
	 */
	CONVERT,
	
	/**
	 * The "Connect" icon.
	 * Since 2.6
	 */
	CONNECT,
	
	/**
	 * The "Copy" item.
	 */
	COPY,
	
	/**
	 * The "Cut" item.
	 */
	CUT,
	
	/**
	 * The "Delete" item.
	 */
	DELETE,
	
	/**
	 * The "Authentication" item.
	 * Since 2.4
	 */
	DIALOG_AUTHENTICATION,
	
	/**
	 * The "Error" item.
	 */
	DIALOG_ERROR,
	
	/**
	 * The "Information" item.
	 */
	DIALOG_INFO,
	
	/**
	 * The "Question" item.
	 */
	DIALOG_QUESTION,
	
	/**
	 * The "Warning" item.
	 */
	DIALOG_WARNING,
	
	/**
	 * The "Directory" icon.
	 * Since 2.6
	 */
	DIRECTORY,
	
	/**
	 * The "Discard" item.
	 * Since 2.12
	 */
	DISCARD,
	
	/**
	 * The "Disconnect" icon.
	 * Since 2.6
	 */
	DISCONNECT,
	
	/**
	 * The "Drag-And-Drop" icon.
	 */
	DND,
	
	/**
	 * The "Drag-And-Drop multiple" icon.
	 */
	DND_MULTIPLE,
	
	/**
	 * The "Edit" item.
	 * Since 2.6
	 */
	EDIT,
	
	/**
	 * The "Execute" item.
	 */
	EXECUTE,
	
	/**
	 * The "File" item.
	 * Since 3.0, this item has a label, before it only had an icon.
	 * Since 2.6
	 */
	FILE,
	
	/**
	 * The "Find" item.
	 */
	FIND,
	
	/**
	 * The "Find and Replace" item.
	 */
	FIND_AND_REPLACE,
	
	/**
	 * The "Floppy" item.
	 */
	FLOPPY,
	
	/**
	 * The "Fullscreen" item.
	 * Since 2.8
	 */
	FULLSCREEN,
	
	/**
	 * The "Bottom" item.
	 */
	GOTO_BOTTOM,
	
	/**
	 * The "First" item.
	 * RTL variant
	 */
	GOTO_FIRST,
	
	/**
	 * The "Last" item.
	 * RTL variant
	 */
	GOTO_LAST,
	
	/**
	 * The "Top" item.
	 */
	GOTO_TOP,
	
	/**
	 * The "Back" item.
	 * RTL variant
	 */
	GO_BACK,
	
	/**
	 * The "Down" item.
	 */
	GO_DOWN,
	
	/**
	 * The "Forward" item.
	 * RTL variant
	 */
	GO_FORWARD,
	
	/**
	 * The "Up" item.
	 */
	GO_UP,
	
	/**
	 * The "Harddisk" item.
	 * Since 2.4
	 */
	HARDDISK,
	
	/**
	 * The "Help" item.
	 */
	HELP,
	
	/**
	 * The "Home" item.
	 */
	HOME,
	
	/**
	 * The "Indent" item.
	 * RTL variant
	 * Since 2.4
	 */
	INDENT,
	
	/**
	 * The "Index" item.
	 */
	INDEX,
	
	/**
	 * The "Info" item.
	 * Since 2.8
	 */
	INFO,
	
	/**
	 * The "Italic" item.
	 */
	ITALIC,
	
	/**
	 * The "Jump to" item.
	 * RTL-variant
	 */
	JUMP_TO,
	
	/**
	 * The "Center" item.
	 */
	JUSTIFY_CENTER,
	
	/**
	 * The "Fill" item.
	 */
	JUSTIFY_FILL,
	
	/**
	 * The "Left" item.
	 */
	JUSTIFY_LEFT,
	
	/**
	 * The "Right" item.
	 */
	JUSTIFY_RIGHT,
	
	/**
	 * The "Leave Fullscreen" item.
	 * Since 2.8
	 */
	LEAVE_FULLSCREEN,
	
	/**
	 * The "Media Forward" item.
	 * RTL variant
	 * Since 2.6
	 */
	MEDIA_FORWARD,
	
	/**
	 * The "Media Next" item.
	 * RTL variant
	 * Since 2.6
	 */
	MEDIA_NEXT,
	
	/**
	 * The "Media Pause" item.
	 * Since 2.6
	 */
	MEDIA_PAUSE,
	
	/**
	 * The "Media Play" item.
	 * RTL variant
	 * Since 2.6
	 */
	MEDIA_PLAY,
	
	/**
	 * The "Media Previous" item.
	 * RTL variant
	 * Since 2.6
	 */
	MEDIA_PREVIOUS,
	
	/**
	 * The "Media Record" item.
	 * Since 2.6
	 */
	MEDIA_RECORD,
	
	/**
	 * The "Media Rewind" item.
	 * RTL variant
	 * Since 2.6
	 */
	MEDIA_REWIND,
	
	/**
	 * The "Media Stop" item.
	 * Since 2.6
	 */
	MEDIA_STOP,
	
	/**
	 * The "Missing image" icon.
	 */
	MISSING_IMAGE,
	
	/**
	 * The "Network" item.
	 * Since 2.4
	 */
	NETWORK,
	
	/**
	 * The "New" item.
	 */
	NEW,
	
	/**
	 * The "No" item.
	 */
	NO,
	
	/**
	 * The "OK" item.
	 */
	OK,
	
	/**
	 * The "Open" item.
	 */
	OPEN,
	
	/**
	 * The "Landscape Orientation" item.
	 * Since 2.10
	 */
	ORIENTATION_LANDSCAPE,
	
	/**
	 * The "Portrait Orientation" item.
	 * Since 2.10
	 */
	ORIENTATION_PORTRAIT,
	
	/**
	 * The "Reverse Landscape Orientation" item.
	 * Since 2.10
	 */
	ORIENTATION_REVERSE_LANDSCAPE,
	
	/**
	 * The "Reverse Portrait Orientation" item.
	 * Since 2.10
	 */
	ORIENTATION_REVERSE_PORTRAIT,
	
	/**
	 * The "Page Setup" item.
	 * Since 2.14
	 */
	PAGE_SETUP,
	
	/**
	 * The "Paste" item.
	 */
	PASTE,
	
	/**
	 * The "Preferences" item.
	 */
	PREFERENCES,
	
	/**
	 * The "Print" item.
	 */
	PRINT,
	
	/**
	 * The "Print Error" icon.
	 * Since 2.14
	 */
	PRINT_ERROR,
	
	/**
	 * The "Print Paused" icon.
	 * Since 2.14
	 */
	PRINT_PAUSED,
	
	/**
	 * The "Print Preview" item.
	 */
	PRINT_PREVIEW,
	
	/**
	 * The "Print Report" icon.
	 * Since 2.14
	 */
	PRINT_REPORT,
	
	/**
	 * The "Print Warning" icon.
	 * Since 2.14
	 */
	PRINT_WARNING,
	
	/**
	 * The "Properties" item.
	 */
	PROPERTIES,
	
	/**
	 * The "Quit" item.
	 */
	QUIT,
	
	/**
	 * The "Redo" item.
	 * RTL variant
	 */
	REDO,
	
	/**
	 * The "Refresh" item.
	 */
	REFRESH,
	
	/**
	 * The "Remove" item.
	 */
	REMOVE,
	
	/**
	 * The "Revert" item.
	 * RTL variant
	 */
	REVERT_TO_SAVED,
	
	/**
	 * The "Save" item.
	 */
	SAVE,
	
	/**
	 * The "Save As" item.
	 */
	SAVE_AS,
	
	/**
	 * The "Select All" item.
	 * Since 2.10
	 */
	SELECT_ALL,
	
	/**
	 * The "Color" item.
	 */
	SELECT_COLOR,
	
	/**
	 * The "Font" item.
	 */
	SELECT_FONT,
	
	/**
	 * The "Ascending" item.
	 */
	SORT_ASCENDING,
	
	/**
	 * The "Descending" item.
	 */
	SORT_DESCENDING,
	
	/**
	 * The "Spell Check" item.
	 */
	SPELL_CHECK,
	
	/**
	 * The "Stop" item.
	 */
	STOP,
	
	/**
	 * The "Strikethrough" item.
	 */
	STRIKETHROUGH,
	
	/**
	 * The "Undelete" item.
	 * RTL variant
	 */
	UNDELETE,
	
	/**
	 * The "Underline" item.
	 */
	UNDERLINE,
	
	/**
	 * The "Undo" item.
	 * RTL variant
	 */
	UNDO,
	
	/**
	 * The "Unindent" item.
	 * RTL variant
	 * Since 2.4
	 */
	UNINDENT,
	
	/**
	 * The "Yes" item.
	 */
	YES,
	
	/**
	 * The "Zoom 100%" item.
	 */
	ZOOM_100,
	
	/**
	 * The "Zoom to Fit" item.
	 */
	ZOOM_FIT,
	
	/**
	 * The "Zoom In" item.
	 */
	ZOOM_IN,
	
	/**
	 * The "Zoom Out" item.
	 */
	ZOOM_OUT,

}

// Stock strings
string[] StockDesc = 
[	"gtk-about",
	"gtk-add",
	"gtk-apply",
	"gtk-bold",
	"gtk-cancel",
	"gtk-caps-lock-warning",
	"gtk-cdrom",
	"gtk-clear",
	"gtk-close",
	"gtk-color-picker",
	"gtk-convert",
	"gtk-connect",
	"gtk-copy",
	"gtk-cut",
	"gtk-delete",
	"gtk-dialog-authentication",
	"gtk-dialog-error",
	"gtk-dialog-info",
	"gtk-dialog-question",
	"gtk-dialog-warning",
	"gtk-directory",
	"gtk-discard",
	"gtk-disconnect",
	"gtk-dnd",
	"gtk-dnd-multiple",
	"gtk-edit",
	"gtk-execute",
	"gtk-file",
	"gtk-find",
	"gtk-find-and-replace",
	"gtk-floppy",
	"gtk-fullscreen",
	"gtk-goto-bottom",
	"gtk-goto-first",
	"gtk-goto-last",
	"gtk-goto-top",
	"gtk-go-back",
	"gtk-go-down",
	"gtk-go-forward",
	"gtk-go-up",
	"gtk-harddisk",
	"gtk-help",
	"gtk-home",
	"gtk-indent",
	"gtk-index",
	"gtk-info",
	"gtk-italic",
	"gtk-jump-to",
	"gtk-justify-center",
	"gtk-justify-fill",
	"gtk-justify-left",
	"gtk-justify-right",
	"gtk-leave-fullscreen",
	"gtk-media-forward",
	"gtk-media-next",
	"gtk-media-pause",
	"gtk-media-play",
	"gtk-media-previous",
	"gtk-media-record",
	"gtk-media-rewind",
	"gtk-media-stop",
	"gtk-missing-image",
	"gtk-network",
	"gtk-new",
	"gtk-no",
	"gtk-ok",
	"gtk-open",
	"gtk-orientation-landscape",
	"gtk-orientation-portrait",
	"gtk-orientation-reverse-landscape",
	"gtk-orientation-reverse-portrait",
	"gtk-page-setup",
	"gtk-paste",
	"gtk-preferences",
	"gtk-print",
	"gtk-print-error",
	"gtk-print-paused",
	"gtk-print-preview",
	"gtk-print-report",
	"gtk-print-warning",
	"gtk-properties",
	"gtk-quit",
	"gtk-redo",
	"gtk-refresh",
	"gtk-remove",
	"gtk-revert-to-saved",
	"gtk-save",
	"gtk-save-as",
	"gtk-select-all",
	"gtk-select-color",
	"gtk-select-font",
	"gtk-sort-ascending",
	"gtk-sort-descending",
	"gtk-spell-check",
	"gtk-stop",
	"gtk-strikethrough",
	"gtk-undelete",
	"gtk-underline",
	"gtk-undo",
	"gtk-unindent",
	"gtk-yes",
	"gtk-zoom-100",
	"gtk-zoom-fit",
	"gtk-zoom-in",
	"gtk-zoom-out",

];