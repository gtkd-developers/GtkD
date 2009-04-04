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

module gtkc.atktypes;


public import gtkc.glibtypes;
public import gtkc.gobjecttypes;
public alias void* AtkFocusHandler;
public alias void* AtkStateSet;
public struct AtkRectangle;


/**
 * typedef guint64 AtkState;
 * The AtkState value should not be referenceed directly.
 */
public alias ulong AtkState;

/**
 * typedef GSList AtkAttributeSet;
 * This is a singly-linked list (a GSList) of AtkAttribute. It is
 * used by atk_text_get_run_attributes(), atk_text_get_default_attributes()
 * and atk_editable_text_set_run_attributes()
 */
public alias GSList AtkAttributeSet;
/**
 * Describes the type of link
 * ATK_HYPERLINK_IS_INLINE
 */
public enum AtkHyperlinkStateFlags
{
	GDC_BUG_WORKAROUND,
	IS_INLINE = 1 << 0
}
/**
 * Describes the role of an object
 * These are the built-in enumerated roles that UI components can have in
 * ATK. Other roles may be added at runtime, so an AtkRole >=
 * ATK_ROLE_LAST_DEFINED is not necessarily an error.
 * ATK_ROLE_INVALID
 */
public enum AtkRole
{
	GDC_BUG_WORKAROUND,
	INVALID = 0,
	ACCEL_LABEL,
	ALERT,
	ANIMATION,
	ARROW,
	CALENDAR,
	CANVAS,
	CHECK_BOX,
	CHECK_MENU_ITEM,
	COLOR_CHOOSER,
	COLUMN_HEADER,
	COMBO_BOX,
	DATE_EDITOR,
	DESKTOP_ICON,
	DESKTOP_FRAME,
	DIAL,
	DIALOG,
	DIRECTORY_PANE,
	DRAWING_AREA,
	FILE_CHOOSER,
	FILLER,
	FONT_CHOOSER,
	FRAME,
	GLASS_PANE,
	HTML_CONTAINER,
	ICON,
	IMAGE,
	INTERNAL_FRAME,
	LABEL,
	LAYERED_PANE,
	LIST,
	LIST_ITEM,
	MENU,
	MENU_BAR,
	MENU_ITEM,
	OPTION_PANE,
	PAGE_TAB,
	PAGE_TAB_LIST,
	PANEL,
	PASSWORD_TEXT,
	POPUP_MENU,
	PROGRESS_BAR,
	PUSH_BUTTON,
	RADIO_BUTTON,
	RADIO_MENU_ITEM,
	ROOT_PANE,
	ROW_HEADER,
	SCROLL_BAR,
	SCROLL_PANE,
	SEPARATOR,
	SLIDER,
	SPLIT_PANE,
	SPIN_BUTTON,
	STATUSBAR,
	TABLE,
	TABLE_CELL,
	TABLE_COLUMN_HEADER,
	TABLE_ROW_HEADER,
	TEAR_OFF_MENU_ITEM,
	TERMINAL,
	TEXT,
	TOGGLE_BUTTON,
	TOOL_BAR,
	TOOL_TIP,
	TREE,
	TREE_TABLE,
	UNKNOWN,
	VIEWPORT,
	WINDOW,
	HEADER,
	FOOTER,
	PARAGRAPH,
	RULER,
	APPLICATION,
	AUTOCOMPLETE,
	EDITBAR,
	EMBEDDED,
	ENTRY,
	CHART,
	CAPTION,
	DOCUMENT_FRAME,
	HEADING,
	PAGE,
	SECTION,
	REDUNDANT_OBJECT,
	FORM,
	LINK,
	INPUT_METHOD_WINDOW,
	LAST_DEFINED
}
/**
 * Describes the layer of a component
 * These enumerated "layer values" are used when determining which UI
 * rendering layer a component is drawn into, which can help in making
 * determinations of when components occlude one another.
 * ATK_LAYER_INVALID
 */
public enum AtkLayer
{
	INVALID,
	BACKGROUND,
	CANVAS,
	WIDGET,
	MDI,
	POPUP,
	OVERLAY,
	WINDOW
}
/**
 * Describes the type of the relation
 * ATK_RELATION_NULL
 */
public enum AtkRelationType
{
	GDC_BUG_WORKAROUND,
	NULL = 0,
	CONTROLLED_BY,
	CONTROLLER_FOR,
	LABEL_FOR,
	LABELLED_BY,
	MEMBER_OF,
	NODE_CHILD_OF,
	FLOWS_TO,
	FLOWS_FROM,
	SUBWINDOW_OF,
	EMBEDS,
	EMBEDDED_BY,
	POPUP_FOR,
	PARENT_WINDOW_OF,
	DESCRIBED_BY,
	DESCRIPTION_FOR,
	LAST_DEFINED
}
/**
 * The possible types of states of an object
 * ATK_STATE_INVALID
 */
public enum AtkStateType
{
	INVALID,
	ACTIVE,
	ARMED,
	BUSY,
	CHECKED,
	DEFUNCT,
	EDITABLE,
	ENABLED,
	EXPANDABLE,
	EXPANDED,
	FOCUSABLE,
	FOCUSED,
	HORIZONTAL,
	ICONIFIED,
	MODAL,
	MULTI_LINE,
	MULTISELECTABLE,
	OPAQUE,
	PRESSED,
	RESIZABLE,
	SELECTABLE,
	SELECTED,
	SENSITIVE,
	SHOWING,
	SINGLE_LINE,
	STALE,
	TRANSIENT,
	VERTICAL,
	VISIBLE,
	MANAGES_DESCENDANTS,
	INDETERMINATE,
	TRUNCATED,
	REQUIRED,
	INVALID_ENTRY,
	SUPPORTS_AUTOCOMPLETION,
	SELECTABLE_TEXT,
	DEFAULT,
	ANIMATED,
	VISITED,
	LAST_DEFINED
}
/**
 * Text boundary types used for specifying boundaries for regions of text
 * ATK_TEXT_BOUNDARY_CHAR
 */
public enum AtkTextBoundary
{
	CHAR,
	WORD_START,
	WORD_END,
	SENTENCE_START,
	SENTENCE_END,
	LINE_START,
	LINE_END
}
/**
 * Describes the type of clipping required.
 * ATK_TEXT_CLIP_NONE
 */
public enum AtkTextClipType
{
	NONE,
	MIN,
	MAX,
	BOTH
}
/**
 * Describes the text attributes supported
 * ATK_TEXT_ATTR_INVALID
 */
public enum AtkTextAttribute
{
	GDC_BUG_WORKAROUND,
	INVALID = 0,
	LEFT_MARGIN,
	RIGHT_MARGIN,
	INDENT,
	INVISIBLE,
	EDITABLE,
	PIXELS_ABOVE_LINES,
	PIXELS_BELOW_LINES,
	PIXELS_INSIDE_WRAP,
	BG_FULL_HEIGHT,
	RISE,
	UNDERLINE,
	STRIKETHROUGH,
	SIZE,
	SCALE,
	WEIGHT,
	LANGUAGE,
	FAMILY_NAME,
	BG_COLOR,
	FG_COLOR,
	BG_STIPPLE,
	FG_STIPPLE,
	WRAP_MODE,
	DIRECTION,
	JUSTIFICATION,
	STRETCH,
	VARIANT,
	STYLE,
	LAST_DEFINED
}
/**
 * Specifies how xy coordinates are to be interpreted. Used by functions such
 * as atk_component_get_position() and atk_text_get_character_extents()
 * ATK_XY_SCREEN
 */
public enum AtkCoordType
{
	XY_SCREEN,
	XY_WINDOW
}
/**
 * Specifies the type of a keyboard evemt.
 * ATK_KEY_EVENT_PRESS
 */
public enum AtkKeyEventType
{
	PRESS,
	RELEASE,
	LAST_DEFINED
}

/**
 * Main Gtk struct.
 * The AtkAction structure does not contain any fields.
 */
public struct AtkAction{}


/**
 * Main Gtk struct.
 * The AtkComponent structure does not contain any fields.
 */
public struct AtkComponent{}


/**
 * Main Gtk struct.
 * The AtkDocument structure does not contain any fields.
 */
public struct AtkDocument{}


/**
 * Main Gtk struct.
 * The AtkEditableText structure does not contain any fields.
 */
public struct AtkEditableText{}


/**
 * Main Gtk struct.
 * The AtkGObjectAccessible structure should not be accessed directly.
 */
public struct AtkGObjectAccessible{}


/**
 * Main Gtk struct.
 * The AtkHyperlink structure should not be accessed directly.
 */
public struct AtkHyperlink{}


/**
 * Main Gtk struct.
 * The AtkHypertext structure does not contain any fields.
 */
public struct AtkHypertext{}


/**
 * Main Gtk struct.
 * The AtkImage structure does not contain any fields.
 */
public struct AtkImage{}


/**
 * Main Gtk struct.
 * The AtkNoOpObject structure should not be accessed directly.
 */
public struct AtkNoOpObject{}


/**
 * Main Gtk struct.
 * The AtkNoOpObjectFactory structure should not be accessed directly.
 */
public struct AtkNoOpObjectFactory{}


/**
 * Main Gtk struct.
 * The AtkObject structure should not be accessed directly.
 */
public struct AtkObject{}


/**
 * The AtkImplementor interface is implemented by objects for which AtkObject peers may be obtained via calls to iface->(ref_accessible)(implementor);
 */
public struct AtkImplementor{}


/**
 * note: For most properties the old_value field of AtkPropertyValues will
 * not contain a valid value.
 * Currently, the only property for which old_value is used is
 * accessible-state; for instance if there is a focus state the
 * property change handler will be called for the object which lost the focus
 * with the old_value containing an AtkState value corresponding to focused
 * and the property change handler will be called for the object which
 * received the focus with the new_value containing an AtkState value
 * corresponding to focused.
 * The Atk PropertyValue structure is used when notifying a change in property.
 * Currently, the only property for which old_value is used is
 * accessible-state; for instance if there is a focus change the
 * property change handler will be called for the object which lost the focus
 * with the old_value containing the AtkState value corresponding to focused
 * and the property change handler will be called for the object which
 * received the focus with the new_value containing the AtkState value
 * corresponding to focused.
 * const gchar *property_name;
 */
public struct AtkPropertyValues
{
	char *propertyName;
	GValue oldValue;
	GValue newValue;
}


/**
 * Main Gtk struct.
 * The AtkObjectFactory structure should not be accessed directly.
 */
public struct AtkObjectFactory{}


/**
 * Main Gtk struct.
 * The AtkRegistry structure should not be accessed directly.
 */
public struct AtkRegistry{}


/**
 * Main Gtk struct.
 * The AtkRelation structure should not be accessed directly.
 */
public struct AtkRelation{}


/**
 * Main Gtk struct.
 * The AtkRelationSet structure should not be accessed directly.
 */
public struct AtkRelationSet{}


/**
 * Main Gtk struct.
 * The AtkAction structure does not contain any fields.
 */
public struct AtkSelection{}


/**
 * Main Gtk struct.
 */
public struct AtkStateSet{}


/**
 * Main Gtk struct.
 * The AtkStreamableContent structure does not contain any fields.
 */
public struct AtkStreamableContent{}


/**
 * Main Gtk struct.
 * The AtkTable structure does not contain any fields.
 */
public struct AtkTable{}


/**
 * Main Gtk struct.
 * The AtkText structure does not contain any fields.
 */
public struct AtkText{}


/**
 * A structure used to describe a text range.
 * AtkTextRectangle bounds;
 */
public struct AtkTextRange
{
	AtkTextRectangle bounds;
	int startOffset;
	int endOffset;
	char* content;
}


/**
 * A structure used to store a rectangle used by AtkText.
 * gint x;
 */
public struct AtkTextRectangle
{
	int x;
	int y;
	int width;
	int height;
}


/**
 * A string name/value pair representing a text attribute.
 * gchar *name;
 */
public struct AtkAttribute
{
	char* name;
	char* value;
}


/**
 * The AtkUtil struct does not contain any fields.
 */
public struct AtkUtil{}


/**
 * Encapsulates information about a key event.
 * gint type;
 */
public struct AtkKeyEventStruct
{
	int type;
	uint state;
	uint keyval;
	int length;
	char *string;
	ushort keycode;
	uint timestamp;
}


/**
 * Main Gtk struct.
 * The AtkValue structure does not contain any fields.
 */
public struct AtkValue{}


/*
 * An AtkFunction is a function definition used for padding which has been added
 * to class and interface structures to allow for expansion in the future.
 * data :
 * a gpointer to parameter data.
 * Returns :
 * Nothing useful, this is only a dummy prototype.
 */
// gboolean (*AtkFunction) (gpointer data);
public typedef extern(C) int  function (void*) AtkFunction;

/*
 * An AtkPropertyChangeHandler is a function which is executed when an AtkObject's property changes value. It is specified in a call to
 * atk_object_connect_property_change_handler().
 * Param1 :
 *  an AtkObject
 * Param2 :
 *  an AtkPropertyValues
 */
// void (*AtkPropertyChangeHandler) (AtkObject *,  AtkPropertyValues *);
public typedef extern(C) void  function (AtkObject*, AtkPropertyValues*) AtkPropertyChangeHandler;

/*
 * A function which is called when an object emits a matching event,
 * as used in atk_add_focus_tracker.
 * Currently the only events for which object-specific handlers are
 * supported are events of type "focus:". Most clients of ATK will prefer to
 * attach signal handlers for the various ATK signals instead.
 * see: atk_add_focus_tracker.
 * obj :
 *  An AtkObject instance for whom the callback will be called when
 * the specified event (e.g. 'focus:') takes place.
 */
// void (*AtkEventListener) (AtkObject *obj);
public typedef extern(C) void  function (AtkObject*) AtkEventListener;

/*
 * An AtkEventListenerInit function is a special function that is
 * called in order to initialize the per-object event registration system
 * used by AtkEventListener, if any preparation is required.
 * see: atk_focus_tracker_init.
 */
// void (*AtkEventListenerInit) (void);
public typedef extern(C) void  function () AtkEventListenerInit;

/*
 * An AtkKeySnoopFunc is a type of callback which is called whenever a key event occurs,
 * if registered via atk_add_key_event_listener. It allows for pre-emptive
 * interception of key events via the return code as described below.
 * event :
 *  an AtkKeyEventStruct containing information about the key event for which
 * notification is being given.
 * func_data :
 *  a block of data which will be passed to the event listener, on notification.
 * Returns :
 *  TRUE (nonzero) if the event emission should be stopped and the event
 * discarded without being passed to the normal GUI recipient; FALSE (zero) if the
 * event dispatch to the client application should proceed as normal.
 * see: atk_add_key_event_listener.
 */
// gint (*AtkKeySnoopFunc) (AtkKeyEventStruct *event,  gpointer func_data);
public typedef extern(C) int  function (AtkKeyEventStruct*, void*) AtkKeySnoopFunc;
