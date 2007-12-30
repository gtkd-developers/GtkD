/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

module gtkc.gtktypes;

public import gtkc.glibtypes;
public import gtkc.gobjecttypes;
public import gtkc.pangotypes;
public import gtkc.atktypes;
public import gtkc.gdkpixbuftypes;
public import gtkc.gdktypes;
alias void GtkAccelGroupEntry;
alias void GtkContainerClass;

//alias GTokenType.G_TOKEN_LAST G_TOKEN_LAST;";
//alias GtkSignalRunType.G_SIGNAL_RUN_FIRST G_SIGNAL_RUN_FIRST;
//alias GtkSignalRunType.G_SIGNAL_RUN_LAST G_SIGNAL_RUN_LAST;
//alias GtkSignalRunType.G_SIGNAL_NO_RECURSE G_SIGNAL_NO_RECURSE;
//alias GtkSignalRunType.G_SIGNAL_ACTION G_SIGNAL_ACTION;
//alias GtkSignalRunType.G_SIGNAL_NO_HOOKS G_SIGNAL_NO_HOOKS;

/* GtkDragResult is now an enum. */
//alias int GtkDragResult;
alias int GtkTooltip;


/**
 * typedef GType			GtkType;
 * GtkType is unique integer identifying the type. The guts of the
 * information about the type is held in a private struct named
 * GtkTypeNode.
 */
public alias GType GtkType;

/**
 * typedef GType GtkFundamentalType;
 * Warning
 * GtkFundamentalType is deprecated and should not be used in newly-written code.
 * GtkFundamentalType is an enumerated type which lists all the possible
 * fundamental types (e.g. char, uchar, int,
 * long, float, etc).
 */
public alias GType GtkFundamentalType;

/**
 * typedef GBaseInitFunc		GtkClassInitFunc;
 * Warning
 * GtkClassInitFunc is deprecated and should not be used in newly-written code.
 * Defines a function pointer.
 */
public alias GBaseInitFunc GtkClassInitFunc;

/**
 * typedef GInstanceInitFunc	GtkObjectInitFunc;
 * Warning
 * GtkObjectInitFunc is deprecated and should not be used in newly-written code.
 * Defines a function pointer.
 */
public alias GInstanceInitFunc GtkObjectInitFunc;

/**
 * typedef GSignalCMarshaller GtkSignalMarshaller;
 * Warning
 * GtkSignalMarshaller is deprecated and should not be used in newly-written code.
 * Defines a function pointer.
 */
public alias GSignalCMarshaller GtkSignalMarshaller;

/**
 * typedef GTypeInstance		GtkTypeObject;
 * Warning
 * GtkTypeObject is deprecated and should not be used in newly-written code.
 * A GtkTypeObject defines the minimum structure requirements
 * for type instances. Type instances returned from gtk_type_new()
 * and initialized through a GtkObjectInitFunc need to directly inherit
 * from this structure or at least copy its fields one by one.
 */
public alias GTypeInstance GtkTypeObject;

/**
 * typedef GTypeClass		GtkTypeClass;
 * Warning
 * GtkTypeClass is deprecated and should not be used in newly-written code.
 * The base structure for a GTK+ type. Every type inherits this as a base structure.
 */
public alias GTypeClass GtkTypeClass;

/**
 * typedef GEnumValue GtkEnumValue;
 * Warning
 * GtkEnumValue is deprecated and should not be used in newly-written code.
 * A structure which contains a single enum value, and its name, and its
 * nickname.
 */
public alias GEnumValue GtkEnumValue;

/**
 * typedef GFlagsValue GtkFlagValue;
 * Warning
 * GtkFlagValue is deprecated and should not be used in newly-written code.
 */
public alias GFlagsValue GtkFlagValue;
/**
 * The GtkDestDefaults enumeration specifies the various
 * types of action that will be taken on behalf
 * of the user for a drag destination site.
 * GTK_DEST_DEFAULT_MOTION
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
 */
public enum GtkTargetFlags
{
	SAME_APP = 1 << 0, /+*< nick=same-app >+/
	SAME_WIDGET = 1 << 1, /+*< nick=same-widget >+/
	OTHER_APP = 1 << 2, /+*< nick=other-app >+/
	OTHER_WIDGET = 1 << 3 /+*< nick=other-widget >+/
}
alias GtkTargetFlags TargetFlags;

/**
 * Used to specify options for gtk_icon_theme_lookup_icon()
 * GTK_ICON_LOOKUP_NO_SVG
 */
public enum GtkIconLookupFlags
{
	NO_SVG = 1 << 0,
	FORCE_SVG = 1 << 1,
	USE_BUILTIN = 1 << 2,
	GENERIC_FALLBACK = 1 << 3
}
alias GtkIconLookupFlags IconLookupFlags;

/**
 * Error codes for GtkIconTheme operations.
 * GTK_ICON_THEME_NOT_FOUND
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

/**
 * The GtkRcFlags enumeration is used as a bitmask
 * to specify which fields of a GtkRcStyle have been
 * set for each state.
 * GTK_RC_FG
 * If present, the foreground color has been set for this state.
 * GTK_RC_BG
 * If present, the background color has been set for this state.
 * GTK_RC_TEXT
 * If present, the text color has been set for this state.
 * GTK_RC_BASE
 * If present, the base color has been set for this state.
 */
public enum GtkRcFlags
{
	FG = 1 << 0,
	BG = 1 << 1,
	TEXT = 1 << 2,
	BASE = 1 << 3
}
alias GtkRcFlags RcFlags;

/**
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

public enum GtkAccelFlags
{
	VISIBLE = 1 << 0, /+* display inn GtkAccelLabel? +/
	LOCKED = 1 << 1, /+* is it removable? +/
	MASK = 0x07
}
alias GtkAccelFlags AccelFlags;

public enum GtkAnchorType
{
	CENTER,
	NORTH,
	NORTH_WEST,
	NORTH_EAST,
	SOUTH,
	SOUTH_WEST,
	SOUTH_EAST,
	WEST,
	EAST,
	N = NORTH,
	NW = NORTH_WEST,
	NE = NORTH_EAST,
	S = SOUTH,
	SW = SOUTH_WEST,
	SE = SOUTH_EAST,
	W = WEST,
	E = EAST
}
alias GtkAnchorType AnchorType;

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
 * GTK_BUTTONBOX_DEFAULT_STYLE
 * Default packing.
 * GTK_BUTTONBOX_SPREAD
 * Buttons are evenly spread across the box.
 * GTK_BUTTONBOX_EDGE
 * Buttons are placed at the edges of the box.
 * GTK_BUTTONBOX_START
 * Buttons are grouped towards the start of the box,
 */
public enum GtkButtonBoxStyle
{
	DEFAULT_STYLE,
	SPREAD,
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
 * widget (default behaviour).
 * GTK_CORNER_BOTTOM_LEFT
 * Place the scrollbars on the top and right of the
 * widget.
 * GTK_CORNER_TOP_RIGHT
 * Place the scrollbars on the left and bottom of the
 * widget.
 * GTK_CORNER_BOTTOM_RIGHT
 * Place the scrollbars on the top and left of the
 * widget.
 */
public enum GtkCornerType
{
	TOP_LEFT,
	BOTTOM_LEFT,
	TOP_RIGHT,
	BOTTOM_RIGHT
}
alias GtkCornerType CornerType;

public enum GtkCurveType
{
	TYPE_LINEAR, /+* linear interpolation +/
	TYPE_SPLINE, /+* spline interpolation +/
	TYPE_FREE /+* free form curve +/
}
alias GtkCurveType CurveType;

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
 * Warning
 * GtkMatchType is deprecated and should not be used in newly-written code.
 */
public enum GtkMatchType
{
	ALL, /+* "*A?A*" +/
	ALL_TAIL, /+* "*A?AA" +/
	HEAD, /+* "AAAA*" +/
	TAIL, /+* "*AAAA" +/
	EXACT, /+* "AAAAA" +/
	LAST
}
alias GtkMatchType MatchType;

/**
 * Used to indicate which metric is used by a GtkRuler.
 * GTK_PIXELS
 * Pixels.
 * GTK_INCHES
 * Inches.
 * GTK_CENTIMETERS
 * Centimeters.
 */
public enum GtkMetricType
{
	PIXELS,
	INCHES,
	CENTIMETERS
}
alias GtkMetricType MetricType;

public enum GtkMovementStep
{
	LOGICAL_POSITIONS, /+* move by forw/back graphemes +/
	VISUAL_POSITIONS, /+* move by left/right graphemes +/
	WORDS, /+* move by forward/back words +/
	DISPLAY_LINES, /+* move up/down lines (wrapped lines) +/
	DISPLAY_LINE_ENDS, /+* move up/down lines (wrapped lines) +/
	PARAGRAPHS, /+* move up/down paragraphs (newline-ended lines) +/
	PARAGRAPH_ENDS, /+* move to either end of a paragraph +/
	PAGES, /+* move by pages +/
	BUFFER_ENDS, /+* move to ends of the buffer +/
	HORIZONTAL_PAGES /+* move horizontally by pages +/
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
 * when all of a GtkCList can not be seen.
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
 * Warning
 * GtkPreviewType is deprecated and should not be used in newly-written code.
 * An enumeration which describes whether a preview
 * contains grayscale or red-green-blue data.
 * GTK_PREVIEW_COLOR
 * the preview contains red-green-blue data.
 * GTK_PREVIEW_GRAYSCALE
 * The preview contains grayscale data.
 */
public enum GtkPreviewType
{
	COLOR,
	GRAYSCALE
}
alias GtkPreviewType PreviewType;

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
 * GTK_RESIZE_QUEUE
 * GTK_RESIZE_IMMEDIATE
 * Deprecated.
 */
public enum GtkResizeMode
{
	PARENT, /+* Pass resize request to the parent +/
	QUEUE, /+* Queue resizes on this widget +/
	IMMEDIATE /+* Perform the resizes now +/
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
 * Exactly one element is selected. In some circumstances,
 */
public enum GtkSelectionMode
{
	NONE, /+* Nothing can be selected +/
	SINGLE,
	BROWSE,
	MULTIPLE,
	EXTENDED = MULTIPLE /+* Deprecated +/
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
 * The outline has a raised 3d appearance
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
 * Warning
 * GtkSideType is deprecated and should not be used in newly-written code.
 */
public enum GtkSideType
{
	TOP,
	BOTTOM,
	LEFT,
	RIGHT
}
alias GtkSideType SideType;

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
 * the widget and the widget will respond to mouse clicks.
 * GTK_STATE_SELECTED
 * State of a selected item, such the selected row in a list.
 * GTK_STATE_INSENSITIVE
 * State indicating that the widget is
 * unresponsive to user actions.
 */
public enum GtkStateType
{
	NORMAL,
	ACTIVE,
	PRELIGHT,
	SELECTED,
	INSENSITIVE
}
alias GtkStateType StateType;

/**
 * Warning
 * GtkSubmenuDirection is deprecated and should not be used in newly-written code.
 * Indicates the direction a sub-menu will appear.
 * GTK_DIRECTION_LEFT
 * A sub-menu will appear
 * GTK_DIRECTION_RIGHT
 */
public enum GtkSubmenuDirection
{
	DIRECTION_LEFT,
	DIRECTION_RIGHT
}
alias GtkSubmenuDirection SubmenuDirection;

/**
 * Warning
 * GtkSubmenuPlacement is deprecated and should not be used in newly-written code.
 */
public enum GtkSubmenuPlacement
{
	TOP_BOTTOM,
	LEFT_RIGHT
}
alias GtkSubmenuPlacement SubmenuPlacement;

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
 * other, rather than vertically stacked
 */
public enum GtkToolbarStyle
{
	ICONS,
	TEXT,
	BOTH,
	BOTH_HORIZ
}
alias GtkToolbarStyle ToolbarStyle;

public enum GtkUpdateType
{
	CONTINUOUS,
	DISCONTINUOUS,
	DELAYED
}
alias GtkUpdateType UpdateType;

/**
 * Used by GtkCList and GtkCTree to indicate whether a row is visible.
 * GTK_VISIBILITY_NONE
 * The row is not visible.
 * GTK_VISIBILITY_PARTIAL
 * The row is partially visible.
 * GTK_VISIBILITY_FULL
 * The row is fully visible.
 */
public enum GtkVisibility
{
	NONE,
	PARTIAL,
	FULL
}
alias GtkVisibility Visibility;

/**
 * Window placement can be influenced using this enumeration.
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
 * parent (see gtk_window_set_transient_for()).
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
 * The drag operation was successful
 * GTK_DRAG_RESULT_NO_TARGET
 * No suitable drag target
 * GTK_DRAG_RESULT_USER_CANCELLED
 * The user cancelled the drag operation
 * GTK_DRAG_RESULT_TIMEOUT_EXPIRED
 * The drag operation timed out
 * GTK_DRAG_RESULT_GRAB_BROKEN
 * The pointer or keyboard grab used
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
 * Warning
 * GtkSignalRunType is deprecated and should not be used in newly-written code.
 * These configure the signal's emission. They control
 * whether the signal can be emitted recursively on an object
 * and
 * whether to run the default method before or after the user-defined handlers.
 * GTK_RUN_FIRST
 * Run the default handler before the connected user-defined
 * handlers.
 * GTK_RUN_LAST
 * Run the default handler after the connected
 * user-defined handlers.
 * (Handlers registered as "after" always run after the default handler though)
 * GTK_RUN_BOTH
 * Run the default handler twice,
 * once before the user-defined handlers,
 * and
 * once after.
 * GTK_RUN_NO_RECURSE
 * Whether to prevent a handler or hook
 * from reemitting the signal from within itself.
 * Attempts to
 * emit the signal while it is running will result in the signal
 * emission being restarted once it is done with the current processing.
 * You must be
 * careful to avoid having two handlers endlessly reemitting signals,
 * gtk_signal_n_emissions() can be helpful.
 * GTK_RUN_ACTION
 * The signal is an action you can
 * invoke without any particular setup or cleanup.
 * The signal is treated no differently, but some
 * other code can determine if the signal is appropriate to
 * delegate to user control. For example, key binding sets
 * only allow bindings of ACTION signals to keystrokes.
 * GTK_RUN_NO_HOOKS
 * This prevents the connection of emission hooks
 * to the signal.
 */
public enum GtkSignalRunType
{
	RUN_FIRST = SignalFlags.RUN_FIRST,
	RUN_LAST = SignalFlags.RUN_LAST,
	RUN_BOTH = (RUN_FIRST | RUN_LAST),
	RUN_NO_RECURSE = SignalFlags.NO_RECURSE,
	RUN_ACTION = SignalFlags.ACTION,
	RUN_NO_HOOKS = SignalFlags.NO_HOOKS
}
alias GtkSignalRunType SignalRunType;

/**
 * Flags used to influence dialog construction.
 * GTK_DIALOG_MODAL
 * Make the constructed dialog modal,
 */
public enum GtkDialogFlags
{
	MODAL = 1 << 0, /+* call windowSetModal (win, TRUE) +/
	DESTROY_WITH_PARENT = 1 << 1, /+* call windowSetDestroyWithParent () +/
	NO_SEPARATOR = 1 << 2 /+* no separator bar above buttons +/
}
alias GtkDialogFlags DialogFlags;

/**
 * Predefined values for use as response ids in gtk_dialog_add_button().
 * All predefined values are negative, GTK+ leaves positive values for
 * application-defined response ids.
 * GTK_RESPONSE_NONE
 * Returned if an action widget has no response id, or if
 */
public enum GtkResponseType
{
	/+* GTK returns this if a response widget has no responseId,
	 * or if the dialog gets programmatically hidden or destroyed.
	+/
	GTK_RESPONSE_NONE = -1,
	/+* GTK won't return these unless you pass them inn
	 * as the response for an action widget. They are
	 * for your convenience.
	+/
	GTK_RESPONSE_REJECT = -2,
	GTK_RESPONSE_ACCEPT = -3,
	/+* If the dialog is deleted. +/
	GTK_RESPONSE_DELETE_EVENT = -4,
	/+* These are returned from GTK dialogs, and you can also use them
	 * yourself if you like.
	+/
	GTK_RESPONSE_OK = -5,
	GTK_RESPONSE_CANCEL = -6,
	GTK_RESPONSE_CLOSE = -7,
	GTK_RESPONSE_YES = -8,
	GTK_RESPONSE_NO = -9,
	GTK_RESPONSE_APPLY = -10,
	GTK_RESPONSE_HELP = -11
}
alias GtkResponseType ResponseType;

/**
 * The type of message being displayed in the dialog.
 * GTK_MESSAGE_INFO
 * Informational message
 * GTK_MESSAGE_WARNING
 * Nonfatal warning message
 * GTK_MESSAGE_QUESTION
 * Question requiring a choice
 * GTK_MESSAGE_ERROR
 * Fatal error message
 * GTK_MESSAGE_OTHER
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
 * An enum for determining the page role inside the GtkAssistant. It's used to
 * handle buttons sensitivity and visibility.
 * Note that an assistant needs to end its page flow with a page of type GTK_ASSISTANT_PAGE_CONFIRM
 * or GTK_ASSISTANT_PAGE_SUMMARY to be correct.
 * GTK_ASSISTANT_PAGE_CONTENT
 * The page has regular contents.
 * GTK_ASSISTANT_PAGE_INTRO
 * The page contains an introduction to the assistant task.
 * GTK_ASSISTANT_PAGE_CONFIRM
 * The page lets the user confirm or deny the changes.
 * GTK_ASSISTANT_PAGE_SUMMARY
 * The page informs the user of the changes done.
 * GTK_ASSISTANT_PAGE_PROGRESS
 * Used for tasks that take a long time to complete, blocks the assistant until the page is marked as complete.
 */
public enum GtkAssistantPageType
{
	CONTENT,
	INTRO,
	CONFIRM,
	SUMMARY,
	PROGRESS
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
 * GTK_IMAGE_PIXMAP
 * the widget contains a GdkPixmap
 * GTK_IMAGE_IMAGE
 * the widget contains a GdkImage
 * GTK_IMAGE_PIXBUF
 * the widget contains a GdkPixbuf
 * GTK_IMAGE_STOCK
 * the widget contains a stock icon name (see Stock Items(3))
 * GTK_IMAGE_ICON_SET
 * the widget contains a GtkIconSet
 * GTK_IMAGE_ANIMATION
 * the widget contains a GdkPixbufAnimation
 * GTK_IMAGE_ICON_NAME
 * the widget contains a named icon.
 */
public enum GtkImageType
{
	EMPTY,
	PIXMAP,
	IMAGE,
	PIXBUF,
	STOCK,
	ICON_SET,
	ANIMATION,
	ICON_NAME
}
alias GtkImageType ImageType;

/**
 * An enumeration representing possible orientations and growth
 * directions for the visible progress bar.
 * GTK_PROGRESS_LEFT_TO_RIGHT
 * A horizontal progress bar growing from left to right.
 * GTK_PROGRESS_RIGHT_TO_LEFT
 * A horizontal progress bar growing from right to left.
 * GTK_PROGRESS_BOTTOM_TO_TOP
 * A vertical progress bar growing from bottom to top.
 * GTK_PROGRESS_TOP_TO_BOTTOM
 * A vertical progress bar growing from top to bottom.
 */
public enum GtkProgressBarOrientation
{
	LEFT_TO_RIGHT,
	RIGHT_TO_LEFT,
	BOTTOM_TO_TOP,
	TOP_TO_BOTTOM
}
alias GtkProgressBarOrientation ProgressBarOrientation;

/**
 * An enumeration representing the styles for drawing the progress bar.
 * GTK_PROGRESS_CONTINUOUS
 * The progress bar grows in a smooth, continuous manner.
 * GTK_PROGRESS_DISCRETE
 * The progress bar grows in discrete, visible blocks.
 */
public enum GtkProgressBarStyle
{
	CONTINUOUS,
	DISCRETE
}
alias GtkProgressBarStyle ProgressBarStyle;

/**
 * GTK_UPDATE_ALWAYS
 * When refreshing your GtkSpinButton, the value is always displayed.
 * GTK_UPDATE_IF_VALID
 * When refreshing your GtkSpinButton, the value is only displayed if it is valid within the bounds of the spin button's GtkAdjustment.
 */
public enum GtkSpinButtonUpdatePolicy
{
	UPDATE_ALWAYS,
	UPDATE_IF_VALID
}
alias GtkSpinButtonUpdatePolicy SpinButtonUpdatePolicy;

/**
 * GTK_SPIN_STEP_FORWARD,
 * GTK_SPIN_STEP_BACKWARD,
 * GTK_SPIN_PAGE_FORWARD,
 * GTK_SPIN_PAGE_BACKWARD
 * These values spin a GtkSpinButton by the relevant values of the spin button's GtkAdjustment.
 * GTK_SPIN_HOME,
 * GTK_SPIN_END
 * These set the spin button's value to the minimum or maxmimum possible values, (set by its GtkAdjustment), respectively.
 * GTK_SPIN_USER_DEFINED
 * The programmer must specify the exact amount to spin the GtkSpinButton.
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
	TEXT_ONLY = 1 << 1
	/+* Possible future plans: SEARCH_CASE_INSENSITIVE, SEARCH_REGEXP +/
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
 * These flags indicate various properties of a GtkTreeModel. They are
 * returned by gtk_tree_model_get_flags(), and must be static for the
 * lifetime of the object. A more complete description of
 * GTK_TREE_MODEL_ITERS_PERSIST can be found in the overview of this
 * section.
 * GTK_TREE_MODEL_ITERS_PERSIST
 * Iterators survive all signals emitted by the tree.
 * GTK_TREE_MODEL_LIST_ONLY
 * The model is a list only, and never has children
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
	/+* drop before/after this row +/
	GTK_TREE_VIEW_DROP_BEFORE,
	GTK_TREE_VIEW_DROP_AFTER,
	/+* drop as a child of this row (with fallback to before or after
	 * if into is not possible)
	+/
	GTK_TREE_VIEW_DROP_INTO_OR_BEFORE,
	GTK_TREE_VIEW_DROP_INTO_OR_AFTER
}
alias GtkTreeViewDropPosition TreeViewDropPosition;

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
 * Tells how a cell is to be rendererd.
 * GTK_CELL_RENDERER_SELECTED
 * The cell is currently selected, and
 * probably has a selection colored background to render to.
 * GTK_CELL_RENDERER_PRELIT
 * The mouse is hovering over the cell.
 * GTK_CELL_RENDERER_INSENSITIVE
 * The cell is drawn in an insensitive manner
 * GTK_CELL_RENDERER_SORTED
 * The cell is in a sorted row
 * GTK_CELL_RENDERER_FOCUSED
 * The cell is in the focus row.
 */
public enum GtkCellRendererState
{
	SELECTED = 1 << 0,
	PRELIT = 1 << 1,
	INSENSITIVE = 1 << 2,
	/+* this flag means the cell is inn the sort column/row +/
	SORTED = 1 << 3,
	FOCUSED = 1 << 4
}
alias GtkCellRendererState CellRendererState;

/**
 * Identifies how the user can interact with a particular cell.
 * GTK_CELL_RENDERER_MODE_INERT
 * The cell is just for display
 * and cannot be interacted with. Note that this doesn't mean that eg. the
 * row being drawn can't be selected -- just that a particular element of
 * it cannot be individually modified.
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

public enum GtkPackDirection
{
	LTR,
	RTL,
	TTB,
	BTT
}
alias GtkPackDirection PackDirection;

/**
 * An enumeration representing directional movements within a menu.
 * GTK_MENU_DIR_PARENT
 * To the parent menu shell.
 * GTK_MENU_DIR_CHILD
 * To the submenu, if any, associated with the item.
 * GTK_MENU_DIR_NEXT
 * To the next menu item.
 * GTK_MENU_DIR_PREV
 * To the previous menu item.
 * Property Details
 * The "take-focus" property
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
 * Warning
 * GtkToolbarChildType is deprecated and should not be used in newly-written code.
 * GtkToolbarChildType is used to set the type of new elements that are added
 * to a GtkToolbar.
 * GTK_TOOLBAR_CHILD_SPACE
 * a space in the style of the toolbar's GtkToolbarSpaceStyle.
 * GTK_TOOLBAR_CHILD_BUTTON
 * a GtkButton.
 * GTK_TOOLBAR_CHILD_TOGGLEBUTTON
 * a GtkToggleButton.
 * GTK_TOOLBAR_CHILD_RADIOBUTTON
 * a GtkRadioButton.
 * GTK_TOOLBAR_CHILD_WIDGET
 * a standard GtkWidget.
 */
public enum GtkToolbarChildType
{
	SPACE,
	BUTTON,
	TOGGLEBUTTON,
	RADIOBUTTON,
	WIDGET
}
alias GtkToolbarChildType ToolbarChildType;

public enum GtkToolbarSpaceStyle
{
	EMPTY,
	LINE
}
alias GtkToolbarSpaceStyle ToolbarSpaceStyle;

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
	ACCELERATOR = 1 << 8
}
alias GtkUIManagerItemType UIManagerItemType;

/**
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
 */
public enum GtkFileChooserConfirmation
{
	CONFIRM,
	ACCEPT_FILENAME,
	SELECT_AGAIN
}
alias GtkFileChooserConfirmation FileChooserConfirmation;

/**
 */
public enum GtkFileChooserError
{
	NONEXISTENT,
	BAD_FILENAME,
	ALREADY_EXISTS
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
 * These options can be used to influence the display and behaviour of a GtkCalendar.
 * GTK_CALENDAR_SHOW_HEADING
 * Specifies that the month and year should be displayed.
 * GTK_CALENDAR_SHOW_DAY_NAMES
 * Specifies that three letter day descriptions should be present.
 * GTK_CALENDAR_NO_MONTH_CHANGE
 * Prevents the user from switching months with the calendar.
 * GTK_CALENDAR_SHOW_WEEK_NUMBERS
 * Displays each week numbers of the current year, down the left side
 */
public enum GtkCalendarDisplayOptions
{
	SHOW_HEADING = 1 << 0,
	SHOW_DAY_NAMES = 1 << 1,
	NO_MONTH_CHANGE = 1 << 2,
	SHOW_WEEK_NUMBERS = 1 << 3,
	WEEK_START_MONDAY = 1 << 4
}
alias GtkCalendarDisplayOptions CalendarDisplayOptions;

/**
 * The mode of the size group determines the directions in which the size
 * group affects the requested sizes of its component widgets.
 * GTK_SIZE_GROUP_NONE
 */
public enum GtkSizeGroupMode
{
	NONE,
	HORIZONTAL,
	VERTICAL,
	BOTH
}
alias GtkSizeGroupMode SizeGroupMode;

/**
 * Tells about the state of the object.
 * GTK_IN_DESTRUCTION
 * the object is currently being destroyed. This is used
 */
public enum GtkObjectFlags
{
	IN_DESTRUCTION = 1 << 0, /+* Used internally during dispose +/
	FLOATING = 1 << 1,
	RESERVED_1 = 1 << 2,
	RESERVED_2 = 1 << 3
}
alias GtkObjectFlags ObjectFlags;

/**
 * Warning
 * GtkArgFlags is deprecated and should not be used in newly-written code. Use corresponding GParamSpec features instead
 * Possible flags indicating how an argument should be treated.
 * GTK_ARG_READABLE
 * the argument is readable. (i.e. can be queried)
 * GTK_ARG_WRITABLE
 * the argument is writable. (i.e. settable)
 * GTK_ARG_CONSTRUCT
 * the argument needs construction.
 * GTK_ARG_CONSTRUCT_ONLY
 * the argument needs construction (and will
 * be set once during object creation), but is otherwise cannot be
 * set. Hence this flag is not allowed with GTK_ARG_WRITABLE,
 * and is redundant with GTK_ARG_CONSTRUCT.
 * GTK_ARG_CHILD_ARG
 * an argument type that applies to (and may be different for)
 * each child. Used by GtkContainer.
 */
public enum GtkArgFlags
{
	READABLE = ParamFlags.READABLE,
	WRITABLE = ParamFlags.WRITABLE,
	CONSTRUCT = ParamFlags.CONSTRUCT,
	CONSTRUCT_ONLY = ParamFlags.CONSTRUCT_ONLY,
	CHILD_ARG = 1 << 4
}
alias GtkArgFlags ArgFlags;

/**
 * Determines how GTK+ handles the sensitivity of stepper arrows
 * at the end of range widgets.
 * GTK_SENSITIVITY_AUTO
 * The arrow is made insensitive if the
 */
public enum GtkSensitivityType
{
	AUTO,
	ON,
	OFF
}
alias GtkSensitivityType SensitivityType;

/**
 * Tells about certain properties of the widget.
 * GTK_TOPLEVEL
 */
public enum GtkWidgetFlags
{
	TOPLEVEL = 1 << 4,
	NO_WINDOW = 1 << 5,
	REALIZED = 1 << 6,
	MAPPED = 1 << 7,
	VISIBLE = 1 << 8,
	SENSITIVE = 1 << 9,
	PARENT_SENSITIVE = 1 << 10,
	CAN_FOCUS = 1 << 11,
	HAS_FOCUS = 1 << 12,
	/+* widget is allowed to receive the defaulx via grabDefault
	 * and will reserve space to draw the defaulx if possible
	+/
	CAN_DEFAULT = 1 << 13,
	/+* the widget currently is receiving the defaulx action and should be drawn
	 * appropriately if possible
	+/
	HAS_DEFAULT = 1 << 14,
	HAS_GRAB = 1 << 15,
	RC_STYLE = 1 << 16,
	COMPOSITE_CHILD = 1 << 17,
	NO_REPARENT = 1 << 18,
	APP_PAINTABLE = 1 << 19,
	/+* the widget when focused will receive the defaulx action and have
	 * HAS_DEFAULT set even if there is a different widget set as defaulx
	+/
	RECEIVES_DEFAULT = 1 << 20,
	DOUBLE_BUFFERED = 1 << 21,
	NO_SHOW_ALL = 1 << 22
}
alias GtkWidgetFlags WidgetFlags;

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


struct GtkTextIter {
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


/**
 * Main Gtk struct.
 * An object representing and maintaining a group of accelerators.
 */
public struct GtkAccelGroup{}


public struct GtkAccelKey{}
// uint accelKey;
// gtk-Keyboard-Accelerators.html
// GdkModifierType accelMods;
// gtk-Keyboard-Accelerators.html
// uint accelFlags : 16;
// gtk-Keyboard-Accelerators.html


/**
 * Main Gtk struct.
 */
public struct GtkAccelMap{}


/**
 * Main Gtk struct.
 */
public struct GtkClipboard{}


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
public struct GtkStockItem{}
// char *stockId;
// gtk-Stock-Items.html
// char *label;
// gtk-Stock-Items.html
// GdkModifierType modifier;
// gtk-Stock-Items.html
// uint keyval;
// gtk-Stock-Items.html
// char *translationDomain;
// gtk-Stock-Items.html


/**
 * Main Gtk struct.
 */
public struct GtkIconSource{}


public struct GtkIconFactory{}


public struct GtkIconSet{}


/**
 * Main Gtk struct.
 * The GtkRcStyle structure is used to represent a set
 * of information about the appearance of a widget.
 * This can later be composited together with other
 * GtkRcStyle structures to form a GtkStyle.
 */
public struct GtkRcStyle{}
// char *name;
// gtk-Resource-Files.html
// char *bgPixmapName[5];
// gtk-Resource-Files.html
// PangoFontDescription *fontDesc;
// gtk-Resource-Files.html
// GtkRcFlags colorFlags[5];
// gtk-Resource-Files.html
// GdkColor fg[5];
// gtk-Resource-Files.html
// GdkColor bg[5];
// gtk-Resource-Files.html
// GdkColor text[5];
// gtk-Resource-Files.html
// GdkColor base[5];
// gtk-Resource-Files.html
// int xthickness;
// gtk-Resource-Files.html
// int ythickness;
// gtk-Resource-Files.html


/**
 * Main Gtk struct.
 */
public struct GtkSettings{}


public struct GtkSettingsValue{}
// /+* origin should be something like "filename:linenumber" for rc files,
// GtkSettings.html
// * or e.g. "XProperty" for other sources
// GtkSettings.html
// +/
// GtkSettings.html
// char *origin;
// GtkSettings.html
// /+* valid types are LONG, DOUBLE and STRING corresponding to the token parsed,
// GtkSettings.html
// * or a GSTRING holding an unparsed statement
// GtkSettings.html
// +/
// GtkSettings.html
// GValue value;
// GtkSettings.html


/**
 * Main Gtk struct.
 * A binding set maintains a list of activatable key bindings.
 * A single binding set can match multiple types of widgets.
 * Similar to styles, widgets can be mapped by widget name paths, widget
 * class paths or widget class types. When a binding within a set is
 * matched upon activation, an action signal is emitted on the target
 * widget to carry out the actual activation.
 * gchar*set_name;
 */
public struct GtkBindingSet{}
// char *setName;
// gtk-Bindings.html
// int priority;
// gtk-Bindings.html
// GSList *widgetPathPspecs;
// gtk-Bindings.html
// GSList *widgetClassPspecs;
// gtk-Bindings.html
// GSList *classBranchPspecs;
// gtk-Bindings.html
// GtkBindingEntry *entries;
// gtk-Bindings.html
// GtkBindingEntry *current;
// gtk-Bindings.html
// uint parsed : 1; /+* From RC content +/
// gtk-Bindings.html


/**
 * Each key binding element of a binding sets binding list is represented by
 * a GtkBindingEntry.
 * guintkeyval;
 */
public struct GtkBindingEntry{}
// /+* key portion
// gtk-Bindings.html
// +/
// gtk-Bindings.html
// uint keyval;
// gtk-Bindings.html
// GdkModifierType modifiers;
// gtk-Bindings.html
// GtkBindingSet *bindingSet;
// gtk-Bindings.html
// uint destroyed : 1;
// gtk-Bindings.html
// uint inEmission : 1;
// gtk-Bindings.html
// uint marksUnbound : 1;
// gtk-Bindings.html
// GtkBindingEntry *setNext;
// gtk-Bindings.html
// GtkBindingEntry *hashNext;
// gtk-Bindings.html
// GtkBindingSignal *signals;
// gtk-Bindings.html


/**
 * A GtkBindingSignal stores the necessary information to activate a widget
 * in response to a key press via a signal emission.
 * GtkBindingSignal*next;
 */
public struct GtkBindingSignal{}
// GtkBindingSignal *next;
// gtk-Bindings.html
// char *signalName;
// gtk-Bindings.html
// uint nArgs;
// gtk-Bindings.html
// GtkBindingArg *args;
// gtk-Bindings.html


/**
 * A GtkBindingArg holds the data associated with an argument for a
 * key binding signal emission as stored in GtkBindingSignal.
 * GTypearg_type;
 * implementation detail
 */
public struct GtkBindingArg{}
// GType argType;
// gtk-Bindings.html
// unio {
	// gtk-Bindings.html
	// int longData;
	// gtk-Bindings.html
	// double doubleData;
	// gtk-Bindings.html
	// char *stringData;
	// gtk-Bindings.html
// } d;
// gtk-Bindings.html


/**
 * Main Gtk struct.
 */
public struct GtkStyle{}
// GdkColor fg[5];
// GtkStyle.html
// GdkColor bg[5];
// GtkStyle.html
// GdkColor light[5];
// GtkStyle.html
// GdkColor dark[5];
// GtkStyle.html
// GdkColor mid[5];
// GtkStyle.html
// GdkColor text[5];
// GtkStyle.html
// GdkColor base[5];
// GtkStyle.html
// GdkColor textAa[5]; /+* Halfway between text/base +/
// GtkStyle.html
// GdkColor black;
// GtkStyle.html
// GdkColor white;
// GtkStyle.html
// PangoFontDescription *fontDesc;
// GtkStyle.html
// int xthickness;
// GtkStyle.html
// int ythickness;
// GtkStyle.html
// GdkGC *fgGc[5];
// GtkStyle.html
// GdkGC *bgGc[5];
// GtkStyle.html
// GdkGC *lightGc[5];
// GtkStyle.html
// GdkGC *darkGc[5];
// GtkStyle.html
// GdkGC *midGc[5];
// GtkStyle.html
// GdkGC *textGc[5];
// GtkStyle.html
// GdkGC *baseGc[5];
// GtkStyle.html
// GdkGC *textAaGc[5];
// GtkStyle.html
// GdkGC *blackGc;
// GtkStyle.html
// GdkGC *whiteGc;
// GtkStyle.html
// GdkPixmap *bgPixmap[5];
// GtkStyle.html


public struct GtkBorder
{
	int left;
	int right;
	int top;
	int bottom;
}


public struct GtkRcProperty{}
// /+* quark-ified property identifier like "GtkScrollbar::spacing" +/
// GtkStyle.html
// GQuark typeName;
// GtkStyle.html
// GQuark propertyName;
// GtkStyle.html
// /+* fields similar to GtkSettingsValue +/
// GtkStyle.html
// char *origin;
// GtkStyle.html
// GValue value;
// GtkStyle.html


/**
 * A GtkTargetEntry structure represents a single type of
 * data than can be supplied for by a widget for a selection
 * or for supplied or received during drag-and-drop. It
 * contains a string representing the drag type, a flags
 * field (used only for drag and drop - see GtkTargetFlags),
 * and an application assigned integer ID. The integer
 * ID will later be passed as a signal parameter for signals
 * like "selection_get". It allows the application to identify
 * the target type without extensive string compares.
 */
public struct GtkTargetEntry
{
	char *target;
	uint flags;
	uint info;
}


/**
 * A GtkTargetList structure is a reference counted list
 * of GtkTargetPair. It is used to represent the same
 * information as a table of GtkTargetEntry, but in
 * an efficient form. This structure should be treated as
 * opaque.
 */
public struct GtkTargetList{}
// GList *list;
// gtk-Selections.html
// uint refCount;
// gtk-Selections.html


/**
 * Internally used structure in the drag-and-drop and
 * selection handling code.
 */
public struct GtkTargetPair{}
// GdkAtom target;
// gtk-Selections.html
// uint flags;
// gtk-Selections.html
// uint info;
// gtk-Selections.html


/**
 * Warning
 * GtkArg is deprecated and should not be used in newly-written code.
 * This is a structure that we use to pass in typed values (and names).
 */
public struct GtkArg{}
// GtkType type;
// gtk-Types.html
// char *name;
// gtk-Types.html
// /+* this unio only defines the required storage types for
// gtk-Types.html
// * the possibile values, thus there is no int enumData field,
// gtk-Types.html
// * because that would just be a mere alias for int intData.
// gtk-Types.html
// * use the GTK_VALUE_*() and GTK_RETLOC_*() macros to access
// gtk-Types.html
// * the discrete memebers.
// gtk-Types.html
// +/
// gtk-Types.html
// unio {
	// gtk-Types.html
	// /+* flat values +/
	// gtk-Types.html
	// char charData;
	// gtk-Types.html
	// char ucharData;
	// gtk-Types.html
	// int boolData;
	// gtk-Types.html
	// int intData;
	// gtk-Types.html
	// uint uintData;
	// gtk-Types.html
	// int longData;
	// gtk-Types.html
	// uint ulongData;
	// gtk-Types.html
	// float floatData;
	// gtk-Types.html
	// double doubleData;
	// gtk-Types.html
	// char *stringData;
	// gtk-Types.html
	// GtkObject *objectData;
	// gtk-Types.html
	// void* pointerData;
	// gtk-Types.html
	// /+* structured values +/
	// gtk-Types.html
	// struct {
		// gtk-Types.html
		// GtkSignalFunc f;
		// gtk-Types.html
		// void* d;
		// gtk-Types.html
	// } signalData;
	// gtk-Types.html
// } d;
// gtk-Types.html


/**
 * Warning
 * GtkTypeInfo is deprecated and should not be used in newly-written code.
 * Holds information about the type. gtk_type_name() returns the name.
 * object_size is somehow set to the number of bytes that an instance of
 * the object will occupy. class_init_func holds the type's
 * initialization function. object_init_func holds the initialization
 * function for an instance of the object. reserved_1 is used for
 * GtkEnumValue to hold the enumerated values.
 */
public struct GtkTypeInfo{}
// char *typeName;
// gtk-Types.html
// uint objectSize;
// gtk-Types.html
// uint classSize;
// gtk-Types.html
// GtkClassInitFunc classInitFunc;
// gtk-Types.html
// GtkObjectInitFunc objectInitFunc;
// gtk-Types.html
// void* reserved1;
// gtk-Types.html
// void* reserved2;
// gtk-Types.html
// GtkClassInitFunc baseClassInitFunc;
// gtk-Types.html


/**
 * Main Gtk struct.
 * vbox is a GtkVBox - the main part of the
 * dialog box.
 * action_area is a GtkHButtonBox packed below the
 * dividing GtkHSeparator in the dialog. It is treated exactly the same
 * as any other GtkHButtonBox.
 */
public struct GtkDialog{}
// GtkWidget *vbox;
// GtkDialog.html
// GtkWidget *actionArea;
// GtkDialog.html


/**
 * Main Gtk struct.
 * The GtkInvisible struct contains no public fields.
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
 * This should not be accessed directly. Use the accessor functions as
 * described below.
 */
public struct GtkLabel{}


/**
 * Main Gtk struct.
 * The GtkProgressBar struct contains private data only,
 * and should be accessed using the functions below.
 */
public struct GtkProgressBar{}


/**
 * Main Gtk struct.
 * Contains private data that should be modified with the functions described
 * below.
 */
public struct GtkStatusbar{}


/**
 * Main Gtk struct.
 * This should not be accessed directly. Use the accessor functions below.
 */
public struct GtkButton{}


/**
 * Main Gtk struct.
 * toggle_button is a GtkToggleButton representing the actual toggle button that composes the check button.
 */
public struct GtkCheckButton{}


/**
 * Main Gtk struct.
 * Contains only private data that should be read and manipulated using the
 * functions below.
 */
public struct GtkRadioButton{}


/**
 * Main Gtk struct.
 * The GtkToggleButton struct contains private data only, and should be manipulated using the functions below.
 */
public struct GtkToggleButton{}


/**
 * Main Gtk struct.
 * The GtkEntry struct contains only private data.
 */
public struct GtkEntry{}


/**
 * Main Gtk struct.
 * The GtkEntryCompletion struct contains only private data.
 */
public struct GtkEntryCompletion{}


/**
 * Main Gtk struct.
 * The GtkHScale struct contains private data only, and
 * should be accessed using the functions below.
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
 * entry is the GtkEntry part of the GtkSpinButton
 * widget, and can be used accordingly. All other fields contain private data
 * and should only be modified using the functions below.
 */
public struct GtkSpinButton{}


/**
 * Main Gtk struct.
 * The GtkEditable structure contains the following fields.
 * (These fields should be considered read-only. They should
 * never be set by an application.)
 * guint selection_start;
 * the starting position of the selected characters
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
 * Using GtkTextAttributes directly should rarely be necessary. It's
 * primarily useful with gtk_text_iter_get_attributes(). As with most
 * GTK+ structs, the fields in this struct should only be read, never
 * modified directly.
 * GtkTextAppearanceappearance;
 * pointer to sub-struct containing certain attributes
 * GtkJustificationjustification;
 * GtkTextDirectiondirection;
 * PangoFontDescription*font;
 * gdoublefont_scale;
 * gintleft_margin;
 * gintindent;
 * gintright_margin;
 * gintpixels_above_lines;
 * gintpixels_below_lines;
 * gintpixels_inside_wrap;
 * PangoTabArray*tabs;
 * GtkWrapModewrap_mode;
 * PangoLanguage*language;
 * guintinvisible:1;
 * guintbg_full_height:1;
 * guinteditable:1;
 * guintrealized:1;
 */
public struct GtkTextAttributes{}
// GtkTextAppearance appearance;
// GtkTextTag.html
// GtkJustification justification;
// GtkTextTag.html
// GtkTextDirection direction;
// GtkTextTag.html
// /+* Individual chunks of this can be set/unset as a group +/
// GtkTextTag.html
// PangoFontDescription *font;
// GtkTextTag.html
// double fontScale;
// GtkTextTag.html
// int leftMargin;
// GtkTextTag.html
// int indent;
// GtkTextTag.html
// int rightMargin;
// GtkTextTag.html
// int pixelsAboveLines;
// GtkTextTag.html
// int pixelsBelowLines;
// GtkTextTag.html
// int pixelsInsideWrap;
// GtkTextTag.html
// PangoTabArray *tabs;
// GtkTextTag.html
// GtkWrapMode wrapMode; /+* How to handle wrap-around for this tag.
// GtkTextTag.html
// * Must be GTK_WRAPMODE_CHAR,
// GtkTextTag.html
// * GTK_WRAPMODE_NONE, GTK_WRAPMODE_WORD
// GtkTextTag.html
// +/
// GtkTextTag.html
// PangoLanguage *language;
// GtkTextTag.html
// /+* hide the text +/
// GtkTextTag.html
// uint invisible : 1;
// GtkTextTag.html
// /+* Background is fit to full line height rather than
// GtkTextTag.html
// * baseline +/- ascent/descent (font height)
// GtkTextTag.html
// +/
// GtkTextTag.html
// uint bgFullHeight : 1;
// GtkTextTag.html
// /+* can edit this text +/
// GtkTextTag.html
// uint editable : 1;
// GtkTextTag.html
// /+* colors are allocated etc. +/
// GtkTextTag.html
// uint realized : 1;
// GtkTextTag.html


public struct GtkTextAppearance{}
// GdkColor bgColor;
// GtkTextTag.html
// GdkColor fgColor;
// GtkTextTag.html
// GdkBitmap *bgStipple;
// GtkTextTag.html
// GdkBitmap *fgStipple;
// GtkTextTag.html
// /+* super/subscript rise, can be negative +/
// GtkTextTag.html
// int rise;
// GtkTextTag.html
// uint underline : 4; /+* PangoUnderline +/
// GtkTextTag.html
// uint strikethrough : 1;
// GtkTextTag.html
// /+* Whether to use background-related values; this is irrelevant for
// GtkTextTag.html
// * the values struct when inn a tag, but is used for the composite
// GtkTextTag.html
// * values struct; it's true if any of the tags being composited
// GtkTextTag.html
// * had background stuff set.
// GtkTextTag.html
// +/
// GtkTextTag.html
// uint drawBg : 1;
// GtkTextTag.html
// /+* These are only used when we are actually laying out and rendering
// GtkTextTag.html
// * a paragraph; not when a GtkTextAppearance is part of a
// GtkTextTag.html
// * GtkTextAttributes.
// GtkTextTag.html
// +/
// GtkTextTag.html
// uint insideSelection : 1;
// GtkTextTag.html
// uint isText : 1;
// GtkTextTag.html


/**
 * Main Gtk struct.
 */
public struct GtkTextTagTable{}


/**
 * Main Gtk struct.
 */
public struct GtkTextView{}


/**
 * A GtkTextChildAnchor is a spot in the buffer
 * where child widgets can be "anchored" (inserted inline, as if they were
 * characters). The anchor can have multiple widgets anchored, to allow for
 * multiple views.
 */
public struct GtkTextChildAnchor{}


/**
 * Main Gtk struct.
 */
public struct GtkTreeModel{}


/**
 * The GtkTreeIter is the primary structure for
 * accessing a structure. Models are expected to put a unique integer in
 * the stamp member, and put model-specific
 * data in the three user_data members.
 * gintstamp;
 * A unique stamp to catch invalid iterators
 * gpointeruser_data;
 * Model specific data
 * gpointeruser_data2;
 * Model specific data
 * gpointeruser_data3;
 * Model specific data
 */
public struct GtkTreeIter
{
	int stamp;
	void* userData;
	void* userData2;
	void* userData3;
}


public struct GtkTreePath{}


public struct GtkTreeRowReference{}


public struct GtkTreeModelIface{}
// GTypeInterface gIface;
// GtkTreeModel.html
// /+* Signals +/
// GtkTreeModel.html
// void (* rowChanged) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreePath *path,
// GtkTreeModel.html
// GtkTreeIter *iter);
// GtkTreeModel.html
// void (* rowInserted) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreePath *path,
// GtkTreeModel.html
// GtkTreeIter *iter);
// GtkTreeModel.html
// void (* rowHasChildToggled) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreePath *path,
// GtkTreeModel.html
// GtkTreeIter *iter);
// GtkTreeModel.html
// void (* rowDeleted) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreePath *path);
// GtkTreeModel.html
// void (* rowsReordered) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreePath *path,
// GtkTreeModel.html
// GtkTreeIter *iter,
// GtkTreeModel.html
// int *newOrder);
// GtkTreeModel.html
// /+* Virtual Table +/
// GtkTreeModel.html
// GtkTreeModelFlags (* getFlags) (GtkTreeModel *treeModel);
// GtkTreeModel.html
// int (* getNColumns) (GtkTreeModel *treeModel);
// GtkTreeModel.html
// GType (* getColumnType) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// int index);
// GtkTreeModel.html
// int (* getIter) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreeIter *iter,
// GtkTreeModel.html
// GtkTreePath *path);
// GtkTreeModel.html
// GtkTreePath *(* getPath) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreeIter *iter);
// GtkTreeModel.html
// void (* getValue) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreeIter *iter,
// GtkTreeModel.html
// int column,
// GtkTreeModel.html
// GValue *value);
// GtkTreeModel.html
// int (* iterNext) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreeIter *iter);
// GtkTreeModel.html
// int (* iterChildren) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreeIter *iter,
// GtkTreeModel.html
// GtkTreeIter *parent);
// GtkTreeModel.html
// int (* iterHasChild) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreeIter *iter);
// GtkTreeModel.html
// int (* iterNChildren) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreeIter *iter);
// GtkTreeModel.html
// int (* iterNthChild) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreeIter *iter,
// GtkTreeModel.html
// GtkTreeIter *parent,
// GtkTreeModel.html
// int n);
// GtkTreeModel.html
// int (* iterParent) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreeIter *iter,
// GtkTreeModel.html
// GtkTreeIter *child);
// GtkTreeModel.html
// void (* refNode) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreeIter *iter);
// GtkTreeModel.html
// void (* unrefNode) (GtkTreeModel *treeModel,
// GtkTreeModel.html
// GtkTreeIter *iter);
// GtkTreeModel.html


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


/**
 * A private struct for internal use only. The definition of this
 * structure is not publically available.
 */
public struct GtkTreeViewPrivate{}


/**
 * Main Gtk struct.
 */
public struct GtkTreeDragSource{}


public struct GtkTreeDragSourceIface{}
// GTypeInterface gIface;
// gtk-GtkTreeView-drag-and-drop.html
// /+* VTable - not signals +/
// gtk-GtkTreeView-drag-and-drop.html
// int (* rowDraggable) (GtkTreeDragSource *dragSource,
// gtk-GtkTreeView-drag-and-drop.html
// GtkTreePath *path);
// gtk-GtkTreeView-drag-and-drop.html
// int (* dragDataGet) (GtkTreeDragSource *dragSource,
// gtk-GtkTreeView-drag-and-drop.html
// GtkTreePath *path,
// gtk-GtkTreeView-drag-and-drop.html
// GtkSelectionData *selectionData);
// gtk-GtkTreeView-drag-and-drop.html
// int (* dragDataDelete) (GtkTreeDragSource *dragSource,
// gtk-GtkTreeView-drag-and-drop.html
// GtkTreePath *path);
// gtk-GtkTreeView-drag-and-drop.html


public struct GtkTreeDragDest{}


public struct GtkTreeDragDestIface{}
// GTypeInterface gIface;
// gtk-GtkTreeView-drag-and-drop.html
// /+* VTable - not signals +/
// gtk-GtkTreeView-drag-and-drop.html
// int (* dragDataReceived) (GtkTreeDragDest *dragDest,
// gtk-GtkTreeView-drag-and-drop.html
// GtkTreePath *dest,
// gtk-GtkTreeView-drag-and-drop.html
// GtkSelectionData *selectionData);
// gtk-GtkTreeView-drag-and-drop.html
// int (* rowDropPossible) (GtkTreeDragDest *dragDest,
// gtk-GtkTreeView-drag-and-drop.html
// GtkTreePath *destPath,
// gtk-GtkTreeView-drag-and-drop.html
// GtkSelectionData *selectionData);
// gtk-GtkTreeView-drag-and-drop.html


/**
 * Main Gtk struct.
 */
public struct GtkCellView{}


/**
 * Main Gtk struct.
 * The GtkIconView struct contains only
 * private fields and should not be directly accessed.
 */
public struct GtkIconView{}


/**
 * Main Gtk struct.
 */
public struct GtkTreeSortable{}


public struct GtkTreeSortableIface{}
// GTypeInterface gIface;
// GtkTreeSortable.html
// /+* signals +/
// GtkTreeSortable.html
// void (* sortColumnChanged) (GtkTreeSortable *sortable);
// GtkTreeSortable.html
// /+* virtual table +/
// GtkTreeSortable.html
// int (* getSortColumnId) (GtkTreeSortable *sortable,
// GtkTreeSortable.html
// int *sortColumnId,
// GtkTreeSortable.html
// GtkSortType *order);
// GtkTreeSortable.html
// void (* setSortColumnId) (GtkTreeSortable *sortable,
// GtkTreeSortable.html
// int sortColumnId,
// GtkTreeSortable.html
// GtkSortType order);
// GtkTreeSortable.html
// void (* setSortFunc) (GtkTreeSortable *sortable,
// GtkTreeSortable.html
// int sortColumnId,
// GtkTreeSortable.html
// GtkTreeIterCompareFunc func,
// GtkTreeSortable.html
// void* data,
// GtkTreeSortable.html
// GtkDestroyNotify destroy);
// GtkTreeSortable.html
// void (* setDefaultSortFunc) (GtkTreeSortable *sortable,
// GtkTreeSortable.html
// GtkTreeIterCompareFunc func,
// GtkTreeSortable.html
// void* data,
// GtkTreeSortable.html
// GtkDestroyNotify destroy);
// GtkTreeSortable.html
// int (* hasDefaultSortFunc) (GtkTreeSortable *sortable);
// GtkTreeSortable.html


/**
 * Main Gtk struct.
 * This should not be accessed directly. Use the accessor functions below.
 */
public struct GtkTreeModelSort{}


/**
 * Main Gtk struct.
 * The GtkTreeModelFilter struct contains only private fields.
 */
public struct GtkTreeModelFilter{}


/**
 * Main Gtk struct.
 */
public struct GtkCellLayout{}


public struct GtkCellLayoutIface{}
// GTypeInterface gIface;
// GtkCellLayout.html
// /+* Virtual Table +/
// GtkCellLayout.html
// void (* packStart) (GtkCellLayout *cellLayout,
// GtkCellLayout.html
// GtkCellRenderer *cell,
// GtkCellLayout.html
// int expand);
// GtkCellLayout.html
// void (* packEnd) (GtkCellLayout *cellLayout,
// GtkCellLayout.html
// GtkCellRenderer *cell,
// GtkCellLayout.html
// int expand);
// GtkCellLayout.html
// void (* clear) (GtkCellLayout *cellLayout);
// GtkCellLayout.html
// void (* addAttribute) (GtkCellLayout *cellLayout,
// GtkCellLayout.html
// GtkCellRenderer *cell,
// GtkCellLayout.html
// char *attribute,
// GtkCellLayout.html
// int column);
// GtkCellLayout.html
// void (* setCellDataFunc) (GtkCellLayout *cellLayout,
// GtkCellLayout.html
// GtkCellRenderer *cell,
// GtkCellLayout.html
// GtkCellLayoutDataFunc func,
// GtkCellLayout.html
// void* funcData,
// GtkCellLayout.html
// GDestroyNotify destroy);
// GtkCellLayout.html
// void (* clearAttributes) (GtkCellLayout *cellLayout,
// GtkCellLayout.html
// GtkCellRenderer *cell);
// GtkCellLayout.html
// void (* reorder) (GtkCellLayout *cellLayout,
// GtkCellLayout.html
// GtkCellRenderer *cell,
// GtkCellLayout.html
// int position);
// GtkCellLayout.html
// GList* (* getCells) (GtkCellLayout *cellLayout);
// GtkCellLayout.html


/**
 * Main Gtk struct.
 */
public struct GtkCellRenderer{}


public struct GtkCellRendererClass{}
// GtkObjectClass parentClass;
// GtkCellRenderer.html
// /+* vtable - not signals +/
// GtkCellRenderer.html
// void (* getSize) (GtkCellRenderer *cell,
// GtkCellRenderer.html
// GtkWidget *widget,
// GtkCellRenderer.html
// GdkRectangle *cellArea,
// GtkCellRenderer.html
// int *xOffset,
// GtkCellRenderer.html
// int *yOffset,
// GtkCellRenderer.html
// int *width,
// GtkCellRenderer.html
// int *height);
// GtkCellRenderer.html
// void (* render) (GtkCellRenderer *cell,
// GtkCellRenderer.html
// GdkDrawable *window,
// GtkCellRenderer.html
// GtkWidget *widget,
// GtkCellRenderer.html
// GdkRectangle *backgroundArea,
// GtkCellRenderer.html
// GdkRectangle *cellArea,
// GtkCellRenderer.html
// GdkRectangle *exposeArea,
// GtkCellRenderer.html
// GtkCellRendererState flags);
// GtkCellRenderer.html
// int (* activate) (GtkCellRenderer *cell,
// GtkCellRenderer.html
// GdkEvent *event,
// GtkCellRenderer.html
// GtkWidget *widget,
// GtkCellRenderer.html
// char *path,
// GtkCellRenderer.html
// GdkRectangle *backgroundArea,
// GtkCellRenderer.html
// GdkRectangle *cellArea,
// GtkCellRenderer.html
// GtkCellRendererState flags);
// GtkCellRenderer.html
// GtkCellEditable *(* startEditing) (GtkCellRenderer *cell,
// GtkCellRenderer.html
// GdkEvent *event,
// GtkCellRenderer.html
// GtkWidget *widget,
// GtkCellRenderer.html
// char *path,
// GtkCellRenderer.html
// GdkRectangle *backgroundArea,
// GtkCellRenderer.html
// GdkRectangle *cellArea,
// GtkCellRenderer.html
// GtkCellRendererState flags);
// GtkCellRenderer.html
// /+* Signals +/
// GtkCellRenderer.html
// void (* editingCanceled) (GtkCellRenderer *cell);
// GtkCellRenderer.html
// void (* editingStarted) (GtkCellRenderer *cell,
// GtkCellRenderer.html
// GtkCellEditable *editable,
// GtkCellRenderer.html
// char *path);
// GtkCellRenderer.html
// /+* Padding for future expansion +/
// GtkCellRenderer.html
// void (*_GtkReserved1) (void);
// GtkCellRenderer.html
// void (*_GtkReserved2) (void);
// GtkCellRenderer.html


/**
 * Main Gtk struct.
 */
public struct GtkCellEditable{}


public struct GtkCellEditableIface{}
// GTypeInterface gIface;
// GtkCellEditable.html
// /+* signals +/
// GtkCellEditable.html
// void (* editingDone) (GtkCellEditable *cellEditable);
// GtkCellEditable.html
// void (* removeWidget) (GtkCellEditable *cellEditable);
// GtkCellEditable.html
// /+* virtual table +/
// GtkCellEditable.html
// void (* startEditing) (GtkCellEditable *cellEditable,
// GtkCellEditable.html
// GdkEvent *event);
// GtkCellEditable.html


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
public struct GtkCellRendererText{}


/**
 * Main Gtk struct.
 */
public struct GtkCellRendererToggle{}


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
public struct GtkComboBoxEntry{}


/**
 * Main Gtk struct.
 * The GtkMenu struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkMenu{}


/**
 * Main Gtk struct.
 * The GtkMenuBar struct contains the following fields. (These fields should be considered read-only. They should never be set by an application.)
 */
public struct GtkMenuBar{}


/**
 * Main Gtk struct.
 */
public struct GtkMenuItem{}


/**
 * Main Gtk struct.
 * The GtkMenuShell struct contains the following fields.
 * (These fields should be considered read-only. They should never be set by
 * an application.)
 * GList *children;
 * The list of GtkMenuItem objects contained by this GtkMenuShell.
 */
public struct GtkMenuShell{}


/**
 * Main Gtk struct.
 */
public struct GtkImageMenuItem{}


/**
 * Main Gtk struct.
 * The structure contains only private data that must be accessed through
 * the interface functions.
 */
public struct GtkRadioMenuItem{}


/**
 * Main Gtk struct.
 * The GtkCheckMenuItem struct contains the following fields.
 * (These fields should be considered read-only. They should never be set by
 * an application.)
 * guint active;
 * TRUE if the check box is active.
 */
public struct GtkCheckMenuItem{}


/**
 * Main Gtk struct.
 * The GtkSeparatorMenuItem struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkSeparatorMenuItem{}


/**
 * Main Gtk struct.
 * The GtkTearoffMenuItem struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkTearoffMenuItem{}


/**
 * Main Gtk struct.
 * The GtkToolbar struct only contains private data and should only be
 * accessed through the function described below.
 */
public struct GtkToolbar{}
// int numChildren;
// GtkToolbar.html
// GList *children;
// GtkToolbar.html
// GtkOrientation orientation;
// GtkToolbar.html
// GtkToolbarStyle style;
// GtkToolbar.html
// GtkIconSize iconSize;
// GtkToolbar.html
// #ifndef GTK_DISABLE_DEPRECATED
// GtkToolbar.html
// GtkTooltips *tooltips;
// GtkToolbar.html
// #else
// GtkToolbar.html
// void* _Tooltips;
// GtkToolbar.html
// #endif
// GtkToolbar.html


/**
 * Warning
 * GtkToolbarChild is deprecated and should not be used in newly-written code.
 */
public struct GtkToolbarChild{}
// GtkToolbarChildType type;
// GtkToolbar.html
// GtkWidget *widget;
// GtkToolbar.html
// GtkWidget *icon;
// GtkToolbar.html
// GtkWidget *label;
// GtkToolbar.html


/**
 * Main Gtk struct.
 * The GtkToolItem struct contains only private data. It should only be
 * accessed through the functions described below.
 */
public struct GtkToolItem{}


/**
 * Main Gtk struct.
 * The GtkSeparatorToolItem struct contains only private data and
 * should only be accessed through the functions described below.
 */
public struct GtkSeparatorToolItem{}


/**
 * Main Gtk struct.
 * The GtkToolButton struct contains only private. It should only be
 * accessed with the function described below.
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
 * The GtkUIManager struct contains only private
 * members and should not be accessed directly.
 */
public struct GtkUIManager{}


/**
 * Main Gtk struct.
 * The GtkActionGroup struct contains only private
 * members and should not be accessed directly.
 */
public struct GtkActionGroup{}


/**
 * GtkActionEntry structs are used with
 * gtk_action_group_add_actions() to construct actions.
 * constgchar*name;
 * The name of the action.
 * constgchar*stock_id;
 * The stock id for the action, or the name of an icon from the icon
 */
public struct GtkActionEntry{}
// char *name;
// GtkActionGroup.html
// char *stockId;
// GtkActionGroup.html
// char *label;
// GtkActionGroup.html
// char *accelerator;
// GtkActionGroup.html
// char *tooltip;
// GtkActionGroup.html
// GCallback callback;
// GtkActionGroup.html


/**
 * GtkToggleActionEntry structs are used with
 * gtk_action_group_add_toggle_actions() to construct toggle actions.
 * constgchar*name;
 * The name of the action.
 * constgchar*stock_id;
 * The stock id for the action, or the name of an icon from the icon
 */
public struct GtkToggleActionEntry{}
// char *name;
// GtkActionGroup.html
// char *stockId;
// GtkActionGroup.html
// char *label;
// GtkActionGroup.html
// char *accelerator;
// GtkActionGroup.html
// char *tooltip;
// GtkActionGroup.html
// GCallback callback;
// GtkActionGroup.html
// int isActive;
// GtkActionGroup.html


/**
 * GtkRadioActionEntry structs are used with
 * gtk_action_group_add_radio_actions() to construct groups of radio actions.
 * constgchar*name;
 * The name of the action.
 * constgchar*stock_id;
 * The stock id for the action, or the name of an icon from the icon
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
 * The GtkAction struct contains only private members
 * and should not be accessed directly.
 */
public struct GtkAction{}


/**
 * Main Gtk struct.
 * The GtkToggleAction struct contains only
 * private members and should not be accessed directly.
 */
public struct GtkToggleAction{}


/**
 * Main Gtk struct.
 * The GtkRadioAction struct contains
 * only private members and should not be accessed directly.
 */
public struct GtkRadioAction{}


/**
 * Main Gtk struct.
 * The GtkColorButton struct has only private fields and
 * should not be used directly.
 */
public struct GtkColorButton{}


/**
 * Main Gtk struct.
 * The GtkColorSelection struct contains private data only,
 * and should be accessed using the functions below.
 */
public struct GtkColorSelection{}


/**
 * Main Gtk struct.
 * The GtkColorSelectionDialog struct contains the following fields.
 * (These fields should be considered read-only. They should never be set by
 * an application.)
 * GtkWidget *colorsel;
 * The GtkColorSelection widget contained within the
 * dialog. Use this widget and its gtk_color_selection_get_current_color()
 * function to gain access to the selected color. Connect a handler
 * for this widget's color_changed signal to be notified when the
 * color changes.
 * GtkWidget *ok_button;
 * The OK button widget contained within the dialog.
 * Connect a handler for the clicked event.
 * GtkWidget *cancel_button;
 * The cancel button widget contained within the dialog.
 * Connect a handler for the clicked event.
 * GtkWidget *help_button;
 * The help button widget contained within the dialog.
 * Connect a handler for the clicked event.
 */
public struct GtkColorSelectionDialog{}


/**
 * Main Gtk struct.
 * Warning
 * GtkFileSelection is deprecated and should not be used in newly-written code.
 * The GtkFileSelection struct contains the following GtkWidget fields:
 * GtkWidget*dir_list;
 * GtkWidget*file_list;
 * GtkWidget*selection_entry;
 * GtkWidget*selection_text;
 * GtkWidget*main_vbox;
 * GtkWidget*ok_button;
 * GtkWidget*cancel_button;
 * the two main buttons that signals should be connected
 */
public struct GtkFileSelection{}
// GtkWidget *dirList;
// GtkFileSelection.html
// GtkWidget *fileList;
// GtkFileSelection.html
// GtkWidget *selectionEntry;
// GtkFileSelection.html
// GtkWidget *selectionText;
// GtkFileSelection.html
// GtkWidget *mainVbox;
// GtkFileSelection.html
// GtkWidget *okButton;
// GtkFileSelection.html
// GtkWidget *cancelButton;
// GtkFileSelection.html
// GtkWidget *helpButton;
// GtkFileSelection.html
// GtkWidget *historyPulldown;
// GtkFileSelection.html
// GtkWidget *historyMenu;
// GtkFileSelection.html
// GList *historyList;
// GtkFileSelection.html
// GtkWidget *fileopDialog;
// GtkFileSelection.html
// GtkWidget *fileopEntry;
// GtkFileSelection.html
// char *fileopFile;
// GtkFileSelection.html
// void* cmplState;
// GtkFileSelection.html
// GtkWidget *fileopCDir;
// GtkFileSelection.html
// GtkWidget *fileopDelFile;
// GtkFileSelection.html
// GtkWidget *fileopRenFile;
// GtkFileSelection.html
// GtkWidget *buttonArea;
// GtkFileSelection.html
// GtkWidget *actionArea;
// GtkFileSelection.html


/**
 * Main Gtk struct.
 */
public struct GtkFileChooser{}


/**
 * Main Gtk struct.
 * This should not be accessed directly. Use the accessor functions below.
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
 * The GtkFileFilter struct contains
 * only private fields and should not be directly accessed.
 */
public struct GtkFileFilter{}


/**
 * A GtkFileFilterInfo struct is used
 * to pass information about the tested file to
 * gtk_file_filter_filter().
 * GtkFileFilterFlagscontains;
 * Flags indicating which of the following fields need
 */
public struct GtkFileFilterInfo{}
// GtkFileFilterFlags contains;
// gtk-gtkfilefilter.html
// char *filename;
// gtk-gtkfilefilter.html
// char *uri;
// gtk-gtkfilefilter.html
// char *displayName;
// gtk-gtkfilefilter.html
// char *mimeType;
// gtk-gtkfilefilter.html


/**
 * Main Gtk struct.
 * The GtkFontButton struct has only private members and should not be used
 * directly.
 */
public struct GtkFontButton{}


/**
 * Main Gtk struct.
 * The GtkFontSelection struct contains private data only, and should
 * only be accessed using the functions below.
 */
public struct GtkFontSelection{}


/**
 * Main Gtk struct.
 * GtkWidget*ok_button;
 * The OK button of the dialog
 * GtkWidget*apply_button;
 * The Apply button of the dialog. This button is hidden
 * by default but you can show/hide it
 * GtkWidget*cancel_button;
 * The Cancel button of the dialog
 */
public struct GtkFontSelectionDialog{}
// GtkWidget *okButton;
// GtkFontSelectionDialog.html
// GtkWidget *applyButton;
// GtkFontSelectionDialog.html
// GtkWidget *cancelButton;
// GtkFontSelectionDialog.html


/**
 * Main Gtk struct.
 */
public struct GtkInputDialog{}


/**
 * Main Gtk struct.
 * The GtkAlignment struct contains private data only, and should
 * be accessed using the functions below.
 */
public struct GtkAlignment{}


/**
 * Main Gtk struct.
 */
public struct GtkAspectFrame{}


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
 * GtkHButtonBox does not contain any public fields.
 */
public struct GtkHButtonBox{}


/**
 * Main Gtk struct.
 * GtkVButtonBox does not contain any public fields.
 */
public struct GtkVButtonBox{}


/**
 * Main Gtk struct.
 * The GtkFixed struct contains the following fields.
 * (These fields should be considered read-only. They should never be set by
 * an application.)
 * GList *children;
 * a list of GtkFixedChild elements, containing the child widgets and
 * their positions.
 */
public struct GtkFixed{}


/**
 * The GtkFixedChild struct contains the following fields.
 * (These fields should be considered read-only. They should never be set by
 * an application.)
 * GtkWidget *widget;
 * the child GtkWidget.
 * gint x;
 * the horizontal position of the widget within the GtkFixed
 * container.
 * gint y;
 * the vertical position of the widget within the GtkFixed
 * container.
 */
public struct GtkFixedChild{}
// GtkWidget *widget;
// GtkFixed.html
// int x;
// GtkFixed.html
// int y;
// GtkFixed.html


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
// GdkWindow *binWindow;
// GtkLayout.html


/**
 * Main Gtk struct.
 */
public struct GtkNotebook{}


/**
 * The GtkNotebookPage is an opaque implementation detail of GtkNotebook.
 */
public struct GtkNotebookPage{}


/**
 * Main Gtk struct.
 * The GtkTable structure holds the data for the actual table itself.
 * children is a GList of all the widgets the table contains. rows and columns are pointers to GtkTableRowCol structures, which contain the default spacing and expansion details for the GtkTable's rows and columns, respectively.
 * nrows and ncols are 16bit integers storing the number of rows and columns the table has.
 */
public struct GtkTable{}


/**
 * The widget field is a pointer to the widget that
 * this GtkTableChild structure is keeping track of.
 * The left_attach,
 * right_attach,
 * top_attach, and
 * bottom_attach fields specify the row and column
 * numbers which make up the invisible rectangle that the child widget is packed into.
 * xpadding and ypadding
 * specify the space between this widget and the surrounding table cells.
 */
public struct GtkTableChild{}
// GtkWidget *widget;
// GtkTable.html
// ushort leftAttach;
// GtkTable.html
// ushort rightAttach;
// GtkTable.html
// ushort topAttach;
// GtkTable.html
// ushort bottomAttach;
// GtkTable.html
// ushort xpadding;
// GtkTable.html
// ushort ypadding;
// GtkTable.html
// uint xexpand : 1;
// GtkTable.html
// uint yexpand : 1;
// GtkTable.html
// uint xshrink : 1;
// GtkTable.html
// uint yshrink : 1;
// GtkTable.html
// uint xfill : 1;
// GtkTable.html
// uint yfill : 1;
// GtkTable.html


/**
 * These fields should be considered read-only and not be modified directly.
 */
public struct GtkTableRowCol
{
	ushort requisition;
	ushort allocation;
	ushort spacing;
	uint bitfield;
	//uint needExpand : 1;
}


/**
 * Main Gtk struct.
 */
public struct GtkExpander{}


/**
 * Main Gtk struct.
 */
public struct GtkFrame{}


/**
 * Main Gtk struct.
 * The GtkHSeparator struct contains private data only, and
 * should be accessed using the functions below.
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
 * The GtkHScrollbar struct contains private data and should be accessed
 * using the functions below.
 */
public struct GtkHScrollbar{}


/**
 * Main Gtk struct.
 */
public struct GtkVScrollbar{}


/**
 * Main Gtk struct.
 * There are no public fields in the GtkScrolledWindow struct; it should
 * only be accessed using the functions below.
 */
public struct GtkScrolledWindow{}
// GtkWidget *hscrollbar;
// GtkScrolledWindow.html
// GtkWidget *vscrollbar;
// GtkScrolledWindow.html


/**
 * Main Gtk struct.
 * The GtkAdjustment struct contains the following fields.
 * gdouble lower;
 * the minimum value.
 * gdouble upper;
 * the maximum value.
 * gdouble value;
 * the current value.
 * gdouble step_increment;
 * the increment to use to make minor changes to the value.
 * In a GtkScrollbar this increment is used when the mouse is clicked on the
 * arrows at the top and bottom of the scrollbar, to scroll by a small amount.
 * gdouble page_increment;
 * the increment to use to make major changes to the value.
 * In a GtkScrollbar this increment is used when the mouse is clicked in the
 * trough, to scroll by a large amount.
 * gdouble page_size;
 * the page size.
 * In a GtkScrollbar this is the size of the area which is currently visible.
 */
public struct GtkAdjustment{}


/**
 * Main Gtk struct.
 * The GtkArrow struct containes the following fields.
 * (These fields should be considered read-only. They should never be set by
 * an application.)
 */
public struct GtkArrow{}


/**
 * Main Gtk struct.
 * num_marked_dates is an integer containing the
 * number of days that have a mark over them.
 * marked_date is an array containing the day numbers
 * that currently have a mark over them.
 * month, year, and
 * selected_day contain the currently visible month,
 * year, and selected day respectively.
 * All of these fields should be considered read only, and everything in this
 * struct should only be modified using the functions provided below.
 * Note
 * Note that month is zero-based (i.e it allowed values
 * are 0-11) while selected_day is one-based
 * (i.e. allowed values are 1-31).
 */
public struct GtkCalendar{}


/**
 * Main Gtk struct.
 * The GtkDrawingArea struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkDrawingArea{}


/**
 * Main Gtk struct.
 * The GtkEventBox struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkEventBox{}


/**
 * Main Gtk struct.
 * The GtkHandleBox struct contains the following fields.
 * (These fields should be considered read-only. They should never be set by
 * an application.)
 * GtkShadowType shadow_type;
 * The shadow type for the entry. (See gtk_handle_box_set_shadow_type()).
 * GtkPositionType handle_position;
 * The position of the handlebox's handle with respect
 * to the child. (See gtk_handle_box_set_handle_position())
 * gint snap_edge;
 * A value of type GtkPosition type indicating snap edge for the widget.
 * (See gtk_handle_box_set_snap_edge). The value of -1 indicates
 * that this value has not been set.
 * gboolean child_detached;
 * A boolean value indicating whether the handlebox's
 * child is attached or detached.
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
 * Warning
 * GtkTooltips is deprecated and should not be used in newly-written code.
 * Holds information about a group of tooltips. Fields should be changed using the functions provided, rather than directly accessing the struct's members.
 */
public struct GtkTooltips{}


/**
 * Warning
 * GtkTooltipsData has been deprecated since version 2.12 and should not be used in newly-written code.
 * tooltips is the GtkTooltips group that this tooltip belongs to. widget is the GtkWidget that this tooltip data is associated with. tip_text is a string containing the tooltip message itself.
 * tip_private is a string that is not shown as the default tooltip. Instead, this message may be more informative and go towards forming a context-sensitive help system for your application. (FIXME: how to actually "switch on" private tips?)
 */
public struct GtkTooltipsData{}
// GtkTooltips *tooltips;
// GtkTooltips.html
// GtkWidget *widget;
// GtkTooltips.html
// char *tipText;
// GtkTooltips.html
// char *tipPrivate;
// GtkTooltips.html


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
 * The GtkBin struct contains the following fields.
 * (These fields should be considered read-only. They should never be set by
 * an application.)
 * GtkWidget *child;
 * the child widget.
 */
public struct GtkBin{}


/**
 * Main Gtk struct.
 * The GtkBox describes an instance of GtkBox and contains the
 * following fields. (These fields should be considered read-only.
 * They should never be set by an application.)
 * GList*children;
 * a list of children belonging the GtkBox.
 */
public struct GtkBox{}
// GList *children;
// GtkBox.html
// short spacing;
// GtkBox.html
// uint homogeneous : 1;
// GtkBox.html


/**
 * The GtkBoxChild holds a child widget of GtkBox and describes
 * how the child is to be packed into the GtkBox. Use
 * gtk_box_query_child_packing() and gtk_box_set_child_packing() to query
 * and reset the padding,
 * expand, fill,
 * and pack fields.
 * GtkBoxChild contains the following fields. (These fields
 * should be considered read-only. They should never be directly set by an
 * application.)
 * GtkWidget*widget;
 * the child widget, packed into the GtkBox.
 * guint16padding;
 * the number of extra pixels to put between this child and its
 */
public struct GtkBoxChild{}
// GtkWidget *widget;
// GtkBox.html
// ushort padding;
// GtkBox.html
// uint expand : 1;
// GtkBox.html
// uint fill : 1;
// GtkBox.html
// uint pack : 1;
// GtkBox.html
// uint isSecondary : 1;
// GtkBox.html


/**
 * Main Gtk struct.
 * This is a read-only struct; no members should be modified directly.
 */
public struct GtkButtonBox{}


/**
 * Main Gtk struct.
 */
public struct GtkContainer{}


/**
 * Main Gtk struct.
 * The GtkItem struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkItem{}


/**
 * Main Gtk struct.
 * The GtkMisc struct contains the following fields.
 * (These fields should be considered read-only. They should never be set by
 * an application.)
 * gfloat xalign;
 * the horizontal alignment, from 0 (left) to 1 (right).
 * gfloat yalign;
 * the vertical alignment, from 0 (top) to 1 (bottom).
 * guint16 xpad;
 * the amount of space to add on the left and right of the widget,
 * in pixels.
 * guint16 ypad;
 * the amount of space to add on the top and bottom of the widget,
 * in pixels.
 */
public struct GtkMisc{}


/**
 * Main Gtk struct.
 * The object itself. You should never use these members directly -
 */
public struct GtkObject{}


/**
 * Main Gtk struct.
 */
public struct GtkPaned{}


/**
 * Main Gtk struct.
 */
public struct GtkRange{}


/**
 * Main Gtk struct.
 * The GtkScale struct contains the following fields.
 * (These fields should be considered read-only. They should never be set by
 * an application.)
 * guint draw_value;
 * non-zero if the scale's current value is displayed next to the
 * slider.
 * guint value_pos;
 * the position in which the textual value is displayed, selected from
 * GtkPositionType.
 */
public struct GtkScale{}


/**
 * Main Gtk struct.
 * The GtkScrollbar struct does not contain any public data.
 * Style Property Details
 * The "fixed-slider-length" style property
 */
public struct GtkScrollbar{}


/**
 * Main Gtk struct.
 * The GtkSeparator struct contains private data only.
 */
public struct GtkSeparator{}


/**
 * Main Gtk struct.
 * GtkStyle*style;
 * The style for the widget. The style contains the colors the widget should be
 */
public struct GtkWidget{}
// /+* The style for the widget. The style contains the
// GtkWidget.html
// * colors the widget should be drawn inn for each state
// GtkWidget.html
// * along with graphics contexts used to draw with and
// GtkWidget.html
// * the font to use for text.
// GtkWidget.html
// +/
// GtkWidget.html
// GtkStyle *style;
// GtkWidget.html
// /+* The widget's desired size.
// GtkWidget.html
// +/
// GtkWidget.html
// GtkRequisition requisition;
// GtkWidget.html
// /+* The widget's allocated size.
// GtkWidget.html
// +/
// GtkWidget.html
// GtkAllocation allocation;
// GtkWidget.html
// /+* The widget's window or its parent window if it does
// GtkWidget.html
// * not have a window. (Which will be indicated by the
// GtkWidget.html
// * GTK_NO_WINDOW flag being set).
// GtkWidget.html
// +/
// GtkWidget.html
// GdkWindow *window;
// GtkWidget.html
// /+* The widget's parent.
// GtkWidget.html
// +/
// GtkWidget.html
// GtkWidget *parent;
// GtkWidget.html


/**
 * activate_signal
 * The signal to emit when a widget of this class is activated,
 * gtk_widget_activate() handles the emission. Implementation of this
 * signal is optional.
 * set_scroll_adjustment_signal
 * This signal is emitted when a widget of this class is added
 * to a scrolling aware parent, gtk_widget_set_scroll_adjustments()
 * handles the emission.
 * Implementation of this signal is optional.
 */
public struct GtkWidgetClass{}
// /+* The object class structure needs to be the first
// GtkWidget.html
// * element inn the widget class structure inn order for
// GtkWidget.html
// * the class mechanism to work correctly. This allows a
// GtkWidget.html
// * GtkWidgetClass pointer to be cast to a GtkObjectClass
// GtkWidget.html
// * pointer.
// GtkWidget.html
// +/
// GtkWidget.html
// GtkObjectClass parentClass;
// GtkWidget.html
// uint activateSignal;
// GtkWidget.html
// uint setScrollAdjustmentsSignal;
// GtkWidget.html


/**
 * A GtkRequisition represents the desired size of a widget. See
 * the section called Size Requisition for more information.
 * gintwidth;
 * the widget's desired width
 * gintheight;
 * the widget's desired height
 */
public struct GtkRequisition
{
	int width;
	int height;
}


/**
 * A GtkAllocation of a widget represents region which has been allocated to the
 * widget by its parent. It is a subregion of its parents allocation. See
 * the section called Size Allocation for more information.
 * gintx;
 * the X position of the widget's area relative to its parents allocation.
 * ginty;
 * the Y position of the widget's area relative to its parents allocation.
 * gintwidth;
 * the width of the widget's allocated area.
 * gintheight;
 * the height of the widget's allocated area.
 */
public struct GtkAllocation
{
	int x;
	int y;
	int width;
	int height;
}


public struct GtkSelectionData{}
// GdkAtom selection;
// GtkWidget.html
// GdkAtom target;
// GtkWidget.html
// GdkAtom type;
// GtkWidget.html
// int format;
// GtkWidget.html
// char *data;
// GtkWidget.html
// int length;
// GtkWidget.html
// GdkDisplay *display;
// GtkWidget.html


public struct GtkWidgetAuxInfo
{
	int x;
	int y;
	int width;
	int height;
	uint bitfield;
	//uint xSet : 1;
}


public struct GtkWidgetShapeInfo{}
// short offsetX;
// GtkWidget.html
// short offsetY;
// GtkWidget.html
// GdkBitmap *shapeMask;
// GtkWidget.html


/**
 * Main Gtk struct.
 */
public struct GtkIMContext{}


/**
 * Main Gtk struct.
 */
public struct GtkPlug{}


/**
 * Main Gtk struct.
 * The GtkSocket structure contains the plug_window
 * field. (This field should be considered read-only. It should
 * never be set by an application.)
 */
public struct GtkSocket{}


/**
 * Main Gtk struct.
 * The GtkCurve struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkCurve{}


/**
 * Main Gtk struct.
 * The GtkGammaCurve struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkGammaCurve{}


/**
 * Main Gtk struct.
 * All distances are in 1/72nd's of an inch. (According to Adobe thats a point, but
 * points are really 1/72.27 in.)
 */
public struct GtkRuler{}


/**
 * This should be points_per_unit. This is the size of the unit in 1/72nd's of an inch and has nothing to do with screen pixels.
 */
public struct GtkRulerMetric{}
// char *metricName;
// GtkRuler.html
// char *abbrev;
// GtkRuler.html
// /+* This should be pointsPerUnit. This is the size of the unit
// GtkRuler.html
// * inn 1/72nd's of an inch and has nothing to do with screen pixels +/
// GtkRuler.html
// double pixelsPerUnit;
// GtkRuler.html
// double rulerScale[10];
// GtkRuler.html
// int subdivide[5]; /+* five possible modes of subdivision +/
// GtkRuler.html


/**
 * Main Gtk struct.
 * The GtkHRuler struct contains private data and should be accessed
 * with the functions below.
 */
public struct GtkHRuler{}


/**
 * Main Gtk struct.
 * The GtkVRuler struct contains private data and should be accessed
 * using the functions below.
 */
public struct GtkVRuler{}


/**
 * Main Gtk struct.
 * Warning
 * GtkItemFactory is deprecated and should not be used in newly-written code.
 */
public struct GtkItemFactory{}


/**
 * Warning
 * GtkItemFactoryEntry is deprecated and should not be used in newly-written code.
 */
public struct GtkItemFactoryEntry{}
// char *path;
// GtkItemFactory.html
// char *accelerator;
// GtkItemFactory.html
// GtkItemFactoryCallback callback;
// GtkItemFactory.html
// uint callbackAction;
// GtkItemFactory.html
// /+* possible values:
// GtkItemFactory.html
// * NULL -> "<Item>"
// GtkItemFactory.html
// * "" -> "<Item>"
// GtkItemFactory.html
// * "<Title>" -> create a title item
// GtkItemFactory.html
// * "<Item>" -> create a simple item
// GtkItemFactory.html
// * "<ImageItem>" -> create an item holding an image
// GtkItemFactory.html
// * "<StockItem>" -> create an item holding a stock image
// GtkItemFactory.html
// * "<CheckItem>" -> create a check item
// GtkItemFactory.html
// * "<ToggleItem>" -> create a toggle item
// GtkItemFactory.html
// * "<RadioItem>" -> create a radio item
// GtkItemFactory.html
// * <path> -> path of a radio item to link against
// GtkItemFactory.html
// * "<Separator>" -> create a separator
// GtkItemFactory.html
// * "<Tearoff>" -> create a tearoff separator
// GtkItemFactory.html
// * "<Branch>" -> create an item to hold sub items
// GtkItemFactory.html
// * "<LastBranch>" -> create a right justified item to hold sub items
// GtkItemFactory.html
// +/
// GtkItemFactory.html
// char *itemType;
// GtkItemFactory.html
// /+* Extra data for some item types:
// GtkItemFactory.html
// * ImageItem -> pointer to inlined pixbuf stream
// GtkItemFactory.html
// * StockItem -> name of stock item
// GtkItemFactory.html
// +/
// GtkItemFactory.html
// void* extraData;
// GtkItemFactory.html


/**
 * Warning
 * GtkItemFactoryItem is deprecated and should not be used in newly-written code.
 */
public struct GtkItemFactoryItem{}
// char *path;
// GtkItemFactory.html
// GSList *widgets;
// GtkItemFactory.html


/**
 * Main Gtk struct.
 * The GtkProgress struct contains private data only.
 * and should be accessed using the functions below.
 */
public struct GtkProgress{}


/*
 * Returns whether the style is attached to a window.
 * style:
 * a GtkStyle.
 */
// TODO
// #define GTK_STYLE_ATTACHED(style)	(GTK_STYLE (style)->attach_count > 0)

/*
 * Warning
 * gtk_style_apply_default_pixmap is deprecated and should not be used in newly-written code.
 * Deprecated alias for gtk_style_apply_default_background().
 * s:
 * gw:
 * st:
 * a:
 * x:
 * y:
 * w:
 * h:
 */
// TODO
// #define gtk_style_apply_default_pixmap(s,gw,st,a,x,y,w,h) gtk_style_apply_default_background (s,gw,1,st,a,x,y,w,h)

/*
 * Returns TRUE if the version of the GTK+ header files is the same
 * as or newer than the passed-in version.
 * major:
 * major version (e.g. 1 for version 1.2.5)
 * minor:
 * minor version (e.g. 2 for version 1.2.5)
 * micro:
 * micro version (e.g. 5 for version 1.2.5)
 */
// TODO
// #define GTK_CHECK_VERSION(major,minor,micro)

/*
 * Warning
 * gtk_signal_lookup is deprecated and should not be used in newly-written code. Use g_signal_lookup() instead.
 * Given the name of the signal and the type of object it connects
 * to, get the signal's identifying integer. Emitting the signal
 * by number is somewhat faster than using the name each time.
 * It also tries the ancestors of the given type.
 * name:
 * the signal's name, e.g. clicked.
 * object_type:
 * the type that the signal operates on, e.g. GTK_TYPE_BUTTON.
 * Returns:
 * the signal's identifying number, or 0 if no signal was found.
 */
// TODO
// #define gtk_signal_lookup(name,object_type)

/*
 * Warning
 * gtk_signal_name is deprecated and should not be used in newly-written code. Use g_signal_name() instead.
 * Given the signal's identifier, finds its name.
 * Two different signals may have the same name, if they have differing types.
 * signal_id:
 * the signal's identifying number.
 * Returns:
 * the signal name, or NULL if the signal number was invalid.
 */
// TODO
// #define gtk_signal_name(signal_id)

/*
 * Warning
 * gtk_signal_emit_stop is deprecated and should not be used in newly-written code. Use g_signal_stop_emission() instead.
 * This function aborts a signal's current emission.
 * It will prevent the default method from running,
 * if the signal was GTK_RUN_LAST and you connected
 * normally (i.e. without the "after" flag).
 * It will print a warning if used on a signal which
 * isn't being emitted.
 * object:
 * the object whose signal handlers you wish to stop.
 * signal_id:
 * the signal identifier, as returned by g_signal_lookup().
 */
// TODO
// #define gtk_signal_emit_stop(object,signal_id)

/*
 * Warning
 * gtk_signal_connect is deprecated and should not be used in newly-written code. Use g_signal_connect() instead.
 * Attaches a function pointer and user data to a signal for
 * a particular object.
 * The GtkSignalFunction takes a GtkObject as its first parameter.
 * It will be the same object as the one you're connecting
 * the hook to. The func_data will be passed as the last parameter
 * to the hook.
 * All else being equal, signal handlers are invoked in the order
 * connected (see gtk_signal_emit() for the other details of
 * which order things are called in).
 * Here is how one passes an integer as user data,
 * for when you just want to specify a constant int
 * as parameter to your function:
 * static void button_clicked_int (GtkButton* button, gpointer func_data)
 * {
	 * 	g_print ("button pressed: %d\n", GPOINTER_TO_INT (func_data));
 * }
 * /+* By calling this function, you will make the g_print above
 *  * execute, printing the number passed as `to_print'. +/
 * static void attach_print_signal (GtkButton* button, gint to_print)
 * {
	 * 	gtk_signal_connect (GTK_OBJECT (button), "clicked",
	 * 		GTK_SIGNAL_FUNC (button_clicked_int),
	 * 		GINT_TO_POINTER (to_print));
 * }
 * object:
 * the object associated with the signal, e.g. if a button
 * is getting pressed, this is that button.
 * name:
 * name of the signal.
 * func:
 * function pointer to attach to the signal.
 * func_data:
 * value to pass as to your function (through the marshaller).
 * Returns:
 * the connection id.
 */
// TODO
// #define gtk_signal_connect(object,name,func,func_data)

/*
 * Warning
 * gtk_signal_connect_after is deprecated and should not be used in newly-written code. Use g_signal_connect_after() instead.
 * Attaches a function pointer and user data to a signal
 * so that this handler will be called after the other handlers.
 * object:
 * the object associated with the signal.
 * name:
 * name of the signal.
 * func:
 * function pointer to attach to the signal.
 * func_data:
 * value to pass as to your function (through the marshaller).
 * Returns:
 * the unique identifier for this attachment: the connection id.
 */
// TODO
// #define gtk_signal_connect_after(object,name,func,func_data)

/*
 * Warning
 * gtk_signal_connect_object is deprecated and should not be used in newly-written code. Use g_signal_connect_swapped() instead.
 * This function is for registering a callback that will
 * call another object's callback. That is,
 * instead of passing the object which is responsible
 * for the event as the first parameter of the callback,
 * it is switched with the user data (so the object which emits
 * the signal will be the last parameter, which is where the
 * user data usually is).
 * This is useful for passing a standard function in as a callback.
 * For example, if you wanted a button's press to gtk_widget_show()
 * some widget, you could write:
 * gtk_signal_connect_object (button, "clicked", gtk_widget_show, window);
 * object:
 * the object which emits the signal.
 * name:
 * the name of the signal.
 * func:
 * the function to callback.
 * slot_object:
 * the object to pass as the first parameter to func.
 * (Though it pretends to take an object, you can
 * really pass any gpointer as the slot_object .)
 * Returns:
 * the connection id.
 */
// TODO
// #define gtk_signal_connect_object(object,name,func,slot_object)

/*
 * Warning
 * gtk_signal_connect_object_after is deprecated and should not be used in newly-written code. Use g_signal_connect_data() instead, passing
 * G_CONNECT_AFTER|G_CONNECT_SWAPPED as connect_flags.
 * Attaches a signal hook to a signal, passing in an alternate
 * object as the first parameter, and guaranteeing
 * that the default handler and all normal
 * handlers are called first.
 * object:
 * the object associated with the signal.
 * name:
 * name of the signal.
 * func:
 * function pointer to attach to the signal.
 * slot_object:
 * the object to pass as the first parameter to func.
 * Returns:
 * the connection id.
 */
// TODO
// #define gtk_signal_connect_object_after(object,name,func,slot_object)

/*
 * Warning
 * gtk_signal_disconnect is deprecated and should not be used in newly-written code. Use g_signal_handler_disconnect() instead.
 * Destroys a user-defined handler connection.
 * object:
 * the object which the handler pertains to.
 * handler_id:
 * the connection id.
 */
// TODO
// #define gtk_signal_disconnect(object,handler_id)

/*
 * Warning
 * gtk_signal_disconnect_by_func is deprecated and should not be used in newly-written code. Use g_signal_handlers_disconnect_by_func() instead.
 * Destroys all connections for a particular object, with
 * the given function-pointer and user-data.
 * object:
 * the object which emits the signal.
 * func:
 * the function pointer to search for.
 * data:
 * the user data to search for.
 */
// TODO
// #define gtk_signal_disconnect_by_func(object,func,data)

/*
 * Warning
 * gtk_signal_disconnect_by_data is deprecated and should not be used in newly-written code. Use g_signal_handlers_disconnect_matched() instead.
 * Destroys all connections for a particular object, with
 * the given user-data.
 * object:
 * the object which emits the signal.
 * data:
 * the user data to search for.
 */
// TODO
// #define gtk_signal_disconnect_by_data(object,data)

/*
 * Warning
 * gtk_signal_handler_block is deprecated and should not be used in newly-written code. Use g_signal_handler_block() instead.
 * Prevents a user-defined handler from being invoked. All other
 * signal processing will go on as normal, but this particular
 * handler will ignore it.
 * object:
 * the object which emits the signal to block.
 * handler_id:
 * the connection id.
 */
// TODO
// #define gtk_signal_handler_block(object,handler_id)

/*
 * Warning
 * gtk_signal_handler_block_by_func is deprecated and should not be used in newly-written code. Use g_signal_handlers_block_by_func() instead.
 * Prevents a user-defined handler from being invoked, by reference to
 * the user-defined handler's function pointer and user data. (It may result in
 * multiple hooks being blocked, if you've called connect multiple times.)
 * object:
 * the object which emits the signal to block.
 * func:
 * the function pointer of the handler to block.
 * data:
 * the user data of the handler to block.
 */
// TODO
// #define gtk_signal_handler_block_by_func(object,func,data)

/*
 * Warning
 * gtk_signal_handler_block_by_data is deprecated and should not be used in newly-written code. Use g_signal_handlers_block_matched() instead.
 * Prevents all user-defined handlers with a certain user data from being invoked.
 * object:
 * the object which emits the signal we want to block.
 * data:
 * the user data of the handlers to block.
 */
// TODO
// #define gtk_signal_handler_block_by_data(object,data)

/*
 * Warning
 * gtk_signal_handler_unblock is deprecated and should not be used in newly-written code. Use g_signal_handler_unblock() instead.
 * Undoes a block, by connection id. Note that undoing a block doesn't
 * necessarily make the hook callable, because if you block a
 * hook twice, you must unblock it twice.
 * object:
 * the object which emits the signal we want to unblock.
 * handler_id:
 * the emission handler identifier, as returned by
 * gtk_signal_connect(), etc.
 */
// TODO
// #define gtk_signal_handler_unblock(object,handler_id)

/*
 * Warning
 * gtk_signal_handler_unblock_by_func is deprecated and should not be used in newly-written code. Use g_signal_handlers_unblock_by_func() instead.
 * Undoes a block, by function pointer and data.
 * Note that undoing a block doesn't
 * necessarily make the hook callable, because if you block a
 * hook twice, you must unblock it twice.
 * object:
 * the object which emits the signal we want to unblock.
 * func:
 * the function pointer to search for.
 * data:
 * the user data to search for.
 */
// TODO
// #define gtk_signal_handler_unblock_by_func(object,func,data)

/*
 * Warning
 * gtk_signal_handler_unblock_by_data is deprecated and should not be used in newly-written code. Use g_signal_handlers_unblock_matched() instead.
 * Undoes block(s), to all signals for a particular object
 * with a particular user-data pointer
 * object:
 * the object which emits the signal we want to unblock.
 * data:
 * the user data to search for.
 */
// TODO
// #define gtk_signal_handler_unblock_by_data(object,data)

/*
 * Warning
 * gtk_signal_handler_pending is deprecated and should not be used in newly-written code. Use g_signal_has_handler_pending() instead.
 * Returns a connection id corresponding to a given signal id and object.
 * One example of when you might use this is when the arguments
 * to the signal are difficult to compute. A class implementor
 * may opt to not emit the signal if no one is attached anyway,
 * thus saving the cost of building the arguments.
 * object:
 * the object to search for the desired user-defined handler.
 * signal_id:
 * the number of the signal to search for.
 * may_be_blocked:
 * whether it is acceptable to return a blocked
 * handler.
 * Returns:
 * the connection id, if a connection was found. 0 otherwise.
 */
// TODO
// #define gtk_signal_handler_pending(object,signal_id,may_be_blocked)

/*
 * Warning
 * gtk_signal_handler_pending_by_func is deprecated and should not be used in newly-written code.
 * Returns a connection id corresponding to a given signal id, object, function
 * pointer and user data.
 * object:
 * the object to search for the desired handler.
 * signal_id:
 * the number of the signal to search for.
 * may_be_blocked:
 * whether it is acceptable to return a blocked
 * handler.
 * func:
 * the function pointer to search for.
 * data:
 * the user data to search for.
 * Returns:
 * the connection id, if a handler was found. 0 otherwise.
 */
// TODO
// #define gtk_signal_handler_pending_by_func(object,signal_id,may_be_blocked,func,data)

/*
 * Warning
 * GTK_CLASS_NAME is deprecated and should not be used in newly-written code. Use g_type_name() and G_TYPE_FROM_CLASS() instead.
 * Returns the type name of class.
 * class:
 * a GtkTypeClass.
 */
// TODO
// #define GTK_CLASS_NAME(class)		(g_type_name (G_TYPE_FROM_CLASS (class)))

/*
 * Warning
 * GTK_CLASS_TYPE is deprecated and should not be used in newly-written code. Use G_TYPE_FROM_CLASS() instead.
 * Returns the type of class.
 * class:
 * a GtkTypeClass.
 */
// TODO
// #define GTK_CLASS_TYPE(class)		(G_TYPE_FROM_CLASS (class))

/*
 * Warning
 * GTK_TYPE_IS_OBJECT is deprecated and should not be used in newly-written code. Use G_TYPE_IS_OBJECT() instead.
 * Returns TRUE if type is a GTK_TYPE_OBJECT.
 * type:
 * a GtkType.
 */
// TODO
// #define GTK_TYPE_IS_OBJECT(type)	(g_type_is_a ((type), GTK_TYPE_OBJECT))

/*
 * Just a macroized cast into a GtkSignalFunc.
 * f:
 */
// TODO
// #define GTK_SIGNAL_FUNC(f)	 ((GtkSignalFunc) (f))

/*
 * Warning
 * GTK_VALUE_CHAR is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_CHAR.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_CHAR(a)	((a).d.char_data)

/*
 * Warning
 * GTK_VALUE_UCHAR is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_UCHAR.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_UCHAR(a)	((a).d.uchar_data)

/*
 * Warning
 * GTK_VALUE_BOOL is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_BOOL.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_BOOL(a)	((a).d.bool_data)

/*
 * Warning
 * GTK_VALUE_INT is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_INT.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_INT(a)	((a).d.int_data)

/*
 * Warning
 * GTK_VALUE_UINT is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_UINT.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_UINT(a)	((a).d.uint_data)

/*
 * Warning
 * GTK_VALUE_LONG is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_LONG.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_LONG(a)	((a).d.long_data)

/*
 * Warning
 * GTK_VALUE_ULONG is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_ULONG.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_ULONG(a)	((a).d.ulong_data)

/*
 * Warning
 * GTK_VALUE_FLOAT is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_FLOAT.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_FLOAT(a)	((a).d.float_data)

/*
 * Warning
 * GTK_VALUE_DOUBLE is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_DOUBLE.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_DOUBLE(a)	((a).d.double_data)

/*
 * Warning
 * GTK_VALUE_STRING is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_STRING.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_STRING(a)	((a).d.string_data)

/*
 * Warning
 * GTK_VALUE_ENUM is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_ENUM.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_ENUM(a)	((a).d.int_data)

/*
 * Warning
 * GTK_VALUE_FLAGS is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_FLAGS.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_FLAGS(a)	((a).d.uint_data)

/*
 * Warning
 * GTK_VALUE_BOXED is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_BOXED.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_BOXED(a)	((a).d.pointer_data)

/*
 * Warning
 * GTK_VALUE_POINTER is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_POINTER.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_POINTER(a)	((a).d.pointer_data)

/*
 * Warning
 * GTK_VALUE_OBJECT is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_OBJECT.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_OBJECT(a)	((a).d.object_data)

/*
 * Warning
 * GTK_VALUE_SIGNAL is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_SIGNAL.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_SIGNAL(a)	((a).d.signal_data)

/*
 * Warning
 * GTK_RETLOC_CHAR is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_CHAR.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_CHAR(a)	((gchar*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_UCHAR is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_UCHAR.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_UCHAR(a)	((guchar*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_BOOL is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_BOOL.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_BOOL(a)	((gboolean*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_INT is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_INT.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_INT(a)	((gint*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_UINT is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_UINT.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_UINT(a)	((guint*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_LONG is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_LONG.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_LONG(a)	((glong*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_ULONG is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_ULONG.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_ULONG(a)	((gulong*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_FLOAT is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_FLOAT.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_FLOAT(a)	((gfloat*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_DOUBLE is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_DOUBLE.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_DOUBLE(a)	((gdouble*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_STRING is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_STRING.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_STRING(a)	((gchar**)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_ENUM is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_ENUM.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_ENUM(a)	((gint*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_FLAGS is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_FLAGS.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_FLAGS(a)	((guint*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_BOXED is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_BOXED.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_BOXED(a)	((gpointer*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_POINTER is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_POINTER.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_POINTER(a)	((gpointer*)	(a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_OBJECT is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_OBJECT.
 * a:
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_OBJECT(a)	((GtkObject**)	(a).d.pointer_data)

/*
 * Warning
 * gtk_type_name is deprecated and should not be used in newly-written code.
 * Returns a pointer to the name of a type, or NULL if it has none.
 * type:
 * a GtkType.
 * Returns:
 * a pointer to the name of a type, or NULL if it has none.
 */
// TODO
// #define	gtk_type_name(type)		 g_type_name (type)

/*
 * Warning
 * gtk_type_from_name is deprecated and should not be used in newly-written code.
 * Gets the internal representation of a type, given its name.
 * name:
 * the name of a GTK+ type
 * Returns:
 * a GtkType.
 */
// TODO
// #define	gtk_type_from_name(name)	 g_type_from_name (name)

/*
 * Warning
 * gtk_type_parent is deprecated and should not be used in newly-written code.
 * Returns the parent type of a GtkType.
 * type:
 * a GtkType.
 * Returns:
 * the GtkType of the parent.
 */
// TODO
// #define	gtk_type_parent(type)		 g_type_parent (type)

/*
 * Warning
 * gtk_type_is_a is deprecated and should not be used in newly-written code.
 * Looks in the type hierarchy to see if type has is_a_type among its
 * ancestors. Do so with a simple lookup, not a loop.
 * type:
 * a GtkType.
 * is_a_type:
 * another GtkType.
 * Returns:
 * TRUE if type is a is_a_type.
 */
// TODO
// #define	gtk_type_is_a(type, is_a_type)	 g_type_is_a ((type), (is_a_type))

/*
 * Warning
 * gtk_tree_model_get_iter_root is deprecated and should not be used in newly-written code.
 * A alternate name for gtk_tree_model_get_iter_first() provided for
 * compatibility reasons; this macro will be deprecated in future
 * versions of GTK+.
 * tree_model:
 *  A GtkTreeModel.
 * iter:
 * uninitialized GtkTreeIter.
 * Returns:
 *  TRUE, if iter was set.
 */
// TODO
// #define gtk_tree_model_get_iter_root(tree_model, iter) gtk_tree_model_get_iter_first(tree_model, iter)

/*
 * Warning
 * gtk_menu_append is deprecated and should not be used in newly-written code. Use gtk_menu_shell_append() instead.
 * Adds a new GtkMenuItem to the end of the menu's item list.
 * menu:
 * a GtkMenu.
 * child:
 * The GtkMenuItem to add.
 */
// TODO
// #define gtk_menu_append(menu,child)	gtk_menu_shell_append ((GtkMenuShell *)(menu),(child))

/*
 * Warning
 * gtk_menu_prepend is deprecated and should not be used in newly-written code. Use gtk_menu_shell_prepend() instead.
 * Adds a new GtkMenuItem to the beginning of the menu's item list.
 * menu:
 * a GtkMenu.
 * child:
 * The GtkMenuItem to add.
 */
// TODO
// #define gtk_menu_prepend(menu,child) gtk_menu_shell_prepend ((GtkMenuShell *)(menu),(child))

/*
 * Warning
 * gtk_menu_insert is deprecated and should not be used in newly-written code. Use gtk_menu_shell_insert() instead.
 * Adds a new GtkMenuItem to the menu's item list at the position
 * indicated by position.
 * menu:
 * a GtkMenu.
 * child:
 * The GtkMenuItem to add.
 * pos:
 * The position in the item list where child is added.
 *  Positions are numbered from 0 to n-1.
 */
// TODO
// #define gtk_menu_insert(menu,child,pos)	gtk_menu_shell_insert ((GtkMenuShell *)(menu),(child),(pos))

/*
 * Warning
 * gtk_menu_bar_append is deprecated and should not be used in newly-written code. Use gtk_menu_shell_append() instead.
 * Adds a new GtkMenuItem to the end of the GtkMenuBar
 * menu:
 * a GtkMenuBar
 * child:
 * the GtkMenuItem to add
 */
// TODO
// #define gtk_menu_bar_append(menu,child)	 gtk_menu_shell_append ((GtkMenuShell *)(menu),(child))

/*
 * Warning
 * gtk_menu_bar_prepend is deprecated and should not be used in newly-written code. Use gtk_menu_shell_prepend() instead.
 * Adds a new GtkMenuItem to the beginning of the GtkMenuBar
 * menu:
 * a GtkMenuBar
 * child:
 * the GtkMenuItem to add
 */
// TODO
// #define gtk_menu_bar_prepend(menu,child) gtk_menu_shell_prepend ((GtkMenuShell *)(menu),(child))

/*
 * Warning
 * gtk_menu_bar_insert is deprecated and should not be used in newly-written code. Use gtk_menu_shell_insert() instead.
 * Adds a new GtkMenuItem to the GtkMenuBar at the position defined by position
 * menu:
 * a GtkMenuBar
 * child:
 * the GtkMenuItem to add
 * pos:
 * the position in the item list where the child is added.
 */
// TODO
// #define gtk_menu_bar_insert(menu,child,pos) gtk_menu_shell_insert ((GtkMenuShell *)(menu),(child),(pos))

/*
 * Warning
 * gtk_menu_item_right_justify is deprecated and should not be used in newly-written code.
 * Sets the menu item to be right-justified. Only useful for menu bars.
 * menu_item:
 * the menu item
 */
// TODO
// #define gtk_menu_item_right_justify(menu_item) gtk_menu_item_set_right_justified ((menu_item), TRUE)

/*
 * Warning
 * gtk_button_box_get_spacing is deprecated and should not be used in newly-written code.
 * Retrieves how much space a button box is placing between each child button.
 * b:
 * a GtkButtonBox
 * Returns:
 * the current spacing applied to the buttons in widget.
 */
// TODO
// #define gtk_button_box_get_spacing(b) gtk_box_get_spacing (GTK_BOX (b))

/*
 * Warning
 * gtk_button_box_set_spacing is deprecated and should not be used in newly-written code.
 * Sets the amount of spacing between buttons in a given button box.
 * b:
 * a GtkButtonBox.
 * s:
 * the number of pixels of spacing.
 */
// TODO
// #define gtk_button_box_set_spacing(b,s) gtk_box_set_spacing (GTK_BOX (b), s)

/*
 * widget:
 */
// TODO
// #define GTK_IS_RESIZE_CONTAINER(widget) (GTK_IS_CONTAINER (widget)  ((GtkContainer*) (widget))->resize_mode != GTK_RESIZE_PARENT)

/*
 * This macro should be used to emit a standard warning about unexpected
 * properties in set_child_property() and get_child_property() implementations.
 * object:
 * the GObject on which set_child_property() or get_child_property()
 *  was called
 * property_id:
 * the numeric id of the property
 * pspec:
 * the GParamSpec of the property
 */
// TODO
// #define GTK_CONTAINER_WARN_INVALID_CHILD_PROPERTY_ID(object, property_id, pspec)

/*
 * Gets the type of an object.
 * object:
 * a GtkObject.
 */
// TODO
// #define GTK_OBJECT_TYPE(object)		 (G_TYPE_FROM_INSTANCE (object))

/*
 * Gets the name of an objects type.
 * object:
 * a GtkObject.
 */
// TODO
// #define GTK_OBJECT_TYPE_NAME(object)	 (g_type_name (GTK_OBJECT_TYPE (object)))

/*
 * Gets the GtkObjectFlags for an object without directly
 * accessing its members.
 * obj:
 * the object whose flags are returned.
 */
// TODO
// #define GTK_OBJECT_FLAGS(obj)		 (GTK_OBJECT (obj)->flags)

/*
 * Warning
 * GTK_OBJECT_FLOATING is deprecated and should not be used in newly-written code.
 * Evaluates to TRUE if the object still has its floating reference count.
 * See the overview documentation for GtkObject.
 * obj:
 * the object to examine.
 */
// TODO
// #define GTK_OBJECT_FLOATING(obj)	 (g_object_is_floating (obj))

/*
 * Warning
 * gtk_paned_gutter_size is deprecated and should not be used in newly-written code.
 * Old name for gtk_paned_set_gutter_size().
 * p:
 * a paned widget
 * s:
 * the width of the gutter in pixels
 */
// TODO
// #define	gtk_paned_gutter_size(p,s)		(void) 0

/*
 * Warning
 * gtk_paned_set_gutter_size is deprecated and should not be used in newly-written code.
 * In older versions of GTK+, this function used to set the width of the
 * gutter (the area between the two panes). It does nothing now.
 * p:
 * a paned widget
 * s:
 * the width of the gutter in pixels
 */
// TODO
// #define	gtk_paned_set_gutter_size(p,s)		(void) 0

/*
 * Gets the type of a widget.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_TYPE(wid)		 (GTK_OBJECT_TYPE (wid))

/*
 * Returns the current state of the widget, as a GtkStateType.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_STATE(wid)		 (GTK_WIDGET (wid)->state)

/*
 * Returns the saved state of the widget, as a GtkStateType.
 * The saved state will be restored when a widget gets sensitive
 * again, after it has been made insensitive with gtk_widget_set_state()
 * or gtk_widget_set_sensitive().
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_SAVED_STATE(wid)	 (GTK_WIDGET (wid)->saved_state)

/*
 * Returns the widget flags from wid.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_FLAGS(wid)		 (GTK_OBJECT_FLAGS (wid))

/*
 * Evaluates to TRUE if the widget is a toplevel widget.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_TOPLEVEL(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_TOPLEVEL) != 0)

/*
 * Evaluates to TRUE if the widget doesn't have an own GdkWindow.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_NO_WINDOW(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_NO_WINDOW) != 0)

/*
 * Evaluates to TRUE if the widget is realized.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_REALIZED(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_REALIZED) != 0)

/*
 * Evaluates to TRUE if the widget is mapped.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_MAPPED(wid)		 ((GTK_WIDGET_FLAGS (wid)  GTK_MAPPED) != 0)

/*
 * Evaluates to TRUE if the widget is visible.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_VISIBLE(wid)		 ((GTK_WIDGET_FLAGS (wid)  GTK_VISIBLE) != 0)

/*
 * Evaluates to TRUE if the widget is mapped and visible.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_DRAWABLE(wid)	 (GTK_WIDGET_VISIBLE (wid)  GTK_WIDGET_MAPPED (wid))

/*
 * Evaluates to TRUE if the GTK_SENSITIVE flag has be set on the widget.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_SENSITIVE(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_SENSITIVE) != 0)

/*
 * Evaluates to TRUE if the GTK_PARENT_SENSITIVE flag has be set on the widget.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_PARENT_SENSITIVE(wid) ((GTK_WIDGET_FLAGS (wid)  GTK_PARENT_SENSITIVE) != 0)

/*
 * Evaluates to TRUE if the widget is effectively sensitive.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_IS_SENSITIVE(wid)

/*
 * Evaluates to TRUE if the widget is able to handle focus grabs.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_CAN_FOCUS(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_CAN_FOCUS) != 0)

/*
 * Evaluates to TRUE if the widget has grabbed the focus and no other
 * widget has done so more recently.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_HAS_FOCUS(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_HAS_FOCUS) != 0)

/*
 * Evaluates to TRUE if the widget is allowed to receive the default action
 * via gtk_widget_grab_default().
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_CAN_DEFAULT(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_CAN_DEFAULT) != 0)

/*
 * Evaluates to TRUE if the widget when focused will receive the default action
 * even if there is a different widget set as default.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_RECEIVES_DEFAULT(wid) ((GTK_WIDGET_FLAGS (wid)  GTK_RECEIVES_DEFAULT) != 0)

/*
 * Evaluates to TRUE if the widget currently is receiving the default action.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_HAS_DEFAULT(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_HAS_DEFAULT) != 0)

/*
 * Evaluates to TRUE if the widget is in the grab_widgets stack, and will be
 * the preferred one for receiving events other than ones of cosmetic value.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_HAS_GRAB(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_HAS_GRAB) != 0)

/*
 * Evaluates to TRUE if the widget's style has been looked up through the rc
 * mechanism.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_RC_STYLE(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_RC_STYLE) != 0)

/*
 * Evaluates to TRUE if the widget is a composite child of its parent.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_COMPOSITE_CHILD(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_COMPOSITE_CHILD) != 0)

/*
 * Evaluates to TRUE if the GTK_APP_PAINTABLE flag has been set on the widget.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_APP_PAINTABLE(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_APP_PAINTABLE) != 0)

/*
 * Evaluates to TRUE if the GTK_DOUBLE_BUFFERED flag has been set on the widget.
 * wid:
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_DOUBLE_BUFFERED(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_DOUBLE_BUFFERED) != 0)

/*
 * Turns on certain widget flags.
 * wid:
 * a GtkWidget.
 * flag:
 * the flags to set.
 */
// TODO
// #define GTK_WIDGET_SET_FLAGS(wid,flag)	 G_STMT_START{ (GTK_WIDGET_FLAGS (wid) |= (flag)); }G_STMT_END

/*
 * Turns off certain widget flags.
 * wid:
 * a GtkWidget.
 * flag:
 * the flags to unset.
 */
// TODO
// #define GTK_WIDGET_UNSET_FLAGS(wid,flag) G_STMT_START{ (GTK_WIDGET_FLAGS (wid) = ~(flag)); }G_STMT_END

/*
 * Warning
 * gtk_widget_set_rc_style is deprecated and should not be used in newly-written code.
 * Equivalent to gtk_widget_set_style (widget, NULL).
 * widget:
 * a GtkWidget.
 */
// TODO
// #define gtk_widget_set_rc_style(widget) (gtk_widget_set_style (widget, NULL))

/*
 * Warning
 * gtk_widget_restore_default_style is deprecated and should not be used in newly-written code.
 * Equivalent to gtk_widget_set_style (widget, NULL).
 * widget:
 * a GtkWidget.
 */
// TODO
// #define gtk_widget_restore_default_style(widget) (gtk_widget_set_style (widget, NULL))

/*
 * Warning
 * gtk_widget_pop_visual is deprecated and should not be used in newly-written code.
 * This function is deprecated; it does nothing.
 */
// TODO
// #define gtk_widget_pop_visual() ((void) 0)

/*
 * Warning
 * gtk_widget_push_visual is deprecated and should not be used in newly-written code.
 * This function is deprecated; it does nothing.
 * visual:
 */
// TODO
// #define gtk_widget_push_visual(visual) ((void) 0)

/*
 * Warning
 * gtk_widget_set_default_visual is deprecated and should not be used in newly-written code.
 * This function is deprecated; it does nothing.
 * visual:
 */
// TODO
// #define gtk_widget_set_default_visual(visual) ((void) 0)

/*
 * Warning
 * gtk_widget_set_visual is deprecated and should not be used in newly-written code.
 * This function is deprecated; it does nothing.
 * widget:
 * visual:
 */
// TODO
// #define gtk_widget_set_visual(widget,visual) ((void) 0)

/*
 * Each GTK+ module must have a function gtk_module_init() with this prototype.
 * This function is called after loading the module with the argc and argv
 * cleaned from any arguments that GTK+ handles itself.
 * argc:
 * Pointer to the number of arguments remaining after gtk_init().
 * argv:
 * Points to the argument vector.
 */
// void (*GtkModuleInitFunc) (gint *argc,  gchar ***argv);
public typedef extern(C) void  function (gint*, gchar***) GtkModuleInitFunc;

/*
 * display:
 * Since 2.2
 */
// void (*GtkModuleDisplayInitFunc) (GdkDisplay *display);
public typedef extern(C) void  function (GdkDisplay*) GtkModuleDisplayInitFunc;

/*
 * Key snooper functions are called before normal event delivery.
 * They can be used to implement custom key event handling.
 * grab_widget:
 * the widget to which the event will be delivered.
 * event:
 * the key event.
 * func_data:
 * the func_data supplied to gtk_key_snooper_install().
 * Returns:
 * TRUE to stop further processing of event, FALSE to continue.
 */
// gint (*GtkKeySnoopFunc) (GtkWidget *grab_widget,  GdkEventKey *event,  gpointer func_data);
public typedef extern(C) int  function (GtkWidget*, GdkEventKey*, void*) GtkKeySnoopFunc;

/*
 * accel_group:
 * acceleratable:
 * keyval:
 * modifier:
 * Returns:
 */
// gboolean (*GtkAccelGroupActivate) (GtkAccelGroup *accel_group,  GObject *acceleratable,  guint keyval,  GdkModifierType modifier);
public typedef extern(C) int  function (GtkAccelGroup*, GObject*, uint, GdkModifierType) GtkAccelGroupActivate;

/*
 * key:
 * closure:
 * data:
 * Returns:
 * Since 2.2
 */
// gboolean (*GtkAccelGroupFindFunc) (GtkAccelKey *key,  GClosure *closure,  gpointer data);
public typedef extern(C) int  function (GtkAccelKey*, GClosure*, void*) GtkAccelGroupFindFunc;

/*
 * data:
 * accel_path:
 * accel_key:
 * accel_mods:
 * changed:
 */
// void (*GtkAccelMapForeach) (gpointer data,  const gchar *accel_path,  guint accel_key,  GdkModifierType accel_mods,  gboolean changed);
public typedef extern(C) void  function (void*, char[], uint, GdkModifierType, int) GtkAccelMapForeach;

/*
 *  A function to be called when the results of gtk_clipboard_request_contents()
 *  are received, or when the request fails.
 * clipboard:
 * the GtkClipboard
 * selection_data:
 * a GtkSelectionData containing the data was received.
 *  If retrieving the data failed, then then length field
 *  of selection_data will be negative.
 * data:
 * the user_data supplied to gtk_clipboard_request_contents().
 */
// void (*GtkClipboardReceivedFunc) (GtkClipboard *clipboard,  GtkSelectionData *selection_data,  gpointer data);
public typedef extern(C) void  function (GtkClipboard*, GtkSelectionData*, void*) GtkClipboardReceivedFunc;

/*
 *  A function to be called when the results of gtk_clipboard_request_text()
 *  are received, or when the request fails.
 * clipboard:
 * the GtkClipboard
 * text:
 * the text received, as a UTF-8 encoded string, or NULL
 *  if retrieving the data failed.
 * data:
 * the user_data supplied to gtk_clipboard_request_text().
 */
// void (*GtkClipboardTextReceivedFunc) (GtkClipboard *clipboard,  const gchar *text,  gpointer data);
public typedef extern(C) void  function (GtkClipboard*, char[], void*) GtkClipboardTextReceivedFunc;

/*
 *  A function to be called when the results of gtk_clipboard_request_image()
 *  are received, or when the request fails.
 * clipboard:
 * the GtkClipboard
 * pixbuf:
 * the received image
 * data:
 * the user_data supplied to gtk_clipboard_request_image().
 * Since 2.6
 */
// void (*GtkClipboardImageReceivedFunc) (GtkClipboard *clipboard,  GdkPixbuf *pixbuf,  gpointer data);
public typedef extern(C) void  function (GtkClipboard*, GdkPixbuf*, void*) GtkClipboardImageReceivedFunc;

/*
 *  A function to be called when the results of gtk_clipboard_request_targets()
 *  are received, or when the request fails.
 * clipboard:
 * the GtkClipboard
 * atoms:
 * the supported targets, as array of GdkAtom, or NULL
 *  if retrieving the data failed.
 * n_atoms:
 * the length of the atoms array.
 * data:
 * the user_data supplied to gtk_clipboard_request_targets().
 * Since 2.4
 */
// void (*GtkClipboardTargetsReceivedFunc) (GtkClipboard *clipboard,  GdkAtom *atoms,  gint n_atoms,  gpointer data);
public typedef extern(C) void  function (GtkClipboard*, GdkAtom*, int, void*) GtkClipboardTargetsReceivedFunc;

/*
 * clipboard:
 * format:
 * text:
 * length:
 * data:
 */
// void (*GtkClipboardRichTextReceivedFunc) (GtkClipboard *clipboard,  GdkAtom format,  const guint8 *text,  gsize length,  gpointer data);
public typedef extern(C) void  function (GtkClipboard*, GdkAtom, guint8*, uint, void*) GtkClipboardRichTextReceivedFunc;

/*
 * A function that will be called to provide the contents of the selection.
 * If multiple types of data were advertised, the requested type can
 * be determined from the info parameter or by checking the target field
 * of selection_data. If the data could successfully be converted into
 * then it should be stored into the selection_data object by
 * calling gtk_selection_data_set() (or related functions such
 * as gtk_selection_data_set_text()). If no data is set, the requestor
 * will be informed that the attempt to get the data failed.
 * clipboard:
 * the GtkClipboard
 * selection_data:
 * a GtkSelectionData argument in which the requested
 *  data should be stored.
 * info:
 * the info field corresponding to the requested
 *  target from the GtkTargetEntry array passed to
 *  gtk_clipboard_set_with_data() or gtk_clipboard_set_with_owner().
 * user_data_or_owner:
 * the user_data argument passed to gtk_clipboard_set_with_data(), or
 *  the owner argument passed to gtk_clipboard_set_with_owner()
 */
// void (*GtkClipboardGetFunc) (GtkClipboard *clipboard,  GtkSelectionData *selection_data,  guint info,  gpointer user_data_or_owner);
public typedef extern(C) void  function (GtkClipboard*, GtkSelectionData*, uint, void*) GtkClipboardGetFunc;

/*
 * A function that will be called when the contents of the clipboard are changed
 * or cleared. Once this has called, the user_data_or_owner argument
 * will not be used again.
 * clipboard:
 * the GtkClipboard
 * user_data_or_owner:
 * the user_data argument passed to gtk_clipboard_set_with_data(), or
 *  the owner argument passed to gtk_clipboard_set_with_owner()
 */
// void (*GtkClipboardClearFunc) (GtkClipboard *clipboard,  gpointer user_data_or_owner);
public typedef extern(C) void  function (GtkClipboard*, void*) GtkClipboardClearFunc;

/*
 * pspec:
 * rc_string:
 * property_value:
 * Returns:
 * Signal Details
 * The "realize" signal
 * void user_function (GtkStyle *style,
 *  gpointer user_data) : Run First
 * Emitted when the style has been initialized for a particular
 * colormap and depth. Connecting to this signal is probably seldom
 * useful since most of the time applications and widgets only
 * deal with styles that have been already realized.
 * style:
 *  the object which received the signal
 * user_data:
 * user data set when the signal handler was connected.
 * Since 2.4
 */
// gboolean (*GtkRcPropertyParser) (const GParamSpec *pspec,  const GString *rc_string,  GValue *property_value);
public typedef extern(C) int  function (GParamSpec*, GString*, GValue*) GtkRcPropertyParser;

/*
 * Defines a function pointer.
 */
// void (*GtkSignalFunc) (void);
public typedef extern(C) void  function () GtkSignalFunc;

/*
 * Defines a function pointer.
 * data:
 * gpointer
 * Returns:
 * gint
 */
// gboolean (*GtkFunction) (gpointer data);
public typedef extern(C) int  function (void*) GtkFunction;

/*
 * Defines a function pointer.
 * data:
 * gpointer
 */
// void (*GtkDestroyNotify) (gpointer data);
public typedef extern(C) void  function (void*) GtkDestroyNotify;

/*
 * Defines a function pointer.
 * object:
 * GtkObject*
 * data:
 * gpointer
 * n_args:
 * guint
 * args:
 * GtkArg*
 */
// void (*GtkCallbackMarshal) (GtkObject *object,  gpointer data,  guint n_args,  GtkArg *args);
public typedef extern(C) void  function (GtkObject*, void*, uint, GtkArg*) GtkCallbackMarshal;

/*
 * The type of a function which is called when a URL or email
 * link is activated.
 * about:
 * the GtkAboutDialog in which the link was activated
 * link_:
 * the URL or email address to which the activated link points
 * data:
 * user data that was passed when the function was registered
 *  with gtk_about_dialog_set_email_hook() or
 *  gtk_about_dialog_set_url_hook()
 */
// void (*GtkAboutDialogActivateLinkFunc) (GtkAboutDialog *about,  const gchar *link_,  gpointer data);
public typedef extern(C) void  function (GtkAboutDialog*, char[], void*) GtkAboutDialogActivateLinkFunc;

/*
 * A function used by gtk_assistant_set_forward_page_func() to know which
 * is the next page given a current one. It's called both for computing the
 * next page when the user presses the "forward" button and for handling
 * the behavior of the "last" button.
 * current_page:
 * The page number used to calculate the next page.
 * data:
 * user data.
 * Returns:
 * The next page number.
 */
// gint (*GtkAssistantPageFunc) (gint current_page,  gpointer data);
public typedef extern(C) int  function (int, void*) GtkAssistantPageFunc;

/*
 * A function which decides whether the row indicated by iter matches a given
 * key, and should be displayed as a possible completion for key. Note that
 * key is normalized and case-folded (see g_utf8_normalize() and
 * g_utf8_casefold()). If this is not appropriate, match functions have access
 * to the unmodified key via gtk_entry_get_text (GTK_ENTRY (gtk_entry_completion_get_entry ())).
 * completion:
 * the GtkEntryCompletion
 * key:
 * the string to match, normalized and case-folded
 * iter:
 * a GtkTreeIter indicating the row to match
 * user_data:
 * user data given to gtk_entry_completion_set_match_func()
 * Returns:
 * TRUE if iter should be displayed as a possible completion for key
 */
// gboolean (*GtkEntryCompletionMatchFunc) (GtkEntryCompletion *completion,  const gchar *key,  GtkTreeIter *iter,  gpointer user_data);
public typedef extern(C) int  function (GtkEntryCompletion*, char[], GtkTreeIter*, void*) GtkEntryCompletionMatchFunc;

/*
 * ch:
 * user_data:
 * Returns:
 */
// gboolean (*GtkTextCharPredicate) (gunichar ch,  gpointer user_data);
public typedef extern(C) int  function (gunichar, void*) GtkTextCharPredicate;

/*
 * A function that is called to deserialize rich text that has been
 * serialized with gtk_text_buffer_serialize(), and insert it at iter.
 * register_buffer:
 * the GtkTextBuffer the format is registered with
 * content_buffer:
 * the GtkTextBuffer to deserialize into
 * iter:
 * insertion point for the deserialized text
 * data:
 * data to deserialize
 * length:
 * length of data
 * create_tags:
 * TRUE if deserializing may create tags
 * user_data:
 * user data that was specified when registering the format
 * error:
 * return location for a GError
 * Returns:
 * TRUE on success, FALSE otherwise
 */
// gboolean (*GtkTextBufferDeserializeFunc) (GtkTextBuffer *register_buffer,  GtkTextBuffer *content_buffer,  GtkTextIter *iter,  const guint8 *data,  gsize length,  gboolean create_tags,  gpointer user_data,  GError **error);
public typedef extern(C) int  function (GtkTextBuffer*, GtkTextBuffer*, GtkTextIter*, guint8*, uint, int, void*, GError**) GtkTextBufferDeserializeFunc;

/*
 * A function that is called to serialize the content of a text buffer.
 * It must return the serialized form of the content.
 * register_buffer:
 * the GtkTextBuffer for which the format is registered
 * content_buffer:
 * the GtkTextsBuffer to serialize
 * start:
 * start of the block of text to serialize
 * end:
 * end of the block of text to serialize
 * length:
 * Return location for the length of the serialized data
 * user_data:
 * user data that was specified when registering the format
 * Returns:
 * a newly-allocated array of guint8 which contains the serialized
 *  data, or NULL if an error occurred
 */
// guint8* (*GtkTextBufferSerializeFunc) (GtkTextBuffer *register_buffer,  GtkTextBuffer *content_buffer,  const GtkTextIter *start,  const GtkTextIter *end,  gsize *length,  gpointer user_data);
public typedef extern(C) byte*  function (GtkTextBuffer*, GtkTextBuffer*, GtkTextIter*, GtkTextIter*, gsize*, void*) GtkTextBufferSerializeFunc;

/*
 * tag:
 * data:
 */
// void (*GtkTextTagTableForeach) (GtkTextTag *tag,  gpointer data);
public typedef extern(C) void  function (GtkTextTag*, void*) GtkTextTagTableForeach;

/*
 * model:
 * The GtkTreeModel currently being iterated
 * path:
 * The current GtkTreePath
 * iter:
 * The current GtkTreeIter
 * data:
 * The user data passed to gtk_tree_model_foreach()
 * Returns:
 * TRUE to stop iterating, FALSE to continue.
 */
// gboolean (*GtkTreeModelForeachFunc) (GtkTreeModel *model,  GtkTreePath *path,  GtkTreeIter *iter,  gpointer data);
public typedef extern(C) int  function (GtkTreeModel*, GtkTreePath*, GtkTreeIter*, void*) GtkTreeModelForeachFunc;

/*
 * A function used by gtk_tree_selection_set_select_function() to filter
 * whether or not a row may be selected. It is called whenever a row's
 * state might change. A return value of TRUE indicates to selection
 * that it is okay to change the selection.
 * selection:
 * A GtkTreeSelection
 * model:
 * A GtkTreeModel being viewed
 * path:
 * The GtkTreePath of the row in question
 * path_currently_selected:
 * TRUE, if the path is currently selected
 * data:
 * user data
 * Returns:
 * TRUE, if the selection state of the row can be toggled
 */
// gboolean (*GtkTreeSelectionFunc) (GtkTreeSelection *selection,  GtkTreeModel *model,  GtkTreePath *path,  gboolean path_currently_selected,  gpointer data);
public typedef extern(C) int  function (GtkTreeSelection*, GtkTreeModel*, GtkTreePath*, int, void*) GtkTreeSelectionFunc;

/*
 * A function used by gtk_tree_selection_selected_foreach() to map all
 * selected rows. It will be called on every selected row in the view.
 * model:
 * The GtkTreeModel being viewed
 * path:
 * The GtkTreePath of a selected row
 * iter:
 * A GtkTreeIter pointing to a selected row
 * data:
 * user data
 */
// void (*GtkTreeSelectionForeachFunc) (GtkTreeModel *model,  GtkTreePath *path,  GtkTreeIter *iter,  gpointer data);
public typedef extern(C) void  function (GtkTreeModel*, GtkTreePath*, GtkTreeIter*, void*) GtkTreeSelectionForeachFunc;

/*
 * A function to set the properties of a cell instead of just using the
 * straight mapping between the cell and the model. This is useful for
 * customizing the cell renderer. For example, a function might get an
 * integer from the tree_model, and render it to the "text" attribute of
 * "cell" by converting it to its written equivilent. This is set by
 * calling gtk_tree_view_column_set_cell_data_func()
 * tree_column:
 * A GtkTreeColumn
 * cell:
 * The GtkCellRenderer that is being rendered by tree_column
 * tree_model:
 * The GtkTreeModel being rendered
 * iter:
 * A GtkTreeIter of the current row rendered
 * data:
 * user data
 */
// void (*GtkTreeCellDataFunc) (GtkTreeViewColumn *tree_column,  GtkCellRenderer *cell,  GtkTreeModel *tree_model,  GtkTreeIter *iter,  gpointer data);
public typedef extern(C) void  function (GtkTreeViewColumn*, GtkCellRenderer*, GtkTreeModel*, GtkTreeIter*, void*) GtkTreeCellDataFunc;

/*
 * Function type for determining whether column can be dropped in a
 * particular spot (as determined by prev_column and next_column). In
 * left to right locales, prev_column is on the left of the potential drop
 * spot, and next_column is on the right. In right to left mode, this is
 * reversed. This function should return TRUE if the spot is a valid drop
 * spot. Please note that returning TRUE does not actually indicate that
 * the column drop was made, but is meant only to indicate a possible drop
 * spot to the user.
 * tree_view:
 * A GtkTreeView
 * column:
 * The GtkTreeViewColumn being dragged
 * prev_column:
 * A GtkTreeViewColumn on one side of column
 * next_column:
 * A GtkTreeViewColumn on the other side of column
 * data:
 * user data
 * Returns:
 * TRUE, if column can be dropped in this spot
 */
// gboolean (*GtkTreeViewColumnDropFunc) (GtkTreeView *tree_view,  GtkTreeViewColumn *column,  GtkTreeViewColumn *prev_column,  GtkTreeViewColumn *next_column,  gpointer data);
public typedef extern(C) int  function (GtkTreeView*, GtkTreeViewColumn*, GtkTreeViewColumn*, GtkTreeViewColumn*, void*) GtkTreeViewColumnDropFunc;

/*
 * Function used for gtk_tree_view_map_expanded_rows.
 * tree_view:
 * A GtkTreeView
 * path:
 * The path that's expanded
 * user_data:
 * user data
 */
// void (*GtkTreeViewMappingFunc) (GtkTreeView *tree_view,  GtkTreePath *path,  gpointer user_data);
public typedef extern(C) void  function (GtkTreeView*, GtkTreePath*, void*) GtkTreeViewMappingFunc;

/*
 * A function used for checking whether a row in model matches
 * a search key string entered by the user. Note the return value
 * is reversed from what you would normally expect, though it
 * has some similarity to strcmp() returning 0 for equal strings.
 * model:
 * the GtkTreeModel being searched
 * column:
 * the search column set by gtk_tree_view_set_search_column()
 * key:
 * the key string to compare with
 * iter:
 * a GtkTreeIter pointing the row of model that should be compared
 *  with key.
 * search_data:
 * user data from gtk_tree_view_set_search_equal_func()
 * Returns:
 * FALSE if the row matches, TRUE otherwise.
 */
// gboolean (*GtkTreeViewSearchEqualFunc) (GtkTreeModel *model,  gint column,  const gchar *key,  GtkTreeIter *iter,  gpointer search_data);
public typedef extern(C) int  function (GtkTreeModel*, int, char[], GtkTreeIter*, void*) GtkTreeViewSearchEqualFunc;

/*
 * tree_view:
 * search_dialog:
 * user_data:
 */
// void (*GtkTreeViewSearchPositionFunc) (GtkTreeView *tree_view,  GtkWidget *search_dialog,  gpointer user_data);
public typedef extern(C) void  function (GtkTreeView*, GtkWidget*, void*) GtkTreeViewSearchPositionFunc;

/*
 * tree_view:
 * path:
 * children:
 * user_data:
 */
// void (*GtkTreeDestroyCountFunc) (GtkTreeView *tree_view,  GtkTreePath *path,  gint children,  gpointer user_data);
public typedef extern(C) void  function (GtkTreeView*, GtkTreePath*, int, void*) GtkTreeDestroyCountFunc;

/*
 * Function type for determining whether the row pointed to by iter should
 * be rendered as a separator. A common way to implement this is to have a
 * boolean column in the model, whose values the GtkTreeViewRowSeparatorFunc
 * returns.
 * model:
 * the GtkTreeModel
 * iter:
 * a GtkTreeIter pointing at a row in model
 * data:
 * user data
 * Returns:
 * TRUE if the row is a separator
 */
// gboolean (*GtkTreeViewRowSeparatorFunc) (GtkTreeModel *model,  GtkTreeIter *iter,  gpointer data);
public typedef extern(C) int  function (GtkTreeModel*, GtkTreeIter*, void*) GtkTreeViewRowSeparatorFunc;

/*
 * A function used by gtk_icon_view_selected_foreach() to map all
 * selected rows. It will be called on every selected row in the view.
 * icon_view:
 * a GtkIconView
 * path:
 * The GtkTreePath of a selected row
 * data:
 * user data
 */
// void (*GtkIconViewForeachFunc) (GtkIconView *icon_view,  GtkTreePath *path,  gpointer data);
public typedef extern(C) void  function (GtkIconView*, GtkTreePath*, void*) GtkIconViewForeachFunc;

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
 * model:
 * The GtkTreeModel the comparison is within
 * a:
 * A GtkTreeIter in model
 * b:
 * Another GtkTreeIter in model
 * user_data:
 * Data passed when the compare func is assigned e.g. by
 * gtk_tree_sortable_set_sort_func()
 * Returns:
 */
// gint (*GtkTreeIterCompareFunc) (GtkTreeModel *model,  GtkTreeIter *a,  GtkTreeIter *b,  gpointer user_data);
public typedef extern(C) int  function (GtkTreeModel*, GtkTreeIter*, GtkTreeIter*, void*) GtkTreeIterCompareFunc;

/*
 * A function which decides whether the row indicated by iter is visible.
 * model:
 * the child model of the GtkTreeModelFilter
 * iter:
 * a GtkTreeIter pointing to the row in model whose visibility
 *  is determined
 * data:
 * user data given to gtk_tree_model_filter_set_visible_func()
 * Returns:
 * Whether the row indicated by iter is visible.
 */
// gboolean (*GtkTreeModelFilterVisibleFunc) (GtkTreeModel *model,  GtkTreeIter *iter,  gpointer data);
public typedef extern(C) int  function (GtkTreeModel*, GtkTreeIter*, void*) GtkTreeModelFilterVisibleFunc;

/*
 * A function which calculates display values from raw values in the model.
 * It must fill value with the display value for the column column in the
 * row indicated by iter.
 * Since this function is called for each data access, it's not a
 * particularly efficient operation.
 * model:
 * the GtkTreeModelFilter
 * iter:
 * a GtkTreeIter pointing to the row whose display values are determined
 * value:
 * A GValue which is already initialized for with the correct type for
 *  the column column.
 * column:
 * the column whose display value is determined
 * data:
 * user data given to gtk_tree_model_filter_set_modify_func()
 */
// void (*GtkTreeModelFilterModifyFunc) (GtkTreeModel *model,  GtkTreeIter *iter,  GValue *value,  gint column,  gpointer data);
public typedef extern(C) void  function (GtkTreeModel*, GtkTreeIter*, GValue*, int, void*) GtkTreeModelFilterModifyFunc;

/*
 * A function which should set the value of cell_layout's cell renderer(s)
 * as appropriate.
 * cell_layout:
 * a GtkCellLayout
 * cell:
 * the cell renderer whose value is to be set
 * tree_model:
 * the model
 * iter:
 * a GtkTreeIter indicating the row to set the value for
 * data:
 * user data passed to gtk_cell_layout_set_cell_data_func()
 */
// void (*GtkCellLayoutDataFunc) (GtkCellLayout *cell_layout,  GtkCellRenderer *cell,  GtkTreeModel *tree_model,  GtkTreeIter *iter,  gpointer data);
public typedef extern(C) void  function (GtkCellLayout*, GtkCellRenderer*, GtkTreeModel*, GtkTreeIter*, void*) GtkCellLayoutDataFunc;

/*
 * A user function supplied when calling gtk_menu_popup() which controls the
 * positioning of the menu when it is displayed. The function sets the x
 * and y parameters to the coordinates where the menu is to be drawn.
 * menu:
 * a GtkMenu.
 * x:
 * address of the gint representing the horizontal position where the
 * menu shall be drawn. This is an output parameter.
 * y:
 * address of the gint representing the vertical position where the
 * menu shall be drawn. This is an output parameter.
 * push_in:
 * This parameter controls how menus placed outside the monitor are handled.
 *  If this is set to TRUE and part of the menu is outside the monitor then
 *  GTK+ pushes the window into the visible area, effectively modifying the
 *  popup position.
 *  Note that moving and possibly resizing the menu around will alter the
 *  scroll position to keep the menu items "in place", i.e. at the same monitor
 *  position they would have been without resizing.
 *  In practice, this behavior is only useful for combobox popups or option
 *  menus and cannot be used to simply confine a menu to monitor boundaries.
 *  In that case, changing the scroll offset is not desirable.
 *  To simply constrain the menu within the monitor, get its size with
 *  gtk_widget_size_request() before showing it, and alter the coordinates
 *  passed to gtk_menu_popup() accordingly.
 * user_data:
 * the data supplied by the user in the gtk_menu_popup() data
 * parameter.
 */
// void (*GtkMenuPositionFunc) (GtkMenu *menu,  gint *x,  gint *y,  gboolean *push_in,  gpointer user_data);
public typedef extern(C) void  function (GtkMenu*, gint*, gint*, gboolean*, void*) GtkMenuPositionFunc;

/*
 * A user function supplied when calling gtk_menu_attach_to_widget() which
 * will be called when the menu is later detached from the widget.
 * attach_widget:
 * the GtkWidget that the menu is being detached from.
 * menu:
 * the GtkMenu being detached.
 */
// void (*GtkMenuDetachFunc) (GtkWidget *attach_widget,  GtkMenu *menu);
public typedef extern(C) void  function (GtkWidget*, GtkMenu*) GtkMenuDetachFunc;

/*
 * colors:
 * n_colors:
 */
// void (*GtkColorSelectionChangePaletteFunc)  (const GdkColor *colors,  gint n_colors);
public typedef extern(C) void  function (GdkColor*, int) GtkColorSelectionChangePaletteFunc;

/*
 * screen:
 * colors:
 * n_colors:
 * Since 2.2
 */
// void (*GtkColorSelectionChangePaletteWithScreenFunc)  (GdkScreen *screen,  const GdkColor *colors,  gint n_colors);
public typedef extern(C) void  function (GdkScreen*, GdkColor*, int) GtkColorSelectionChangePaletteWithScreenFunc;

/*
 * The type of function that is used with custom filters,
 * see gtk_file_filter_add_custom().
 * filter_info:
 * a GtkFileFilterInfo that is filled according
 *  to the needed flags passed to gtk_file_filter_add_custom()
 * data:
 * user data passed to gtk_file_filter_add_custom()
 * Returns:
 * TRUE if the file should be displayed
 */
// gboolean (*GtkFileFilterFunc) (const GtkFileFilterInfo *filter_info,  gpointer data);
public typedef extern(C) int  function (GtkFileFilterInfo*, void*) GtkFileFilterFunc;

/*
 * A function used by GtkNotebook when a detachable tab is dropped
 * in the root window, it's used to create a window containing a notebook
 * where the tab will be attached. This function will also be responsible
 * of moving/resizing the window and adding the necessary properties to
 * the notebook (i.e.: group-id).
 * If the function returns NULL, the drag will be cancelled.
 * source:
 * The source GtkNotebook of the drag operation
 * page:
 * the child GtkWidget affected
 * x:
 * the X coordinate where the drop happens
 * y:
 * the Y coordinate where the drop happens
 * data:
 * user data
 * Returns:
 * The created GtkNotebook where the tab will be attached, or NULL to cancel the drag
 */
// GtkNotebook* (*GtkNotebookWindowCreationFunc) (GtkNotebook *source,  GtkWidget *page,  gint x,  gint y,  gpointer data);
public typedef extern(C) GtkNotebook*  function (GtkNotebook*, GtkWidget*, int, int, void*) GtkNotebookWindowCreationFunc;

/*
 * The type of the callback functions used for e.g. iterating over
 * the children of a container, see gtk_container_foreach().
 * widget:
 * the widget to operate on
 * data:
 * user-supplied data
 */
// void (*GtkCallback) (GtkWidget *widget,  gpointer data);
public typedef extern(C) void  function (GtkWidget*, void*) GtkCallback;

/*
 * Warning
 * GtkPrintFunc is deprecated and should not be used in newly-written code.
 * func_data:
 * str:
 */
// void (*GtkPrintFunc) (gpointer func_data,  const gchar *str);
public typedef extern(C) void  function (void*, char[]) GtkPrintFunc;

/*
 * The function used to translate messages in e.g. GtkIconFactory
 * and GtkActionGroup.
 * path:
 * The id of the message. In GtkItemFactory this will be a path
 *  from a GtkItemFactoryEntry, in GtkActionGroup, it will be a label
 *  or tooltip from a GtkActionEntry.
 * func_data:
 * user data passed in when registering the function
 * Returns:
 * the translated message
 */
// gchar* (*GtkTranslateFunc) (const gchar *path,  gpointer func_data);
public typedef extern(C) char*  function (char[], void*) GtkTranslateFunc;

/*
 * Warning
 * GtkItemFactoryCallback is deprecated and should not be used in newly-written code.
 */
// void (*GtkItemFactoryCallback) ();
public typedef extern(C) void  function () GtkItemFactoryCallback;

/*
 * Warning
 * GtkItemFactoryCallback1 is deprecated and should not be used in newly-written code.
 * callback_data:
 * callback_action:
 * widget:
 */
// void (*GtkItemFactoryCallback1) (gpointer callback_data,  guint callback_action,  GtkWidget *widget);
public typedef extern(C) void  function (void*, uint, GtkWidget*) GtkItemFactoryCallback1;

/*
 * Warning
 * GtkItemFactoryCallback2 is deprecated and should not be used in newly-written code.
 * widget:
 * callback_data:
 * callback_action:
 */
// void (*GtkItemFactoryCallback2) (GtkWidget *widget,  gpointer callback_data,  guint callback_action);
public typedef extern(C) void  function (GtkWidget*, void*, uint) GtkItemFactoryCallback2;


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
	 * The "File" icon.
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
	 * The "Print Preview" item.
	 */
	PRINT_PREVIEW,
	
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
char[][] StockDesc = 
[	"gtk-about",
	"gtk-add",
	"gtk-apply",
	"gtk-bold",
	"gtk-cancel",
	"gtk-cdrom",
	"gtk-clear",
	"gtk-close",
	"gtk-color-picker",
	"gtk-convert",
	"gtk-connect",
	"gtk-copy",
	"gtk-cut",
	"gtk-delete",
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
	"gtk-paste",
	"gtk-preferences",
	"gtk-print",
	"gtk-print-preview",
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