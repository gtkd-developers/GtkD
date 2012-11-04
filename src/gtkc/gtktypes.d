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


/**
 * typedef GType GtkType;
 * Warning
 * GtkType is deprecated and should not be used in newly-written code.
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
 * typedef GBaseInitFunc GtkClassInitFunc;
 * Warning
 * GtkClassInitFunc is deprecated and should not be used in newly-written code.
 * Defines a function pointer.
 */
public alias GBaseInitFunc GtkClassInitFunc;

/**
 * typedef GInstanceInitFunc GtkObjectInitFunc;
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
 * typedef GTypeInstance GtkTypeObject;
 * Warning
 * GtkTypeObject is deprecated and should not be used in newly-written code.
 * A GtkTypeObject defines the minimum structure requirements
 * for type instances. Type instances returned from gtk_type_new()
 * and initialized through a GtkObjectInitFunc need to directly inherit
 * from this structure or at least copy its fields one by one.
 */
public alias GTypeInstance GtkTypeObject;

/**
 * typedef GTypeClass GtkTypeClass;
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
 *  If set for a widget, GTK+, during a drag over this
 *  widget will check if the drag matches this widget's
 *  list of possible targets and actions.
 *  GTK+ will then call gdk_drag_status() as appropriate.
 * GTK_DEST_DEFAULT_HIGHLIGHT
 *  If set for a widget, GTK+ will draw a highlight on
 *  this widget as long as a drag is over this widget
 *  and the widget drag format and action are acceptable.
 * GTK_DEST_DEFAULT_DROP
 *  If set for a widget, when a drop occurs, GTK+ will
 *  will check if the drag matches this widget's
 *  list of possible targets and actions. If so,
 *  GTK+ will call gtk_drag_get_data() on behalf
 *  of the widget. Whether or not the drop is successful,
 *  GTK+ will call gtk_drag_finish(). If the action
 *  was a move, then if the drag was successful, then
 *  TRUE will be passed for the delete parameter
 *  to gtk_drag_finish().
 * GTK_DEST_DEFAULT_ALL
 *  If set, specifies that all default actions should
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
 *  If this is set, the target will only be selected
 *  for drags within a single application.
 * GTK_TARGET_SAME_WIDGET
 *  If this is set, the target will only be selected
 *  for drags within a single widget.
 * GTK_TARGET_OTHER_APP
 *  If this is set, the target will not be selected
 *  for drags within a single application. Since 2.12
 * GTK_TARGET_OTHER_WIDGET
 *  If this is set, the target will not be selected
 *  for drags withing a single widget. Since 2.12
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
 * GTK_BUTTONBOX_DEFAULT_STYLE
 * Default packing.
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
 * Buttons are centered in the box. Since 2.12
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

/**
 * Warning
 * GtkCurveType is deprecated and should not be used in newly-written code.
 */
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
	DISPLAY_LINE_ENDS, /+* move to either end of a line +/
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
 *  such as initially or during a search operation, it's possible for no element
 *  to be selected with GTK_SELECTION_BROWSE. What is really enforced is that
 *  the user can't deselect a currently selected element except by selecting
 *  another element.
 * GTK_SELECTION_MULTIPLE
 * Any number of elements may be selected.
 *  Clicks toggle the state of an item. Any number of elements may be selected.
 *  The Ctrl key may be used to enlarge the selection, and Shift key to select
 *  between the focus and the child pointed to. Some widgets may also allow
 *  Click-drag to select a range of elements.
 * GTK_SELECTION_EXTENDED
 * Deprecated, behaves identical to GTK_SELECTION_MULTIPLE.
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
 * A sub-menu will appear to the left of the current menu.
 * GTK_DIRECTION_RIGHT
 * A sub-menu will appear to the right of the current menu.
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

/**
 * Used by GtkRange to control the policy for notifying value changes.
 * GTK_UPDATE_CONTINUOUS
 * Notify updates whenever the value changed
 * GTK_UPDATE_DISCONTINUOUS
 * Notify updates when the mouse button has been released
 * GTK_UPDATE_DELAYED
 * Space out updates with a small timeout
 */
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
 *  for the drag operation was broken
 * GTK_DRAG_RESULT_ERROR
 * The drag operation failed due to some
 *  unspecified error
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
 *  see gtk_window_set_modal().
 * GTK_DIALOG_DESTROY_WITH_PARENT
 * Destroy the dialog when its
 *  parent is destroyed, see gtk_window_set_destroy_with_parent().
 * GTK_DIALOG_NO_SEPARATOR
 * Don't put a separator between the
 *  action area and the dialog content. This option has been deprecated in GTK+ 2.22. It will be removed in GTK+ 3
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
 *  the dialog gets programmatically hidden or destroyed.
 * GTK_RESPONSE_REJECT
 * Generic response id, not used by GTK+ dialogs.
 * GTK_RESPONSE_ACCEPT
 * Generic response id, not used by GTK+ dialogs.
 * GTK_RESPONSE_DELETE_EVENT
 * Returned if the dialog is deleted.
 * GTK_RESPONSE_OK
 * Returned by OK buttons in GTK+ dialogs.
 * GTK_RESPONSE_CANCEL
 * Returned by Cancel buttons in GTK+ dialogs.
 * GTK_RESPONSE_CLOSE
 * Returned by Close buttons in GTK+ dialogs.
 * GTK_RESPONSE_YES
 * Returned by Yes buttons in GTK+ dialogs.
 * GTK_RESPONSE_NO
 * Returned by No buttons in GTK+ dialogs.
 * GTK_RESPONSE_APPLY
 * Returned by Apply buttons in GTK+ dialogs.
 * GTK_RESPONSE_HELP
 * Returned by Help buttons in GTK+ dialogs.
 */
public enum GtkResponseType
{
	/+* GTK returns this if a response widget has no responseId,
	 * or if the dialog gets programmatically hidden or destroyed.
	+/
	NONE = -1,
	/+* GTK won't return these unless you pass them inn
	 * as the response for an action widget. They are
	 * for your convenience.
	+/
	REJECT = -2,
	ACCEPT = -3,
	/+* If the dialog is deleted. +/
	DELETE_EVENT = -4,
	/+* These are returned from GTK dialogs, and you can also use them
	 * yourself if you like.
	+/
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
 * Nonfatal warning message
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
 * An enum for determining the page role inside the GtkAssistant. It's
 * used to handle buttons sensitivity and visibility.
 * Note that an assistant needs to end its page flow with a page of type
 * GTK_ASSISTANT_PAGE_CONFIRM, GTK_ASSISTANT_PAGE_SUMMARY or
 * GTK_ASSISTANT_PAGE_PROGRESS to be correct.
 * GTK_ASSISTANT_PAGE_CONTENT
 * The page has regular contents.
 * GTK_ASSISTANT_PAGE_INTRO
 * The page contains an introduction to the
 *  assistant task.
 * GTK_ASSISTANT_PAGE_CONFIRM
 * The page lets the user confirm or deny the
 *  changes.
 * GTK_ASSISTANT_PAGE_SUMMARY
 * The page informs the user of the changes
 *  done.
 * GTK_ASSISTANT_PAGE_PROGRESS
 * Used for tasks that take a long time to
 *  complete, blocks the assistant until the page is marked as complete.
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
 *  This image type was added in GTK+ 2.6
 * GTK_IMAGE_GICON
 * the widget contains a GIcon.
 *  This image type was added in GTK+ 2.14
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
	ICON_NAME,
	GICON
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
 *  appear (between characters, usually - if you want to
 *  be technical, between graphemes, see
 *  pango_get_log_attrs())
 * GTK_WRAP_WORD
 * wrap text, breaking lines in between words
 * GTK_WRAP_WORD_CHAR
 * wrap text, breaking lines in between words, or if
 *  that is not enough, also between graphemes.
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

public enum GtkCellRendererAccelMode
{
	MODE_GTK,
	MODE_OTHER
}
alias GtkCellRendererAccelMode CellRendererAccelMode;

/**
 * Determines how widgets should be packed insided menubars and
 * menuitems contained in menubars.
 * GTK_PACK_DIRECTION_LTR
 * Widgets are packed left-to-right.
 * GTK_PACK_DIRECTION_RTL
 * Widgets are packed right-to-left.
 * GTK_PACK_DIRECTION_TTB
 * Widgets are packed top-to-bottom.
 * GTK_PACK_DIRECTION_BTT
 * Widgets are packed bottom-to-top.
 */
public enum GtkPackDirection
{
	LTR,
	RTL,
	TTB,
	BTT
}
alias GtkPackDirection PackDirection;

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
 * Same as GTK_UI_MANAGER_POPUP, but the actions' accelerators are shown.
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
 * The status gives a rough indication of the completion
 * of a running print operation.
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
	PIXEL,
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
 * GTK_CALENDAR_WEEK_START_MONDAY
 * Since GTK+ 2.4, this option is deprecated and ignored by GTK+.
 * The information on which day the calendar week starts is derived from the locale.
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
	WEEK_START_MONDAY = 1 << 4,
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
 *  "take-focus" gboolean : Read / Write
 * A boolean that determines whether the menu and its submenus grab the
 * keyboard focus. See gtk_menu_shell_set_take_focus() and
 * gtk_menu_shell_get_take_focus().
 * Default value: TRUE
 * Since 2.8
 * Signal Details
 * The "activate-current" signal
 * void user_function (GtkMenuShell *menushell,
 *  gboolean arg1,
 *  gpointer user_data) : Action
 * An action signal that activates the current menu item within the menu
 * shell.
 * menushell :
 * the object which received the signal.
 * force_hide :
 * if TRUE, hide the menu after activating the menu item.
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
 * Warning
 * GtkObjectFlags has been deprecated since version 2.22 and should not be used in newly-written code. Do not re-use GtkObject flags but use your own variable to
 *  store flags.
 * Tells about the state of the object.
 * GTK_IN_DESTRUCTION
 * the object is currently being destroyed. This is used
 *  internally by GTK+ to prevent reinvokations during destruction.
 * GTK_FLOATING
 * GTK_RESERVED_1
 * GTK_RESERVED_2
 * reserved for future use
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
 * Tells about certain properties of the widget.
 * GTK_TOPLEVEL
 * widgets without a real parent, as there are GtkWindows and
 *  GtkMenus have this flag set throughout their lifetime.
 *  Toplevel widgets always contain their own GdkWindow.
 * GTK_NO_WINDOW
 * Indicative for a widget that does not provide its own GdkWindow.
 *  Visible action (e.g. drawing) is performed on the parent's GdkWindow.
 * GTK_REALIZED
 * Set by gtk_widget_realize(), unset by gtk_widget_unrealize().
 *  A realized widget has an associated GdkWindow.
 * GTK_MAPPED
 * Set by gtk_widget_map(), unset by gtk_widget_unmap().
 *  Only realized widgets can be mapped. It means that gdk_window_show()
 *  has been called on the widgets window(s).
 * GTK_VISIBLE
 * Set by gtk_widget_show(), unset by gtk_widget_hide(). Implies that a
 *  widget will be mapped as soon as its parent is mapped.
 * GTK_SENSITIVE
 * Set and unset by gtk_widget_set_sensitive().
 *  The sensitivity of a widget determines whether it will receive
 *  certain events (e.g. button or key presses). One premise for
 *  the widget's sensitivity is to have this flag set.
 * GTK_PARENT_SENSITIVE
 * Set and unset by gtk_widget_set_sensitive() operations on the
 *  parents of the widget.
 *  This is the second premise for the widget's sensitivity. Once
 *  it has GTK_SENSITIVE and GTK_PARENT_SENSITIVE set, its state is
 *  effectively sensitive. This is expressed (and can be examined) by
 *  the GTK_WIDGET_IS_SENSITIVE macro.
 * GTK_CAN_FOCUS
 * Determines whether a widget is able to handle focus grabs.
 * GTK_HAS_FOCUS
 * Set by gtk_widget_grab_focus() for widgets that also
 *  have GTK_CAN_FOCUS set. The flag will be unset once another widget
 *  grabs the focus.
 * GTK_CAN_DEFAULT
 * The widget is allowed to receive the default action via
 *  gtk_widget_grab_default() and will reserve space to draw the default if possible
 * GTK_HAS_DEFAULT
 * The widget currently is receiving the default action and
 *  should be drawn appropriately if possible
 * GTK_HAS_GRAB
 * Set by gtk_grab_add(), unset by gtk_grab_remove(). It means that the
 *  widget is in the grab_widgets stack, and will be the preferred one for
 *  receiving events other than ones of cosmetic value.
 * GTK_RC_STYLE
 * Indicates that the widget's style has been looked up through the rc
 *  mechanism. It does not imply that the widget actually had a style
 *  defined through the rc mechanism.
 * GTK_COMPOSITE_CHILD
 * Indicates that the widget is a composite child of its parent; see
 *  gtk_widget_push_composite_child(), gtk_widget_pop_composite_child().
 * GTK_NO_REPARENT
 * Unused since before GTK+ 1.2, will be removed in a future version.
 * GTK_APP_PAINTABLE
 * Set and unset by gtk_widget_set_app_paintable().
 *  Must be set on widgets whose window the application directly draws on,
 *  in order to keep GTK+ from overwriting the drawn stuff. See
 *  the section called “App-paintable widgets” for a detailed
 *  description of this flag.
 * GTK_RECEIVES_DEFAULT
 * The widget when focused will receive the default action and have
 *  GTK_HAS_DEFAULT set even if there is a different widget set as default.
 * GTK_DOUBLE_BUFFERED
 * Set and unset by gtk_widget_set_double_buffered().
 *  Indicates that exposes done on the widget should be
 *  double-buffered. See the section called “Double buffering” for a
 *  detailed discussion of how double-buffering works in GTK+ and
 *  why you may want to disable it for special cases.
 * GTK_NO_SHOW_ALL
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
	CAN_DEFAULT = 1 << 13,
	HAS_DEFAULT = 1 << 14,
	HAS_GRAB = 1 << 15,
	RC_STYLE = 1 << 16,
	COMPOSITE_CHILD = 1 << 17,
	NO_REPARENT = 1 << 18,
	APP_PAINTABLE = 1 << 19,
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
 *  function passed using gtk_recent_manager_set_sort_func().
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
 * Error codes that identify various errors that can occur while
 * using GtkBuilder.
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


struct GtkObjectClass
{
	GObjectClass parentClass;
	void function(GtkObject*, GtkArg*, uint) setArg;
	void function(GtkObject*, GtkArg *, uint) getArg;
	void function(GtkObject*) destroy;
}

public struct GtkWidgetClass
{
	/* The object class structure needs to be the first
	 * element inn the widget class structure inn order for
	 * the class mechanism to work correctly. This allows a
	 * GtkWidgetClass pointer to be cast to a GtkObjectClass
	 * pointer.
	 */
	GtkObjectClass parentClass;
	/**/
	uint activateSignal;
	uint setScrollAdjustmentsSignal;
	/**/
	/* seldomly overidden */
	extern(C) void  function(GtkWidget *widget,uint nPspecs,GParamSpec **pspecs) dispatchChildPropertiesChanged;
	/* basics */
	extern(C) void  function(GtkWidget *widget)  show;
	extern(C) void  function(GtkWidget *widget)  showAll;
	extern(C) void  function(GtkWidget *widget)  hide;
	extern(C) void  function(GtkWidget *widget)  hideAll;
	extern(C) void  function(GtkWidget *widget)  map;
	extern(C) void  function(GtkWidget *widget)  unmap;
	extern(C) void  function(GtkWidget *widget)  realize;
	extern(C) void  function(GtkWidget *widget)  unrealize;
	extern(C) void  function(GtkWidget *widget,GtkRequisition *requisition)  sizeRequest;
	extern(C) void  function(GtkWidget *widget,GtkAllocation *allocation)  sizeAllocate;
	extern(C) void  function(GtkWidget *widget,GtkStateType previousState)  stateChanged;
	extern(C) void  function(GtkWidget *widget,GtkWidget *previousParent)  parentSet;
	extern(C) void  function(GtkWidget *widget,GtkWidget *previousToplevel)  hierarchyChanged;
	extern(C) void  function(GtkWidget *widget,GtkStyle *previousStyle)  styleSet;
	extern(C) void  function(GtkWidget *widget,GtkTextDirection previousDirection)  directionChanged;
	extern(C) void  function(GtkWidget *widget,int wasGrabbed)  grabNotify;
	extern(C) void  function(GtkWidget *widget,GParamSpec *pspec)  childNotify;
	/* Mnemonics */
	extern(C) int  function(GtkWidget *widget,int groupCycling)  mnemonicActivate;
	/* explicit focus */
	extern(C) void  function(GtkWidget *widget)  grabFocus;
	extern(C) int  function(GtkWidget *widget,GtkDirectionType direction)  focus;
	/* events */
	extern(C) int  function(GtkWidget *widget,GdkEvent *event)  event;
	extern(C) int  function(GtkWidget *widget,GdkEventButton *event)  buttonPressEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventButton *event)  buttonReleaseEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventScroll *event)  scrollEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventMotion *event)  motionNotifyEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventAny *event)  deleteEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventAny *event)  destroyEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventExpose *event)  exposeEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventKey *event)  keyPressEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventKey *event)  keyReleaseEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventCrossing *event)  enterNotifyEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventCrossing *event)  leaveNotifyEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventConfigure *event)  configureEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventFocus *event)  focusInEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventFocus *event)  focusOutEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventAny *event)  mapEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventAny *event)  unmapEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventProperty *event)  propertyNotifyEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventSelection *event)  selectionClearEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventSelection *event)  selectionRequestEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventSelection *event)  selectionNotifyEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventProximity *event)  proximityInEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventProximity *event)  proximityOutEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventVisibility *event)  visibilityNotifyEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventClient *event)  clientEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventAny *event)  noExposeEvent;
	extern(C) int  function(GtkWidget *widget,GdkEventWindowState *event)  windowStateEvent;
	/* selection */
	extern(C) void  function(GtkWidget *widget,GtkSelectionData *selectionData,uint info,uint time)  selectionGet;
	extern(C) void  function(GtkWidget *widget,GtkSelectionData *selectionData,uint time)  selectionReceived;
	/* Source side drag signals */
	extern(C) void  function(GtkWidget *widget,GdkDragContext *context)  dragBegin;
	extern(C) void  function(GtkWidget *widget,GdkDragContext *context)  dragEnd;
	extern(C) void  function(GtkWidget *widget,GdkDragContext *context,GtkSelectionData *selectionData,uint info,uint time)  dragDataGet;
	extern(C) void  function(GtkWidget *widget,GdkDragContext *context)  dragDataDelete;
	/* Target side drag signals */
	extern(C) void  function(GtkWidget *widget,GdkDragContext *context,uint time)  dragLeave;
	extern(C) int  function(GtkWidget *widget,GdkDragContext *context,int x,int y,uint time)  dragMotion;
	extern(C) int  function(GtkWidget *widget,GdkDragContext *context,int x,int y,uint time)  dragDrop;
	extern(C) void  function(GtkWidget *widget,GdkDragContext *context,int x,int y,GtkSelectionData *selectionData,uint info,uint time)  dragDataReceived;
	/* Signals used only for keybindings */
	extern(C) int  function(GtkWidget *widget)  popupMenu;
	/* If a widget has multiple tooltips/whatsthis, it should show the
	 * one for the current focus location, or if that doesn't make
	 * sense, should cycle through them showing each tip alongside
	 * whatever piece of the widget it applies to.
	 */
	extern(C) int  function(GtkWidget *widget,GtkWidgetHelpType helpType)  showHelp;
	/* accessibility support
	 */
	extern(C) AtkObject*  function(GtkWidget *widget) getAccessible;
	extern(C) void  function(GtkWidget *widget,GdkScreen *previousScreen) screenChanged;
	extern(C) int  function(GtkWidget *widget,uint signalId) canActivateAccel;
	/* Sent when a grab is broken. */
	extern(C) int  function(GtkWidget *widget,GdkEventGrabBroken *event) grabBrokenEvent;
	extern(C) void  function(GtkWidget *widget)  compositedChanged;
	extern(C) int  function(GtkWidget *widget,int x,int y,int keyboardTooltip,GtkTooltip *tooltip)  queryTooltip;
	/* Padding for future expansion */
	extern(C) void  function() _GtkReserved5;
	extern(C) void  function() _GtkReserved6;
	extern(C) void  function() _GtkReserved7;
}

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
 * Similar to styles, widgets can be mapped by widget name paths, widget
 * class paths or widget class types. When a binding within a set is
 * matched upon activation, an action signal is emitted on the target
 * widget to carry out the actual activation.
 * gchar *set_name;
 * unique binding set name
 * gint priority;
 * unused
 * GSList *widget_path_pspecs;
 * widgets matched by path that this binding set applies to
 * GSList *widget_class_pspecs;
 * widgets matched by class path that this binding set applies to
 * GSList *class_branch_pspecs;
 * widgets matched by class that this binding set applies to
 * GtkBindingEntry *entries;
 * the key binding entries in this binding set
 * GtkBindingEntry *current;
 * implementation detail
 * guint parsed : 1;
 * whether this binding set stems from an RC file and is reset upon theme changes
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
	//uint parsed : 1; /+* From RC content +/
}


/**
 * Each key binding element of a binding sets binding list is represented by
 * a GtkBindingEntry.
 * guint keyval;
 * key value to match
 * GdkModifierType modifiers;
 * key modifier to match
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
	/+* key portion
	+/
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
 * A GtkBindingSignal stores the necessary information to activate a widget
 * in response to a key press via a signal emission.
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
 * A GtkBindingArg holds the data associated with an argument for a
 * key binding signal emission as stored in GtkBindingSignal.
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
	GdkGC *fgGc[5];
	GdkGC *bgGc[5];
	GdkGC *lightGc[5];
	GdkGC *darkGc[5];
	GdkGC *midGc[5];
	GdkGC *textGc[5];
	GdkGC *baseGc[5];
	GdkGC *textAaGc[5];
	GdkGC *blackGc;
	GdkGC *whiteGc;
	GdkPixmap *bgPixmap[5];
}


/**
 * A struct that specifies a border around a rectangular area that can
 * be of different width on each side.
 */
public struct GtkBorder
{
	int left;
	int right;
	int top;
	int bottom;
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
 * Main Gtk struct.
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


/**
 * Internally used structure in the drag-and-drop and
 * selection handling code.
 */
public struct GtkTargetPair
{
	GdkAtom target;
	uint flags;
	uint info;
}


/**
 * Warning
 * GtkArg is deprecated and should not be used in newly-written code.
 * This is a structure that we use to pass in typed values (and names).
 */
public struct GtkArg
{
	GType type;
	char *name;
	/+* this unio only defines the required storage types for
	 * the possibile values, thus there is no int enumData field,
	 * because that would just be a mere alias for int intData.
	 * use the GTK_VALUE_*() and GTK_RETLOC_*() macros to access
	 * the discrete memebers.
	+/
	union D
	{
		/+* flat values +/
		char charData;
		char ucharData;
		int boolData;
		int intData;
		uint uintData;
		glong longData;
		gulong ulongData;
		float floatData;
		double doubleData;
		char *stringData;
		GtkObject *objectData;
		void* pointerData;
		/+* structured values +/
		struct SignalData
		{
			GCallback f;
			void* d;
		}
		SignalData signalData;
	}
	D d;
}


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
public struct GtkTypeInfo
{
	char *typeName;
	uint objectSize;
	uint classSize;
	GtkClassInitFunc classInitFunc;
	GtkObjectInitFunc objectInitFunc;
	void* reserved1;
	void* reserved2;
	GtkClassInitFunc baseClassInitFunc;
}


/**
 * Main Gtk struct.
 * This should not be accessed directly. Use the accessor functions below.
 */
public struct GtkMountOperation{}


/**
 * Main Gtk struct.
 * vbox is a GtkVBox - the main part of the
 * dialog box.
 * action_area is a GtkHButtonBox packed below the
 * dividing GtkHSeparator in the dialog. It is treated exactly the same
 * as any other GtkHButtonBox.
 */
public struct GtkDialog
{
	GtkWidget *vbox;
	GtkWidget *actionArea;
}


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
 * The GtkLinkButton struct contains private data only, and should be
 * manipulated using the functions below.
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
 * The GtkEntry struct contains only private data.
 */
public struct GtkEntry{}


/**
 * Main Gtk struct.
 */
public struct GtkEntryBuffer{}


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
 * The GtkEditable structure is an opaque structure whose members
 * cannot be directly accessed.
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
 * GtkTextAppearance appearance;
 * pointer to sub-struct containing certain attributes
 * GtkJustification justification;
 * GtkTextDirection direction;
 * PangoFontDescription *font;
 * gdouble font_scale;
 * gint left_margin;
 * gint indent;
 * gint right_margin;
 * gint pixels_above_lines;
 * gint pixels_below_lines;
 * gint pixels_inside_wrap;
 * PangoTabArray *tabs;
 * GtkWrapMode wrap_mode;
 * PangoLanguage *language;
 * guint invisible : 1;
 * guint bg_full_height : 1;
 * guint editable : 1;
 * guint realized : 1;
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
	int indent;
	int rightMargin;
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
	/+* colors are allocated etc. +/
	//uint realized : 1;
}


public struct GtkTextAppearance
{
	GdkColor bgColor;
	GdkColor fgColor;
	GdkBitmap *bgStipple;
	GdkBitmap *fgStipple;
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


/**
 * A private struct for internal use only. The definition of this
 * structure is not publically available.
 */
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
 * The GtkIconView struct contains only
 * private fields and should not be directly accessed.
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
	extern(C) void function(GtkTreeSortable* sortable, int sortColumnId, GtkTreeIterCompareFunc func, void* data, GDestroyNotify destroy)  setSortFunc;
	extern(C) void function(GtkTreeSortable* sortable, GtkTreeIterCompareFunc func, void* data, GDestroyNotify destroy)  setDefaultSortFunc;
	extern(C) int function(GtkTreeSortable* sortable)  hasDefaultSortFunc;
}


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
}


/**
 * Main Gtk struct.
 */
public struct GtkCellRenderer{}


public struct GtkCellRendererClass
{
	GtkObjectClass parentClass;
	/+* vtable - not signals +/
	extern(C) void function(GtkCellRenderer* cell, GtkWidget* widget, GdkRectangle* cellArea, int* xOffset, int* yOffset, int* width, int* height)  getSize;
	extern(C) void function(GtkCellRenderer* cell, GdkDrawable* window, GtkWidget* widget, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GdkRectangle* exposeArea, GtkCellRendererState flags)  render;
	extern(C) int function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, char* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags)  activate;
	extern(C) GtkCellEditable * function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, char* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags)  startEditing;
	/+* Signals +/
	extern(C) void function(GtkCellRenderer* cell)  editingCanceled;
	extern(C) void function(GtkCellRenderer* cell, GtkCellEditable* editable, char* path)  editingStarted;
	/+* Padding for future expansion +/
	extern(C) void function() _GtkReserved1;
	extern(C) void function() _GtkReserved2;
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
 * Warning
 * GtkComboBoxEntry is deprecated and should not be used in newly-written code.
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
 * The GtkToolbar struct only contains private data and should only be
 * accessed through the function described below.
 */
public struct GtkToolbar
{
	int numChildren;
	GList *children;
	GtkOrientation orientation;
	GtkToolbarStyle style;
	GtkIconSize iconSize;
	version(GTK_DISABLE_DEPRECATED)
	{
		GtkTooltips *tooltips;
	}
	else
	{
		void* _Tooltips;
	}
}


/**
 * Warning
 * GtkToolbarChild is deprecated and should not be used in newly-written code.
 */
public struct GtkToolbarChild
{
	GtkToolbarChildType type;
	GtkWidget *widget;
	GtkWidget *icon;
	GtkWidget *label;
}


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
 * const gchar *name;
 * The name of the action.
 * const gchar *stock_id;
 * The stock id for the action, or the name of an icon from the icon
 * theme.
 * const gchar *label;
 * The label for the action. This field should typically be marked for
 * translation, see gtk_action_group_set_translation_domain(). If label
 * is NULL, the label of the stock item with id stock_id is used.
 * const gchar *accelerator;
 * The accelerator for the action, in the format understood by
 * gtk_accelerator_parse().
 * const gchar *tooltip;
 * The tooltip for the action. This field should typically be marked
 * for translation, see gtk_action_group_set_translation_domain().
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
 * The stock id for the action, or the name of an icon from the icon
 * theme.
 * const gchar *label;
 * The label for the action. This field should typically be marked for
 * translation, see gtk_action_group_set_translation_domain().
 * const gchar *accelerator;
 * The accelerator for the action, in the format understood by
 * gtk_accelerator_parse().
 * const gchar *tooltip;
 * The tooltip for the action. This field should typically be marked
 * for translation, see gtk_action_group_set_translation_domain().
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
 * The stock id for the action, or the name of an icon from the icon
 * theme.
 * const gchar *label;
 * The label for the action. This field should typically be marked for
 * translation, see gtk_action_group_set_translation_domain().
 * const gchar *accelerator;
 * The accelerator for the action, in the format understood by
 * gtk_accelerator_parse().
 * const gchar *tooltip;
 * The tooltip for the action. This field should typically be marked for
 * translation, see gtk_action_group_set_translation_domain().
 * gint value;
 * The value to set on the radio action. See gtk_radio_action_get_current_value().
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
 */
public struct GtkFontSelectionDialog
{
	GtkWidget *okButton;
	GtkWidget *applyButton;
	GtkWidget *cancelButton;
}


/**
 * Main Gtk struct.
 * Warning
 * GtkInputDialog is deprecated and should not be used in newly-written code.
 */
public struct GtkInputDialog{}


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
public struct GtkLayout
{
	GdkWindow *binWindow;
}


/**
 * Main Gtk struct.
 */
public struct GtkNotebook{}


/**
 * Warning
 * GtkNotebookPage is deprecated and should not be used in newly-written code.
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
 * Main Gtk struct.
 */
public struct GtkExpander{}


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
 * The GtkVScrollbar struct contains private data and should be accessed
 * using the functions below.
 */
public struct GtkVScrollbar{}


/**
 * Main Gtk struct.
 * There are no public fields in the GtkScrolledWindow struct; it should
 * only be accessed using the functions below.
 */
public struct GtkScrolledWindow
{
	GtkWidget *hscrollbar;
	GtkWidget *vscrollbar;
}


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
 * The GtkPrintJob struct contains only private members
 * and should not be directly accessed.
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
public struct GtkBin{}


/**
 * Main Gtk struct.
 * The GtkBox describes an instance of GtkBox and contains the
 * following fields. (These fields should be considered read-only.
 * They should never be set by an application.)
 */
public struct GtkBox
{
	GList *children;
	short spacing;
	uint bitfield0;
	//uint homogeneous : 1;
}


/**
 * Warning
 * GtkBoxChild has been deprecated since version 2.22 and should not be used in newly-written code. Use gtk_container_get_children() instead.
 * The GtkBoxChild holds a child widget of GtkBox and describes how the child
 * is to be packed into the GtkBox. All fields of this GtkBoxChild should be
 * considered read-only and they should never be set directly by an application.
 * Use gtk_box_query_child_packing() and gtk_box_set_child_packing() to query
 * and set the GtkBoxChild.padding, GtkBoxChild.expand, GtkBoxChild.fill and
 * GtkBoxChild.pack fields.
 * The GtkBoxChild holds a child widget of GtkBox and describes
 * how the child is to be packed into the GtkBox. Use
 * gtk_box_query_child_packing() and gtk_box_set_child_packing() to query
 * and reset the padding,
 * expand, fill,
 * and pack fields.
 * GtkBoxChild contains the following fields. (These fields
 * should be considered read-only. They should never be directly set by an
 * application.)
 * GtkWidget *widget;
 * the child widget, packed into the GtkBox.
 * guint16 padding;
 * the number of extra pixels to put between this child and its
 * neighbors, set when packed, zero by default.
 * guint expand : 1;
 * flag indicates whether extra space should be given to this child.
 * Any extra space given to the parent GtkBox is divided up among all children
 * with this attribute set to TRUE; set when packed, TRUE by default.
 * guint fill : 1;
 * flag indicates whether any extra space given to this child due to its
 * expand attribute being set is actually allocated to the child, rather than
 * being used as padding around the widget; set when packed, TRUE by default.
 * guint pack : 1;
 * one of GtkPackType indicating whether the child is packed with
 * reference to the start (top/left) or end (bottom/right) of the GtkBox.
 * guint is_secondary : 1;
 * TRUE if the child is secondary
 */
public struct GtkBoxChild
{
	GtkWidget *widget;
	ushort padding;
	uint bitfield0;
	//uint expand : 1;
	//uint fill : 1;
	//uint pack : 1;
	//uint isSecondary : 1;
}


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
 * The GtkMenuShell struct contains the following fields.
 * (These fields should be considered read-only. They should never be set by
 * an application.)
 * GList *children;
 * The list of GtkMenuItem objects contained by this GtkMenuShell.
 */
public struct GtkMenuShell{}


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
 * The fields of the GtkScale struct should only be accessed via
 * the accessor functions.
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
 */
public struct GtkWidget
{
	/+* The style for the widget. The style contains the
	 * colors the widget should be drawn inn for each state
	 * along with graphics contexts used to draw with and
	 * the font to use for text.
	+/
	GtkStyle *style;
	/+* The widget's desired size.
	+/
	GtkRequisition requisition;
	/+* The widget's allocated size.
	+/
	GtkAllocation allocation;
	/+* The widget's window or its parent window if it does
	 * not have a window. (Which will be indicated by the
	 * GTK_NO_WINDOW flag being set).
	+/
	GdkWindow *window;
	/+* The widget's parent.
	+/
	GtkWidget *parent;
}


/**
 * A GtkRequisition represents the desired size of a widget. See
 * the section called “Size Requisition” for more information.
 * gint width;
 * the widget's desired width
 * gint height;
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
 * the section called “Size Allocation” for more information.
 * gint x;
 * the X position of the widget's area relative to its parents allocation.
 * gint y;
 * the Y position of the widget's area relative to its parents allocation.
 * gint width;
 * the width of the widget's allocated area.
 * gint height;
 * the height of the widget's allocated area.
 */
public struct GtkAllocation
{
	int x;
	int y;
	int width;
	int height;
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


public struct GtkWidgetAuxInfo
{
	int x;
	int y;
	int width;
	int height;
	uint bitfield0;
	//uint xSet : 1;
	//uint ySet : 1;
}


public struct GtkWidgetShapeInfo
{
	short offsetX;
	short offsetY;
	GdkBitmap *shapeMask;
}


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
 * Called via gtk_im_context_focus_in() when the input widget
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
	extern(C) void function(GtkIMContext* context, GdkRectangle* area) setCursorLocation;
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
 * Warning
 * GtkCurve is deprecated and should not be used in newly-written code.
 * The GtkCurve struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkCurve{}


/**
 * Main Gtk struct.
 * Warning
 * GtkGammaCurve is deprecated and should not be used in newly-written code.
 * The GtkGammaCurve struct contains private data only, and
 * should be accessed using the functions below.
 */
public struct GtkGammaCurve{}


/**
 * Main Gtk struct.
 * Warning
 * GtkRuler is deprecated and should not be used in newly-written code.
 * All distances are in 1/72nd's of an inch. (According to Adobe thats a point, but
 * points are really 1/72.27 in.)
 */
public struct GtkRuler{}


/**
 * Warning
 * GtkRulerMetric has been deprecated since version 2.24 and should not be used in newly-written code. GtkRuler has been removed from GTK 3 for being
 */
public struct GtkRulerMetric
{
	char *metricName;
	char *abbrev;
	/+* This should be pointsPerUnit. This is the size of the unit
	 * inn 1/72nd's of an inch and has nothing to do with screen pixels +/
	double pixelsPerUnit;
	double rulerScale[10];
	int subdivide[5]; /+* five possible modes of subdivision +/
}


/**
 * Main Gtk struct.
 * Warning
 * GtkHRuler is deprecated and should not be used in newly-written code.
 * The GtkHRuler struct contains private data and should be accessed
 * with the functions below.
 */
public struct GtkHRuler{}


/**
 * Main Gtk struct.
 * Warning
 * GtkVRuler is deprecated and should not be used in newly-written code.
 */
public struct GtkVRuler{}


/**
 * Main Gtk struct.
 * Acts as a database of information about the list of recently
 * used files. Normally, you retrieve the recent manager for a
 * particular screen using gtk_recent_manager_get_for_screen()
 * and it will contain information about current recent manager
 * for that screen.
 */
public struct GtkRecentManager{}


/**
 * Contains informations found when looking up an entry of the
 * recently used files list.
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
	extern(C) void function(GtkRecentChooser* chooser, GtkRecentSortFunc sortFunc, void* data, GDestroyNotify destroy)  setSortFunc;
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
 * The GtkRecentFilter struct contains
 * only private fields and should not be directly accessed.
 */
public struct GtkRecentFilter{}


/**
 * A GtkRecentFilterInfo struct is used
 * to pass information about the tested file to gtk_recent_filter_filter().
 * GtkRecentFilterFlags contains;
 * Flags indicating which of the following fields need
 * are filled
 * const gchar *uri;
 * the URI of the file being tested
 * const gchar *display_name;
 * the string that will be used to display the file
 * in the recent chooser
 * const gchar *mime_type;
 * the mime type of the file
 * const gchar **applications;
 * the list of applications that have registered the file
 * const gchar **groups;
 * the groups to which the file belongs to
 * gint age;
 * the number of days elapsed since the file has been registered
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
 * Warning
 * GtkFileSelection is deprecated and should not be used in newly-written code.
 * The GtkFileSelection struct contains the following GtkWidget fields:
 * GtkWidget *dir_list;
 * GtkWidget *file_list;
 * GtkWidget *selection_entry;
 * GtkWidget *selection_text;
 * GtkWidget *main_vbox;
 * GtkWidget *ok_button;
 * GtkWidget *cancel_button;
 * the two main buttons that signals should be connected
 */
public struct GtkFileSelection
{
	GtkWidget *dirList;
	GtkWidget *fileList;
	GtkWidget *selectionEntry;
	GtkWidget *selectionText;
	GtkWidget *mainVbox;
	GtkWidget *okButton;
	GtkWidget *cancelButton;
	GtkWidget *helpButton;
	GtkWidget *historyPulldown;
	GtkWidget *historyMenu;
	GList *historyList;
	GtkWidget *fileopDialog;
	GtkWidget *fileopEntry;
	char *fileopFile;
	void* cmplState;
	GtkWidget *fileopCDir;
	GtkWidget *fileopDelFile;
	GtkWidget *fileopRenFile;
	GtkWidget *buttonArea;
	GtkWidget *actionArea;
}


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
public struct GtkItemFactoryEntry
{
	char *path;
	char *accelerator;
	GtkItemFactoryCallback callback;
	uint callbackAction;
	/+* possible values:
	 * NULL -> "<Item>"
	 * "" -> "<Item>"
	 * "<Title>" -> create a title item
	 * "<Item>" -> create a simple item
	 * "<ImageItem>" -> create an item holding an image
	 * "<StockItem>" -> create an item holding a stock image
	 * "<CheckItem>" -> create a check item
	 * "<ToggleItem>" -> create a toggle item
	 * "<RadioItem>" -> create a radio item
	 * <path> -> path of a radio item to link against
	 * "<Separator>" -> create a separator
	 * "<Tearoff>" -> create a tearoff separator
	 * "<Branch>" -> create an item to hold sub items
	 * "<LastBranch>" -> create a right justified item to hold sub items
	+/
	char *itemType;
	/+* Extra data for some item types:
	 * ImageItem -> pointer to inlined pixbuf stream
	 * StockItem -> name of stock item
	+/
	void* extraData;
}


/**
 * Warning
 * GtkItemFactoryItem is deprecated and should not be used in newly-written code.
 */
public struct GtkItemFactoryItem
{
	char *path;
	GSList *widgets;
}


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
public struct GtkTooltipsData
{
	GtkTooltips *tooltips;
	GtkWidget *widget;
	char *tipText;
	char *tipPrivate;
}


/**
 * Main Gtk struct.
 * The GtkProgress struct contains private data only.
 * and should be accessed using the functions below.
 */
public struct GtkProgress{}


/*
 * Returns whether the style is attached to a window.
 * style :
 * a GtkStyle.
 */
// TODO
// #define GTK_STYLE_ATTACHED(style) (GTK_STYLE (style)->attach_count > 0)

/*
 * Warning
 * gtk_style_apply_default_pixmap is deprecated and should not be used in newly-written code. Use gtk_style_apply_default_background() instead.
 * Does the same as gtk_style_apply_default_background().
 */
// TODO
// #define gtk_style_apply_default_pixmap(s,gw,st,a,x,y,w,h) gtk_style_apply_default_background (s,gw,1,st,a,x,y,w,h)

/*
 * Returns TRUE if the version of the GTK+ header files is the same
 * as or newer than the passed-in version.
 * major :
 * major version (e.g. 1 for version 1.2.5)
 * minor :
 * minor version (e.g. 2 for version 1.2.5)
 * micro :
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
 * name :
 * the signal's name, e.g. clicked.
 * object_type :
 * the type that the signal operates on, e.g. GTK_TYPE_BUTTON.
 * Returns :
 * the signal's identifying number, or 0 if no signal was found.
 */
// TODO
// #define gtk_signal_lookup(name,object_type)

/*
 * Warning
 * gtk_signal_name is deprecated and should not be used in newly-written code. Use g_signal_name() instead.
 * Given the signal's identifier, finds its name.
 * Two different signals may have the same name, if they have differing types.
 * signal_id :
 * the signal's identifying number.
 * Returns :
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
 * object :
 * the object whose signal handlers you wish to stop.
 * signal_id :
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
 * $(DDOC_COMMENT example)
 * object :
 * the object associated with the signal, e.g. if a button
 * is getting pressed, this is that button.
 * name :
 * name of the signal.
 * func :
 * function pointer to attach to the signal.
 * func_data :
 * value to pass as to your function (through the marshaller).
 * Returns :
 * the connection id.
 */
// TODO
// #define gtk_signal_connect(object,name,func,func_data)

/*
 * Warning
 * gtk_signal_connect_after is deprecated and should not be used in newly-written code. Use g_signal_connect_after() instead.
 * Attaches a function pointer and user data to a signal
 * so that this handler will be called after the other handlers.
 * object :
 * the object associated with the signal.
 * name :
 * name of the signal.
 * func :
 * function pointer to attach to the signal.
 * func_data :
 * value to pass as to your function (through the marshaller).
 * Returns :
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
 * $(DDOC_COMMENT example)
 * object :
 * the object which emits the signal.
 * name :
 * the name of the signal.
 * func :
 * the function to callback.
 * slot_object :
 * the object to pass as the first parameter to func.
 * (Though it pretends to take an object, you can
 * really pass any gpointer as the slot_object .)
 * Returns :
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
 * object :
 * the object associated with the signal.
 * name :
 * name of the signal.
 * func :
 * function pointer to attach to the signal.
 * slot_object :
 * the object to pass as the first parameter to func.
 * Returns :
 * the connection id.
 */
// TODO
// #define gtk_signal_connect_object_after(object,name,func,slot_object)

/*
 * Warning
 * gtk_signal_disconnect is deprecated and should not be used in newly-written code. Use g_signal_handler_disconnect() instead.
 * Destroys a user-defined handler connection.
 * object :
 * the object which the handler pertains to.
 * handler_id :
 * the connection id.
 */
// TODO
// #define gtk_signal_disconnect(object,handler_id)

/*
 * Warning
 * gtk_signal_disconnect_by_func is deprecated and should not be used in newly-written code. Use g_signal_handlers_disconnect_by_func() instead.
 * Destroys all connections for a particular object, with
 * the given function-pointer and user-data.
 * object :
 * the object which emits the signal.
 * func :
 * the function pointer to search for.
 * data :
 * the user data to search for.
 */
// TODO
// #define gtk_signal_disconnect_by_func(object,func,data)

/*
 * Warning
 * gtk_signal_disconnect_by_data is deprecated and should not be used in newly-written code. Use g_signal_handlers_disconnect_matched() instead.
 * Destroys all connections for a particular object, with
 * the given user-data.
 * object :
 * the object which emits the signal.
 * data :
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
 * object :
 * the object which emits the signal to block.
 * handler_id :
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
 * object :
 * the object which emits the signal to block.
 * func :
 * the function pointer of the handler to block.
 * data :
 * the user data of the handler to block.
 */
// TODO
// #define gtk_signal_handler_block_by_func(object,func,data)

/*
 * Warning
 * gtk_signal_handler_block_by_data is deprecated and should not be used in newly-written code. Use g_signal_handlers_block_matched() instead.
 * Prevents all user-defined handlers with a certain user data from being invoked.
 * object :
 * the object which emits the signal we want to block.
 * data :
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
 * object :
 * the object which emits the signal we want to unblock.
 * handler_id :
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
 * object :
 * the object which emits the signal we want to unblock.
 * func :
 * the function pointer to search for.
 * data :
 * the user data to search for.
 */
// TODO
// #define gtk_signal_handler_unblock_by_func(object,func,data)

/*
 * Warning
 * gtk_signal_handler_unblock_by_data is deprecated and should not be used in newly-written code. Use g_signal_handlers_unblock_matched() instead.
 * Undoes block(s), to all signals for a particular object
 * with a particular user-data pointer
 * object :
 * the object which emits the signal we want to unblock.
 * data :
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
 * object :
 * the object to search for the desired user-defined handler.
 * signal_id :
 * the number of the signal to search for.
 * may_be_blocked :
 * whether it is acceptable to return a blocked
 * handler.
 * Returns :
 * the connection id, if a connection was found. 0 otherwise.
 */
// TODO
// #define gtk_signal_handler_pending(object,signal_id,may_be_blocked)

/*
 * Warning
 * gtk_signal_handler_pending_by_func is deprecated and should not be used in newly-written code.
 * Returns a connection id corresponding to a given signal id, object, function
 * pointer and user data.
 * object :
 * the object to search for the desired handler.
 * signal_id :
 * the number of the signal to search for.
 * may_be_blocked :
 * whether it is acceptable to return a blocked
 * handler.
 * func :
 * the function pointer to search for.
 * data :
 * the user data to search for.
 * Returns :
 * the connection id, if a handler was found. 0 otherwise.
 */
// TODO
// #define gtk_signal_handler_pending_by_func(object,signal_id,may_be_blocked,func,data)

/*
 * Warning
 * GTK_CLASS_NAME is deprecated and should not be used in newly-written code. Use g_type_name() and G_TYPE_FROM_CLASS() instead.
 * Returns the type name of class.
 * class :
 * a GtkTypeClass.
 */
// TODO
// #define GTK_CLASS_NAME(class)		(g_type_name (G_TYPE_FROM_CLASS (class)))

/*
 * Warning
 * GTK_CLASS_TYPE is deprecated and should not be used in newly-written code. Use G_TYPE_FROM_CLASS() instead.
 * Returns the type of class.
 * class :
 * a GtkTypeClass.
 */
// TODO
// #define GTK_CLASS_TYPE(class)		(G_TYPE_FROM_CLASS (class))

/*
 * Warning
 * GTK_TYPE_IS_OBJECT is deprecated and should not be used in newly-written code. Use G_TYPE_IS_OBJECT() instead.
 * Returns TRUE if type is a GTK_TYPE_OBJECT.
 * type :
 * a GtkType.
 */
// TODO
// #define GTK_TYPE_IS_OBJECT(type) (g_type_is_a ((type), GTK_TYPE_OBJECT))

/*
 * Warning
 * GTK_SIGNAL_FUNC is deprecated and should not be used in newly-written code.
 * Just a macroized cast into a GtkSignalFunc.
 */
// TODO
// #define GTK_SIGNAL_FUNC(f)	 G_CALLBACK(f)

/*
 * Warning
 * GTK_VALUE_CHAR is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_CHAR.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_CHAR(a) ((a).d.char_data)

/*
 * Warning
 * GTK_VALUE_UCHAR is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_UCHAR.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_UCHAR(a) ((a).d.uchar_data)

/*
 * Warning
 * GTK_VALUE_BOOL is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_BOOL.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_BOOL(a) ((a).d.bool_data)

/*
 * Warning
 * GTK_VALUE_INT is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_INT.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_INT(a) ((a).d.int_data)

/*
 * Warning
 * GTK_VALUE_UINT is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_UINT.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_UINT(a) ((a).d.uint_data)

/*
 * Warning
 * GTK_VALUE_LONG is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_LONG.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_LONG(a) ((a).d.long_data)

/*
 * Warning
 * GTK_VALUE_ULONG is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_ULONG.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_ULONG(a) ((a).d.ulong_data)

/*
 * Warning
 * GTK_VALUE_FLOAT is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_FLOAT.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_FLOAT(a) ((a).d.float_data)

/*
 * Warning
 * GTK_VALUE_DOUBLE is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_DOUBLE.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_DOUBLE(a) ((a).d.double_data)

/*
 * Warning
 * GTK_VALUE_STRING is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_STRING.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_STRING(a) ((a).d.string_data)

/*
 * Warning
 * GTK_VALUE_ENUM is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_ENUM.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_ENUM(a) ((a).d.int_data)

/*
 * Warning
 * GTK_VALUE_FLAGS is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_FLAGS.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_FLAGS(a) ((a).d.uint_data)

/*
 * Warning
 * GTK_VALUE_BOXED is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_BOXED.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_BOXED(a) ((a).d.pointer_data)

/*
 * Warning
 * GTK_VALUE_POINTER is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_POINTER.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_POINTER(a) ((a).d.pointer_data)

/*
 * Warning
 * GTK_VALUE_OBJECT is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_OBJECT.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_OBJECT(a) ((a).d.object_data)

/*
 * Warning
 * GTK_VALUE_SIGNAL is deprecated and should not be used in newly-written code.
 * Gets the value of a GtkArg whose GtkType is GTK_TYPE_SIGNAL.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_VALUE_SIGNAL(a) ((a).d.signal_data)

/*
 * Warning
 * GTK_RETLOC_CHAR is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_CHAR.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_CHAR(a) ((gchar*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_UCHAR is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_UCHAR.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_UCHAR(a) ((guchar*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_BOOL is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_BOOL.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_BOOL(a) ((gboolean*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_INT is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_INT.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_INT(a) ((gint*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_UINT is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_UINT.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_UINT(a) ((guint*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_LONG is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_LONG.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_LONG(a) ((glong*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_ULONG is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_ULONG.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_ULONG(a) ((gulong*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_FLOAT is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_FLOAT.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_FLOAT(a) ((gfloat*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_DOUBLE is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_DOUBLE.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_DOUBLE(a) ((gdouble*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_STRING is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_STRING.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_STRING(a) ((gchar**) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_ENUM is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_ENUM.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_ENUM(a) ((gint*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_FLAGS is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_FLAGS.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_FLAGS(a) ((guint*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_BOXED is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_BOXED.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_BOXED(a) ((gpointer*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_POINTER is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_POINTER.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_POINTER(a) ((gpointer*) (a).d.pointer_data)

/*
 * Warning
 * GTK_RETLOC_OBJECT is deprecated and should not be used in newly-written code.
 * If the GtkArg contains a pointer to the value, this macro will be a pointer to a GTK_TYPE_OBJECT.
 * a :
 * a GtkArg.
 */
// TODO
// #define GTK_RETLOC_OBJECT(a) ((GtkObject**) (a).d.pointer_data)

/*
 * Warning
 * gtk_type_name is deprecated and should not be used in newly-written code.
 * Returns a pointer to the name of a type, or NULL if it has none.
 * type :
 * a GtkType.
 * Returns :
 * a pointer to the name of a type, or NULL if it has none.
 */
// TODO
// #define gtk_type_name(type)		 g_type_name (type)

/*
 * Warning
 * gtk_type_from_name is deprecated and should not be used in newly-written code.
 * Gets the internal representation of a type, given its name.
 * name :
 * the name of a GTK+ type
 * Returns :
 * a GtkType.
 */
// TODO
// #define gtk_type_from_name(name)	 g_type_from_name (name)

/*
 * Warning
 * gtk_type_parent is deprecated and should not be used in newly-written code.
 * Returns the parent type of a GtkType.
 * type :
 * a GtkType.
 * Returns :
 * the GtkType of the parent.
 */
// TODO
// #define gtk_type_parent(type)		 g_type_parent (type)

/*
 * Warning
 * gtk_type_is_a is deprecated and should not be used in newly-written code.
 * Looks in the type hierarchy to see if type has is_a_type among its
 * ancestors. Do so with a simple lookup, not a loop.
 * type :
 * a GtkType.
 * is_a_type :
 * another GtkType.
 * Returns :
 * TRUE if type is a is_a_type.
 */
// TODO
// #define gtk_type_is_a(type, is_a_type)	 g_type_is_a ((type), (is_a_type))

/*
 * Warning
 * gtk_tree_model_get_iter_root is deprecated and should not be used in newly-written code.
 * A alternate name for gtk_tree_model_get_iter_first() provided for
 * compatibility reasons; this macro will be deprecated in future
 * versions of GTK+.
 * tree_model :
 * A GtkTreeModel.
 * iter :
 * uninitialized GtkTreeIter.
 * Returns :
 * TRUE, if iter was set.
 */
// TODO
// #define gtk_tree_model_get_iter_root(tree_model, iter) gtk_tree_model_get_iter_first(tree_model, iter)

/*
 * Warning
 * gtk_tree_model_get_iter_root is deprecated and should not be used in newly-written code.
 * A alternate name for gtk_tree_model_get_iter_first() provided for
 * compatibility reasons; this macro will be deprecated in future
 * versions of GTK+.
 * tree_model :
 * A GtkTreeModel.
 * iter :
 * uninitialized GtkTreeIter.
 * Returns :
 * TRUE, if iter was set.
 */
// TODO
// #define gtk_tree_model_get_iter_root(tree_model, iter) gtk_tree_model_get_iter_first(tree_model, iter)

/*
 * Warning
 * gtk_menu_append is deprecated and should not be used in newly-written code. Use gtk_menu_shell_append() instead.
 * Adds a new GtkMenuItem to the end of the menu's item list.
 * menu :
 * a GtkMenu.
 * child :
 * The GtkMenuItem to add.
 */
// TODO
// #define gtk_menu_append(menu,child) gtk_menu_shell_append ((GtkMenuShell *)(menu),(child))

/*
 * Warning
 * gtk_menu_prepend is deprecated and should not be used in newly-written code. Use gtk_menu_shell_prepend() instead.
 * Adds a new GtkMenuItem to the beginning of the menu's item list.
 * menu :
 * a GtkMenu.
 * child :
 * The GtkMenuItem to add.
 */
// TODO
// #define gtk_menu_prepend(menu,child) gtk_menu_shell_prepend ((GtkMenuShell *)(menu),(child))

/*
 * Warning
 * gtk_menu_insert is deprecated and should not be used in newly-written code. Use gtk_menu_shell_insert() instead.
 * Adds a new GtkMenuItem to the menu's item list at the position
 * indicated by position.
 * menu :
 * a GtkMenu.
 * child :
 * The GtkMenuItem to add.
 * pos :
 * The position in the item list where child is added.
 * Positions are numbered from 0 to n-1.
 */
// TODO
// #define gtk_menu_insert(menu,child,pos) gtk_menu_shell_insert ((GtkMenuShell *)(menu),(child),(pos))

/*
 * Warning
 * gtk_menu_bar_append is deprecated and should not be used in newly-written code. Use gtk_menu_shell_append() instead.
 * Adds a new GtkMenuItem to the end of the GtkMenuBar
 * menu :
 * a GtkMenuBar
 * child :
 * the GtkMenuItem to add
 */
// TODO
// #define gtk_menu_bar_append(menu,child)	 gtk_menu_shell_append ((GtkMenuShell *)(menu),(child))

/*
 * Warning
 * gtk_menu_bar_prepend is deprecated and should not be used in newly-written code. Use gtk_menu_shell_prepend() instead.
 * Adds a new GtkMenuItem to the beginning of the GtkMenuBar
 * menu :
 * a GtkMenuBar
 * child :
 * the GtkMenuItem to add
 */
// TODO
// #define gtk_menu_bar_prepend(menu,child) gtk_menu_shell_prepend ((GtkMenuShell *)(menu),(child))

/*
 * Warning
 * gtk_menu_bar_insert is deprecated and should not be used in newly-written code. Use gtk_menu_shell_insert() instead.
 * Adds a new GtkMenuItem to the GtkMenuBar at the position defined by position
 * menu :
 * a GtkMenuBar
 * child :
 * the GtkMenuItem to add
 * pos :
 * the position in the item list where the child is added.
 */
// TODO
// #define gtk_menu_bar_insert(menu,child,pos) gtk_menu_shell_insert ((GtkMenuShell *)(menu),(child),(pos))

/*
 * Warning
 * gtk_menu_item_right_justify is deprecated and should not be used in newly-written code.
 * Sets the menu item to be right-justified. Only useful for menu bars.
 * menu_item :
 * the menu item
 * Property Details
 * The "accel-path" property
 *  "accel-path" gchar* : Read / Write
 * Sets the accelerator path of the menu item, through which runtime
 * changes of the menu item's accelerator caused by the user can be
 * identified and saved to persistant storage.
 * Default value: NULL
 * Since 2.14
 */
// TODO
// #define gtk_menu_item_right_justify(menu_item) gtk_menu_item_set_right_justified ((menu_item), TRUE)

/*
 * Warning
 * gtk_button_box_get_spacing is deprecated and should not be used in newly-written code. Use gtk_box_get_spacing() instead.
 * Retrieves how much space a button box is placing between each child button.
 * b :
 * a GtkButtonBox
 * Returns :
 * the current spacing applied to the buttons in widget
 */
// TODO
// #define gtk_button_box_get_spacing(b) gtk_box_get_spacing (GTK_BOX (b))

/*
 * Warning
 * gtk_button_box_set_spacing is deprecated and should not be used in newly-written code. Use gtk_box_set_spacing() instead.
 * Sets the amount of spacing between buttons in a given button box.
 * b :
 * a GtkButtonBox
 * s :
 * the number of pixels of spacing
 */
// TODO
// #define gtk_button_box_set_spacing(b,s) gtk_box_set_spacing (GTK_BOX (b), s)

/*
 */
// TODO
// #define GTK_IS_RESIZE_CONTAINER(widget) (GTK_IS_CONTAINER (widget)  ((GtkContainer*) (widget))->resize_mode != GTK_RESIZE_PARENT)

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
 * Warning
 * GTK_OBJECT_FLAGS has been deprecated since version 2.22 and should not be used in newly-written code. Do not re-use GtkObject flags but use your own variable to
 *  store flags.
 * Gets the GtkObjectFlags for an object without directly
 * accessing its members.
 * obj :
 * the object whose flags are returned.
 */
// TODO
// #define GTK_OBJECT_FLAGS(obj)		 (GTK_OBJECT (obj)->flags)

/*
 * Warning
 * GTK_OBJECT_FLOATING is deprecated and should not be used in newly-written code.
 * Evaluates to TRUE if the object still has its floating reference count.
 * See the overview documentation for GtkObject.
 * obj :
 * the object to examine.
 */
// TODO
// #define GTK_OBJECT_FLOATING(obj)	 (g_object_is_floating (obj))

/*
 * Warning
 * gtk_paned_gutter_size is deprecated and should not be used in newly-written code.
 * Old name for gtk_paned_set_gutter_size().
 * p :
 * a paned widget
 * s :
 * the width of the gutter in pixels
 */
// TODO
// #define gtk_paned_gutter_size(p,s)		(void) 0

/*
 * Warning
 * gtk_paned_set_gutter_size is deprecated and should not be used in newly-written code.
 * In older versions of GTK+, this function used to set the width of the
 * gutter (the area between the two panes). It does nothing now.
 * p :
 * a paned widget
 * s :
 * the width of the gutter in pixels
 */
// TODO
// #define gtk_paned_set_gutter_size(p,s)		(void) 0

/*
 * Warning
 * GTK_WIDGET_TYPE has been deprecated since version 2.20 and should not be used in newly-written code. Use G_OBJECT_TYPE() instead.
 * Gets the type of a widget.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_TYPE(wid)		 (GTK_OBJECT_TYPE (wid))

/*
 * Warning
 * GTK_WIDGET_STATE has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_state() instead.
 * wid :
 * a GtkWidget.
 * Returns :
 * the current state of the widget, as a GtkStateType.
 */
// TODO
// #define GTK_WIDGET_STATE(wid)		 (GTK_WIDGET (wid)->state)

/*
 * Warning
 * GTK_WIDGET_SAVED_STATE has been deprecated since version 2.20 and should not be used in newly-written code. Do not used it.
 * wid :
 * a GtkWidget.
 * Returns :
 * the saved state of the widget, as a GtkStateType.
 * The saved state will be restored when a widget gets sensitive
 * again, after it has been made insensitive with gtk_widget_set_state()
 * or gtk_widget_set_sensitive().
 */
// TODO
// #define GTK_WIDGET_SAVED_STATE(wid)	 (GTK_WIDGET (wid)->saved_state)

/*
 * Warning
 * GTK_WIDGET_FLAGS has been deprecated since version 2.20 and should not be used in newly-written code. Use the proper function to test individual states:
 * gtk_widget_get_app_paintable(), gtk_widget_get_can_default(),
 * gtk_widget_get_can_focus(), gtk_widget_get_double_buffered(),
 * gtk_widget_has_default(), gtk_widget_is_drawable(),
 * gtk_widget_has_focus(), gtk_widget_has_grab(), gtk_widget_get_mapped(),
 * gtk_widget_get_has_window(), gtk_widget_has_rc_style(),
 * gtk_widget_get_realized(), gtk_widget_get_receives_default(),
 * gtk_widget_get_sensitive(), gtk_widget_is_sensitive(),
 * gtk_widget_is_toplevel() or gtk_widget_get_visible().
 * wid :
 * a GtkWidget.
 * Returns :
 * the widget flags from wid.
 */
// TODO
// #define GTK_WIDGET_FLAGS(wid)		 (GTK_OBJECT_FLAGS (wid))

/*
 * Warning
 * GTK_WIDGET_TOPLEVEL has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_is_toplevel() instead.
 * Evaluates to TRUE if the widget is a toplevel widget.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_TOPLEVEL(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_TOPLEVEL) != 0)

/*
 * Warning
 * GTK_WIDGET_NO_WINDOW has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_has_window() instead.
 * Evaluates to TRUE if the widget doesn't have an own GdkWindow.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_NO_WINDOW(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_NO_WINDOW) != 0)

/*
 * Warning
 * GTK_WIDGET_REALIZED has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_realized() instead.
 * Evaluates to TRUE if the widget is realized.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_REALIZED(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_REALIZED) != 0)

/*
 * Warning
 * GTK_WIDGET_MAPPED has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_mapped() instead.
 * Evaluates to TRUE if the widget is mapped.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_MAPPED(wid)		 ((GTK_WIDGET_FLAGS (wid)  GTK_MAPPED) != 0)

/*
 * Warning
 * GTK_WIDGET_VISIBLE has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_visible() instead.
 * Evaluates to TRUE if the widget is visible.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_VISIBLE(wid)		 ((GTK_WIDGET_FLAGS (wid)  GTK_VISIBLE) != 0)

/*
 * Warning
 * GTK_WIDGET_DRAWABLE has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_is_drawable() instead.
 * Evaluates to TRUE if the widget is mapped and visible.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_DRAWABLE(wid)	 (GTK_WIDGET_VISIBLE (wid)  GTK_WIDGET_MAPPED (wid))

/*
 * Warning
 * GTK_WIDGET_SENSITIVE has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_sensitive() instead.
 * Evaluates to TRUE if the GTK_SENSITIVE flag has be set on the widget.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_SENSITIVE(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_SENSITIVE) != 0)

/*
 * Warning
 * GTK_WIDGET_PARENT_SENSITIVE has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_sensitive() on the parent widget instead.
 * Evaluates to TRUE if the GTK_PARENT_SENSITIVE flag has be set on the widget.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_PARENT_SENSITIVE(wid) ((GTK_WIDGET_FLAGS (wid)  GTK_PARENT_SENSITIVE) != 0)

/*
 * Warning
 * GTK_WIDGET_IS_SENSITIVE has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_is_sensitive() instead.
 * Evaluates to TRUE if the widget is effectively sensitive.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_IS_SENSITIVE(wid)

/*
 * Warning
 * GTK_WIDGET_CAN_FOCUS has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_can_focus() instead.
 * Evaluates to TRUE if the widget is able to handle focus grabs.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_CAN_FOCUS(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_CAN_FOCUS) != 0)

/*
 * Warning
 * GTK_WIDGET_HAS_FOCUS has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_has_focus() instead.
 * Evaluates to TRUE if the widget has grabbed the focus and no other
 * widget has done so more recently.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_HAS_FOCUS(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_HAS_FOCUS) != 0)

/*
 * Warning
 * GTK_WIDGET_CAN_DEFAULT has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_can_default() instead.
 * Evaluates to TRUE if the widget is allowed to receive the default action
 * via gtk_widget_grab_default().
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_CAN_DEFAULT(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_CAN_DEFAULT) != 0)

/*
 * Warning
 * GTK_WIDGET_RECEIVES_DEFAULT has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_receives_default() instead.
 * Evaluates to TRUE if the widget when focused will receive the default action
 * even if there is a different widget set as default.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_RECEIVES_DEFAULT(wid) ((GTK_WIDGET_FLAGS (wid)  GTK_RECEIVES_DEFAULT) != 0)

/*
 * Warning
 * GTK_WIDGET_HAS_DEFAULT has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_has_default() instead.
 * Evaluates to TRUE if the widget currently is receiving the default action.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_HAS_DEFAULT(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_HAS_DEFAULT) != 0)

/*
 * Warning
 * GTK_WIDGET_HAS_GRAB has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_has_grab() instead.
 * Evaluates to TRUE if the widget is in the grab_widgets stack, and will be
 * the preferred one for receiving events other than ones of cosmetic value.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_HAS_GRAB(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_HAS_GRAB) != 0)

/*
 * Warning
 * GTK_WIDGET_RC_STYLE has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_has_rc_style() instead.
 * Evaluates to TRUE if the widget's style has been looked up through the rc
 * mechanism.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_RC_STYLE(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_RC_STYLE) != 0)

/*
 * Warning
 * GTK_WIDGET_COMPOSITE_CHILD has been deprecated since version 2.20 and should not be used in newly-written code. Use the "composite-child" property instead.
 * Evaluates to TRUE if the widget is a composite child of its parent.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_COMPOSITE_CHILD(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_COMPOSITE_CHILD) != 0)

/*
 * Warning
 * GTK_WIDGET_APP_PAINTABLE has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_app_paintable() instead.
 * Evaluates to TRUE if the GTK_APP_PAINTABLE flag has been set on the widget.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_APP_PAINTABLE(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_APP_PAINTABLE) != 0)

/*
 * Warning
 * GTK_WIDGET_DOUBLE_BUFFERED has been deprecated since version 2.20 and should not be used in newly-written code. Use gtk_widget_get_double_buffered() instead.
 * Evaluates to TRUE if the GTK_DOUBLE_BUFFERED flag has been set on the widget.
 * wid :
 * a GtkWidget.
 */
// TODO
// #define GTK_WIDGET_DOUBLE_BUFFERED(wid)	 ((GTK_WIDGET_FLAGS (wid)  GTK_DOUBLE_BUFFERED) != 0)

/*
 * Warning
 * GTK_WIDGET_SET_FLAGS has been deprecated since version 2.22 and should not be used in newly-written code. Use the proper function instead: gtk_widget_set_app_paintable(),
 *  gtk_widget_set_can_default(), gtk_widget_set_can_focus(),
 *  gtk_widget_set_double_buffered(), gtk_widget_set_has_window(),
 *  gtk_widget_set_mapped(), gtk_widget_set_no_show_all(),
 *  gtk_widget_set_realized(), gtk_widget_set_receives_default(),
 *  gtk_widget_set_sensitive() or gtk_widget_set_visible().
 * Turns on certain widget flags.
 * wid :
 * a GtkWidget.
 * flag :
 * the flags to set.
 */
// TODO
// #define GTK_WIDGET_SET_FLAGS(wid,flag)	 G_STMT_START{ (GTK_WIDGET_FLAGS (wid) |= (flag)); }G_STMT_END

/*
 * Warning
 * GTK_WIDGET_UNSET_FLAGS has been deprecated since version 2.22 and should not be used in newly-written code. Use the proper function instead. See GTK_WIDGET_SET_FLAGS().
 * Turns off certain widget flags.
 * wid :
 * a GtkWidget.
 * flag :
 * the flags to unset.
 */
// TODO
// #define GTK_WIDGET_UNSET_FLAGS(wid,flag) G_STMT_START{ (GTK_WIDGET_FLAGS (wid) = ~(flag)); }G_STMT_END

/*
 * Warning
 * gtk_widget_set_rc_style has been deprecated since version 2.0 and should not be used in newly-written code. Use gtk_widget_set_style() with a NULL style argument instead.
 * Equivalent to gtk_widget_set_style (widget, NULL).
 * widget :
 * a GtkWidget.
 */
// TODO
// #define gtk_widget_set_rc_style(widget) (gtk_widget_set_style (widget, NULL))

/*
 * Warning
 * gtk_widget_restore_default_style has been deprecated since version 2.0 and should not be used in newly-written code. Use gtk_widget_set_style() with a NULL style argument instead.
 * Equivalent to gtk_widget_set_style (widget, NULL).
 * widget :
 * a GtkWidget.
 */
// TODO
// #define gtk_widget_restore_default_style(widget) (gtk_widget_set_style (widget, NULL))

/*
 * Warning
 * gtk_widget_push_visual is deprecated and should not be used in newly-written code.
 * This function is deprecated; it does nothing.
 * visual :
 * a visual
 */
// TODO
// #define gtk_widget_push_visual(visual) ((void) 0)

/*
 * Warning
 * gtk_widget_set_default_visual is deprecated and should not be used in newly-written code.
 * This function is deprecated; it does nothing.
 * visual :
 * a visual
 */
// TODO
// #define gtk_widget_set_default_visual(visual) ((void) 0)

/*
 * Warning
 * gtk_widget_set_visual is deprecated and should not be used in newly-written code.
 * This function is deprecated; it does nothing.
 * widget :
 * a GtkWidget
 * visual :
 * a visual
 */
// TODO
// #define gtk_widget_set_visual(widget,visual) ((void) 0)

/*
 * This macro should be used to emit a warning about and unexpected
 * type value in a GtkBuildable add_child implementation.
 * object :
 * the GtkBuildable on which the warning ocurred
 * type :
 * the unexpected type value
 */
// TODO
// #define GTK_BUILDER_WARN_INVALID_CHILD_TYPE(object, type)

/*
 * Each GTK+ module must have a function gtk_module_init() with this prototype.
 * This function is called after loading the module with the argc and argv
 * cleaned from any arguments that GTK+ handles itself.
 * argc :
 * Pointer to the number of arguments remaining after gtk_init().
 * argv :
 * Points to the argument vector.
 */
// void (*GtkModuleInitFunc) (gint *argc,  gchar ***argv);
public alias extern(C) void function(gint* argc, gchar*** argv) GtkModuleInitFunc;

/*
 * Since 2.2
 */
// void (*GtkModuleDisplayInitFunc) (GdkDisplay *display);
public alias extern(C) void function(GdkDisplay* display) GtkModuleDisplayInitFunc;

/*
 * Key snooper functions are called before normal event delivery.
 * They can be used to implement custom key event handling.
 * grab_widget :
 * the widget to which the event will be delivered.
 * event :
 * the key event.
 * func_data :
 * the func_data supplied to gtk_key_snooper_install().
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
 * Since 2.2
 */
// gboolean (*GtkAccelGroupFindFunc) (GtkAccelKey *key,  GClosure *closure,  gpointer data);
public alias extern(C) int function(GtkAccelKey* key, GClosure* closure, void* data) GtkAccelGroupFindFunc;

/*
 * data :
 * accel_path :
 * accel_key :
 * accel_mods :
 * changed :
 */
// void (*GtkAccelMapForeach) (gpointer data,  const gchar *accel_path,  guint accel_key,  GdkModifierType accel_mods,  gboolean changed);
public alias extern(C) void function(void* data, char* accelPath, uint accelKey, GdkModifierType accelMods, int changed) GtkAccelMapForeach;

/*
 *  A function to be called when the results of gtk_clipboard_request_contents()
 *  are received, or when the request fails.
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
 *  A function to be called when the results of gtk_clipboard_request_text()
 *  are received, or when the request fails.
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
 *  A function to be called when the results of gtk_clipboard_request_image()
 *  are received, or when the request fails.
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
 *  A function to be called when the results of gtk_clipboard_request_targets()
 *  are received, or when the request fails.
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
 * the info field corresponding to the requested
 * target from the GtkTargetEntry array passed to
 * gtk_clipboard_set_with_data() or gtk_clipboard_set_with_owner().
 * user_data_or_owner :
 * the user_data argument passed to gtk_clipboard_set_with_data(), or
 * the owner argument passed to gtk_clipboard_set_with_owner()
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
 * the user_data argument passed to gtk_clipboard_set_with_data(), or
 * the owner argument passed to gtk_clipboard_set_with_owner()
 */
// void (*GtkClipboardClearFunc) (GtkClipboard *clipboard,  gpointer user_data_or_owner);
public alias extern(C) void function(GtkClipboard* clipboard, void* userDataOrOwner) GtkClipboardClearFunc;

/*
 * Signal Details
 * The "realize" signal
 * void user_function (GtkStyle *style,
 *  gpointer user_data) : Run First
 * Emitted when the style has been initialized for a particular
 * colormap and depth. Connecting to this signal is probably seldom
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
 * Warning
 * GtkSignalFunc is deprecated and should not be used in newly-written code.
 * Defines a function pointer.
 */
// void (*GtkSignalFunc) (void);
public alias extern(C) void function() GtkSignalFunc;

/*
 * Warning
 * GtkFunction has been deprecated since version 2.24 and should not be used in newly-written code. Use GSourceFunc() instead.
 * Defines a function pointer.
 * data :
 * gpointer
 * Returns :
 * gint
 */
// gboolean (*GtkFunction) (gpointer data);
public alias extern(C) int function(void* data) GtkFunction;

/*
 * Warning
 * GtkDestroyNotify is deprecated and should not be used in newly-written code.
 * Defines a function pointer.
 * data :
 * gpointer
 */
// void (*GtkDestroyNotify) (gpointer data);
public alias extern(C) void function(void* data) GtkDestroyNotify;

/*
 * Warning
 * GtkCallbackMarshal has been deprecated since version 2.24 and should not be used in newly-written code.
 * Defines a function pointer.
 * object :
 * GtkObject*
 * data :
 * gpointer
 * n_args :
 * guint
 * args :
 * GtkArg*
 */
// void (*GtkCallbackMarshal) (GtkObject *object,  gpointer data,  guint n_args,  GtkArg *args);
public alias extern(C) void function(GtkObject* object, void* data, uint nArgs, GtkArg* args) GtkCallbackMarshal;

/*
 * The type of a function which is called when a URL or email
 * link is activated.
 * about :
 * the GtkAboutDialog in which the link was activated
 * link_ :
 * the URL or email address to which the activated link points
 * data :
 * user data that was passed when the function was registered
 * with gtk_about_dialog_set_email_hook() or
 * gtk_about_dialog_set_url_hook()
 */
// void (*GtkAboutDialogActivateLinkFunc) (GtkAboutDialog *about,  const gchar *link_,  gpointer data);
public alias extern(C) void function(GtkAboutDialog* about, char* link, void* data) GtkAboutDialogActivateLinkFunc;

/*
 * A function used by gtk_assistant_set_forward_page_func() to know which
 * is the next page given a current one. It's called both for computing the
 * next page when the user presses the "forward" button and for handling
 * the behavior of the "last" button.
 * current_page :
 * The page number used to calculate the next page.
 * data :
 * user data.
 * Returns :
 * The next page number.
 */
// gint (*GtkAssistantPageFunc) (gint current_page,  gpointer data);
public alias extern(C) int function(int currentPage, void* data) GtkAssistantPageFunc;

/*
 * The type of a function which is called when the GtkLinkButton is
 * clicked.
 * button :
 * the GtkLinkButton which was clicked
 * link_ :
 * the URI to which the clicked GtkLinkButton points
 * user_data :
 * user data that was passed when the function was registered
 * with gtk_link_button_set_uri_hook()
 */
// void (*GtkLinkButtonUriFunc) (GtkLinkButton *button,  const gchar *link_,  gpointer user_data);
public alias extern(C) void function(GtkLinkButton* button, char* link, void* userData) GtkLinkButtonUriFunc;

/*
 * A function which decides whether the row indicated by iter matches a given
 * key, and should be displayed as a possible completion for key. Note that
 * key is normalized and case-folded (see g_utf8_normalize() and
 * g_utf8_casefold()). If this is not appropriate, match functions have access
 * to the unmodified key via gtk_entry_get_text (GTK_ENTRY (gtk_entry_completion_get_entry ())).
 * completion :
 * the GtkEntryCompletion
 * key :
 * the string to match, normalized and case-folded
 * iter :
 * a GtkTreeIter indicating the row to match
 * user_data :
 * user data given to gtk_entry_completion_set_match_func()
 * Returns :
 * TRUE if iter should be displayed as a possible completion for key
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
 * the GtkTextsBuffer to serialize
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
 * model :
 * The GtkTreeModel currently being iterated
 * path :
 * The current GtkTreePath
 * iter :
 * The current GtkTreeIter
 * data :
 * The user data passed to gtk_tree_model_foreach()
 * Returns :
 * TRUE to stop iterating, FALSE to continue.
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
 * user data
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
 * user data
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
 * A GtkTreeColumn
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
 * user data
 * Returns :
 * TRUE, if column can be dropped in this spot
 */
// gboolean (*GtkTreeViewColumnDropFunc) (GtkTreeView *tree_view,  GtkTreeViewColumn *column,  GtkTreeViewColumn *prev_column,  GtkTreeViewColumn *next_column,  gpointer data);
public alias extern(C) int function(GtkTreeView* treeView, GtkTreeViewColumn* column, GtkTreeViewColumn* prevColumn, GtkTreeViewColumn* nextColumn, void* data) GtkTreeViewColumnDropFunc;

/*
 * Function used for gtk_tree_view_map_expanded_rows.
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
 * user data from gtk_tree_view_set_search_equal_func()
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
 * user data
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
 * user data given to gtk_tree_model_filter_set_visible_func()
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
 * user data given to gtk_tree_model_filter_set_modify_func()
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
 * A user function supplied when calling gtk_menu_popup() which controls the
 * positioning of the menu when it is displayed. The function sets the x
 * and y parameters to the coordinates where the menu is to be drawn.
 * To make the menu appear on a different monitor than the mouse pointer,
 * gtk_menu_set_monitor() must be called.
 * menu :
 * a GtkMenu.
 * x :
 * address of the gint representing the horizontal position where the
 * menu shall be drawn. This is an output parameter.
 * y :
 * address of the gint representing the vertical position where the
 * menu shall be drawn. This is an output parameter.
 * push_in :
 * This parameter controls how menus placed outside the monitor are handled.
 * If this is set to TRUE and part of the menu is outside the monitor then
 * GTK+ pushes the window into the visible area, effectively modifying the
 * popup position.
 * Note that moving and possibly resizing the menu around will alter the
 * scroll position to keep the menu items "in place", i.e. at the same monitor
 * position they would have been without resizing.
 * In practice, this behavior is only useful for combobox popups or option
 * menus and cannot be used to simply confine a menu to monitor boundaries.
 * In that case, changing the scroll offset is not desirable.
 * user_data :
 * the data supplied by the user in the gtk_menu_popup() data
 * parameter.
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
// void (*GtkColorSelectionChangePaletteFunc)  (const GdkColor *colors,  gint n_colors);
public alias extern(C) void function(GdkColor* colors, int nColors) GtkColorSelectionChangePaletteFunc;

/*
 * Since 2.2
 */
// void (*GtkColorSelectionChangePaletteWithScreenFunc)  (GdkScreen *screen,  const GdkColor *colors,  gint n_colors);
public alias extern(C) void function(GdkScreen* screen, GdkColor* colors, int nColors) GtkColorSelectionChangePaletteWithScreenFunc;

/*
 * The type of function that is used with custom filters,
 * see gtk_file_filter_add_custom().
 * filter_info :
 * a GtkFileFilterInfo that is filled according
 * to the needed flags passed to gtk_file_filter_add_custom()
 * data :
 * user data passed to gtk_file_filter_add_custom()
 * Returns :
 * TRUE if the file should be displayed
 */
// gboolean (*GtkFileFilterFunc) (const GtkFileFilterInfo *filter_info,  gpointer data);
public alias extern(C) int function(GtkFileFilterInfo* filterInfo, void* data) GtkFileFilterFunc;

/*
 * A function used by GtkNotebook when a detachable tab is dropped
 * in the root window, it's used to create a window containing a notebook
 * where the tab will be attached. This function will also be responsible
 * of moving/resizing the window and adding the necessary properties to
 * the notebook (i.e.: group-id).
 * If the function returns NULL, the drag will be cancelled.
 * source :
 * The source GtkNotebook of the drag operation
 * page :
 * the child GtkWidget affected
 * x :
 * the X coordinate where the drop happens
 * y :
 * the Y coordinate where the drop happens
 * data :
 * user data
 * Returns :
 * The created GtkNotebook where the tab will be attached, or NULL to cancel the drag
 */
// GtkNotebook * (*GtkNotebookWindowCreationFunc) (GtkNotebook *source,  GtkWidget *page,  gint x,  gint y,  gpointer data);
public alias extern(C) GtkNotebook * function(GtkNotebook* source, GtkWidget* page, int x, int y, void* data) GtkNotebookWindowCreationFunc;

/*
 * The type of function that is passed to gtk_print_run_page_setup_dialog_async().
 * This function will be called when the page setup dialog is dismissed, and
 * also serves as destroy notify for data.
 * page_setup :
 * the GtkPageSetup that has been
 * data :
 * user data that has been passed to
 * gtk_print_run_page_setup_dialog_async().
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
 * user data passed to gtk_enumerate_printers()
 * Returns :
 * TRUE to stop the enumeration, FALSE to continue
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
// void (*GtkPrintJobCompleteFunc) (GtkPrintJob *print_job,  gpointer user_data,  GError *error);
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
 * user-supplied data
 */
// void (*GtkCallback) (GtkWidget *widget,  gpointer data);
public alias extern(C) void function(GtkWidget* widget, void* data) GtkCallback;

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
 * connection process.
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

/*
 * Warning
 * GtkPrintFunc is deprecated and should not be used in newly-written code.
 */
// void (*GtkPrintFunc) (gpointer func_data,  const gchar *str);
public alias extern(C) void function(void* funcData, char* str) GtkPrintFunc;

/*
 * The function used to translate messages in e.g. GtkIconFactory
 * and GtkActionGroup.
 * path :
 * The id of the message. In GtkItemFactory this will be a path
 * from a GtkItemFactoryEntry, in GtkActionGroup, it will be a label
 * or tooltip from a GtkActionEntry.
 * func_data :
 * user data passed in when registering the function
 * Returns :
 * the translated message
 */
// gchar * (*GtkTranslateFunc) (const gchar *path,  gpointer func_data);
public alias extern(C) char * function(char* path, void* funcData) GtkTranslateFunc;

/*
 * Warning
 * GtkItemFactoryCallback is deprecated and should not be used in newly-written code.
 */
// void (*GtkItemFactoryCallback) ();
public alias extern(C) void function() GtkItemFactoryCallback;

/*
 * Warning
 * GtkItemFactoryCallback1 is deprecated and should not be used in newly-written code.
 */
// void (*GtkItemFactoryCallback1) (gpointer callback_data,  guint callback_action,  GtkWidget *widget);
public alias extern(C) void function(void* callbackData, uint callbackAction, GtkWidget* widget) GtkItemFactoryCallback1;

/*
 * Warning
 * GtkItemFactoryCallback2 is deprecated and should not be used in newly-written code.
 */
// void (*GtkItemFactoryCallback2) (GtkWidget *widget,  gpointer callback_data,  guint callback_action);
public alias extern(C) void function(GtkWidget* widget, void* callbackData, uint callbackAction) GtkItemFactoryCallback2;


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