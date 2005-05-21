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

module def.Types;
 
public:

debug(status)
{
const int ST_UGGLY = -1;	// uggly: won't get in
const int ST_UNKNOWN = 0;
const int ST_NOT_YET = 1;
const int ST_ALMOST = 98;
const int ST_AGAIG = 99;	// as good as it gets
const int ST_COMPLETE = 100;

const char[] SAME_NAME = "=";
const char[] ST_SAME_NAME = "=";	// oops seems that I miss typed it in some classes
};

public:
struct PangoFontDescription;
alias void * gpointer;
alias void * gconstpointer;
alias short gint16;
alias ushort guint16;
alias uint guint;
alias int gint;
alias uint guint32;
alias int gint32;
alias long gint64;
alias ulong guint64;
alias ubyte guint8;
alias byte gint8;
alias char gchar;
alias char guchar;
alias int gboolean;
alias long glong;
alias ulong gulong;
alias float gfloat;
alias double gdouble;
alias short gshort;
alias ushort gushort;

alias char gunichar;

alias int GtkType;

//alias uint GType;

private import def.Constants;

//struct GdkColormap;
//struct GdkCursor;
struct GdkDisplaymanager;
struct GdkDnd;
//struct GdkDrawable;
//struct Gdkenumtypes;
//struct GdkEvent;
struct GdkFont;
//struct Gdkgc;
struct Gdki18n;
struct GdkImage;
struct GdkInput;
struct GdkKeys;
struct GdkKeysyms;
struct GdkPango;
struct GdkPixbuf;
alias GdkDrawable GdkPixmap;
struct GdkPrivate;
struct GdkProperty;
struct GdkRegion;
struct GdkRGB;
//struct GdkScreen;
struct GdkSelection;
struct GdkType;
struct GdkVisual;
struct GdkWindow;
alias void* GdkAtom;
//struct GtkStyle;
struct GtkRcStyle;
//struct GdkColor;
struct GSource;

alias StateType GtkStateType;


alias int GtkDirectionType;
alias int GdkExtensionMode;

extern(C)
{

/**
 * GValue
 */
 
struct GValue
{
	align(4)
	{
	/*< private >*/
	int g_type;//DUIType		g_type;
	/* public for GTypeValueTable methods */
	union Data{
		gint		v_int;
		guint   	v_uint;
		glong   	v_long;
		gulong  	v_ulong;
		gint64  	v_int64;
		guint64 	v_uint64;
		//gfloat  	v_float;
		//gdouble 	v_double;
		gpointer	v_pointer;
	};
	Data data0;
	Data data1;
//	Data data1;
//		gpointer	v_pointer1;
}
};

struct GtkRequisition
{
  gint width;
  gint height;
};

struct Rectangle
{
  gint x;
  gint y;
  gint width;
  gint height;
};
alias Rectangle GdkRectangle;
alias GdkRectangle GtkAllocation;


struct GtkSettings;
struct GtkSelectionData;
struct GtkClipboard;
struct GdkBitmap;
struct GtkWidgetAuxInfo;

alias int GtkTextDirection;
//alias int GtkPackType;
alias int GtkButtonBoxStyle;
alias int GtkPositionType;

struct PangoFont;

struct GList {
	gpointer data;
	GList * next;
	GList * prev;
};

struct GTypeClass
{
  /*< private >*/
  GType g_type;
};

struct GTypeInstance
{
  /*< private >*/
  GTypeClass *g_class;
};
struct TypeInterface
{
  /*< private >*/
  GType g_type;         /* iface type */
  GType g_instance_type;
};
struct TypeQuery
{
  GType		type;
  const gchar  *type_name;
  guint		class_size;
  guint		instance_size;
};

enum GTypeDebugFlags	/*< skip >*/
{
  G_TYPE_DEBUG_NONE	= 0,
  G_TYPE_DEBUG_OBJECTS	= 1 << 0,
  G_TYPE_DEBUG_SIGNALS	= 1 << 1,
  G_TYPE_DEBUG_MASK	= 0x03
};

enum GdkByteOrder
{
  LSB_FIRST,
  MSB_FIRST
};

/* Types of modifiers.
 */
enum ModifierType
{
  SHIFT_MASK    = 1 << 0,
  LOCK_MASK	    = 1 << 1,
  CONTROL_MASK  = 1 << 2,
  MOD1_MASK	    = 1 << 3,
  MOD2_MASK	    = 1 << 4,
  MOD3_MASK	    = 1 << 5,
  MOD4_MASK	    = 1 << 6,
  MOD5_MASK	    = 1 << 7,
  BUTTON1_MASK  = 1 << 8,
  BUTTON2_MASK  = 1 << 9,
  BUTTON3_MASK  = 1 << 10,
  BUTTON4_MASK  = 1 << 11,
  BUTTON5_MASK  = 1 << 12,
  /* The next few modifiers are used by XKB, so we skip to the end
   */
  RELEASE_MASK  = 1 << 30,
  MODIFIER_MASK = RELEASE_MASK | 0x1fff
};
alias ModifierType GdkModifierType;


enum GdkInputCondition
{
  READ       = 1 << 0,
  WRITE      = 1 << 1,
  EXCEPTION  = 1 << 2
};

enum GdkStatus
{
  OK	  = 0,
  ERROR	  = -1,
  ERROR_PARAM = -2,
  ERROR_FILE  = -3,
  ERROR_MEM	  = -4
};

/* We define specific numeric values for these constants,
 * since old application code may depend on them matching the X values
 * We don't actually depend on the matchup ourselves.
 */
enum GdkGrabStatus
{
  SUCCESS         = 0,
  ALREADY_GRABBED = 1,
  INVALID_TIME    = 2,
  NOT_VIEWABLE    = 3,
  FROZEN          = 4
};

//typedef void (* GdkInputFunction) (gpointer data, gint source, GdkInputCondition condition);

//typedef void (* GdkDestroyNotify) (gpointer data);

struct Point
{
  gint x;
  gint y;
};

alias Point GdkPoint;


struct Segment
{
  gint x1;
  gint y1;
  gint x2;
  gint y2;
};

alias Segment GdkSegment;

struct Span
{
  gint x;
  gint y;
  gint width;
};


alias void* GtkTreeCellDataFunc;
alias void* GtkDestroyNotify;

alias int GtkTreeViewColumnSizing;
alias int GtkSortType;

alias void * GtkCallback;
alias void * GtkCallbackMarshal;

struct GParameter;
struct GClosure;

alias void * GCallback;

alias void * vaList;
alias void * GWeakNotify;
alias void * GDestroyNotify;
alias  guint32 GQuark;
alias int GConnectFlags;

public:

enum  Gravity
{
  NORTH_WEST = 1,
  NORTH,
  NORTH_EAST,
  WEST,
  CENTER,
  EAST,
  SOUTH_WEST,
  SOUTH,
  SOUTH_EAST,
  STATIC
};
alias Gravity GdkGravity;


enum WindowHints
{
  POS         = 1 << 0,
  MIN_SIZE    = 1 << 1,
  MAX_SIZE    = 1 << 2,
  BASE_SIZE   = 1 << 3,
  ASPECT      = 1 << 4,
  RESIZE_INC  = 1 << 5,
  WIN_GRAVITY = 1 << 6,
  USER_POS    = 1 << 7,
  USER_SIZE   = 1 << 8
};

alias WindowHints GdkWindowHints;

enum WindowEdge
{
  GDK_WINDOW_EDGE_NORTH_WEST,
  GDK_WINDOW_EDGE_NORTH,
  GDK_WINDOW_EDGE_NORTH_EAST,
  GDK_WINDOW_EDGE_WEST,
  GDK_WINDOW_EDGE_EAST,
  GDK_WINDOW_EDGE_SOUTH_WEST,
  GDK_WINDOW_EDGE_SOUTH,
  GDK_WINDOW_EDGE_SOUTH_EAST  
};

alias WindowEdge GdkWindowEdge;


struct Geometry
{
  gint min_width;
  gint min_height;
  gint max_width;
  gint max_height;
  gint base_width;
  gint base_height;
  gint width_inc;
  gint height_inc;
  gdouble min_aspect;
  gdouble max_aspect;
  GdkGravity win_gravity;
};

alias Geometry GdkGeometry;

////////////// from ObjectG

alias void GData;

private struct  GObject
{
  GTypeInstance g_type_instance;
  
  /*< private >*/
  guint         ref_count;
  GData        *qdata;
};
////////////////////////////////////

struct GdkGC {
	GObject parent_instance;

	gint clip_x_origin;
	gint clip_y_origin;
	gint ts_x_origin;
	gint ts_y_origin;

	GdkColormap * colormap;
};


enum GdkCapStyle
{
  GDK_CAP_NOT_LAST,
  GDK_CAP_BUTT,
  GDK_CAP_ROUND,
  GDK_CAP_PROJECTING
};



struct GdkColor {
	guint32 pixel;
	guint16 red;
	guint16 green;
	guint16 blue;
};

struct GdkColormap {
	GObject parent_instance;

	/*< public >*/
	gint size;
	GdkColor * colors;

	/*< private >*/
	GdkVisual * visual;

	gpointer windowing_data;
};

struct GdkGCValues
{
  GdkColor          foreground;
  GdkColor          background;
  GdkFont          *font;
  GdkFunction       funct;
  GdkFill           fill;
  GdkPixmap        *tile;
  GdkPixmap        *stipple;
  GdkPixmap        *clip_mask;
  GdkSubwindowMode  subwindow_mode;
  gint              ts_x_origin;
  gint              ts_y_origin;
  gint              clip_x_origin;
  gint              clip_y_origin;
  gint              graphics_exposures;
  gint              line_width;
  GdkLineStyle      line_style;
  GdkCapStyle       cap_style;
  GdkJoinStyle      join_style;
};


///////////// from Widget

struct GSList {
	gpointer data;
	GSList * next;
}

struct GtkStyle
{
  GObject parent_instance;

  /*< public >*/
  
  GdkColor fg1;
  GdkColor fg2;
  GdkColor fg3;
  GdkColor fg4;
  GdkColor fg5;
  GdkColor bg1;
  GdkColor bg2;
  GdkColor bg3;
  GdkColor bg4;
  GdkColor bg5;
  GdkColor light1;
  GdkColor light2;
  GdkColor light3;
  GdkColor light4;
  GdkColor light5;
  GdkColor dark1;
  GdkColor dark2;
  GdkColor dark3;
  GdkColor dark4;
  GdkColor dark5;
  GdkColor mid1;
  GdkColor mid2;
  GdkColor mid3;
  GdkColor mid4;
  GdkColor mid5;
  GdkColor text1;
  GdkColor text2;
  GdkColor text3;
  GdkColor text4;
  GdkColor text5;
  GdkColor base1;
  GdkColor base2;
  GdkColor base3;
  GdkColor base4;
  GdkColor base5;
  GdkColor text_aa1;		/* Halfway between text/base */
  GdkColor text_aa2;		/* Halfway between text/base */
  GdkColor text_aa3;		/* Halfway between text/base */
  GdkColor text_aa4;		/* Halfway between text/base */
  GdkColor text_aa5;		/* Halfway between text/base */
  
  GdkColor black;
  GdkColor white;
  PangoFontDescription *font_desc;
  
  gint xthickness;
  gint ythickness;
  
  GdkGC *fg_gc1;
  GdkGC *fg_gc2;
  GdkGC *fg_gc3;
  GdkGC *fg_gc4;
  GdkGC *fg_gc5;
  GdkGC *bg_gc1;
  GdkGC *bg_gc2;
  GdkGC *bg_gc3;
  GdkGC *bg_gc4;
  GdkGC *bg_gc5;
  GdkGC *light_gc1;
  GdkGC *light_gc2;
  GdkGC *light_gc3;
  GdkGC *light_gc4;
  GdkGC *light_gc5;
  GdkGC *dark_gc1;
  GdkGC *dark_gc2;
  GdkGC *dark_gc3;
  GdkGC *dark_gc4;
  GdkGC *dark_gc5;
  GdkGC *mid_gc1;
  GdkGC *mid_gc2;
  GdkGC *mid_gc3;
  GdkGC *mid_gc4;
  GdkGC *mid_gc5;
  GdkGC *text_gc1;
  GdkGC *text_gc2;
  GdkGC *text_gc3;
  GdkGC *text_gc4;
  GdkGC *text_gc5;
  GdkGC *base_gc1;
  GdkGC *base_gc2;
  GdkGC *base_gc3;
  GdkGC *base_gc4;
  GdkGC *base_gc5;
  GdkGC *text_aa_gc1;
  GdkGC *text_aa_gc2;
  GdkGC *text_aa_gc3;
  GdkGC *text_aa_gc4;
  GdkGC *text_aa_gc5;
  GdkGC *black_gc;
  GdkGC *white_gc;
  
  GdkPixmap *bg_pixmap;

  /*< private >*/
  
  gint attach_count;
  
  gint depth;
  GdkColormap *colormap;
  GdkFont *private_font;
  PangoFontDescription *private_font_desc; /* Font description for style->private_font or %NULL */
  
  /* the RcStyle from which this style was created */
  GtkRcStyle	 *rc_style;

  GSList	 *styles;	  /* of type GtkStyle* */
  /*GArray*/void	 *property_cache;
  GSList         *icon_factories; /* of type GtkIconFactory* */
};

struct GtkObject
{
  GObject parent_instance;
  
  /* 32 bits of flags. GtkObject only uses 4 of these bits and
   *  GtkWidget uses the rest. This is done because structs are
   *  aligned on 4 or 8 byte boundaries. If a new bitfield were
   *  used in GtkWidget much space would be wasted.
   */
  guint32 flags;
}



extern (C) struct GtkWidget
{
  /* The object structure needs to be the first
   *  element in the widget structure in order for
   *  the object mechanism to work correctly. This
   *  allows a GtkWidget pointer to be cast to a
   *  GtkObject pointer.
   */
  GtkObject object;
  
  /* 16 bits of internally used private flags.
   * this will be packed into the same 4 byte alignment frame that
   * state and saved_state go. we therefore don't waste any new
   * space on this.
   */
  guint16 private_flags;
  
  /* The state of the widget. There are actually only
   *  5 widget states (defined in "gtkenums.h").
   */
  guint8 state;
  
  /* The saved state of the widget. When a widgets state
   *  is changed to GTK_STATE_INSENSITIVE via
   *  "gtk_widget_set_state" or "gtk_widget_set_sensitive"
   *  the old state is kept around in this field. The state
   *  will be restored once the widget gets sensitive again.
   */
  guint8 saved_state;
  
  /* The widgets name. If the widget does not have a name
   *  (the name is NULL), then its name (as returned by
   *  "gtk_widget_get_name") is its classes name.
   * Among other things, the widget name is used to determine
   *  the style to use for a widget.
   */
  gchar *name;
  
  /* The style for the widget. The style contains the
   *  colors the widget should be drawn in for each state
   *  along with graphics contexts used to draw with and
   *  the font to use for text.
   */
  GtkStyle *style;
  
  /* The widgets desired size.
   */
  GtkRequisition requisition;
  
  /* The widgets allocated size.
   */
  GtkAllocation allocation;
  
  /* The widgets window or its parent window if it does
   *  not have a window. (Which will be indicated by the
   *  GTK_NO_WINDOW flag being set).
   */
  GdkWindow *window;
  
  /* The widgets parent.
   */
  GtkWidget *parent;
};

struct GtkContainer
{
  GtkWidget widget;
  
  GtkWidget *focus_child;
  
  guint border_width;
  //guint need_resize;
  //guint resize_mode;
  //guint reallocate_redraws ;
  //guint has_focus_chain ;
};

struct GtkBox
{
  GtkContainer container;

  /*< public >*/
  GList *children;
  gint16 spacing;
  guint16 homogeneous ;   //uses only 16 bits because : guint homogeneous:1 ; 
};


struct GtkHBox
{
  GtkBox box;
};

struct GtkCombo {
	GtkHBox hbox;
	GtkWidget *entry;   // public
	GtkWidget *button;
	GtkWidget *popup;
	GtkWidget *popwin;
	GtkWidget *list;	// public

	guint entry_change_id;
	guint list_change_id;	// unused

	guint value_in_list;	// :1
	//guint ok_if_empty;  	// :1
	//guint case_sensitive;	// :1
	//guint use_arrows;   	// :1
	//guint use_arrows_always;// :1

	guint16 current_button;
	guint activate_id;
};

struct GtkBin
{
  GtkContainer container;

  GtkWidget *child;
};

struct GtkWindowGeometryInfo;
struct GtkWindowGroup;
//struct GdkGeometry;
//struct GError;

struct GError {
  GQuark       domain;
  gint         code;
  gchar       *message;
}

struct GdkScreen {
	GObject parent_instance;

	guint closed;
};

struct GtkWindow
{
  GtkBin bin;

  gchar *title;
  gchar *wmclass_name;
  gchar *wmclass_class;
  gchar *wm_role;

  GtkWidget *focus_widget;
  GtkWidget *default_widget;
  GtkWindow *transient_parent;
  GtkWindowGeometryInfo *geometry_info;
  GdkWindow *frame;
  GtkWindowGroup *group;

  guint16 configure_request_count;
  guint allow_shrink; // : 1;
  //guint allow_grow; // : 1;
  //guint configure_notify_received; // : 1;
  /* The following flags are initially TRUE (before a window is mapped).
   * They cause us to compute a configure request that involves
   * default-only parameters. Once mapped, we set them to FALSE.
   * Then we set them to TRUE again on unmap (for position)
   * and on unrealize (for size).
   */
  //guint need_default_position; // : 1;
  //guint need_default_size; // : 1;
  //guint position; // : 3;
  //guint type; // : 4; /* GtkWindowType */ 
  //guint has_user_ref_count; // : 1;
  //guint has_focus; // : 1;

  //guint modal; // : 1;
  //guint destroy_with_parent; // : 1;
  
  //guint has_frame; // : 1;

  /* gtk_window_iconify() called before realization */
  //guint iconify_initially; // : 1;
  //guint stick_initially; // : 1;
  //guint maximize_initially; // : 1;
  //guint decorated; // : 1;
  
  //guint type_hint; // : 3; /* GdkWindowTypeHint */ 
  //guint gravity; // : 5; /* GdkGravity */

  //guint is_active; // : 1;
  //guint has_toplevel_focus; // : 1;
  
  guint frame_left;
  guint frame_top;
  guint frame_right;
  guint frame_bottom;

  guint keys_changed_handler;
  
  GdkModifierType mnemonic_modifier;
  GdkScreen      *screen;
};

struct GtkDialog
{
 GtkWindow window;

  /*< public >*/
  GtkWidget *vbox;
  GtkWidget *action_area;

  /*< private >*/
  GtkWidget *separator;
};

alias GObject GtkTextTagTable;

struct GtkTextBTree;
struct GtkTextLogAttrCache;
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
};
//struct GtkTextTag;
//struct GtkTextChildAnchor;
struct GtkTextMark;

struct GtkTextBuffer
{
  GObject parent_instance;

  GtkTextTagTable *tag_table;
  GtkTextBTree *btree;

  GSList *clipboard_contents_buffers;
  GSList *selection_clipboards;

  GtkTextLogAttrCache *log_attr_cache;

  guint user_action_count;
  
  /* Whether the buffer has been modified since last save */
  guint modified ;
};

struct GtkTreeIter
{
  gint stamp;
  gpointer user_data;
  gpointer user_data2;
  gpointer user_data3;
};

//struct GtkTreeSelection;
struct GtkTreePath;

struct GdkDrawable
{
  GObject parent_instance;
};

alias CursorType GdkCursorType;

struct GdkCursor
{
  GdkCursorType type;
  guint ref_count;
};

struct GdkDevice;

alias void GdkDisplayPointerHooks;


struct GdkDisplay
{
  GObject parent_instance;

  /*< private >*/
  GList *queued_events;
  GList *queued_tail;

  /* Information for determining if the latest button click
   * is part of a double-click or triple-click
   */
  guint32 button_click_time[2];	/* The last 2 button click times. */
  GdkWindow *button_window[2];  /* The last 2 windows to receive button presses. */
  gint button_number[2];        /* The last 2 buttons to be pressed. */

  guint double_click_time;	/* Maximum time between clicks in msecs */
  GdkDevice *core_pointer;	/* Core pointer device */

  const GdkDisplayPointerHooks *pointer_hooks; /* Current hooks for querying pointer */
  
  guint closed ;		/* Whether this display has been closed */
};

struct GdkPixbufAnimation {
        GObject parent_instance;

};
struct GdkPixbufAnimationIter {
        GObject parent_instance;

};

struct GTimeVal
{
  glong tv_sec;
  glong tv_usec;
};

struct GdkPixbufModulePattern {
	guchar *prefix;
	guchar *mask;
	int relevance;
};

struct GdkPixbufModule;
// {
//	char *module_name;
//	char *module_path;
//	GModule *module;
//	GdkPixbufFormat *info;
//	
//        GdkPixbuf *(* load) (FILE    *f,
//                             GError **error);
//        GdkPixbuf *(* load_xpm_data) (const char **data);
//
//        /* Incremental loading */
//
//        gpointer (* begin_load)     (GdkPixbufModuleSizeFunc size_func,
//                                     GdkPixbufModulePreparedFunc prepare_func,
//                                     GdkPixbufModuleUpdatedFunc update_func,
//                                     gpointer user_data,
//                                     GError **error);
//        gboolean (* stop_load)      (gpointer context,
//                                     GError **error);
//        gboolean (* load_increment) (gpointer      context,
//                                     const guchar *buf,
//                                     guint         size,
//                                     GError      **error);
//
//	/* Animation loading */
//	GdkPixbufAnimation *(* load_animation) (FILE    *f,
//                                                GError **error);
//
//        gboolean (* save) (FILE      *f,
//                           GdkPixbuf *pixbuf,
//                           gchar    **param_keys,
//                           gchar    **param_values,
//                           GError   **error);
//  
//  /*< private >*/
//	void (*_reserved1) (void); 
//	void (*_reserved2) (void); 
//	void (*_reserved3) (void); 
//	void (*_reserved4) (void); 
//	void (*_reserved5) (void); 
//	void (*_reserved6) (void); 
//
//};

struct GdkPixbufFormat {
  gchar *name;
  GdkPixbufModulePattern *signature;
  gchar *domain;
  gchar *description;
  gchar **mime_types;
  gchar **extensions;
  guint32 flags;
};

struct GtkTreeRowReference;

struct GdkDragContext;

enum DestDefaults{
  MOTION     = 1 << 0, /* respond to "drag_motion" */
  HIGHLIGHT  = 1 << 1, /* auto-highlight */
  DROP       = 1 << 2, /* respond to "drag_drop" */
  ALL        = 0x07
};

enum DragAction
{
  DEFAULT = 1 << 0,
  COPY    = 1 << 1,
  MOVE    = 1 << 2,
  LINK    = 1 << 3,
  PRIVATE = 1 << 4,
  ASK     = 1 << 5
};

enum DragProtocol
{
  MOTIF,
  XDND,
  ROOTWIN,	  /* A root window with nobody claiming
				   * drags */
  NONE,		  /* Not a valid drag window */
  WIN32_DROPFILES, /* The simple WM_DROPFILES dnd */
  OLE2,		  /* The complex OLE2 dnd (not implemented) */
  LOCAL            /* Intra-app */
};

enum TreeViewDropPosition
{
  /* drop before/after this row */
  BEFORE,
  AFTER,
  /* drop as a child of this row (with fallback to before or after
   * if into is not possible)
   */
  INTO_OR_BEFORE,
  INTO_OR_AFTER
};

struct PangoFontset;
struct PangoRectangle;
struct PangoLanguage;
struct PangoLogAttr;
struct PangoAttrList;
struct PangoAttrIterator;
struct PangoFontMap;
struct PangoFontFamily;
struct PangoFontMetrics;
struct PangoTabArray;

struct PangoLayout;
struct PangoContext;
struct PangoLayoutLine;
struct PangoLayoutIter;
struct PangoLayoutRun;

/*******************************
 GLib types and structs
********************************/

struct GAsyncQueue;

enum FileError
{
	EXIST,
	ISDIR,
	ACCES,
	NAMETOOLONG,
	NOENT,
	NOTDIR,
	NXIO,
	NODEV,
	ROFS,
	TXTBSY,
	FAULT,
	LOOP,
	NOSPC,
	NOMEM,
	MFILE,
	NFILE,
	BADF,
	INVAL,
	PIPE,
	AGAIN,
	INTR,
	IO,
	PERM,
	FAILED
}
alias FileError GFileError;


enum FileTest
{
	IS_REGULAR    = 1 << 0,
	IS_SYMLINK    = 1 << 1,
	IS_DIR        = 1 << 2,
	IS_EXECUTABLE = 1 << 3,
	EXISTS        = 1 << 4
}
alias FileTest GFileTest;

struct GDir;
	

enum SeekType
{
	G_SEEK_CUR,
	G_SEEK_SET,
	G_SEEK_END
}
alias SeekType GSeekType;

enum IOStatus
{
	G_IO_STATUS_ERROR,
	G_IO_STATUS_NORMAL,
	G_IO_STATUS_EOF,
	G_IO_STATUS_AGAIN
}
alias IOStatus GIOStatus;

enum IOChannelError
{
	/* Derived from errno */
	FBIG,
	INVAL,
	IO,
	ISDIR,
	NOSPC,
	NXIO,
	OVERFLOW,
	PIPE,
	/* Other */
	FAILED
}
alias IOChannelError GIOChannelError;

enum IOCondition
{
	IN	= GLibSysdef.POLLIN,
	OUT	= GLibSysdef.POLLOUT,
	PRI	= GLibSysdef.POLLPRI,
	ERR	= GLibSysdef.POLLERR,
	HUP	= GLibSysdef.POLLHUP,
	NVAL= GLibSysdef.POLLNVAL
}
alias IOCondition GIOCondition;

enum IOFlags
{
	APPEND = 1 << 0,
	NONBLOCK = 1 << 1,
	IS_READABLE = 1 << 2,	/* Read only flag */
	IS_WRITEABLE = 1 << 3,	/* Read only flag */
	IS_SEEKABLE = 1 << 4,	/* Read only flag */
	MASK = (1 << 5) - 1,
	GET_MASK = MASK,
	SET_MASK = APPEND | NONBLOCK
}
alias IOFlags GIOFlags;

enum IOError
{
	G_IO_ERROR_NONE,
	G_IO_ERROR_AGAIN,
	G_IO_ERROR_INVAL,
	G_IO_ERROR_UNKNOWN
}
alias IOError GIOError;

struct GIOChannel
{
}

struct GIOFuncs
{
	GIOStatus (*io_read)(GIOChannel *channel,gchar *buf,gsize count,gsize *bytes_read,GError **err);
	GIOStatus (*io_write)(GIOChannel *channel,gchar *buf,gsize count,gsize *bytes_written,GError **err);
	GIOStatus (*io_seek)(GIOChannel *channel,gint64 offset,GSeekType type,GError **err);
	GIOStatus (*io_close)(GIOChannel *channel,GError **err);
	GSource*  (*io_create_watch)(GIOChannel *channel,GIOCondition  condition);
	void      (*io_free)(GIOChannel *channel);
	GIOStatus (*io_set_flags)(GIOChannel *channel,GIOFlags flags,GError **err);
	GIOFlags  (*io_get_flags)(GIOChannel *channel);
}

struct GString
{
	gchar  *str;
	gsize len;
	gsize allocated_len;
}

/******************************
  Glib Spawn and Threading 
 ******************************/
	
enum SpawnFlags
{
	G_SPAWN_LEAVE_DESCRIPTORS_OPEN = 1 << 0,
	G_SPAWN_DO_NOT_REAP_CHILD      = 1 << 1,
	/* look for argv[0] in the path i.e. use execvp() */
	G_SPAWN_SEARCH_PATH            = 1 << 2,
	/* Dump output to /dev/null */
	G_SPAWN_STDOUT_TO_DEV_NULL     = 1 << 3,
	G_SPAWN_STDERR_TO_DEV_NULL     = 1 << 4,
	G_SPAWN_CHILD_INHERITS_STDIN   = 1 << 5,
	G_SPAWN_FILE_AND_ARGV_ZERO     = 1 << 6
}
alias SpawnFlags GSpawnFlags;

enum GSpawnError
{
	G_SPAWN_ERROR_FORK,   /* fork failed due to lack of memory */
	G_SPAWN_ERROR_READ,   /* read or select on pipes failed */
	G_SPAWN_ERROR_CHDIR,  /* changing to working dir failed */
	G_SPAWN_ERROR_ACCES,  /* execv() returned EACCES */
	G_SPAWN_ERROR_PERM,   /* execv() returned EPERM */
	G_SPAWN_ERROR_2BIG,   /* execv() returned E2BIG */
	G_SPAWN_ERROR_NOEXEC, /* execv() returned ENOEXEC */
	G_SPAWN_ERROR_NAMETOOLONG, /* ""  "" ENAMETOOLONG */
	G_SPAWN_ERROR_NOENT,       /* ""  "" ENOENT */
	G_SPAWN_ERROR_NOMEM,       /* ""  "" ENOMEM */
	G_SPAWN_ERROR_NOTDIR,      /* ""  "" ENOTDIR */
	G_SPAWN_ERROR_LOOP,        /* ""  "" ELOOP   */
	G_SPAWN_ERROR_TXTBUSY,     /* ""  "" ETXTBUSY */
	G_SPAWN_ERROR_IO,          /* ""  "" EIO */
	G_SPAWN_ERROR_NFILE,       /* ""  "" ENFILE */
	G_SPAWN_ERROR_MFILE,       /* ""  "" EMFLE */
	G_SPAWN_ERROR_INVAL,       /* ""  "" EINVAL */
	G_SPAWN_ERROR_ISDIR,       /* ""  "" EISDIR */
	G_SPAWN_ERROR_LIBBAD,      /* ""  "" ELIBBAD */
	G_SPAWN_ERROR_FAILED       /* other fatal failure, error->message
	* should explain */
}

alias void* GSpawnChildSetupFunc;
alias int GPid;

struct GTimer;
	
alias void GAllocator;
alias void * GCompareFunc;
alias void * GCompareDataFunc;
alias void * GFunc;	
alias void * GThreadFunc;

struct GMutex;
struct GCond;
	
enum ThreadPriority
{
  LOW,
  NORMAL,
  HIGH,
  URGENT
}
	
alias ThreadPriority GThreadPriority;

struct GThreadFunctions
{
	GMutex*  (*mutex_new)();
	void     (*mutex_lock)(GMutex *mutex);
	gboolean (*mutex_trylock)(GMutex *mutex);
	void     (*mutex_unlock)(GMutex *mutex);
	void     (*mutex_free)(GMutex *mutex);
	GCond*   (*cond_new)();
	void     (*cond_signal)(GCond *cond);
	void     (*cond_broadcast)(GCond *cond);
	void     (*cond_wait)(GCond *cond,GMutex *mutex);
	gboolean (*cond_timed_wait)(GCond *cond,GMutex *mutex,GTimeVal *end_time);
	void      (*cond_free)(GCond *cond);
	GPrivate* (*private_new)(GDestroyNotify destructor);
	gpointer  (*private_get)(GPrivate *private_key);
	void      (*private_set)(GPrivate *private_key,gpointer data);
	void      (*thread_create)(GThreadFunc func,gpointer data,gulong stack_size,gboolean joinable,gboolean bound,GThreadPriority priority,gpointer thread,GError **error);
	void      (*thread_yield)();
	void      (*thread_join)(gpointer thread);
	void      (*thread_exit)();
	void      (*thread_set_priority)(gpointer thread,GThreadPriority priority);
	void      (*thread_self)(gpointer thread);
	gboolean  (*thread_equal)(gpointer thread1,gpointer thread2);
}

struct GThread;
struct GStaticMutex;	
struct GStaticRecMutex;
struct GStaticRWLock;
struct GPrivate;
struct GStaticPrivate; 

/******************************
 Gmodule
*******************************/

enum  PluginFlags
{
  BIND_LAZY	= 1 << 0,
  BIND_MASK	= 0x01
}

alias PluginFlags GModuleFlags;

struct GModule;

/*****************************
 GDK Event types
 *****************************/

enum GdkFilterReturn{
	GDK_FILTER_CONTINUE, 
	GDK_FILTER_TRANSLATE, 
	GDK_FILTER_REMOVE 
};

//typedef GdkFilterReturn(* GdkFilterFunc) (GdkXEvent * xevent, GdkEvent * event, gpointer data);

/* Event types.
 *   Nothing: No event occurred.
 *   Delete: A window delete event was sent by the window manager.
 *	     The specified window should be deleted.
 *   Destroy: A window has been destroyed.
 *   Expose: Part of a window has been uncovered.
 *   NoExpose: Same as expose, but no expose event was generated.
 *   VisibilityNotify: A window has become fully/partially/not obscured.
 *   MotionNotify: The mouse has moved.
 *   ButtonPress: A mouse button was pressed.
 *   ButtonRelease: A mouse button was release.
 *   KeyPress: A key was pressed.
 *   KeyRelease: A key was released.
 *   EnterNotify: A window was entered.
 *   LeaveNotify: A window was exited.
 *   FocusChange: The focus window has changed. (The focus window gets
 *		  keyboard events).
 *   Resize: A window has been resized.
 *   Map: A window has been mapped. (It is now visible on the screen).
 *   Unmap: A window has been unmapped. (It is no longer visible on
 *	    the screen).
 *   Scroll: A mouse wheel was scrolled either up or down.
 */
 
alias int GdkEventType;

public enum EventType{
		NOTHING = -1,
		DELETE = 0,
		DESTROY = 1,
		EXPOSE = 2,
		MOTION_NOTIFY = 3,
		BUTTON_PRESS = 4,
		BUTTON2_PRESS = 5,
		BUTTON3_PRESS = 6,
		BUTTON_RELEASE = 7,
		KEY_PRESS = 8,
		KEY_RELEASE = 9,
		ENTER_NOTIFY = 10,
		LEAVE_NOTIFY = 11,
		FOCUS_CHANGE = 12,
		CONFIGURE = 13,
		MAP = 14,
		UNMAP = 15,
		PROPERTY_NOTIFY = 16,
		SELECTION_CLEAR = 17,
		SELECTION_REQUEST = 18,
		SELECTION_NOTIFY = 19,
		PROXIMITY_IN = 20,
		PROXIMITY_OUT = 21,
		DRAG_ENTER = 22,
		DRAG_LEAVE = 23,
		DRAG_MOTION = 24,
		DRAG_STATUS = 25,
		DROP_START = 26,
		DROP_FINISHED = 27,
		CLIENT_EVENT = 28,
		VISIBILITY_NOTIFY = 29,
		NO_EXPOSE = 30,
		SCROLL = 31,
		WINDOW_STATE = 32,
		SETTING = 33}
;

public:
char [][] EventTypeDesc = [
"NOTHING",
"DELETE",
"DESTROY",
"EXPOSE",
"MOTION_NOTIFY",
"BUTTON_PRESS",
"BUTTON2_PRESS",
"BUTTON3_PRESS",
"BUTTON_RELEASE",
"KEY_PRESS",
"KEY_RELEASE",
"ENTER_NOTIFY",
"LEAVE_NOTIFY",
"FOCUS_CHANGE",
"CONFIGURE",
"MAP",
"UNMAP",
"PROPERTY_NOTIFY",
"SELECTION_CLEAR",
"SELECTION_REQUEST",
"SELECTION_NOTIFY",
"PROXIMITY_IN",
"PROXIMITY_OUT",
"DRAG_ENTER",
"DRAG_LEAVE",
"DRAG_MOTION",
"DRAG_STATUS",
"DROP_START",
"DROP_FINISHED",
"CLIENT_EVENT",
"VISIBILITY_NOTIFY",
"NO_EXPOSE",
"SCROLL",
"WINDOW_STATE",
"SETTING"
];



/**
 * 
 */
struct GdkEventAny {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
}


/**
 * 
 */
struct GdkEventExpose {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkRectangle area;
	GdkRegion * region;
	gint count; /* If non-zero, how many more events follow. */
}

/**
 * 
 */
struct GdkEventNoExpose {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
}

alias VisibilityState GdkVisibilityState;

/**
 * 
 */
struct GdkEventVisibility {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkVisibilityState state;
}

/**
 * 
 */
struct GdkEventMotion {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	guint32 time;
	gdouble x;
	gdouble y;
	gdouble * axes;
	guint state;
	gint16 is_hint;
	GdkDevice * device;
	gdouble x_root, y_root;
}

/**
 * 
 */
struct GdkEventButton {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	guint32 time;
	gdouble x;
	gdouble y;
	gdouble * axes;
	guint state;
	guint button;
	GdkDevice * device;
	gdouble x_root, y_root;
}


alias ScrollDirection GdkScrollDirection;
/**
 * 
 */
struct GdkEventScroll {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	guint32 time;
	gdouble x;
	gdouble y;
	guint state;
	GdkScrollDirection direction;
	GdkDevice * device;
	gdouble x_root, y_root;
}

/**
 * 
 */
struct GdkEventKey {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	guint32 time;
	guint state;
	guint keyval;
	gint length;
	gchar * string;
	guint16 hardware_keycode;
	guint8 group;
}

alias CrossingMode GdkCrossingMode;
alias NotifyType GdkNotifyType;

/**
 * 
 */
struct GdkEventCrossing {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkWindow * subwindow;
	guint32 time;
	gdouble x;
	gdouble y;
	gdouble x_root;
	gdouble y_root;
	GdkCrossingMode mode;
	GdkNotifyType detail;
	gboolean focus;
	guint state;
}

/**
 * 
 */
struct GdkEventFocus {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	gint16 iN;
}

/**
 * 
 */
struct GdkEventConfigure {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	gint x, y;
	gint width;
	gint height;
}

/**
 * 
 */
struct GdkEventProperty {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkAtom atom;
	guint32 time;
	guint state; 
}

// alias gpointer GdkNativeWindow;

/**
 * 
 */
struct GdkEventSelection {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkAtom selection;
	GdkAtom target;
	GdkAtom property;
	guint32 time;
	GdkNativeWindow requestor;
}

/* This event type will be used pretty rarely. It only is private important
   for XInput aware programs that are drawing their own cursor */

/**
 * 
 */
struct GdkEventProximity {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	guint32 time;
	GdkDevice * device;
}

/**
 * 
 */
struct GdkEventClient {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkAtom message_type;
	gushort data_format;
	union data{
		char b[20];
		short s[10];
		long l[5];
	}
	;
}

alias SettingAction GdkSettingAction;
/**
 * 
 */
struct GdkEventSetting {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkSettingAction action;
	char * name;
}


alias WindowState GdkWindowState;

/**
 * 
 */
struct GdkEventWindowState {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkWindowState changed_mask;
	GdkWindowState new_window_state;
};

/**
 * 
 */
struct GdkEventDND {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkDragContext * context;

	guint32 time;
	gshort x_root, y_root;
};

union GdkEvent {
	GdkEventType type;
	GdkEventAny any;
	GdkEventExpose expose;
	GdkEventNoExpose no_expose;
	GdkEventVisibility visibility;
	GdkEventMotion motion;
	GdkEventButton button;
	GdkEventScroll scroll;
	GdkEventKey key;
	GdkEventCrossing crossing;
	GdkEventFocus focus_change;
	GdkEventConfigure configure;
	GdkEventProperty property;
	GdkEventSelection selection;
	GdkEventProximity proximity;
	GdkEventClient client;
	GdkEventDND dnd;
	GdkEventWindowState window_state;
	GdkEventSetting setting;
};

alias int GdkAxisUse;
alias void *GdkEventFunc;

/**************************
 Gtk Accelerator Group Types
 **************************/

// alias GObject GtkAccelGroup;

struct GtkAccelKey;
struct GtkAccelGroupEntry;
struct GtkAccelGroupFindFunc;

/******************************
 Miscellaneous Gtk/Gdk 
 ******************************/

	alias GtkContainer GtkLayout;
	struct GtkComboBox;
	struct GtkComboBoxEntry;
	alias GObject GtkAccelGroup;
	
	alias GtkLabel GtkAccelLabel;
	alias GtkObject GtkAdjustment;
	alias GtkBin GtkAlignment;
	
	alias GtkMisc GtkArrow;
	alias int GtkArrowType;
	alias GtkFrame GtkAspectFrame;
	alias GtkBin GtkButton;
	alias ReliefStyle GtkReliefStyle;
	alias GtkBox GtkButtonBox;
	alias GtkWidget GtkCalendar;

	alias CalendarDisplayOptions  GtkCalendarDisplayOptions;
	alias GtkObject GtkCellRenderer;
	alias void * CellRendererDataFunc;

	alias int GtkCellRendererState;
	alias int GtkCellEditable;
	alias GtkCellRenderer GtkCellRendererPixbuf;
	alias GtkCellRenderer GtkCellRendererText;
	alias GtkCellRenderer GtkCellRendererToggle;
	alias GtkMenuItem GtkCheckMenuItem;
	
	alias GtkVBox GtkColorSelection;

	alias GtkDrawingArea GtkCurve;
	alias CurveType GtkCurveType;
	alias DialogFlags GtkDialogFlags;

	alias DestDefaults GtkDestDefaults;
	alias DragAction GdkDragAction;
	alias DragProtocol GdkDragProtocol;
	alias GtkWidget GtkDrawingArea;
	
	alias GObject GtkEditable;
	alias GtkWidget GtkEntry;
	alias FileChooserAction GtkFileChooserAction;
	alias void GtkFileChooser;
	alias GtkDialog GtkFileSelection;
	alias GtkContainer GtkFixed;
	alias GtkVBox GtkFontSelection;
	alias GtkDialog GtkFontSelectionDialog;
	alias GtkBin GtkFrame;
	alias GtkBin GtkHandleBox;
	alias ShadowType GtkShadowType;
	alias GtkRuler GtkHRuler;
	alias GtkScale GtkVScale;
	alias GtkScrollbar GtkHScrollbar;
	alias GtkSeparator GtkHSeparator;
	alias GtkMisc GtkImage;
//	alias void GdkPixbufAnimation;
	alias void GtkIconSet;
	alias int GtkImageType;
	alias GtkMenuItem GtkImageMenuItem;
	alias GtkWidget GtkInvisible;
	alias GtkBin GtkItem;
	alias GObject GtkItemFactory;
	
	struct GtkItemFactoryEntry;
	struct GtkMenuEntry;
	
	alias void* GtkTranslateFunc;
	alias GtkMisc GtkLabel;

//	alias void PangoAttrList;
//	alias void PangoLayout;
	alias GtkContainer GtkList;
	alias int GtkScrollType;
	alias GtkItem GtkListItem;
	alias GObject GtkListStore;
	alias GtkMenuShell GtkMenu;
	alias GtkWidget GtkMenuItem;
	alias GtkContainer GtkMenuShell;
	alias GtkDialog GtkMessageDialog;

	alias int GtkMessageType;
	alias int GtkButtonsType;
	alias GtkWidget GtkMisc;
	alias GtkWidget GtkNotebook;
	
	alias GObject GdkObject;
	alias GtkToggleButton GtkOptionMenu;
	alias GtkWindow GtkPlug;

	alias GtkWidget GtkProgressBar;
	alias int GtkProgressBarOrientation;
	alias GtkToggleButton GtkRadioButton;
	alias GtkCheckMenuItem GtkRadioMenuItem;
	alias GtkWidget GtkRange;
	alias int GtkUpdateType;
	alias GtkWidget GtkRuler;
	alias MetricType GtkMetricType;
	alias GtkRange GtkScale;
	alias GtkRange GtkScrollbar;
	alias GtkBin GtkScrolledWindow;
	alias PolicyType GtkPolicyType;
	alias int GtkCornerType;
	
	struct GtkTargetEntry;
	struct GtkTargetList;
	struct GtkTargetPair;
	
	alias GtkWidget GtkSeparator;
	alias GtkMenuItem GtkSeparatorMenuItem;
	
	enum SizeGroupMode { NONE,HORIZONTAL,VERTICAL,BOTH }
	
	alias SizeGroupMode GtkSizeGroupMode;
	
	struct GtkSizeGroup;
	
//	alias void GAllocator;
//	alias void * GCompareFunc;
//	alias void * GCompareDataFunc;
//	alias void * GFunc;	
	
	alias GtkContainer GtkSocket;
	alias int NativeWindow;
    alias NativeWindow GdkNativeWindow;
	
	alias GtkEntry GtkSpinButton;
	alias int GtkSpinButtonUpdatePolicy;
	alias int GtkSpinType;
	alias GtkWidget GtkStatusbar;
	alias GtkMenuItem GtkTearoffMenuItem;
	
	alias GObject GtkTextChildAnchor;
	alias TextSearchFlags GtkTextSearchFlags;
	alias GObject GtkTextTag;
	
	struct GtkTextAppearance;
	struct GtkTextAttributes;
	
	alias GtkContainer GtkTextView;

	alias WrapMode GtkWrapMode;
	alias Justification GtkJustification;
	alias WindowType GtkWindowType;
	alias TextWindowType GtkTextWindowType;
	alias GtkButton GtkToggleButton;
	alias GtkContainer GtkToolbar;
	alias void * GtkSignalFunc;
	alias int GtkToolbarChildType;
	alias int GtkOrientation;
	alias int GtkToolbarStyle;
	alias GObject GtkTooltips;
	alias GtkContainer GtkTree;
	alias int GtkTreeViewMode;
	alias GtkItem GtkTreeItem;
	alias GObject GtkTreeModel;
	alias TreeModelFlags GtkTreeModelFlags;
	alias GObject GtkTreeSelection;
	alias SelectionMode GtkSelectionMode;
	alias GObject GtkTreeStore;
	alias GtkContainer GtkTreeView;
//	alias void* GtkTreeCellDataFunc;
	alias void* GtkTreeViewColumnDropFunc;
	alias void* GtkTreeViewMappingFunc;
	alias void* GtkTreeViewSearchEqualFunc;
	alias TreeViewDropPosition GtkTreeViewDropPosition;
	alias GtkObject GtkTreeViewColumn;
	alias GtkBox GtkVBox;
	alias GtkBin GtkViewport;
	alias GtkRuler GtkVRuler;
	alias GtkScrollbar GtkVScrollbar;
	alias GtkSeparator GtkVSeparator;
	alias int GtkAccelFlags;
	alias IconSize GtkIconSize;
//	alias TextDirection GtkTextDirection;
	alias WindowPosition GtkWindowPosition;
	alias int GdkWindowTypeHint;
	typedef void (* GtkTreeDestroyCountFunc) (GtkTreeView * tree_view, GtkTreePath * path, gint children, gpointer user_data);

alias void * GdkFilterFunc;  
alias void * GdkPixbufDestroyNotify;
alias VisualType GdkVisualType;

alias void* GSignalEmissionHook;
alias void* GClosureNotify;
alias int   GSignalMatchType;

struct GtkEventBox;

} // extern(C)
