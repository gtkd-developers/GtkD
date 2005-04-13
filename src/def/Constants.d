/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
module def.Constants;
 
import ddi.KeySyms;
 
/**
 * Contains all public constantes in DUI format.
 */
public:

enum DUIType {
	INVALID = 0,
	NONE = 4,
	INTERFACE = 10,
	CHAR = 12,
	UCHAR = 16,
	BOOLEAN = 20,
	INT = 24,
	UINT = 28,
	LONG = 32,
	ULONG = 36,
	INT64 = 40,
	UINT64 = 44,
	ENUM = 48,
	FLAGS = 52,
	FLOAT = 56,
	DOUBLE = 60,
	STRING = 64,
	POINTER = 68,
	BOXED = 72,
	PARAM = 76,
	OBJECT = 80,
	//PIXBUF = 134614632,
}

alias DUIType GType;

alias uint gsize;
alias int gssize;

enum GLibSysdef
{
	POLLIN =1,
	POLLOUT =4,
	POLLPRI =2,
	POLLHUP =16,
	POLLERR =8,
	POLLNVAL =32
}


enum AnchorType
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
  N		= NORTH,
  NW		= NORTH_WEST,
  NE		= NORTH_EAST,
  S		= SOUTH,
  SW		= SOUTH_WEST,
  SE		= SOUTH_EAST,
  W		= WEST,
  E		= EAST
}

enum ConnectFlags
{
	NONE	= 0,
	AFTER	= 1 << 0,
	SWAPPED	= 1 << 1
}


/** Arrow types */
enum ArrowType
{
  UP,
  DOWN,
  LEFT,
  RIGHT
}

/** Attach options (for tables) */
enum AttachOptions
{
  EXPAND = 1 << 0,
  SHRINK = 1 << 1,
  FILL   = 1 << 2
}

/** Button box styles */
enum ButtonBoxStyle 
{
  DEFAULT_STYLE,
  SPREAD,
  EDGE,
  START,
  END
}

/** Curve types */
enum CurveType
{
  LINEAR,       /* linear interpolation */
  SPLINE,       /* spline interpolation */
  FREE          /* free form curve */
}
 
enum  DeleteType{
  CHARS,
  WORD_ENDS,           /* delete only the portion of the word to the
								   * left/right of cursor if we're in the middle
								   * of a word */
  WORDS,
  DISPLAY_LINES,
  DISPLAY_LINE_ENDS,
  PARAGRAPH_ENDS,      /* like C-k in Emacs (or its reverse) */
  PARAGRAPHS,          /* C-k in pico, kill whole line */
  WHITESPACE           /* M-\ in Emacs */
}

/** Focus movement types */
enum DirectionType
{
  TAB_FORWARD,
  TAB_BACKWARD,
  UP,
  DOWN,
  LEFT,
  RIGHT
}

/** Expander styles */
enum ExpanderStyle
{
  COLLAPSED,
  SEMI_COLLAPSED,
  SEMI_EXPANDED,
  EXPANDED
}

/** Built-in stock icon sizes */
enum IconSize
{
  INVALID,
  MENU,
  SMALL_TOOLBAR,
  LARGE_TOOLBAR,
  BUTTON,
  DND,
  DIALOG
}

//#ifndef GTK_DISABLE_DEPRECATED
/** side types */
enum SideType
{
  TOP,
  BOTTOM,
  LEFT,
  RIGHT
}
//#endif /* GTK_DISABLE_DEPRECATED */

/** Reading directions for text */
enum TextDirection
{
  NONE,
  LTR,
  RTL
}

/** justification for label and maybe other widgets (text?) */
enum Justification
{
  LEFT,
  RIGHT,
  CENTER,
  FILL
}

alias Justification Justify;

//#ifndef GTK_DISABLE_DEPRECATED
/** GtkPatternSpec match types */
enum MatchType
{
  ALL,       /* "*A?A*" */
  ALL_TAIL,  /* "*A?AA" */
  HEAD,      /* "AAAA*" */
  TAIL,      /* "*AAAA" */
  EXACT,     /* "AAAAA" */
  LAST
}
//#endif /* GTK_DISABLE_DEPRECATED */

/** Menu keyboard movement types */
enum MenuDirectionType
{
  PARENT,
  CHILD,
  NEXT,
  PREV
}

enum MetricType
{
  PIXELS,
  INCHES,
  CENTIMETERS
}

enum  MovementStep
{
  LOGICAL_POSITIONS, /* move by forw/back graphemes */
  VISUAL_POSITIONS,  /* move by left/right graphemes */
  WORDS,             /* move by forward/back words */
  DISPLAY_LINES,     /* move up/down lines (wrapped lines) */
  DISPLAY_LINE_ENDS, /* move up/down lines (wrapped lines) */
  PARAGRAPHS,        /* move up/down paragraphs (newline-ended lines) */
  PARAGRAPH_ENDS,    /* move to either end of a paragraph */
  PAGES,	          /* move by pages */
  BUFFER_ENDS        /* move to ends of the buffer */
}

/** Orientation for toolbars, etc. */
enum Orientation
{
  HORIZONTAL,
  VERTICAL
}

/** Placement type for scrolled window */
enum CornerType
{
  TOP_LEFT,
  BOTTOM_LEFT,
  TOP_RIGHT,
  BOTTOM_RIGHT
}

/** Packing types (for boxes) */
enum PackType
{
  START,
  END
}

alias PackType GtkPackType;

/** priorities for path lookups */
enum PathPriorityType
{
  LOWEST      = 0,
  GTK	    = 4,
  APPLICATION = 8,
  THEME       = 10,
  RC          = 12,
  HIGHEST     = 15
}
//#define GTK_PATH_PRIO_MASK 0x0f

/** widget path types */
enum PathType
{
  WIDGET,
  WIDGET_CLASS,
  CLASS
}

/** Scrollbar policy types (for scrolled windows) */
enum PolicyType
{
  ALWAYS,
  AUTOMATIC,
  NEVER
}

enum PositionType
{
  LEFT,
  RIGHT,
  TOP,
  BOTTOM
}

//#ifndef GTK_DISABLE_DEPRECATED
enum PreviewType
{
  COLOR,
  GRAYSCALE
}
//#endif /* GTK_DISABLE_DEPRECATED */

/** Style for buttons */
enum ReliefStyle
{
  NORMAL,
  HALF,
  NONE
}

/** Resize type */
enum ResizeMode
{
  PARENT,		/* Pass resize request to the parent */
  QUEUE,		/* Queue resizes on this widget */
  IMMEDIATE		/* Perform the resizes now */
}

//#ifndef GTK_DISABLE_DEPRECATED
/* signal run types */
//enum SignalRunType			/*< flags >*/
//{
//  FIRST      = gdkenumtypes.h,
//  LAST       = G_SIGNAL_RUN_LAST,
//  BOTH       = (FIRST | LAST),
//  NO_RECURSE = G_SIGNAL_NO_RECURSE,
//  ACTION     = G_SIGNAL_ACTION,
//  NO_HOOKS   = G_SIGNAL_NO_HOOKS
//};
//#endif /* GTK_DISABLE_DEPRECATED */

/** scrolling types */
enum ScrollType
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

/** list selection modes */
enum SelectionMode
{
  NONE,                             /* Nothing can be selected */
  SINGLE,
  BROWSE,
  MULTIPLE,
  EXTENDED = MULTIPLE /* Deprecated */
}



/** Shadow types */
enum ShadowType
{
  NONE,
  IN,
  OUT,
  ETCHED_IN,
  ETCHED_OUT
}

/** Widget states */
enum StateType
{
  NORMAL,
  ACTIVE,
  PRELIGHT,
  SELECTED,
  INSENSITIVE
}

//#if !defined(GTK_DISABLE_DEPRECATED) || defined (GTK_MENU_INTERNALS)
/** Directions for submenus */
enum SubmenuDirection
{
  LEFT,
  RIGHT
}

/** Placement of submenus */
enum SubmenuPlacement
{
  TOP_BOTTOM,
  LEFT_RIGHT
}
//#endif /* GTK_DISABLE_DEPRECATED */

/** Style for toolbars */
enum ToolbarStyle
{
  ICONS,
  TEXT,
  BOTH,
  BOTH_HORIZ
}

/** Data update types (for ranges) */
enum UpdateType
{
  CONTINUOUS,
  DISCONTINUOUS,
  DELAYED
}

/** Generic visibility flags */
enum Visibility
{
  NONE,
  PARTIAL,
  FULL
}

/** Window position types */
enum WindowPosition
{
	NONE,
	CENTER,
	MOUSE,
	CENTER_ALWAYS,
	CENTER_ON_PARENT
}

/** Window types */
enum WindowType
{
	TOPLEVEL,
	POPUP
}

enum TextWindowType
{
	PRIVATE,
	WIDGET,
	TEXT,
	LEFT,
	RIGHT,
	TOP,
	BOTTOM
}


/** Text wrap */
enum WrapMode
{
  NONE,
  CHAR,
  WORD
}

/** How to sort */
enum SortType
{
  ASCENDING,
  DESCENDING
}

/** Style for gtk input method preedit/status */
enum IMPreeditStyle
{
  NOTHING,
  CALLBACK
}

enum IMStatusStyle
{
  NOTHING,
  CALLBACK
}

/**
 * Dialog type
 */
enum DialogType
{
	INFO, 
	WARNING, 
	QUESTION, 
	ERROR
}

/**
 * Buttons to display
 */
enum DialogButtons
{
	NONE,
	OK,
	CLOSE,
	CANCEL,
	YES_NO,
	OK_CANCEL
}


enum Response{
	/*
	 * returns this if a response widget has no response_id,
	 * or if the dialog gets programmatically hidden or destroyed.
	 */
	NONE = -1,

	/*
	 * won't return these unless you pass them in
	 * as the response for an action widget. They are
	 * for your convenience.
	 */
	REJECT = -2,
	ACCEPT = -3,

	/** If the dialog is deleted. */
	DELETE_EVENT = -4,

	/*
	 * These are returned from GTK dialogs, and you can also use them
	 * yourself if you like.
	 */
	OK     = -5,
	CANCEL = -6,
	CLOSE  = -7,
	YES    = -8,
	NO     = -9,
	APPLY  = -10,
	HELP   = -11
}

/* GC fill types.
 *  Solid:
 *  Tiled:
 *  Stippled:
 *  OpaqueStippled:
 */
enum GdkFill
{
  GDK_SOLID,
  GDK_TILED,
  GDK_STIPPLED,
  GDK_OPAQUE_STIPPLED
}

/* GC function types.
 *   Copy: Overwrites destination pixels with the source pixels.
 *   Invert: Inverts the destination pixels.
 *   Xor: Xor's the destination pixels with the source pixels.
 *   Clear: set pixels to 0
 *   And: source AND destination
 *   And Reverse: source AND (NOT destination)
 *   And Invert: (NOT source) AND destination
 *   Noop: destination
 *   Or: source OR destination
 *   Nor: (NOT source) AND (NOT destination)
 *   Equiv: (NOT source) XOR destination
 *   Xor Reverse: source OR (NOT destination)
 *   Copy Inverted: NOT source
 *   Xor Inverted: (NOT source) OR destination
 *   Nand: (NOT source) OR (NOT destination)
 *   Set: set pixels to 1
 */
enum GdkFunction
{
  GDK_COPY,
  GDK_INVERT,
  GDK_XOR,
  GDK_CLEAR,
  GDK_AND,
  GDK_AND_REVERSE,
  GDK_AND_INVERT,
  GDK_NOOP,
  GDK_OR,
  GDK_EQUIV,
  GDK_OR_REVERSE,
  GDK_COPY_INVERT,
  GDK_OR_INVERT,
  GDK_NAND,
  GDK_NOR,
  GDK_SET
}

/* GC join styles
 *  JoinMiter:
 *  JoinRound:
 *  JoinBevel:
 */
enum GdkJoinStyle
{
  GDK_JOIN_MITER,
  GDK_JOIN_ROUND,
  GDK_JOIN_BEVEL
}

/* GC line styles
 *  Solid:
 *  OnOffDash:
 *  DoubleDash:
 */
enum GdkLineStyle
{
  GDK_LINE_SOLID,
  GDK_LINE_ON_OFF_DASH,
  GDK_LINE_DOUBLE_DASH
}

enum GdkSubwindowMode
{
  GDK_CLIP_BY_CHILDREN	= 0,
  GDK_INCLUDE_INFERIORS = 1
}

enum GdkGCValuesMask
{
  GDK_GC_FOREGROUND    = 1 << 0,
  GDK_GC_BACKGROUND    = 1 << 1,
  GDK_GC_FONT	       = 1 << 2,
  GDK_GC_FUNCTION      = 1 << 3,
  GDK_GC_FILL	       = 1 << 4,
  GDK_GC_TILE	       = 1 << 5,
  GDK_GC_STIPPLE       = 1 << 6,
  GDK_GC_CLIP_MASK     = 1 << 7,
  GDK_GC_SUBWINDOW     = 1 << 8,
  GDK_GC_TS_X_ORIGIN   = 1 << 9,
  GDK_GC_TS_Y_ORIGIN   = 1 << 10,
  GDK_GC_CLIP_X_ORIGIN = 1 << 11,
  GDK_GC_CLIP_Y_ORIGIN = 1 << 12,
  GDK_GC_EXPOSURES     = 1 << 13,
  GDK_GC_LINE_WIDTH    = 1 << 14,
  GDK_GC_LINE_STYLE    = 1 << 15,
  GDK_GC_CAP_STYLE     = 1 << 16,
  GDK_GC_JOIN_STYLE    = 1 << 17
}

enum GdkRgbDither
{
  NONE,
  NORMAL,
  MAX
}

/* Cursor types.
 */
enum CursorType
{
  X_CURSOR 		  = 0,
  ARROW 		  = 2,
  BASED_ARROW_DOWN    = 4,
  BASED_ARROW_UP 	  = 6,
  BOAT 		  = 8,
  BOGOSITY 		  = 10,
  BOTTOM_LEFT_CORNER  = 12,
  BOTTOM_RIGHT_CORNER = 14,
  BOTTOM_SIDE 	  = 16,
  BOTTOM_TEE 	  = 18,
  BOX_SPIRAL 	  = 20,
  CENTER_PTR 	  = 22,
  CIRCLE 		  = 24,
  CLOCK	 	  = 26,
  COFFEE_MUG 	  = 28,
  CROSS 		  = 30,
  CROSS_REVERSE 	  = 32,
  CROSSHAIR 	  = 34,
  DIAMOND_CROSS 	  = 36,
  DOT 		  = 38,
  DOTBOX 		  = 40,
  DOUBLE_ARROW 	  = 42,
  DRAFT_LARGE 	  = 44,
  DRAFT_SMALL 	  = 46,
  DRAPED_BOX 	  = 48,
  EXCHANGE 		  = 50,
  FLEUR 		  = 52,
  GOBBLER 		  = 54,
  GUMBY 		  = 56,
  HAND1 		  = 58,
  HAND2 		  = 60,
  HEART 		  = 62,
  ICON 		  = 64,
  IRON_CROSS 	  = 66,
  LEFT_PTR 		  = 68,
  LEFT_SIDE 	  = 70,
  LEFT_TEE 		  = 72,
  LEFTBUTTON 	  = 74,
  LL_ANGLE 		  = 76,
  LR_ANGLE 	 	  = 78,
  MAN 		  = 80,
  MIDDLEBUTTON 	  = 82,
  MOUSE 		  = 84,
  PENCIL 		  = 86,
  PIRATE 		  = 88,
  PLUS 		  = 90,
  QUESTION_ARROW 	  = 92,
  RIGHT_PTR 	  = 94,
  RIGHT_SIDE 	  = 96,
  RIGHT_TEE 	  = 98,
  RIGHTBUTTON 	  = 100,
  RTL_LOGO 		  = 102,
  SAILBOAT 		  = 104,
  SB_DOWN_ARROW 	  = 106,
  SB_H_DOUBLE_ARROW   = 108,
  SB_LEFT_ARROW 	  = 110,
  SB_RIGHT_ARROW 	  = 112,
  SB_UP_ARROW 	  = 114,
  SB_V_DOUBLE_ARROW   = 116,
  SHUTTLE 		  = 118,
  SIZING 		  = 120,
  SPIDER		  = 122,
  SPRAYCAN 		  = 124,
  STAR 		  = 126,
  TARGET 		  = 128,
  TCROSS 		  = 130,
  TOP_LEFT_ARROW 	  = 132,
  TOP_LEFT_CORNER 	  = 134,
  TOP_RIGHT_CORNER 	  = 136,
  TOP_SIDE 		  = 138,
  TOP_TEE 		  = 140,
  TREK 		  = 142,
  UL_ANGLE 		  = 144,
  UMBRELLA 		  = 146,
  UR_ANGLE 		  = 148,
  WATCH 		  = 150,
  XTERM 		  = 152,
  LAST_CURSOR,
  CURSOR_IS_PIXMAP 	= -1
}

enum TextSearchFlags{
  VISIBLE_ONLY,
  TEXT_ONLY
  /* Possible future plans: SEARCH_CASE_INSENSITIVE, SEARCH_REGEXP */
}

enum PangoStyle{
  NORMAL,
  OBLIQUE,
  ITALIC
}

enum PangoVariant{
  NORMAL,
  SMALL_CAPS
}

enum PangoWeight{
  ULTRALIGHT = 200,
  IGHT = 300,
  NORMAL = 400,
  BOLD = 700,
  ULTRABOLD = 800,
  HEAVY = 900
} ;

enum PangoStretch{
  ULTRA_CONDENSED,
  EXTRA_CONDENSED,
  CONDENSED,
  SEMI_CONDENSED,
  NORMAL,
  SEMI_EXPANDED,
  EXPANDED,
  EXTRA_EXPANDED,
  ULTRA_EXPANDED
} ;

enum PangoFontMask{
  FAMILY  = 1 << 0,
  STYLE   = 1 << 1,
  VARIANT = 1 << 2,
  WEIGHT  = 1 << 3,
  STRETCH = 1 << 4,
  SIZE    = 1 << 5
}

const int PANGO_SCALE = 1024;
/* CSS scale factors (1.2 factor between each size) */
const double PANGO_SCALE_XX_SMALL = 0.5787037037037;
const double PANGO_SCALE_X_SMALL = 0.6444444444444;
const double PANGO_SCALE_SMALL = 0.8333333333333;
const double PANGO_SCALE_MEDIUM = 1.0;
const double PANGO_SCALE_LARGE = 1.2;
const double PANGO_SCALE_X_LARGE = 1.4399999999999;
const double PANGO_SCALE_XX_LARGE = 1.728;

enum PangoAttrType
{
  INVALID,           /* 0 is an invalid attribute type */
  LANGUAGE,		/* PangoAttrLanguage */
  FAMILY,		/* PangoAttrString */
  STYLE,		/* PangoAttrInt */
  WEIGHT,		/* PangoAttrInt */
  VARIANT,		/* PangoAttrInt */
  STRETCH,		/* PangoAttrInt */
  SIZE,		/* PangoAttrSize */
  FONT_DESC,		/* PangoAttrFontDesc */
  FOREGROUND,	/* PangoAttrColor */
  BACKGROUND,	/* PangoAttrColor */
  UNDERLINE,		/* PangoAttrInt */
  STRIKETHROUGH,	/* PangoAttrInt */
  RISE,		/* PangoAttrInt */
  SHAPE,		/* PangoAttrShape */
  SCALE              /* PangoAttrFloat */
}

enum PangoUnderline{
  NONE,
  SINGLE,
  DOUBLE,
  LOW
}

/* Interpolation modes */
enum InterpType{
	NEAREST,
	TILES,
	BILINEAR,
	HYPER
}

alias InterpType GdkInterpType;

/* Alpha compositing mode */
enum  PixbufAlphaMode
{
	BILEVEL,
	FULL
}

/* Color spaces; right now only RGB is supported.
 * Note that these values are encoded in inline pixbufs
 * as ints, so don't reorder them
 */
enum Colorspace{
	RGB
}
alias Colorspace GdkColorspace;

enum PixbufError{
        /* image data hosed */
        CORRUPT_IMAGE,
        /* no mem to load image */
        INSUFFICIENT_MEMORY,
        /* bad option passed to save routine */
        BAD_OPTION,
        /* unsupported image type (sort of an ENOSYS) */
        UNKNOWN_TYPE,
        /* unsupported operation (load, save) for image type */
        UNSUPPORTED_OPERATION,
        FAILED
}

enum TreeModelFlags
{
  ITERS_PERSIST = 1 << 0,
  LIST_ONLY = 1 << 1
}

/////////////////// from events ////////////////////

enum FilterReturn{
	CONTINUE, /* Event not handled, continue processesing */
	TRANSLATE, /* Translated event stored */
	REMOVE /* Terminate processing, removing event */
}

///**
// * The key values
// */
//enum KeyValue
//{
//	ESCAPE = 0xFF1B,
//	SHIFT_LEFT = 0xFFE1,
//	SHIFT_RIGHT = 0xFFE2,
//	CTRL_LEFT = 0xFFE3,
//	CTRL_RIGHT = 0xFFE4,
//	ALT_LEFT = 0xFFE9,
//	ALT_RIGHT = 0xFFEA,
//	LEFT	= 0xFF51,
//	UP		= 0xFF52,
//	RIGHT	= 0XFF53,
//	DOWN	= 0XFF54,
//}
enum KeyState
{
	ALT	= 0x18,
	SHIFT	= 0x11,
	CTRL	= 0x14,
}

/**
 * Some mask to do things ???
 */
public enum EventMask{
	NONE = 0,
	EXPOSURE = 1 << 1,
	POINTER_MOTION = 1 << 2,
	POINTER_MOTION_HINT = 1 << 3,
	BUTTON_MOTION = 1 << 4,
	BUTTON1_MOTION = 1 << 5,
	BUTTON2_MOTION = 1 << 6,
	BUTTON3_MOTION = 1 << 7,
	BUTTON_PRESS = 1 << 8,
	BUTTON_RELEASE = 1 << 9,
	KEY_PRESS = 1 << 10,
	KEY_RELEASE = 1 << 11,
	ENTER_NOTIFY = 1 << 12,
	LEAVE_NOTIFY = 1 << 13,
	FOCUS_CHANGE = 1 << 14,
	STRUCTURE = 1 << 15,
	PROPERTY_CHANGE = 1 << 16,
	VISIBILITY_NOTIFY = 1 << 17,
	PROXIMITY_IN = 1 << 18,
	PROXIMITY_OUT = 1 << 19,
	SUBSTRUCTURE = 1 << 20,
	SCROLL = 1 << 21,
	ALL_EVENTS = 0x3FFFFE
}
;



enum VisibilityState
{
	UNOBSCURED,
	PARTIAL,
	FULLY_OBSCURED
}
;

enum ScrollDirection{
	UP, 
	DOWN,
	LEFT,
	RIGHT
}
;

/* Types of enter/leave notifications.
 *   Ancestor:
 *   Virtual:
 *   Inferior:
 *   Nonlinear:
 *   NonlinearVirtual:
 *   Unknown: An unknown type of enter/leave event occurred.
 */
enum NotifyType{
	ANCESTOR = 0,
	VIRTUAL = 1,
	INFERIOR = 2,
	NONLINEAR = 3,
	NONLINEAR_VIRTUAL = 4, 
	UNKNOWN = 5
}
;

/* Enter/leave event modes.
 *   NotifyNormal
 *   NotifyGrab
 *   NotifyUngrab
 */
enum CrossingMode{
	NORMAL,
	GRAB,
	UNGRAB
}
;

/**
 * 
 */
enum PropertyState{
	NEW_VALUE,
	DELETE
}
;

/**
 * 
 */
enum WindowState{
	WITHDRAWN = 1 << 0,
	ICONIFIED = 1 << 1,
	MAXIMIZED = 1 << 2,
	STICKY = 1 << 3,
	FULLSCREEN = 1 << 4
}
;

/**
 * 
 */
enum SettingAction
{
	NEW, CHANGED, DELETED
}
;

enum CalendarDisplayOptions
{
  SHOW_HEADING		= 1 << 0,
  SHOW_DAY_NAMES		= 1 << 1,
  NO_MONTH_CHANGE		= 1 << 2,
  SHOW_WEEK_NUMBERS	= 1 << 3,
  WEEK_START_MONDAY	= 1 << 4
}

/* Parameters for dialog construction */
enum DialogFlags
{
  MODAL               = 1 << 0, /* call gtk_window_set_modal (win, TRUE) */
  DESTROY_WITH_PARENT = 1 << 1, /* call gtk_window_set_destroy_with_parent () */
  NO_SEPARATOR        = 1 << 2  /* no separator bar above buttons */
}

enum PangoAlignment {
  LEFT,
  CENTER,
  RIGHT
}

enum PangoWrapMode{
  WORD,
  CHAR,
  WORD_CHAR
}

enum PangoDirection {
  LTR,
  RTL,
  TTB_LTR,
  TTB_RTL
}

enum PangoTabAlign
{
  LEFT

  /* These are not supported now, but may be in the
   * future.
   *
   *  PANGO_TAB_RIGHT,
   *  PANGO_TAB_CENTER,
   *  PANGO_TAB_NUMERIC
   */
}

enum VisualType
{
  STATIC_GRAY,
  GRAYSCALE,
  STATIC_COLOR,
  PSEUDO_COLOR,
  TRUE_COLOR,
  DIRECT_COLOR
}

//////////////////////////// 2.4 //////////////////////////
enum FileChooserAction
{
	OPEN,
	SAVE,
	SELECT_FOLDER,
	CREATE_FOLDER
}

enum FileChooserError{
  NONEXISTENT,
  BAD_FILENAME
}
