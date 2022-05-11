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


module atk.c.types;

public import glib.c.types;
public import gobject.c.types;


/**
 * This is a singly-linked list (a #GSList) of #AtkAttribute. It is
 * used by atk_text_get_run_attributes(),
 * atk_text_get_default_attributes(),
 * atk_editable_text_set_run_attributes(),
 * atk_document_get_attributes() and atk_object_get_attributes()
 */
public alias GSList AtkAttributeSet;

public alias ulong AtkState;

/**
 * Specifies how xy coordinates are to be interpreted. Used by functions such
 * as atk_component_get_position() and atk_text_get_character_extents()
 */
public enum AtkCoordType
{
	/**
	 * specifies xy coordinates relative to the screen
	 */
	SCREEN = 0,
	/**
	 * specifies xy coordinates relative to the widget's
	 * top-level window
	 */
	WINDOW = 1,
	/**
	 * specifies xy coordinates relative to the widget's
	 * immediate parent. Since: 2.30
	 */
	PARENT = 2,
}
alias AtkCoordType CoordType;

/**
 * Describes the type of link
 */
public enum AtkHyperlinkStateFlags
{
	/**
	 * Link is inline
	 */
	INLINE = 1,
}
alias AtkHyperlinkStateFlags HyperlinkStateFlags;

/**
 * Specifies the type of a keyboard evemt.
 */
public enum AtkKeyEventType
{
	/**
	 * specifies a key press event
	 */
	PRESS = 0,
	/**
	 * specifies a key release event
	 */
	RELEASE = 1,
	/**
	 * Not a valid value; specifies end of enumeration
	 */
	LAST_DEFINED = 2,
}
alias AtkKeyEventType KeyEventType;

/**
 * Describes the layer of a component
 *
 * These enumerated "layer values" are used when determining which UI
 * rendering layer a component is drawn into, which can help in making
 * determinations of when components occlude one another.
 */
public enum AtkLayer
{
	/**
	 * The object does not have a layer
	 */
	INVALID = 0,
	/**
	 * This layer is reserved for the desktop background
	 */
	BACKGROUND = 1,
	/**
	 * This layer is used for Canvas components
	 */
	CANVAS = 2,
	/**
	 * This layer is normally used for components
	 */
	WIDGET = 3,
	/**
	 * This layer is used for layered components
	 */
	MDI = 4,
	/**
	 * This layer is used for popup components, such as menus
	 */
	POPUP = 5,
	/**
	 * This layer is reserved for future use.
	 */
	OVERLAY = 6,
	/**
	 * This layer is used for toplevel windows.
	 */
	WINDOW = 7,
}
alias AtkLayer Layer;

/**
 * Describes the type of the relation
 */
public enum AtkRelationType
{
	/**
	 * Not used, represens "no relationship" or an error condition.
	 */
	NULL = 0,
	/**
	 * Indicates an object controlled by one or more target objects.
	 */
	CONTROLLED_BY = 1,
	/**
	 * Indicates an object is an controller for one or more target objects.
	 */
	CONTROLLER_FOR = 2,
	/**
	 * Indicates an object is a label for one or more target objects.
	 */
	LABEL_FOR = 3,
	/**
	 * Indicates an object is labelled by one or more target objects.
	 */
	LABELLED_BY = 4,
	/**
	 * Indicates an object is a member of a group of one or more target objects.
	 */
	MEMBER_OF = 5,
	/**
	 * Indicates an object is a cell in a treetable which is displayed because a cell in the same column is expanded and identifies that cell.
	 */
	NODE_CHILD_OF = 6,
	/**
	 * Indicates that the object has content that flows logically to another
	 * AtkObject in a sequential way, (for instance text-flow).
	 */
	FLOWS_TO = 7,
	/**
	 * Indicates that the object has content that flows logically from
	 * another AtkObject in a sequential way, (for instance text-flow).
	 */
	FLOWS_FROM = 8,
	/**
	 * Indicates a subwindow attached to a component but otherwise has no connection in  the UI heirarchy to that component.
	 */
	SUBWINDOW_OF = 9,
	/**
	 * Indicates that the object visually embeds
	 * another object's content, i.e. this object's content flows around
	 * another's content.
	 */
	EMBEDS = 10,
	/**
	 * Reciprocal of %ATK_RELATION_EMBEDS, indicates that
	 * this object's content is visualy embedded in another object.
	 */
	EMBEDDED_BY = 11,
	/**
	 * Indicates that an object is a popup for another object.
	 */
	POPUP_FOR = 12,
	/**
	 * Indicates that an object is a parent window of another object.
	 */
	PARENT_WINDOW_OF = 13,
	/**
	 * Reciprocal of %ATK_RELATION_DESCRIPTION_FOR. Indicates that one
	 * or more target objects provide descriptive information about this object. This relation
	 * type is most appropriate for information that is not essential as its presentation may
	 * be user-configurable and/or limited to an on-demand mechanism such as an assistive
	 * technology command. For brief, essential information such as can be found in a widget's
	 * on-screen label, use %ATK_RELATION_LABELLED_BY. For an on-screen error message, use
	 * %ATK_RELATION_ERROR_MESSAGE. For lengthy extended descriptive information contained in
	 * an on-screen object, consider using %ATK_RELATION_DETAILS as assistive technologies may
	 * provide a means for the user to navigate to objects containing detailed descriptions so
	 * that their content can be more closely reviewed.
	 */
	DESCRIBED_BY = 14,
	/**
	 * Reciprocal of %ATK_RELATION_DESCRIBED_BY. Indicates that this
	 * object provides descriptive information about the target object(s). See also
	 * %ATK_RELATION_DETAILS_FOR and %ATK_RELATION_ERROR_FOR.
	 */
	DESCRIPTION_FOR = 15,
	/**
	 * Indicates an object is a cell in a treetable and is expanded to display other cells in the same column.
	 */
	NODE_PARENT_OF = 16,
	/**
	 * Reciprocal of %ATK_RELATION_DETAILS_FOR. Indicates that this object
	 * has a detailed or extended description, the contents of which can be found in the target
	 * object(s). This relation type is most appropriate for information that is sufficiently
	 * lengthy as to make navigation to the container of that information desirable. For less
	 * verbose information suitable for announcement only, see %ATK_RELATION_DESCRIBED_BY. If
	 * the detailed information describes an error condition, %ATK_RELATION_ERROR_FOR should be
	 * used instead. @Since: ATK-2.26.
	 */
	DETAILS = 17,
	/**
	 * Reciprocal of %ATK_RELATION_DETAILS. Indicates that this object
	 * provides a detailed or extended description about the target object(s). See also
	 * %ATK_RELATION_DESCRIPTION_FOR and %ATK_RELATION_ERROR_FOR. @Since: ATK-2.26.
	 */
	DETAILS_FOR = 18,
	/**
	 * Reciprocal of %ATK_RELATION_ERROR_FOR. Indicates that this object
	 * has one or more errors, the nature of which is described in the contents of the target
	 * object(s). Objects that have this relation type should also contain %ATK_STATE_INVALID_ENTRY
	 * in their #AtkStateSet. @Since: ATK-2.26.
	 */
	ERROR_MESSAGE = 19,
	/**
	 * Reciprocal of %ATK_RELATION_ERROR_MESSAGE. Indicates that this object
	 * contains an error message describing an invalid condition in the target object(s). @Since:
	 * ATK_2.26.
	 */
	ERROR_FOR = 20,
	/**
	 * Not used, this value indicates the end of the enumeration.
	 */
	LAST_DEFINED = 21,
}
alias AtkRelationType RelationType;

/**
 * Describes the role of an object
 *
 * These are the built-in enumerated roles that UI components can have
 * in ATK.  Other roles may be added at runtime, so an AtkRole >=
 * %ATK_ROLE_LAST_DEFINED is not necessarily an error.
 */
public enum AtkRole
{
	/**
	 * Invalid role
	 */
	INVALID = 0,
	/**
	 * A label which represents an accelerator
	 */
	ACCELERATOR_LABEL = 1,
	/**
	 * An object which is an alert to the user. Assistive Technologies typically respond to ATK_ROLE_ALERT by reading the entire onscreen contents of containers advertising this role.  Should be used for warning dialogs, etc.
	 */
	ALERT = 2,
	/**
	 * An object which is an animated image
	 */
	ANIMATION = 3,
	/**
	 * An arrow in one of the four cardinal directions
	 */
	ARROW = 4,
	/**
	 * An object that displays a calendar and allows the user to select a date
	 */
	CALENDAR = 5,
	/**
	 * An object that can be drawn into and is used to trap events
	 */
	CANVAS = 6,
	/**
	 * A choice that can be checked or unchecked and provides a separate indicator for the current state
	 */
	CHECK_BOX = 7,
	/**
	 * A menu item with a check box
	 */
	CHECK_MENU_ITEM = 8,
	/**
	 * A specialized dialog that lets the user choose a color
	 */
	COLOR_CHOOSER = 9,
	/**
	 * The header for a column of data
	 */
	COLUMN_HEADER = 10,
	/**
	 * A collapsible list of choices the user can select from
	 */
	COMBO_BOX = 11,
	/**
	 * An object whose purpose is to allow a user to edit a date
	 */
	DATE_EDITOR = 12,
	/**
	 * An inconifed internal frame within a DESKTOP_PANE
	 */
	DESKTOP_ICON = 13,
	/**
	 * A pane that supports internal frames and iconified versions of those internal frames
	 */
	DESKTOP_FRAME = 14,
	/**
	 * An object whose purpose is to allow a user to set a value
	 */
	DIAL = 15,
	/**
	 * A top level window with title bar and a border
	 */
	DIALOG = 16,
	/**
	 * A pane that allows the user to navigate through and select the contents of a directory
	 */
	DIRECTORY_PANE = 17,
	/**
	 * An object used for drawing custom user interface elements
	 */
	DRAWING_AREA = 18,
	/**
	 * A specialized dialog that lets the user choose a file
	 */
	FILE_CHOOSER = 19,
	/**
	 * A object that fills up space in a user interface
	 */
	FILLER = 20,
	/**
	 * A specialized dialog that lets the user choose a font
	 */
	FONT_CHOOSER = 21,
	/**
	 * A top level window with a title bar, border, menubar, etc.
	 */
	FRAME = 22,
	/**
	 * A pane that is guaranteed to be painted on top of all panes beneath it
	 */
	GLASS_PANE = 23,
	/**
	 * A document container for HTML, whose children represent the document content
	 */
	HTML_CONTAINER = 24,
	/**
	 * A small fixed size picture, typically used to decorate components
	 */
	ICON = 25,
	/**
	 * An object whose primary purpose is to display an image
	 */
	IMAGE = 26,
	/**
	 * A frame-like object that is clipped by a desktop pane
	 */
	INTERNAL_FRAME = 27,
	/**
	 * An object used to present an icon or short string in an interface
	 */
	LABEL = 28,
	/**
	 * A specialized pane that allows its children to be drawn in layers, providing a form of stacking order
	 */
	LAYERED_PANE = 29,
	/**
	 * An object that presents a list of objects to the user and allows the user to select one or more of them
	 */
	LIST = 30,
	/**
	 * An object that represents an element of a list
	 */
	LIST_ITEM = 31,
	/**
	 * An object usually found inside a menu bar that contains a list of actions the user can choose from
	 */
	MENU = 32,
	/**
	 * An object usually drawn at the top of the primary dialog box of an application that contains a list of menus the user can choose from
	 */
	MENU_BAR = 33,
	/**
	 * An object usually contained in a menu that presents an action the user can choose
	 */
	MENU_ITEM = 34,
	/**
	 * A specialized pane whose primary use is inside a DIALOG
	 */
	OPTION_PANE = 35,
	/**
	 * An object that is a child of a page tab list
	 */
	PAGE_TAB = 36,
	/**
	 * An object that presents a series of panels (or page tabs), one at a time, through some mechanism provided by the object
	 */
	PAGE_TAB_LIST = 37,
	/**
	 * A generic container that is often used to group objects
	 */
	PANEL = 38,
	/**
	 * A text object uses for passwords, or other places where the text content is not shown visibly to the user
	 */
	PASSWORD_TEXT = 39,
	/**
	 * A temporary window that is usually used to offer the user a list of choices, and then hides when the user selects one of those choices
	 */
	POPUP_MENU = 40,
	/**
	 * An object used to indicate how much of a task has been completed
	 */
	PROGRESS_BAR = 41,
	/**
	 * An object the user can manipulate to tell the application to do something
	 */
	PUSH_BUTTON = 42,
	/**
	 * A specialized check box that will cause other radio buttons in the same group to become unchecked when this one is checked
	 */
	RADIO_BUTTON = 43,
	/**
	 * A check menu item which belongs to a group. At each instant exactly one of the radio menu items from a group is selected
	 */
	RADIO_MENU_ITEM = 44,
	/**
	 * A specialized pane that has a glass pane and a layered pane as its children
	 */
	ROOT_PANE = 45,
	/**
	 * The header for a row of data
	 */
	ROW_HEADER = 46,
	/**
	 * An object usually used to allow a user to incrementally view a large amount of data.
	 */
	SCROLL_BAR = 47,
	/**
	 * An object that allows a user to incrementally view a large amount of information
	 */
	SCROLL_PANE = 48,
	/**
	 * An object usually contained in a menu to provide a visible and logical separation of the contents in a menu
	 */
	SEPARATOR = 49,
	/**
	 * An object that allows the user to select from a bounded range
	 */
	SLIDER = 50,
	/**
	 * A specialized panel that presents two other panels at the same time
	 */
	SPLIT_PANE = 51,
	/**
	 * An object used to get an integer or floating point number from the user
	 */
	SPIN_BUTTON = 52,
	/**
	 * An object which reports messages of minor importance to the user
	 */
	STATUSBAR = 53,
	/**
	 * An object used to represent information in terms of rows and columns
	 */
	TABLE = 54,
	/**
	 * A cell in a table
	 */
	TABLE_CELL = 55,
	/**
	 * The header for a column of a table
	 */
	TABLE_COLUMN_HEADER = 56,
	/**
	 * The header for a row of a table
	 */
	TABLE_ROW_HEADER = 57,
	/**
	 * A menu item used to tear off and reattach its menu
	 */
	TEAR_OFF_MENU_ITEM = 58,
	/**
	 * An object that represents an accessible terminal.  (Since: 0.6)
	 */
	TERMINAL = 59,
	/**
	 * An interactive widget that supports multiple lines of text and
	 * optionally accepts user input, but whose purpose is not to solicit user input.
	 * Thus ATK_ROLE_TEXT is appropriate for the text view in a plain text editor
	 * but inappropriate for an input field in a dialog box or web form. For widgets
	 * whose purpose is to solicit input from the user, see ATK_ROLE_ENTRY and
	 * ATK_ROLE_PASSWORD_TEXT. For generic objects which display a brief amount of
	 * textual information, see ATK_ROLE_STATIC.
	 */
	TEXT = 60,
	/**
	 * A specialized push button that can be checked or unchecked, but does not provide a separate indicator for the current state
	 */
	TOGGLE_BUTTON = 61,
	/**
	 * A bar or palette usually composed of push buttons or toggle buttons
	 */
	TOOL_BAR = 62,
	/**
	 * An object that provides information about another object
	 */
	TOOL_TIP = 63,
	/**
	 * An object used to represent hierarchical information to the user
	 */
	TREE = 64,
	/**
	 * An object capable of expanding and collapsing rows as well as showing multiple columns of data.   (Since: 0.7)
	 */
	TREE_TABLE = 65,
	/**
	 * The object contains some Accessible information, but its role is not known
	 */
	UNKNOWN = 66,
	/**
	 * An object usually used in a scroll pane
	 */
	VIEWPORT = 67,
	/**
	 * A top level window with no title or border.
	 */
	WINDOW = 68,
	/**
	 * An object that serves as a document header. (Since: 1.1.1)
	 */
	HEADER = 69,
	/**
	 * An object that serves as a document footer.  (Since: 1.1.1)
	 */
	FOOTER = 70,
	/**
	 * An object which is contains a paragraph of text content.   (Since: 1.1.1)
	 */
	PARAGRAPH = 71,
	/**
	 * An object which describes margins and tab stops, etc. for text objects which it controls (should have CONTROLLER_FOR relation to such).   (Since: 1.1.1)
	 */
	RULER = 72,
	/**
	 * The object is an application object, which may contain @ATK_ROLE_FRAME objects or other types of accessibles.  The root accessible of any application's ATK hierarchy should have ATK_ROLE_APPLICATION.   (Since: 1.1.4)
	 */
	APPLICATION = 73,
	/**
	 * The object is a dialog or list containing items for insertion into an entry widget, for instance a list of words for completion of a text entry.   (Since: 1.3)
	 */
	AUTOCOMPLETE = 74,
	/**
	 * The object is an editable text object in a toolbar.  (Since: 1.5)
	 */
	EDIT_BAR = 75,
	/**
	 * The object is an embedded container within a document or panel.  This role is a grouping "hint" indicating that the contained objects share a context.  (Since: 1.7.2)
	 */
	EMBEDDED = 76,
	/**
	 * The object is a component whose textual content may be entered or modified by the user, provided @ATK_STATE_EDITABLE is present.   (Since: 1.11)
	 */
	ENTRY = 77,
	/**
	 * The object is a graphical depiction of quantitative data. It may contain multiple subelements whose attributes and/or description may be queried to obtain both the quantitative data and information about how the data is being presented. The LABELLED_BY relation is particularly important in interpreting objects of this type, as is the accessible-description property.  (Since: 1.11)
	 */
	CHART = 78,
	/**
	 * The object contains descriptive information, usually textual, about another user interface element such as a table, chart, or image.  (Since: 1.11)
	 */
	CAPTION = 79,
	/**
	 * The object is a visual frame or container which contains a view of document content. Document frames may occur within another Document instance, in which case the second document may be said to be embedded in the containing instance. HTML frames are often ROLE_DOCUMENT_FRAME. Either this object, or a singleton descendant, should implement the Document interface.  (Since: 1.11)
	 */
	DOCUMENT_FRAME = 80,
	/**
	 * The object serves as a heading for content which follows it in a document. The 'heading level' of the heading, if availabe, may be obtained by querying the object's attributes.
	 */
	HEADING = 81,
	/**
	 * The object is a containing instance which encapsulates a page of information. @ATK_ROLE_PAGE is used in documents and content which support a paginated navigation model.  (Since: 1.11)
	 */
	PAGE = 82,
	/**
	 * The object is a containing instance of document content which constitutes a particular 'logical' section of the document. The type of content within a section, and the nature of the section division itself, may be obtained by querying the object's attributes. Sections may be nested. (Since: 1.11)
	 */
	SECTION = 83,
	/**
	 * The object is redundant with another object in the hierarchy, and is exposed for purely technical reasons.  Objects of this role should normally be ignored by clients. (Since: 1.11)
	 */
	REDUNDANT_OBJECT = 84,
	/**
	 * The object is a container for form controls, for instance as part of a
	 * web form or user-input form within a document.  This role is primarily a tag/convenience for
	 * clients when navigating complex documents, it is not expected that ordinary GUI containers will
	 * always have ATK_ROLE_FORM. (Since: 1.12.0)
	 */
	FORM = 85,
	/**
	 * The object is a hypertext anchor, i.e. a "link" in a
	 * hypertext document.  Such objects are distinct from 'inline'
	 * content which may also use the Hypertext/Hyperlink interfaces
	 * to indicate the range/location within a text object where
	 * an inline or embedded object lies.  (Since: 1.12.1)
	 */
	LINK = 86,
	/**
	 * The object is a window or similar viewport
	 * which is used to allow composition or input of a 'complex character',
	 * in other words it is an "input method window." (Since: 1.12.1)
	 */
	INPUT_METHOD_WINDOW = 87,
	/**
	 * A row in a table.  (Since: 2.1.0)
	 */
	TABLE_ROW = 88,
	/**
	 * An object that represents an element of a tree.  (Since: 2.1.0)
	 */
	TREE_ITEM = 89,
	/**
	 * A document frame which contains a spreadsheet.  (Since: 2.1.0)
	 */
	DOCUMENT_SPREADSHEET = 90,
	/**
	 * A document frame which contains a presentation or slide content.  (Since: 2.1.0)
	 */
	DOCUMENT_PRESENTATION = 91,
	/**
	 * A document frame which contains textual content, such as found in a word processing application.  (Since: 2.1.0)
	 */
	DOCUMENT_TEXT = 92,
	/**
	 * A document frame which contains HTML or other markup suitable for display in a web browser.  (Since: 2.1.0)
	 */
	DOCUMENT_WEB = 93,
	/**
	 * A document frame which contains email content to be displayed or composed either in plain text or HTML.  (Since: 2.1.0)
	 */
	DOCUMENT_EMAIL = 94,
	/**
	 * An object found within a document and designed to present a comment, note, or other annotation. In some cases, this object might not be visible until activated.  (Since: 2.1.0)
	 */
	COMMENT = 95,
	/**
	 * A non-collapsible list of choices the user can select from. (Since: 2.1.0)
	 */
	LIST_BOX = 96,
	/**
	 * A group of related widgets. This group typically has a label. (Since: 2.1.0)
	 */
	GROUPING = 97,
	/**
	 * An image map object. Usually a graphic with multiple hotspots, where each hotspot can be activated resulting in the loading of another document or section of a document. (Since: 2.1.0)
	 */
	IMAGE_MAP = 98,
	/**
	 * A transitory object designed to present a message to the user, typically at the desktop level rather than inside a particular application.  (Since: 2.1.0)
	 */
	NOTIFICATION = 99,
	/**
	 * An object designed to present a message to the user within an existing window. (Since: 2.1.0)
	 */
	INFO_BAR = 100,
	/**
	 * A bar that serves as a level indicator to, for instance, show the strength of a password or the state of a battery.  (Since: 2.7.3)
	 */
	LEVEL_BAR = 101,
	/**
	 * A bar that serves as the title of a window or a
	 * dialog. (Since: 2.12)
	 */
	TITLE_BAR = 102,
	/**
	 * An object which contains a text section
	 * that is quoted from another source. (Since: 2.12)
	 */
	BLOCK_QUOTE = 103,
	/**
	 * An object which represents an audio element. (Since: 2.12)
	 */
	AUDIO = 104,
	/**
	 * An object which represents a video element. (Since: 2.12)
	 */
	VIDEO = 105,
	/**
	 * A definition of a term or concept. (Since: 2.12)
	 */
	DEFINITION = 106,
	/**
	 * A section of a page that consists of a
	 * composition that forms an independent part of a document, page, or
	 * site. Examples: A blog entry, a news story, a forum post. (Since: 2.12)
	 */
	ARTICLE = 107,
	/**
	 * A region of a web page intended as a
	 * navigational landmark. This is designed to allow Assistive
	 * Technologies to provide quick navigation among key regions within a
	 * document. (Since: 2.12)
	 */
	LANDMARK = 108,
	/**
	 * A text widget or container holding log content, such
	 * as chat history and error logs. In this role there is a
	 * relationship between the arrival of new items in the log and the
	 * reading order. The log contains a meaningful sequence and new
	 * information is added only to the end of the log, not at arbitrary
	 * points. (Since: 2.12)
	 */
	LOG = 109,
	/**
	 * A container where non-essential information
	 * changes frequently. Common usages of marquee include stock tickers
	 * and ad banners. The primary difference between a marquee and a log
	 * is that logs usually have a meaningful order or sequence of
	 * important content changes. (Since: 2.12)
	 */
	MARQUEE = 110,
	/**
	 * A text widget or container that holds a mathematical
	 * expression. (Since: 2.12)
	 */
	MATH = 111,
	/**
	 * A widget whose purpose is to display a rating,
	 * such as the number of stars associated with a song in a media
	 * player. Objects of this role should also implement
	 * AtkValue. (Since: 2.12)
	 */
	RATING = 112,
	/**
	 * An object containing a numerical counter which
	 * indicates an amount of elapsed time from a start point, or the time
	 * remaining until an end point. (Since: 2.12)
	 */
	TIMER = 113,
	/**
	 * An object that represents a list of
	 * term-value groups. A term-value group represents a individual
	 * description and consist of one or more names
	 * (ATK_ROLE_DESCRIPTION_TERM) followed by one or more values
	 * (ATK_ROLE_DESCRIPTION_VALUE). For each list, there should not be
	 * more than one group with the same term name. (Since: 2.12)
	 */
	DESCRIPTION_LIST = 114,
	/**
	 * An object that represents a term or phrase
	 * with a corresponding definition. (Since: 2.12)
	 */
	DESCRIPTION_TERM = 115,
	/**
	 * An object that represents the
	 * description, definition or value of a term. (Since: 2.12)
	 */
	DESCRIPTION_VALUE = 116,
	/**
	 * A generic non-container object whose purpose is to display a
	 * brief amount of information to the user and whose role is known by the
	 * implementor but lacks semantic value for the user. Examples in which
	 * %ATK_ROLE_STATIC is appropriate include the message displayed in a message box
	 * and an image used as an alternative means to display text. %ATK_ROLE_STATIC
	 * should not be applied to widgets which are traditionally interactive, objects
	 * which display a significant amount of content, or any object which has an
	 * accessible relation pointing to another object. Implementors should expose the
	 * displayed information through the accessible name of the object. If doing so seems
	 * inappropriate, it may indicate that a different role should be used. For
	 * labels which describe another widget, see %ATK_ROLE_LABEL. For text views, see
	 * %ATK_ROLE_TEXT. For generic containers, see %ATK_ROLE_PANEL. For objects whose
	 * role is not known by the implementor, see %ATK_ROLE_UNKNOWN. (Since: 2.16)
	 */
	STATIC = 117,
	/**
	 * An object that represents a mathematical fraction.
	 * (Since: 2.16)
	 */
	MATH_FRACTION = 118,
	/**
	 * An object that represents a mathematical expression
	 * displayed with a radical. (Since: 2.16)
	 */
	MATH_ROOT = 119,
	/**
	 * An object that contains text that is displayed as a
	 * subscript. (Since: 2.16)
	 */
	SUBSCRIPT = 120,
	/**
	 * An object that contains text that is displayed as a
	 * superscript. (Since: 2.16)
	 */
	SUPERSCRIPT = 121,
	/**
	 * An object that contains the text of a footnote. (Since: 2.26)
	 */
	FOOTNOTE = 122,
	/**
	 * Content previously deleted or proposed to be
	 * deleted, e.g. in revision history or a content view providing suggestions
	 * from reviewers. (Since: 2.34)
	 */
	CONTENT_DELETION = 123,
	/**
	 * Content previously inserted or proposed to be
	 * inserted, e.g. in revision history or a content view providing suggestions
	 * from reviewers. (Since: 2.34)
	 */
	CONTENT_INSERTION = 124,
	/**
	 * A run of content that is marked or highlighted, such as for
	 * reference purposes, or to call it out as having a special purpose. If the
	 * marked content has an associated section in the document elaborating on the
	 * reason for the mark, then %ATK_RELATION_DETAILS should be used on the mark
	 * to point to that associated section. In addition, the reciprocal relation
	 * %ATK_RELATION_DETAILS_FOR should be used on the associated content section
	 * to point back to the mark. (Since: 2.36)
	 */
	MARK = 125,
	/**
	 * A container for content that is called out as a proposed
	 * change from the current version of the document, such as by a reviewer of the
	 * content. This role should include either %ATK_ROLE_CONTENT_DELETION and/or
	 * %ATK_ROLE_CONTENT_INSERTION children, in any order, to indicate what the
	 * actual change is. (Since: 2.36)
	 */
	SUGGESTION = 126,
	/**
	 * not a valid role, used for finding end of the enumeration
	 */
	LAST_DEFINED = 127,
}
alias AtkRole Role;

/**
 * Specifies where an object should be placed on the screen when using scroll_to.
 *
 * Since: 2.30
 */
public enum AtkScrollType
{
	/**
	 * Scroll the object vertically and horizontally to bring
	 * its top left corner to the top left corner of the window.
	 */
	TOP_LEFT = 0,
	/**
	 * Scroll the object vertically and horizontally to
	 * bring its bottom right corner to the bottom right corner of the window.
	 */
	BOTTOM_RIGHT = 1,
	/**
	 * Scroll the object vertically to bring its top edge to
	 * the top edge of the window.
	 */
	TOP_EDGE = 2,
	/**
	 * Scroll the object vertically to bring its bottom
	 * edge to the bottom edge of the window.
	 */
	BOTTOM_EDGE = 3,
	/**
	 * Scroll the object vertically and horizontally to bring
	 * its left edge to the left edge of the window.
	 */
	LEFT_EDGE = 4,
	/**
	 * Scroll the object vertically and horizontally to
	 * bring its right edge to the right edge of the window.
	 */
	RIGHT_EDGE = 5,
	/**
	 * Scroll the object vertically and horizontally so that
	 * as much as possible of the object becomes visible. The exact placement is
	 * determined by the application.
	 */
	ANYWHERE = 6,
}
alias AtkScrollType ScrollType;

/**
 * The possible types of states of an object
 */
public enum AtkStateType
{
	/**
	 * Indicates an invalid state - probably an error condition.
	 */
	INVALID = 0,
	/**
	 * Indicates a window is currently the active window, or an object is the active subelement within a container or table. ATK_STATE_ACTIVE should not be used for objects which have ATK_STATE_FOCUSABLE or ATK_STATE_SELECTABLE: Those objects should use ATK_STATE_FOCUSED and ATK_STATE_SELECTED respectively. ATK_STATE_ACTIVE is a means to indicate that an object which is not focusable and not selectable is the currently-active item within its parent container.
	 */
	ACTIVE = 1,
	/**
	 * Indicates that the object is 'armed', i.e. will be activated by if a pointer button-release event occurs within its bounds.  Buttons often enter this state when a pointer click occurs within their bounds, as a precursor to activation. ATK_STATE_ARMED has been deprecated since ATK-2.16 and should not be used in newly-written code.
	 */
	ARMED = 2,
	/**
	 * Indicates the current object is busy, i.e. onscreen representation is in the process of changing, or the object is temporarily unavailable for interaction due to activity already in progress.  This state may be used by implementors of Document to indicate that content loading is underway.  It also may indicate other 'pending' conditions; clients may wish to interrogate this object when the ATK_STATE_BUSY flag is removed.
	 */
	BUSY = 3,
	/**
	 * Indicates this object is currently checked, for instance a checkbox is 'non-empty'.
	 */
	CHECKED = 4,
	/**
	 * Indicates that this object no longer has a valid backing widget (for instance, if its peer object has been destroyed)
	 */
	DEFUNCT = 5,
	/**
	 * Indicates that this object can contain text, and that the
	 * user can change the textual contents of this object by editing those contents
	 * directly. For an object which is expected to be editable due to its type, but
	 * which cannot be edited due to the application or platform preventing the user
	 * from doing so, that object's #AtkStateSet should lack ATK_STATE_EDITABLE and
	 * should contain ATK_STATE_READ_ONLY.
	 */
	EDITABLE = 6,
	/**
	 * Indicates that this object is enabled, i.e. that it currently reflects some application state. Objects that are "greyed out" may lack this state, and may lack the STATE_SENSITIVE if direct user interaction cannot cause them to acquire STATE_ENABLED. See also: ATK_STATE_SENSITIVE
	 */
	ENABLED = 7,
	/**
	 * Indicates this object allows progressive disclosure of its children
	 */
	EXPANDABLE = 8,
	/**
	 * Indicates this object its expanded - see ATK_STATE_EXPANDABLE above
	 */
	EXPANDED = 9,
	/**
	 * Indicates this object can accept keyboard focus, which means all events resulting from typing on the keyboard will normally be passed to it when it has focus
	 */
	FOCUSABLE = 10,
	/**
	 * Indicates this object currently has the keyboard focus
	 */
	FOCUSED = 11,
	/**
	 * Indicates the orientation of this object is horizontal; used, for instance, by objects of ATK_ROLE_SCROLL_BAR.  For objects where vertical/horizontal orientation is especially meaningful.
	 */
	HORIZONTAL = 12,
	/**
	 * Indicates this object is minimized and is represented only by an icon
	 */
	ICONIFIED = 13,
	/**
	 * Indicates something must be done with this object before the user can interact with an object in a different window
	 */
	MODAL = 14,
	/**
	 * Indicates this (text) object can contain multiple lines of text
	 */
	MULTI_LINE = 15,
	/**
	 * Indicates this object allows more than one of its children to be selected at the same time, or in the case of text objects, that the object supports non-contiguous text selections.
	 */
	MULTISELECTABLE = 16,
	/**
	 * Indicates this object paints every pixel within its rectangular region.
	 */
	OPAQUE = 17,
	/**
	 * Indicates this object is currently pressed.
	 */
	PRESSED = 18,
	/**
	 * Indicates the size of this object is not fixed
	 */
	RESIZABLE = 19,
	/**
	 * Indicates this object is the child of an object that allows its children to be selected and that this child is one of those children that can be selected
	 */
	SELECTABLE = 20,
	/**
	 * Indicates this object is the child of an object that allows its children to be selected and that this child is one of those children that has been selected
	 */
	SELECTED = 21,
	/**
	 * Indicates this object is sensitive, e.g. to user interaction.
	 * STATE_SENSITIVE usually accompanies STATE_ENABLED for user-actionable controls,
	 * but may be found in the absence of STATE_ENABLED if the current visible state of the
	 * control is "disconnected" from the application state.  In such cases, direct user interaction
	 * can often result in the object gaining STATE_SENSITIVE, for instance if a user makes
	 * an explicit selection using an object whose current state is ambiguous or undefined.
	 * @see STATE_ENABLED, STATE_INDETERMINATE.
	 */
	SENSITIVE = 22,
	/**
	 * Indicates this object, the object's parent, the object's parent's parent, and so on,
	 * are all 'shown' to the end-user, i.e. subject to "exposure" if blocking or obscuring objects do not interpose
	 * between this object and the top of the window stack.
	 */
	SHOWING = 23,
	/**
	 * Indicates this (text) object can contain only a single line of text
	 */
	SINGLE_LINE = 24,
	/**
	 * Indicates that the information returned for this object may no longer be
	 * synchronized with the application state.  This is implied if the object has STATE_TRANSIENT,
	 * and can also occur towards the end of the object peer's lifecycle. It can also be used to indicate that
	 * the index associated with this object has changed since the user accessed the object (in lieu of
	 * "index-in-parent-changed" events).
	 */
	STALE = 25,
	/**
	 * Indicates this object is transient, i.e. a snapshot which may not emit events when its
	 * state changes.  Data from objects with ATK_STATE_TRANSIENT should not be cached, since there may be no
	 * notification given when the cached data becomes obsolete.
	 */
	TRANSIENT = 26,
	/**
	 * Indicates the orientation of this object is vertical
	 */
	VERTICAL = 27,
	/**
	 * Indicates this object is visible, e.g. has been explicitly marked for exposure to the user.
	 * **note**: %ATK_STATE_VISIBLE is no guarantee that the object is actually unobscured on the screen, only
	 * that it is 'potentially' visible, barring obstruction, being scrolled or clipped out of the
	 * field of view, or having an ancestor container that has not yet made visible.
	 * A widget is potentially onscreen if it has both %ATK_STATE_VISIBLE and %ATK_STATE_SHOWING.
	 * The absence of %ATK_STATE_VISIBLE and %ATK_STATE_SHOWING is semantically equivalent to saying
	 * that an object is 'hidden'.  See also %ATK_STATE_TRUNCATED, which applies if an object with
	 * %ATK_STATE_VISIBLE and %ATK_STATE_SHOWING set lies within a viewport which means that its
	 * contents are clipped, e.g. a truncated spreadsheet cell or
	 * an image within a scrolling viewport.  Mostly useful for screen-review and magnification
	 * algorithms.
	 */
	VISIBLE = 28,
	/**
	 * Indicates that "active-descendant-changed" event
	 * is sent when children become 'active' (i.e. are selected or navigated to onscreen).
	 * Used to prevent need to enumerate all children in very large containers, like tables.
	 * The presence of STATE_MANAGES_DESCENDANTS is an indication to the client.
	 * that the children should not, and need not, be enumerated by the client.
	 * Objects implementing this state are expected to provide relevant state
	 * notifications to listening clients, for instance notifications of visibility
	 * changes and activation of their contained child objects, without the client
	 * having previously requested references to those children.
	 */
	MANAGES_DESCENDANTS = 29,
	/**
	 * Indicates that the value, or some other quantifiable
	 * property, of this AtkObject cannot be fully determined. In the case of a large
	 * data set in which the total number of items in that set is unknown (e.g. 1 of
	 * 999+), implementors should expose the currently-known set size (999) along
	 * with this state. In the case of a check box, this state should be used to
	 * indicate that the check box is a tri-state check box which is currently
	 * neither checked nor unchecked.
	 */
	INDETERMINATE = 30,
	/**
	 * Indicates that an object is truncated, e.g. a text value in a speradsheet cell.
	 */
	TRUNCATED = 31,
	/**
	 * Indicates that explicit user interaction with an object is required by the user interface, e.g. a required field in a "web-form" interface.
	 */
	REQUIRED = 32,
	/**
	 * Indicates that the object has encountered an error condition due to failure of input validation. For instance, a form control may acquire this state in response to invalid or malformed user input.
	 */
	INVALID_ENTRY = 33,
	/**
	 * Indicates that the object in question implements some form of ¨typeahead¨ or
	 * pre-selection behavior whereby entering the first character of one or more sub-elements
	 * causes those elements to scroll into view or become selected.  Subsequent character input
	 * may narrow the selection further as long as one or more sub-elements match the string.
	 * This state is normally only useful and encountered on objects that implement Selection.
	 * In some cases the typeahead behavior may result in full or partial ¨completion¨ of
	 * the data in the input field, in which case these input events may trigger text-changed
	 * events from the AtkText interface.  This state supplants @ATK_ROLE_AUTOCOMPLETE.
	 */
	SUPPORTS_AUTOCOMPLETION = 34,
	/**
	 * Indicates that the object in question supports text selection. It should only be exposed on objects which implement the Text interface, in order to distinguish this state from @ATK_STATE_SELECTABLE, which infers that the object in question is a selectable child of an object which implements Selection. While similar, text selection and subelement selection are distinct operations.
	 */
	SELECTABLE_TEXT = 35,
	/**
	 * Indicates that the object is the "default" active component, i.e. the object which is activated by an end-user press of the "Enter" or "Return" key.  Typically a "close" or "submit" button.
	 */
	DEFAULT = 36,
	/**
	 * Indicates that the object changes its appearance dynamically as an inherent part of its presentation.  This state may come and go if an object is only temporarily animated on the way to a 'final' onscreen presentation.
	 * **note**: some applications, notably content viewers, may not be able to detect
	 * all kinds of animated content.  Therefore the absence of this state should not
	 * be taken as definitive evidence that the object's visual representation is
	 * static; this state is advisory.
	 */
	ANIMATED = 37,
	/**
	 * Indicates that the object (typically a hyperlink) has already been 'activated', and/or its backing data has already been downloaded, rendered, or otherwise "visited".
	 */
	VISITED = 38,
	/**
	 * Indicates this object has the potential to be
	 * checked, such as a checkbox or toggle-able table cell. @Since:
	 * ATK-2.12
	 */
	CHECKABLE = 39,
	/**
	 * Indicates that the object has a popup context
	 * menu or sub-level menu which may or may not be showing. This means
	 * that activation renders conditional content.  Note that ordinary
	 * tooltips are not considered popups in this context. @Since: ATK-2.12
	 */
	HAS_POPUP = 40,
	/**
	 * Indicates this object has a tooltip. @Since: ATK-2.16
	 */
	HAS_TOOLTIP = 41,
	/**
	 * Indicates that a widget which is ENABLED and SENSITIVE
	 * has a value which can be read, but not modified, by the user. Note that this
	 * state should only be applied to widget types whose value is normally directly
	 * user modifiable, such as check boxes, radio buttons, spin buttons, text input
	 * fields, and combo boxes, as a means to convey that the expected interaction
	 * with that widget is not possible. When the expected interaction with a
	 * widget does not include modification by the user, as is the case with
	 * labels and containers, ATK_STATE_READ_ONLY should not be applied. See also
	 * ATK_STATE_EDITABLE. @Since: ATK-2-16
	 */
	READ_ONLY = 42,
	/**
	 * Indicates this object is collapsed. @Since: ATK-2.38
	 */
	COLLAPSED = 43,
	/**
	 * Not a valid state, used for finding end of enumeration
	 */
	LAST_DEFINED = 44,
}
alias AtkStateType StateType;

/**
 * Describes the text attributes supported
 */
public enum AtkTextAttribute
{
	/**
	 * Invalid attribute, like bad spelling or grammar.
	 */
	INVALID = 0,
	/**
	 * The pixel width of the left margin
	 */
	LEFT_MARGIN = 1,
	/**
	 * The pixel width of the right margin
	 */
	RIGHT_MARGIN = 2,
	/**
	 * The number of pixels that the text is indented
	 */
	INDENT = 3,
	/**
	 * Either "true" or "false" indicating whether text is visible or not
	 */
	INVISIBLE = 4,
	/**
	 * Either "true" or "false" indicating whether text is editable or not
	 */
	EDITABLE = 5,
	/**
	 * Pixels of blank space to leave above each newline-terminated line.
	 */
	PIXELS_ABOVE_LINES = 6,
	/**
	 * Pixels of blank space to leave below each newline-terminated line.
	 */
	PIXELS_BELOW_LINES = 7,
	/**
	 * Pixels of blank space to leave between wrapped lines inside the same newline-terminated line (paragraph).
	 */
	PIXELS_INSIDE_WRAP = 8,
	/**
	 * "true" or "false" whether to make the background color for each character the height of the highest font used on the current line, or the height of the font used for the current character.
	 */
	BG_FULL_HEIGHT = 9,
	/**
	 * Number of pixels that the characters are risen above the baseline. See also ATK_TEXT_ATTR_TEXT_POSITION.
	 */
	RISE = 10,
	/**
	 * "none", "single", "double", "low", or "error"
	 */
	UNDERLINE = 11,
	/**
	 * "true" or "false" whether the text is strikethrough
	 */
	STRIKETHROUGH = 12,
	/**
	 * The size of the characters in points. eg: 10
	 */
	SIZE = 13,
	/**
	 * The scale of the characters. The value is a string representation of a double
	 */
	SCALE = 14,
	/**
	 * The weight of the characters.
	 */
	WEIGHT = 15,
	/**
	 * The language used
	 */
	LANGUAGE = 16,
	/**
	 * The font family name
	 */
	FAMILY_NAME = 17,
	/**
	 * The background color. The value is an RGB value of the format "%u,%u,%u"
	 */
	BG_COLOR = 18,
	/**
	 * The foreground color. The value is an RGB value of the format "%u,%u,%u"
	 */
	FG_COLOR = 19,
	/**
	 * "true" if a #GdkBitmap is set for stippling the background color.
	 */
	BG_STIPPLE = 20,
	/**
	 * "true" if a #GdkBitmap is set for stippling the foreground color.
	 */
	FG_STIPPLE = 21,
	/**
	 * The wrap mode of the text, if any. Values are "none", "char", "word", or "word_char".
	 */
	WRAP_MODE = 22,
	/**
	 * The direction of the text, if set. Values are "none", "ltr" or "rtl"
	 */
	DIRECTION = 23,
	/**
	 * The justification of the text, if set. Values are "left", "right", "center" or "fill"
	 */
	JUSTIFICATION = 24,
	/**
	 * The stretch of the text, if set. Values are "ultra_condensed", "extra_condensed", "condensed", "semi_condensed", "normal", "semi_expanded", "expanded", "extra_expanded" or "ultra_expanded"
	 */
	STRETCH = 25,
	/**
	 * The capitalization variant of the text, if set. Values are "normal" or "small_caps"
	 */
	VARIANT = 26,
	/**
	 * The slant style of the text, if set. Values are "normal", "oblique" or "italic"
	 */
	STYLE = 27,
	/**
	 * The vertical position with respect to the baseline. Values are "baseline", "super", or "sub". Note that a super or sub text attribute refers to position with respect to the baseline of the prior character.
	 */
	TEXT_POSITION = 28,
	/**
	 * not a valid text attribute, used for finding end of enumeration
	 */
	LAST_DEFINED = 29,
}
alias AtkTextAttribute TextAttribute;

/**
 * Text boundary types used for specifying boundaries for regions of text.
 * This enumeration is deprecated since 2.9.4 and should not be used. Use
 * AtkTextGranularity with #atk_text_get_string_at_offset instead.
 */
public enum AtkTextBoundary
{
	/**
	 * Boundary is the boundary between characters
	 * (including non-printing characters)
	 */
	CHAR = 0,
	/**
	 * Boundary is the start (i.e. first character) of a word.
	 */
	WORD_START = 1,
	/**
	 * Boundary is the end (i.e. last
	 * character) of a word.
	 */
	WORD_END = 2,
	/**
	 * Boundary is the first character in a sentence.
	 */
	SENTENCE_START = 3,
	/**
	 * Boundary is the last (terminal)
	 * character in a sentence; in languages which use "sentence stop"
	 * punctuation such as English, the boundary is thus the '.', '?', or
	 * similar terminal punctuation character.
	 */
	SENTENCE_END = 4,
	/**
	 * Boundary is the initial character of the content or a
	 * character immediately following a newline, linefeed, or return character.
	 */
	LINE_START = 5,
	/**
	 * Boundary is the linefeed, or return
	 * character.
	 */
	LINE_END = 6,
}
alias AtkTextBoundary TextBoundary;

/**
 * Describes the type of clipping required.
 */
public enum AtkTextClipType
{
	/**
	 * No clipping to be done
	 */
	NONE = 0,
	/**
	 * Text clipped by min coordinate is omitted
	 */
	MIN = 1,
	/**
	 * Text clipped by max coordinate is omitted
	 */
	MAX = 2,
	/**
	 * Only text fully within mix/max bound is retained
	 */
	BOTH = 3,
}
alias AtkTextClipType TextClipType;

/**
 * Text granularity types used for specifying the granularity of the region of
 * text we are interested in.
 */
public enum AtkTextGranularity
{
	/**
	 * Granularity is defined by the boundaries between characters
	 * (including non-printing characters)
	 */
	CHAR = 0,
	/**
	 * Granularity is defined by the boundaries of a word,
	 * starting at the beginning of the current word and finishing at the beginning of
	 * the following one, if present.
	 */
	WORD = 1,
	/**
	 * Granularity is defined by the boundaries of a sentence,
	 * starting at the beginning of the current sentence and finishing at the beginning of
	 * the following one, if present.
	 */
	SENTENCE = 2,
	/**
	 * Granularity is defined by the boundaries of a line,
	 * starting at the beginning of the current line and finishing at the beginning of
	 * the following one, if present.
	 */
	LINE = 3,
	/**
	 * Granularity is defined by the boundaries of a paragraph,
	 * starting at the beginning of the current paragraph and finishing at the beginning of
	 * the following one, if present.
	 */
	PARAGRAPH = 4,
}
alias AtkTextGranularity TextGranularity;

/**
 * Default types for a given value. Those are defined in order to
 * easily get localized strings to describe a given value or a given
 * subrange, using atk_value_type_get_localized_name().
 */
public enum AtkValueType
{
	VERY_WEAK = 0,
	WEAK = 1,
	ACCEPTABLE = 2,
	STRONG = 3,
	VERY_STRONG = 4,
	VERY_LOW = 5,
	LOW = 6,
	MEDIUM = 7,
	HIGH = 8,
	VERY_HIGH = 9,
	VERY_BAD = 10,
	BAD = 11,
	GOOD = 12,
	VERY_GOOD = 13,
	BEST = 14,
	LAST_DEFINED = 15,
}
alias AtkValueType ValueType;

struct AtkAction;

/**
 * The #AtkAction interface should be supported by any object that can
 * perform one or more actions. The interface provides the standard
 * mechanism for an assistive technology to determine what those actions
 * are as well as tell the object to perform them. Any object that can
 * be manipulated should support this interface.
 */
struct AtkActionIface
{
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     action = a #GObject instance that implements AtkActionIface
	 *     i = the action index corresponding to the action to be performed
	 * Returns: %TRUE if success, %FALSE otherwise
	 */
	extern(C) int function(AtkAction* action, int i) doAction;
	/**
	 *
	 * Params:
	 *     action = a #GObject instance that implements AtkActionIface
	 * Returns: a the number of actions, or 0 if @action does not
	 *     implement this interface.
	 */
	extern(C) int function(AtkAction* action) getNActions;
	/**
	 *
	 * Params:
	 *     action = a #GObject instance that implements AtkActionIface
	 *     i = the action index corresponding to the action to be performed
	 * Returns: a description string, or %NULL if @action does
	 *     not implement this interface.
	 */
	extern(C) const(char)* function(AtkAction* action, int i) getDescription;
	/**
	 *
	 * Params:
	 *     action = a #GObject instance that implements AtkActionIface
	 *     i = the action index corresponding to the action to be performed
	 * Returns: a name string, or %NULL if @action does not
	 *     implement this interface.
	 */
	extern(C) const(char)* function(AtkAction* action, int i) getName;
	/**
	 *
	 * Params:
	 *     action = a #GObject instance that implements AtkActionIface
	 *     i = the action index corresponding to the action to be performed
	 * Returns: the keybinding which can be used to activate
	 *     this action, or %NULL if there is no keybinding for this action.
	 */
	extern(C) const(char)* function(AtkAction* action, int i) getKeybinding;
	/**
	 *
	 * Params:
	 *     action = a #GObject instance that implements AtkActionIface
	 *     i = the action index corresponding to the action to be performed
	 *     desc = the description to be assigned to this action
	 * Returns: a gboolean representing if the description was successfully set;
	 */
	extern(C) int function(AtkAction* action, int i, const(char)* desc) setDescription;
	/**
	 *
	 * Params:
	 *     action = a #GObject instance that implements AtkActionIface
	 *     i = the action index corresponding to the action to be performed
	 * Returns: a name string, or %NULL if @action does not
	 *     implement this interface.
	 */
	extern(C) const(char)* function(AtkAction* action, int i) getLocalizedName;
}

struct AtkComponent;

/**
 * The AtkComponent interface should be supported by any object that is
 * rendered on the screen. The interface provides the standard mechanism
 * for an assistive technology to determine and set the graphical
 * representation of an object.
 */
struct AtkComponentIface
{
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     component = The #AtkComponent to attach the @handler to
	 *     handler = The #AtkFocusHandler to be attached to @component
	 * Returns: a handler id which can be used in atk_component_remove_focus_handler()
	 *     or zero if the handler was already added.
	 */
	extern(C) uint function(AtkComponent* component, AtkFocusHandler handler) addFocusHandler;
	/**
	 *
	 * Params:
	 *     component = the #AtkComponent
	 *     x = x coordinate
	 *     y = y coordinate
	 *     coordType = specifies whether the coordinates are relative to the screen
	 *         or to the components top level window
	 * Returns: %TRUE or %FALSE indicating whether the specified point is within
	 *     the extent of the @component or not
	 */
	extern(C) int function(AtkComponent* component, int x, int y, AtkCoordType coordType) contains;
	/**
	 *
	 * Params:
	 *     component = the #AtkComponent
	 *     x = x coordinate
	 *     y = y coordinate
	 *     coordType = specifies whether the coordinates are relative to the screen
	 *         or to the components top level window
	 * Returns: a reference to the accessible
	 *     child, if one exists
	 */
	extern(C) AtkObject* function(AtkComponent* component, int x, int y, AtkCoordType coordType) refAccessibleAtPoint;
	/** */
	extern(C) void function(AtkComponent* component, int* x, int* y, int* width, int* height, AtkCoordType coordType) getExtents;
	/** */
	extern(C) void function(AtkComponent* component, int* x, int* y, AtkCoordType coordType) getPosition;
	/** */
	extern(C) void function(AtkComponent* component, int* width, int* height) getSize;
	/**
	 *
	 * Params:
	 *     component = an #AtkComponent
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	extern(C) int function(AtkComponent* component) grabFocus;
	/** */
	extern(C) void function(AtkComponent* component, uint handlerId) removeFocusHandler;
	/**
	 *
	 * Params:
	 *     component = an #AtkComponent
	 *     x = x coordinate
	 *     y = y coordinate
	 *     width = width to set for @component
	 *     height = height to set for @component
	 *     coordType = specifies whether the coordinates are relative to the screen
	 *         or to the components top level window
	 * Returns: %TRUE or %FALSE whether the extents were set or not
	 */
	extern(C) int function(AtkComponent* component, int x, int y, int width, int height, AtkCoordType coordType) setExtents;
	/**
	 *
	 * Params:
	 *     component = an #AtkComponent
	 *     x = x coordinate
	 *     y = y coordinate
	 *     coordType = specifies whether the coordinates are relative to the screen
	 *         or to the component's top level window
	 * Returns: %TRUE or %FALSE whether or not the position was set or not
	 */
	extern(C) int function(AtkComponent* component, int x, int y, AtkCoordType coordType) setPosition;
	/**
	 *
	 * Params:
	 *     component = an #AtkComponent
	 *     width = width to set for @component
	 *     height = height to set for @component
	 * Returns: %TRUE or %FALSE whether the size was set or not
	 */
	extern(C) int function(AtkComponent* component, int width, int height) setSize;
	/**
	 *
	 * Params:
	 *     component = an #AtkComponent
	 * Returns: an #AtkLayer which is the layer of the component
	 */
	extern(C) AtkLayer function(AtkComponent* component) getLayer;
	/**
	 *
	 * Params:
	 *     component = an #AtkComponent
	 * Returns: a gint which is the zorder of the component, i.e. the depth at
	 *     which the component is shown in relation to other components in the same
	 *     container.
	 */
	extern(C) int function(AtkComponent* component) getMdiZorder;
	/** */
	extern(C) void function(AtkComponent* component, AtkRectangle* bounds) boundsChanged;
	/**
	 *
	 * Params:
	 *     component = an #AtkComponent
	 * Returns: An alpha value from 0 to 1.0, inclusive.
	 */
	extern(C) double function(AtkComponent* component) getAlpha;
	/**
	 *
	 * Params:
	 *     component = an #AtkComponent
	 *     type = specify where the object should be made visible.
	 * Returns: whether scrolling was successful.
	 */
	extern(C) int function(AtkComponent* component, AtkScrollType type) scrollTo;
	/**
	 *
	 * Params:
	 *     component = an #AtkComponent
	 *     coords = specify whether coordinates are relative to the screen or to the
	 *         parent object.
	 *     x = x-position where to scroll to
	 *     y = y-position where to scroll to
	 * Returns: whether scrolling was successful.
	 */
	extern(C) int function(AtkComponent* component, AtkCoordType coords, int x, int y) scrollToPoint;
}

struct AtkDocument;

struct AtkDocumentIface
{
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     document = a #GObject instance that implements AtkDocumentIface
	 * Returns: a string indicating the document type
	 */
	extern(C) const(char)* function(AtkDocument* document) getDocumentType;
	/**
	 *
	 * Params:
	 *     document = a #GObject instance that implements AtkDocumentIface
	 * Returns: a %gpointer that points to an instance of the DOM.
	 */
	extern(C) void* function(AtkDocument* document) getDocument;
	/**
	 *
	 * Params:
	 *     document = a #GObject instance that implements AtkDocumentIface
	 * Returns: a UTF-8 string indicating the POSIX-style LC_MESSAGES
	 *     locale of the document content as a whole, or NULL if
	 *     the document content does not specify a locale.
	 */
	extern(C) const(char)* function(AtkDocument* document) getDocumentLocale;
	/**
	 *
	 * Params:
	 *     document = a #GObject instance that implements AtkDocumentIface
	 * Returns: An AtkAttributeSet containing the explicitly
	 *     set name-value-pair attributes associated with this document
	 *     as a whole.
	 */
	extern(C) AtkAttributeSet* function(AtkDocument* document) getDocumentAttributes;
	/**
	 *
	 * Params:
	 *     document = a #GObject instance that implements AtkDocumentIface
	 *     attributeName = a character string representing the name of the attribute
	 *         whose value is being queried.
	 * Returns: a string value associated with the named
	 *     attribute for this document, or %NULL if a value for
	 *     @attribute_name has not been specified for this document.
	 */
	extern(C) const(char)* function(AtkDocument* document, const(char)* attributeName) getDocumentAttributeValue;
	/**
	 *
	 * Params:
	 *     document = a #GObject instance that implements #AtkDocumentIface
	 *     attributeName = a character string representing the name of the attribute
	 *         whose value is being set.
	 *     attributeValue = a string value to be associated with @attribute_name.
	 * Returns: %TRUE if @attribute_value is successfully associated
	 *     with @attribute_name for this @document, and %FALSE if if the
	 *     document does not allow the attribute to be modified
	 */
	extern(C) int function(AtkDocument* document, const(char)* attributeName, const(char)* attributeValue) setDocumentAttribute;
	/**
	 *
	 * Params:
	 *     document = the #AtkDocument
	 * Returns: the current page number inside @document, or -1 if
	 *     not implemented, not know by the implementor, or irrelevant.
	 */
	extern(C) int function(AtkDocument* document) getCurrentPageNumber;
	/**
	 *
	 * Params:
	 *     document = the #AtkDocument
	 * Returns: total page count of @document, or -1 if not implemented,
	 *     not know by the implementor or irrelevant.
	 */
	extern(C) int function(AtkDocument* document) getPageCount;
}

struct AtkEditableText;

struct AtkEditableTextIface
{
	GTypeInterface parentInterface;
	/**
	 *
	 * Params:
	 *     text = an #AtkEditableText
	 *     attribSet = an #AtkAttributeSet
	 *     startOffset = start of range in which to set attributes
	 *     endOffset = end of range in which to set attributes
	 * Returns: %TRUE if attributes successfully set for the specified
	 *     range, otherwise %FALSE
	 */
	extern(C) int function(AtkEditableText* text, AtkAttributeSet* attribSet, int startOffset, int endOffset) setRunAttributes;
	/** */
	extern(C) void function(AtkEditableText* text, const(char)* string_) setTextContents;
	/** */
	extern(C) void function(AtkEditableText* text, const(char)* string_, int length, int* position) insertText;
	/** */
	extern(C) void function(AtkEditableText* text, int startPos, int endPos) copyText;
	/** */
	extern(C) void function(AtkEditableText* text, int startPos, int endPos) cutText;
	/** */
	extern(C) void function(AtkEditableText* text, int startPos, int endPos) deleteText;
	/** */
	extern(C) void function(AtkEditableText* text, int position) pasteText;
}

struct AtkGObjectAccessible
{
	AtkObject parent;
}

struct AtkGObjectAccessibleClass
{
	AtkObjectClass parentClass;
	AtkFunction pad1;
	AtkFunction pad2;
}

struct AtkHyperlink
{
	GObject parent;
}

struct AtkHyperlinkClass
{
	GObjectClass parent;
	/**
	 *
	 * Params:
	 *     link = an #AtkHyperlink
	 *     i = a (zero-index) integer specifying the desired anchor
	 * Returns: a string specifying the URI
	 */
	extern(C) char* function(AtkHyperlink* link, int i) getUri;
	/**
	 *
	 * Params:
	 *     link = an #AtkHyperlink
	 *     i = a (zero-index) integer specifying the desired anchor
	 * Returns: an #AtkObject associated with this hyperlinks
	 *     i-th anchor
	 */
	extern(C) AtkObject* function(AtkHyperlink* link, int i) getObject;
	/**
	 *
	 * Params:
	 *     link = an #AtkHyperlink
	 * Returns: the index with the hypertext document at which this link ends
	 */
	extern(C) int function(AtkHyperlink* link) getEndIndex;
	/**
	 *
	 * Params:
	 *     link = an #AtkHyperlink
	 * Returns: the index with the hypertext document at which this link begins
	 */
	extern(C) int function(AtkHyperlink* link) getStartIndex;
	/**
	 *
	 * Params:
	 *     link = an #AtkHyperlink
	 * Returns: whether or not this link is still valid
	 */
	extern(C) int function(AtkHyperlink* link) isValid;
	/**
	 *
	 * Params:
	 *     link = an #AtkHyperlink
	 * Returns: the number of anchors associated with this hyperlink
	 */
	extern(C) int function(AtkHyperlink* link) getNAnchors;
	/** */
	extern(C) uint function(AtkHyperlink* link) linkState;
	/**
	 *
	 * Params:
	 *     link = an #AtkHyperlink
	 * Returns: True if the AtkHyperlink is selected, False otherwise
	 */
	extern(C) int function(AtkHyperlink* link) isSelectedLink;
	/** */
	extern(C) void function(AtkHyperlink* link) linkActivated;
	AtkFunction pad1;
}

struct AtkHyperlinkImpl;

struct AtkHyperlinkImplIface
{
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     impl = a #GObject instance that implements AtkHyperlinkImplIface
	 * Returns: an AtkHyperlink object which points to this
	 *     implementing AtkObject.
	 */
	extern(C) AtkHyperlink* function(AtkHyperlinkImpl* impl) getHyperlink;
}

struct AtkHypertext;

struct AtkHypertextIface
{
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     hypertext = an #AtkHypertext
	 *     linkIndex = an integer specifying the desired link
	 * Returns: the link in this hypertext document at
	 *     index @link_index
	 */
	extern(C) AtkHyperlink* function(AtkHypertext* hypertext, int linkIndex) getLink;
	/**
	 *
	 * Params:
	 *     hypertext = an #AtkHypertext
	 * Returns: the number of links within this hypertext document
	 */
	extern(C) int function(AtkHypertext* hypertext) getNLinks;
	/**
	 *
	 * Params:
	 *     hypertext = an #AtkHypertext
	 *     charIndex = a character index
	 * Returns: an index into the array of hyperlinks in @hypertext,
	 *     or -1 if there is no hyperlink associated with this character.
	 */
	extern(C) int function(AtkHypertext* hypertext, int charIndex) getLinkIndex;
	/** */
	extern(C) void function(AtkHypertext* hypertext, int linkIndex) linkSelected;
}

struct AtkImage;

struct AtkImageIface
{
	GTypeInterface parent;
	/** */
	extern(C) void function(AtkImage* image, int* x, int* y, AtkCoordType coordType) getImagePosition;
	/**
	 *
	 * Params:
	 *     image = a #GObject instance that implements AtkImageIface
	 * Returns: a string representing the image description
	 */
	extern(C) const(char)* function(AtkImage* image) getImageDescription;
	/** */
	extern(C) void function(AtkImage* image, int* width, int* height) getImageSize;
	/**
	 *
	 * Params:
	 *     image = a #GObject instance that implements AtkImageIface
	 *     description = a string description to set for @image
	 * Returns: boolean TRUE, or FALSE if operation could
	 *     not be completed.
	 */
	extern(C) int function(AtkImage* image, const(char)* description) setImageDescription;
	/**
	 *
	 * Params:
	 *     image = An #AtkImage
	 * Returns: a string corresponding to the POSIX
	 *     `LC_MESSAGES` locale used by the image description, or
	 *     %NULL if the image does not specify a locale.
	 */
	extern(C) const(char)* function(AtkImage* image) getImageLocale;
}

struct AtkImplementor;

/**
 * Encapsulates information about a key event.
 */
struct AtkKeyEventStruct
{
	/**
	 * An AtkKeyEventType, generally one of ATK_KEY_EVENT_PRESS or ATK_KEY_EVENT_RELEASE
	 */
	int type;
	/**
	 * A bitmask representing the state of the modifier keys immediately after the event takes place.
	 * The meaning of the bits is currently defined to match the bitmask used by GDK in
	 * GdkEventType.state, see
	 * http://developer.gnome.org/doc/API/2.0/gdk/gdk-Event-Structures.html#GdkEventKey
	 */
	uint state;
	/**
	 * A guint representing a keysym value corresponding to those used by GDK and X11: see
	 * /usr/X11/include/keysymdef.h.
	 */
	uint keyval;
	/**
	 * The length of member #string.
	 */
	int length;
	/**
	 * A string containing one of the following: either a string approximating the text that would
	 * result from this keypress, if the key is a control or graphic character, or a symbolic name for this keypress.
	 * Alphanumeric and printable keys will have the symbolic key name in this string member, for instance "A". "0",
	 * "semicolon", "aacute".  Keypad keys have the prefix "KP".
	 */
	char* string_;
	/**
	 * The raw hardware code that generated the key event.  This field is raraly useful.
	 */
	ushort keycode;
	/**
	 * A timestamp in milliseconds indicating when the event occurred.
	 * These timestamps are relative to a starting point which should be considered arbitrary,
	 * and only used to compare the dispatch times of events to one another.
	 */
	uint timestamp;
}

struct AtkMisc
{
	GObject parent;
}

/**
 * Usage of AtkMisc is deprecated since 2.12 and heavily discouraged.
 */
struct AtkMiscClass
{
	GObjectClass parent;
	/** */
	extern(C) void function(AtkMisc* misc) threadsEnter;
	/** */
	extern(C) void function(AtkMisc* misc) threadsLeave;
	void*[32] vfuncs;
}

struct AtkNoOpObject
{
	AtkObject parent;
}

struct AtkNoOpObjectClass
{
	AtkObjectClass parentClass;
}

struct AtkNoOpObjectFactory
{
	AtkObjectFactory parent;
}

struct AtkNoOpObjectFactoryClass
{
	AtkObjectFactoryClass parentClass;
}

struct AtkObject
{
	GObject parent;
	char* description;
	char* name;
	AtkObject* accessibleParent;
	AtkRole role;
	AtkRelationSet* relationSet;
	AtkLayer layer;
}

struct AtkObjectClass
{
	GObjectClass parent;
	/**
	 *
	 * Params:
	 *     accessible = an #AtkObject
	 * Returns: a character string representing the accessible name of the object.
	 */
	extern(C) const(char)* function(AtkObject* accessible) getName;
	/**
	 *
	 * Params:
	 *     accessible = an #AtkObject
	 * Returns: a character string representing the accessible description
	 *     of the accessible.
	 */
	extern(C) const(char)* function(AtkObject* accessible) getDescription;
	/**
	 *
	 * Params:
	 *     accessible = an #AtkObject
	 * Returns: an #AtkObject representing the accessible
	 *     parent of the accessible
	 */
	extern(C) AtkObject* function(AtkObject* accessible) getParent;
	/** */
	extern(C) int function(AtkObject* accessible) getNChildren;
	/** */
	extern(C) AtkObject* function(AtkObject* accessible, int i) refChild;
	/**
	 *
	 * Params:
	 *     accessible = an #AtkObject
	 * Returns: an integer which is the index of the accessible in its parent
	 */
	extern(C) int function(AtkObject* accessible) getIndexInParent;
	/**
	 *
	 * Params:
	 *     accessible = an #AtkObject
	 * Returns: an #AtkRelationSet representing the relation set
	 *     of the object.
	 */
	extern(C) AtkRelationSet* function(AtkObject* accessible) refRelationSet;
	/**
	 *
	 * Params:
	 *     accessible = an #AtkObject
	 * Returns: an #AtkRole which is the role of the accessible
	 */
	extern(C) AtkRole function(AtkObject* accessible) getRole;
	/**
	 *
	 * Params:
	 *     accessible = an #AtkObject
	 * Returns: an #AtkLayer which is the layer of the accessible
	 */
	extern(C) AtkLayer function(AtkObject* accessible) getLayer;
	/**
	 *
	 * Params:
	 *     accessible = an #AtkObject
	 * Returns: a gint which is the zorder of the accessible, i.e. the depth at
	 *     which the component is shown in relation to other components in the same
	 *     container.
	 */
	extern(C) int function(AtkObject* accessible) getMdiZorder;
	/**
	 *
	 * Params:
	 *     accessible = an #AtkObject
	 * Returns: a reference to an #AtkStateSet which is the state
	 *     set of the accessible
	 */
	extern(C) AtkStateSet* function(AtkObject* accessible) refStateSet;
	/** */
	extern(C) void function(AtkObject* accessible, const(char)* name) setName;
	/** */
	extern(C) void function(AtkObject* accessible, const(char)* description) setDescription;
	/** */
	extern(C) void function(AtkObject* accessible, AtkObject* parent) setParent;
	/** */
	extern(C) void function(AtkObject* accessible, AtkRole role) setRole;
	/**
	 *
	 * Params:
	 *     accessible = an #AtkObject
	 *     handler = a function to be called when a property changes its value
	 * Returns: a #guint which is the handler id used in
	 *     atk_object_remove_property_change_handler()
	 */
	extern(C) uint function(AtkObject* accessible, AtkPropertyChangeHandler* handler) connectPropertyChangeHandler;
	/** */
	extern(C) void function(AtkObject* accessible, uint handlerId) removePropertyChangeHandler;
	/** */
	extern(C) void function(AtkObject* accessible, void* data) initialize;
	/** */
	extern(C) void function(AtkObject* accessible, uint changeIndex, void* changedChild) childrenChanged;
	/** */
	extern(C) void function(AtkObject* accessible, int focusIn) focusEvent;
	/** */
	extern(C) void function(AtkObject* accessible, AtkPropertyValues* values) propertyChange;
	/** */
	extern(C) void function(AtkObject* accessible, const(char)* name, int stateSet) stateChange;
	/** */
	extern(C) void function(AtkObject* accessible) visibleDataChanged;
	/** */
	extern(C) void function(AtkObject* accessible, void** child) activeDescendantChanged;
	/**
	 *
	 * Params:
	 *     accessible = An #AtkObject.
	 * Returns: an #AtkAttributeSet consisting of all
	 *     explicit properties/annotations applied to the object, or an empty
	 *     set if the object has no name-value pair attributes assigned to
	 *     it. This #atkattributeset should be freed by a call to
	 *     atk_attribute_set_free().
	 */
	extern(C) AtkAttributeSet* function(AtkObject* accessible) getAttributes;
	/**
	 *
	 * Params:
	 *     accessible = an #AtkObject
	 * Returns: a UTF-8 string indicating the POSIX-style LC_MESSAGES
	 *     locale of @accessible.
	 */
	extern(C) const(char)* function(AtkObject* accessible) getObjectLocale;
	AtkFunction pad1;
}

struct AtkObjectFactory
{
	GObject parent;
}

struct AtkObjectFactoryClass
{
	GObjectClass parentClass;
	/** */
	extern(C) AtkObject* function(GObject* obj) createAccessible;
	/** */
	extern(C) void function(AtkObjectFactory* factory) invalidate;
	/** */
	extern(C) GType function() getAccessibleType;
	AtkFunction pad1;
	AtkFunction pad2;
}

struct AtkPlug
{
	AtkObject parent;
}

struct AtkPlugClass
{
	AtkObjectClass parentClass;
	/** */
	extern(C) char* function(AtkPlug* obj) getObjectId;
}

/**
 * Note: @old_value field of #AtkPropertyValues will not contain a
 * valid value. This is a field defined with the purpose of contain
 * the previous value of the property, but is not used anymore.
 */
struct AtkPropertyValues
{
	/**
	 * The name of the ATK property which has changed.
	 */
	const(char)* propertyName;
	/**
	 * NULL. This field is not used anymore.
	 */
	GValue oldValue;
	/**
	 * The new value of the named property.
	 */
	GValue newValue;
}

struct AtkRange;

/**
 * A data structure for holding a rectangle. Those coordinates are
 * relative to the component top-level parent.
 */
struct AtkRectangle
{
	/**
	 * X coordinate of the left side of the rectangle.
	 */
	int x;
	/**
	 * Y coordinate of the top side of the rectangle.
	 */
	int y;
	/**
	 * width of the rectangle.
	 */
	int width;
	/**
	 * height of the rectangle.
	 */
	int height;
}

struct AtkRegistry
{
	GObject parent;
	GHashTable* factoryTypeRegistry;
	GHashTable* factorySingletonCache;
}

struct AtkRegistryClass
{
	GObjectClass parentClass;
}

struct AtkRelation
{
	GObject parent;
	GPtrArray* target;
	AtkRelationType relationship;
}

struct AtkRelationClass
{
	GObjectClass parent;
}

struct AtkRelationSet
{
	GObject parent;
	GPtrArray* relations;
}

struct AtkRelationSetClass
{
	GObjectClass parent;
	AtkFunction pad1;
	AtkFunction pad2;
}

struct AtkSelection;

struct AtkSelectionIface
{
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     selection = a #GObject instance that implements AtkSelectionIface
	 *     i = a #gint specifying the child index.
	 * Returns: TRUE if success, FALSE otherwise.
	 */
	extern(C) int function(AtkSelection* selection, int i) addSelection;
	/**
	 *
	 * Params:
	 *     selection = a #GObject instance that implements AtkSelectionIface
	 * Returns: TRUE if success, FALSE otherwise.
	 */
	extern(C) int function(AtkSelection* selection) clearSelection;
	/**
	 *
	 * Params:
	 *     selection = a #GObject instance that implements AtkSelectionIface
	 *     i = a #gint specifying the index in the selection set.  (e.g. the
	 *         ith selection as opposed to the ith child).
	 * Returns: an #AtkObject representing the
	 *     selected accessible, or %NULL if @selection does not implement this
	 *     interface.
	 */
	extern(C) AtkObject* function(AtkSelection* selection, int i) refSelection;
	/**
	 *
	 * Params:
	 *     selection = a #GObject instance that implements AtkSelectionIface
	 * Returns: a gint representing the number of items selected, or 0
	 *     if @selection does not implement this interface.
	 */
	extern(C) int function(AtkSelection* selection) getSelectionCount;
	/**
	 *
	 * Params:
	 *     selection = a #GObject instance that implements AtkSelectionIface
	 *     i = a #gint specifying the child index.
	 * Returns: a gboolean representing the specified child is selected, or 0
	 *     if @selection does not implement this interface.
	 */
	extern(C) int function(AtkSelection* selection, int i) isChildSelected;
	/**
	 *
	 * Params:
	 *     selection = a #GObject instance that implements AtkSelectionIface
	 *     i = a #gint specifying the index in the selection set.  (e.g. the
	 *         ith selection as opposed to the ith child).
	 * Returns: TRUE if success, FALSE otherwise.
	 */
	extern(C) int function(AtkSelection* selection, int i) removeSelection;
	/**
	 *
	 * Params:
	 *     selection = a #GObject instance that implements AtkSelectionIface
	 * Returns: TRUE if success, FALSE otherwise.
	 */
	extern(C) int function(AtkSelection* selection) selectAllSelection;
	/** */
	extern(C) void function(AtkSelection* selection) selectionChanged;
}

struct AtkSocket
{
	AtkObject parent;
	char* embeddedPlugId;
}

struct AtkSocketClass
{
	AtkObjectClass parentClass;
	/** */
	extern(C) void function(AtkSocket* obj, const(char)* plugId) embed;
}

struct AtkStateSet
{
	GObject parent;
}

struct AtkStateSetClass
{
	GObjectClass parent;
}

struct AtkStreamableContent;

struct AtkStreamableContentIface
{
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     streamable = a GObject instance that implements AtkStreamableContentIface
	 * Returns: a gint which is the number of mime types supported by the object.
	 */
	extern(C) int function(AtkStreamableContent* streamable) getNMimeTypes;
	/**
	 *
	 * Params:
	 *     streamable = a GObject instance that implements AtkStreamableContent
	 *     i = a gint representing the position of the mime type starting from 0
	 * Returns: a gchar* representing the specified mime type; the caller
	 *     should not free the character string.
	 */
	extern(C) const(char)* function(AtkStreamableContent* streamable, int i) getMimeType;
	/**
	 *
	 * Params:
	 *     streamable = a GObject instance that implements AtkStreamableContentIface
	 *     mimeType = a gchar* representing the mime type
	 * Returns: A #GIOChannel which contains the content in the
	 *     specified mime type.
	 */
	extern(C) GIOChannel* function(AtkStreamableContent* streamable, const(char)* mimeType) getStream;
	/**
	 *
	 * Params:
	 *     streamable = a GObject instance that implements AtkStreamableContentIface
	 *     mimeType = a gchar* representing the mime type, or NULL to request a URI
	 *         for the default mime type.
	 * Returns: Returns a string representing a URI, or %NULL
	 *     if no corresponding URI can be constructed.
	 */
	extern(C) const(char)* function(AtkStreamableContent* streamable, const(char)* mimeType) getUri;
	AtkFunction pad1;
	AtkFunction pad2;
	AtkFunction pad3;
}

struct AtkTable;

struct AtkTableCell;

/**
 * AtkTableCell is an interface for cells inside an #AtkTable.
 *
 * Since: 2.12
 */
struct AtkTableCellIface
{
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     cell = a GObject instance that implements AtkTableCellIface
	 * Returns: a gint representing the number of columns occupied by this cell,
	 *     or 0 if the cell does not implement this method.
	 */
	extern(C) int function(AtkTableCell* cell) getColumnSpan;
	/**
	 *
	 * Params:
	 *     cell = a GObject instance that implements AtkTableCellIface
	 * Returns: a GPtrArray of AtkObjects
	 *     representing the column header cells.
	 */
	extern(C) GPtrArray* function(AtkTableCell* cell) getColumnHeaderCells;
	/**
	 *
	 * Params:
	 *     cell = a GObject instance that implements AtkTableCellIface
	 *     row = the row of the given cell.
	 *     column = the column of the given cell.
	 * Returns: TRUE if successful; FALSE otherwise.
	 */
	extern(C) int function(AtkTableCell* cell, int* row, int* column) getPosition;
	/**
	 *
	 * Params:
	 *     cell = a GObject instance that implements AtkTableCellIface
	 * Returns: a gint representing the number of rows occupied by this cell,
	 *     or 0 if the cell does not implement this method.
	 */
	extern(C) int function(AtkTableCell* cell) getRowSpan;
	/**
	 *
	 * Params:
	 *     cell = a GObject instance that implements AtkTableCellIface
	 * Returns: a GPtrArray of AtkObjects
	 *     representing the row header cells.
	 */
	extern(C) GPtrArray* function(AtkTableCell* cell) getRowHeaderCells;
	/**
	 *
	 * Params:
	 *     cell = a GObject instance that implements AtkTableCellIface
	 *     row = the row index of the given cell.
	 *     column = the column index of the given cell.
	 *     rowSpan = the number of rows occupied by this cell.
	 *     columnSpan = the number of columns occupied by this cell.
	 * Returns: TRUE if successful; FALSE otherwise.
	 */
	extern(C) int function(AtkTableCell* cell, int* row, int* column, int* rowSpan, int* columnSpan) getRowColumnSpan;
	/**
	 *
	 * Params:
	 *     cell = a GObject instance that implements AtkTableCellIface
	 * Returns: the atk object for the containing table.
	 */
	extern(C) AtkObject* function(AtkTableCell* cell) getTable;
}

struct AtkTableIface
{
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 * Returns: an #AtkObject representing the referred
	 *     to accessible
	 */
	extern(C) AtkObject* function(AtkTable* table, int row, int column) refAt;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 * Returns: a #gint representing the index at specified position.
	 *     The value -1 is returned if the object at row,column is not a child
	 *     of table or table does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int row, int column) getIndexAt;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableInterface
	 *     index = a #gint representing an index in @table
	 * Returns: a gint representing the column at the specified index,
	 *     or -1 if the table does not implement this method.
	 */
	extern(C) int function(AtkTable* table, int index) getColumnAtIndex;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableInterface
	 *     index = a #gint representing an index in @table
	 * Returns: a gint representing the row at the specified index,
	 *     or -1 if the table does not implement this method.
	 */
	extern(C) int function(AtkTable* table, int index) getRowAtIndex;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 * Returns: a gint representing the number of columns, or 0
	 *     if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table) getNColumns;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 * Returns: a gint representing the number of rows, or 0
	 *     if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table) getNRows;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 * Returns: a gint representing the column extent at specified position, or 0
	 *     if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int row, int column) getColumnExtentAt;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 * Returns: a gint representing the row extent at specified position, or 0
	 *     if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int row, int column) getRowExtentAt;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableInterface
	 * Returns: a AtkObject* representing the
	 *     table caption, or %NULL if value does not implement this interface.
	 */
	extern(C) AtkObject* function(AtkTable* table) getCaption;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     column = a #gint representing a column in @table
	 * Returns: a gchar* representing the column description, or %NULL
	 *     if value does not implement this interface.
	 */
	extern(C) const(char)* function(AtkTable* table, int column) getColumnDescription;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     column = a #gint representing a column in the table
	 * Returns: a AtkObject* representing the
	 *     specified column header, or %NULL if value does not implement this
	 *     interface.
	 */
	extern(C) AtkObject* function(AtkTable* table, int column) getColumnHeader;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     row = a #gint representing a row in @table
	 * Returns: a gchar* representing the row description, or
	 *     %NULL if value does not implement this interface.
	 */
	extern(C) const(char)* function(AtkTable* table, int row) getRowDescription;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     row = a #gint representing a row in the table
	 * Returns: a AtkObject* representing the
	 *     specified row header, or %NULL if value does not implement this
	 *     interface.
	 */
	extern(C) AtkObject* function(AtkTable* table, int row) getRowHeader;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 * Returns: a AtkObject* representing a summary description
	 *     of the table, or zero if value does not implement this interface.
	 */
	extern(C) AtkObject* function(AtkTable* table) getSummary;
	/** */
	extern(C) void function(AtkTable* table, AtkObject* caption) setCaption;
	/** */
	extern(C) void function(AtkTable* table, int column, const(char)* description) setColumnDescription;
	/** */
	extern(C) void function(AtkTable* table, int column, AtkObject* header) setColumnHeader;
	/** */
	extern(C) void function(AtkTable* table, int row, const(char)* description) setRowDescription;
	/** */
	extern(C) void function(AtkTable* table, int row, AtkObject* header) setRowHeader;
	/** */
	extern(C) void function(AtkTable* table, AtkObject* accessible) setSummary;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     selected = a #gint** that is to contain the selected columns numbers
	 * Returns: a gint representing the number of selected columns,
	 *     or %0 if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int** selected) getSelectedColumns;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     selected = a #gint** that is to contain the selected row numbers
	 * Returns: a gint representing the number of selected rows,
	 *     or zero if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int** selected) getSelectedRows;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     column = a #gint representing a column in @table
	 * Returns: a gboolean representing if the column is selected, or 0
	 *     if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int column) isColumnSelected;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     row = a #gint representing a row in @table
	 * Returns: a gboolean representing if the row is selected, or 0
	 *     if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int row) isRowSelected;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     row = a #gint representing a row in @table
	 *     column = a #gint representing a column in @table
	 * Returns: a gboolean representing if the cell is selected, or 0
	 *     if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int row, int column) isSelected;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     row = a #gint representing a row in @table
	 * Returns: a gboolean representing if row was successfully added to selection,
	 *     or 0 if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int row) addRowSelection;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     row = a #gint representing a row in @table
	 * Returns: a gboolean representing if the row was successfully removed from
	 *     the selection, or 0 if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int row) removeRowSelection;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     column = a #gint representing a column in @table
	 * Returns: a gboolean representing if the column was successfully added to
	 *     the selection, or 0 if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int column) addColumnSelection;
	/**
	 *
	 * Params:
	 *     table = a GObject instance that implements AtkTableIface
	 *     column = a #gint representing a column in @table
	 * Returns: a gboolean representing if the column was successfully removed from
	 *     the selection, or 0 if value does not implement this interface.
	 */
	extern(C) int function(AtkTable* table, int column) removeColumnSelection;
	/** */
	extern(C) void function(AtkTable* table, int row, int numInserted) rowInserted;
	/** */
	extern(C) void function(AtkTable* table, int column, int numInserted) columnInserted;
	/** */
	extern(C) void function(AtkTable* table, int row, int numDeleted) rowDeleted;
	/** */
	extern(C) void function(AtkTable* table, int column, int numDeleted) columnDeleted;
	/** */
	extern(C) void function(AtkTable* table) rowReordered;
	/** */
	extern(C) void function(AtkTable* table) columnReordered;
	/** */
	extern(C) void function(AtkTable* table) modelChanged;
}

struct AtkText;

struct AtkTextIface
{
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     startOffset = a starting character offset within @text
	 *     endOffset = an ending character offset within @text, or -1 for the end of the string.
	 * Returns: a newly allocated string containing the text from @start_offset up
	 *     to, but not including @end_offset. Use g_free() to free the returned
	 *     string.
	 */
	extern(C) char* function(AtkText* text, int startOffset, int endOffset) getText;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     offset = position
	 *     boundaryType = An #AtkTextBoundary
	 *     startOffset = the starting character offset of the returned string
	 *     endOffset = the offset of the first character after the
	 *         returned substring
	 * Returns: a newly allocated string containing the text after @offset bounded
	 *     by the specified @boundary_type. Use g_free() to free the returned
	 *     string.
	 */
	extern(C) char* function(AtkText* text, int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset) getTextAfterOffset;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     offset = position
	 *     boundaryType = An #AtkTextBoundary
	 *     startOffset = the starting character offset of the returned string
	 *     endOffset = the offset of the first character after the
	 *         returned substring
	 * Returns: a newly allocated string containing the text at @offset bounded
	 *     by the specified @boundary_type. Use g_free() to free the returned
	 *     string.
	 */
	extern(C) char* function(AtkText* text, int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset) getTextAtOffset;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     offset = a character offset within @text
	 * Returns: the character at @offset or 0 in the case of failure.
	 */
	extern(C) dchar function(AtkText* text, int offset) getCharacterAtOffset;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     offset = position
	 *     boundaryType = An #AtkTextBoundary
	 *     startOffset = the starting character offset of the returned string
	 *     endOffset = the offset of the first character after the
	 *         returned substring
	 * Returns: a newly allocated string containing the text before @offset bounded
	 *     by the specified @boundary_type. Use g_free() to free the returned
	 *     string.
	 */
	extern(C) char* function(AtkText* text, int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset) getTextBeforeOffset;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 * Returns: the character offset of the position of the caret or -1 if
	 *     the caret is not located inside the element or in the case of
	 *     any other failure.
	 */
	extern(C) int function(AtkText* text) getCaretOffset;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     offset = the character offset at which to get the attributes, -1 means the offset of
	 *         the character to be inserted at the caret location.
	 *     startOffset = the address to put the start offset of the range
	 *     endOffset = the address to put the end offset of the range
	 * Returns: an #AtkAttributeSet which contains the attributes
	 *     explicitly set at @offset. This #AtkAttributeSet should be freed by
	 *     a call to atk_attribute_set_free().
	 */
	extern(C) AtkAttributeSet* function(AtkText* text, int offset, int* startOffset, int* endOffset) getRunAttributes;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 * Returns: an #AtkAttributeSet which contains the default text
	 *     attributes for this #AtkText. This #AtkAttributeSet should be freed by
	 *     a call to atk_attribute_set_free().
	 */
	extern(C) AtkAttributeSet* function(AtkText* text) getDefaultAttributes;
	/** */
	extern(C) void function(AtkText* text, int offset, int* x, int* y, int* width, int* height, AtkCoordType coords) getCharacterExtents;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 * Returns: the number of characters or -1 in case of failure.
	 */
	extern(C) int function(AtkText* text) getCharacterCount;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     x = screen x-position of character
	 *     y = screen y-position of character
	 *     coords = specify whether coordinates are relative to the screen or
	 *         widget window
	 * Returns: the offset to the character which is located at  the specified
	 *     @x and @y coordinates of -1 in case of failure.
	 */
	extern(C) int function(AtkText* text, int x, int y, AtkCoordType coords) getOffsetAtPoint;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 * Returns: The number of selected regions, or -1 in the case of failure.
	 */
	extern(C) int function(AtkText* text) getNSelections;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     selectionNum = The selection number.  The selected regions are
	 *         assigned numbers that correspond to how far the region is from the
	 *         start of the text.  The selected region closest to the beginning
	 *         of the text region is assigned the number 0, etc.  Note that adding,
	 *         moving or deleting a selected region can change the numbering.
	 *     startOffset = passes back the starting character offset of the selected region
	 *     endOffset = passes back the ending character offset (offset immediately past)
	 *         of the selected region
	 * Returns: a newly allocated string containing the selected text. Use g_free()
	 *     to free the returned string.
	 */
	extern(C) char* function(AtkText* text, int selectionNum, int* startOffset, int* endOffset) getSelection;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     startOffset = the starting character offset of the selected region
	 *     endOffset = the offset of the first character after the selected region.
	 * Returns: %TRUE if successful, %FALSE otherwise
	 */
	extern(C) int function(AtkText* text, int startOffset, int endOffset) addSelection;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     selectionNum = The selection number.  The selected regions are
	 *         assigned numbers that correspond to how far the region is from the
	 *         start of the text.  The selected region closest to the beginning
	 *         of the text region is assigned the number 0, etc.  Note that adding,
	 *         moving or deleting a selected region can change the numbering.
	 * Returns: %TRUE if successful, %FALSE otherwise
	 */
	extern(C) int function(AtkText* text, int selectionNum) removeSelection;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     selectionNum = The selection number.  The selected regions are
	 *         assigned numbers that correspond to how far the region is from the
	 *         start of the text.  The selected region closest to the beginning
	 *         of the text region is assigned the number 0, etc.  Note that adding,
	 *         moving or deleting a selected region can change the numbering.
	 *     startOffset = the new starting character offset of the selection
	 *     endOffset = the new end position of (e.g. offset immediately past)
	 *         the selection
	 * Returns: %TRUE if successful, %FALSE otherwise
	 */
	extern(C) int function(AtkText* text, int selectionNum, int startOffset, int endOffset) setSelection;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     offset = the character offset of the new caret position
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	extern(C) int function(AtkText* text, int offset) setCaretOffset;
	/** */
	extern(C) void function(AtkText* text, int position, int length) textChanged;
	/** */
	extern(C) void function(AtkText* text, int location) textCaretMoved;
	/** */
	extern(C) void function(AtkText* text) textSelectionChanged;
	/** */
	extern(C) void function(AtkText* text) textAttributesChanged;
	/** */
	extern(C) void function(AtkText* text, int startOffset, int endOffset, AtkCoordType coordType, AtkTextRectangle* rect) getRangeExtents;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     rect = An AtkTextRectangle giving the dimensions of the bounding box.
	 *     coordType = Specify whether coordinates are relative to the screen or widget window.
	 *     xClipType = Specify the horizontal clip type.
	 *     yClipType = Specify the vertical clip type.
	 * Returns: Array of AtkTextRange. The last
	 *     element of the array returned by this function will be NULL.
	 */
	extern(C) AtkTextRange** function(AtkText* text, AtkTextRectangle* rect, AtkCoordType coordType, AtkTextClipType xClipType, AtkTextClipType yClipType) getBoundedRanges;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     offset = position
	 *     granularity = An #AtkTextGranularity
	 *     startOffset = the starting character offset of the returned string, or -1
	 *         in the case of error (e.g. invalid offset, not implemented)
	 *     endOffset = the offset of the first character after the returned string,
	 *         or -1 in the case of error (e.g. invalid offset, not implemented)
	 * Returns: a newly allocated string containing the text at
	 *     the @offset bounded by the specified @granularity. Use g_free()
	 *     to free the returned string.  Returns %NULL if the offset is invalid
	 *     or no implementation is available.
	 */
	extern(C) char* function(AtkText* text, int offset, AtkTextGranularity granularity, int* startOffset, int* endOffset) getStringAtOffset;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     startOffset = start offset in the @text
	 *     endOffset = end offset in the @text, or -1 for the end of the text.
	 *     type = specify where the object should be made visible.
	 * Returns: whether scrolling was successful.
	 */
	extern(C) int function(AtkText* text, int startOffset, int endOffset, AtkScrollType type) scrollSubstringTo;
	/**
	 *
	 * Params:
	 *     text = an #AtkText
	 *     startOffset = start offset in the @text
	 *     endOffset = end offset in the @text, or -1 for the end of the text.
	 *     coords = specify whether coordinates are relative to the screen or to the
	 *         parent object.
	 *     x = x-position where to scroll to
	 *     y = y-position where to scroll to
	 * Returns: whether scrolling was successful.
	 */
	extern(C) int function(AtkText* text, int startOffset, int endOffset, AtkCoordType coords, int x, int y) scrollSubstringToPoint;
}

/**
 * A structure used to describe a text range.
 */
struct AtkTextRange
{
	/**
	 * A rectangle giving the bounds of the text range
	 */
	AtkTextRectangle bounds;
	/**
	 * The start offset of a AtkTextRange
	 */
	int startOffset;
	/**
	 * The end offset of a AtkTextRange
	 */
	int endOffset;
	/**
	 * The text in the text range
	 */
	char* content;
}

/**
 * A structure used to store a rectangle used by AtkText.
 */
struct AtkTextRectangle
{
	/**
	 * The horizontal coordinate of a rectangle
	 */
	int x;
	/**
	 * The vertical coordinate of a rectangle
	 */
	int y;
	/**
	 * The width of a rectangle
	 */
	int width;
	/**
	 * The height of a rectangle
	 */
	int height;
}

/**
 * A set of ATK utility functions which are used to support event
 * registration of various types, and obtaining the 'root' accessible
 * of a process and information about the current ATK implementation
 * and toolkit version.
 */
struct AtkUtil
{
	GObject parent;
}

struct AtkUtilClass
{
	GObjectClass parent;
	/** */
	extern(C) uint function(GSignalEmissionHook listener, const(char)* eventType) addGlobalEventListener;
	/** */
	extern(C) void function(uint listenerId) removeGlobalEventListener;
	/** */
	extern(C) uint function(AtkKeySnoopFunc listener, void* data) addKeyEventListener;
	/** */
	extern(C) void function(uint listenerId) removeKeyEventListener;
	/** */
	extern(C) AtkObject* function() getRoot;
	/** */
	extern(C) const(char)* function() getToolkitName;
	/** */
	extern(C) const(char)* function() getToolkitVersion;
}

struct AtkValue;

struct AtkValueIface
{
	GTypeInterface parent;
	/** */
	extern(C) void function(AtkValue* obj, GValue* value) getCurrentValue;
	/** */
	extern(C) void function(AtkValue* obj, GValue* value) getMaximumValue;
	/** */
	extern(C) void function(AtkValue* obj, GValue* value) getMinimumValue;
	/**
	 *
	 * Params:
	 *     obj = a GObject instance that implements AtkValueIface
	 *     value = a #GValue which is the desired new accessible value.
	 * Returns: %TRUE if new value is successfully set, %FALSE otherwise.
	 */
	extern(C) int function(AtkValue* obj, GValue* value) setCurrentValue;
	/** */
	extern(C) void function(AtkValue* obj, GValue* value) getMinimumIncrement;
	/** */
	extern(C) void function(AtkValue* obj, double* value, char** text) getValueAndText;
	/**
	 *
	 * Params:
	 *     obj = a GObject instance that implements AtkValueIface
	 * Returns: a newly allocated #AtkRange
	 *     that represents the minimum, maximum and descriptor (if available)
	 *     of @obj. NULL if that range is not defined.
	 */
	extern(C) AtkRange* function(AtkValue* obj) getRange;
	/**
	 *
	 * Params:
	 *     obj = a GObject instance that implements AtkValueIface
	 * Returns: the minimum increment by which the value of this
	 *     object may be changed. zero if undefined.
	 */
	extern(C) double function(AtkValue* obj) getIncrement;
	/**
	 *
	 * Params:
	 *     obj = a GObject instance that implements AtkValueIface
	 * Returns: an #GSList of
	 *     #AtkRange which each of the subranges defined for this object. Free
	 *     the returns list with g_slist_free().
	 */
	extern(C) GSList* function(AtkValue* obj) getSubRanges;
	/** */
	extern(C) void function(AtkValue* obj, double newValue) setValue;
}

struct AtkWindow;

struct AtkWindowIface
{
	GTypeInterface parent;
}

/**
 * A function which is called when an object emits a matching event,
 * as used in #atk_add_focus_tracker.
 * Currently the only events for which object-specific handlers are
 * supported are events of type "focus:".  Most clients of ATK will prefer to
 * attach signal handlers for the various ATK signals instead.
 *
 * see atk_add_focus_tracker.
 *
 * Params:
 *     obj = An #AtkObject instance for whom the callback will be called when
 *         the specified event (e.g. 'focus:') takes place.
 */
public alias extern(C) void function(AtkObject* obj) AtkEventListener;

/**
 * An #AtkEventListenerInit function is a special function that is
 * called in order to initialize the per-object event registration system
 * used by #AtkEventListener, if any preparation is required.
 *
 * see atk_focus_tracker_init.
 */
public alias extern(C) void function() AtkEventListenerInit;

/**
 * The type of callback function used for
 * atk_component_add_focus_handler() and
 * atk_component_remove_focus_handler()
 *
 * Deprecated: Deprecated with atk_component_add_focus_handler()
 * and atk_component_remove_focus_handler(). See those
 * methods for more information.
 *
 * Params:
 *     object = the #AtkObject that receives/lose the focus
 *     focusIn = TRUE if the object receives the focus
 */
public alias extern(C) void function(AtkObject* object, int focusIn) AtkFocusHandler;

/**
 * An AtkFunction is a function definition used for padding which has
 * been added to class and interface structures to allow for expansion
 * in the future.
 *
 * Params:
 *     userData = custom data defined by the user
 *
 * Returns: not used
 */
public alias extern(C) int function(void* userData) AtkFunction;

/**
 * An #AtkKeySnoopFunc is a type of callback which is called whenever a key event occurs,
 * if registered via atk_add_key_event_listener.  It allows for pre-emptive
 * interception of key events via the return code as described below.
 *
 * Params:
 *     event = an AtkKeyEventStruct containing information about the key event for which
 *         notification is being given.
 *     userData = a block of data which will be passed to the event listener, on notification.
 *
 * Returns: TRUE (nonzero) if the event emission should be stopped and the event
 *     discarded without being passed to the normal GUI recipient; FALSE (zero) if the
 *     event dispatch to the client application should proceed as normal.
 *
 *     see atk_add_key_event_listener.
 */
public alias extern(C) int function(AtkKeyEventStruct* event, void* userData) AtkKeySnoopFunc;

/**
 * An AtkPropertyChangeHandler is a function which is executed when an
 * AtkObject's property changes value. It is specified in a call to
 * atk_object_connect_property_change_handler().
 *
 * Deprecated: Since 2.12.
 *
 * Params:
 *     obj = atkobject which property changes
 *     vals = values changed
 */
public alias extern(C) void function(AtkObject* obj, AtkPropertyValues* vals) AtkPropertyChangeHandler;

/**
 * Like atk_get_binary_age(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum BINARY_AGE = 23810;
alias ATK_BINARY_AGE = BINARY_AGE;

/**
 * Like atk_get_interface_age(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum INTERFACE_AGE = 1;
alias ATK_INTERFACE_AGE = INTERFACE_AGE;

/**
 * Like atk_get_major_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MAJOR_VERSION = 2;
alias ATK_MAJOR_VERSION = MAJOR_VERSION;

/**
 * Like atk_get_micro_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MICRO_VERSION = 0;
alias ATK_MICRO_VERSION = MICRO_VERSION;

/**
 * Like atk_get_minor_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MINOR_VERSION = 38;
alias ATK_MINOR_VERSION = MINOR_VERSION;

/**
 * A macro that should be defined by the user prior to including
 * the atk/atk.h header.
 * The definition should be one of the predefined ATK version
 * macros: %ATK_VERSION_2_12, %ATK_VERSION_2_14,...
 *
 * This macro defines the earliest version of ATK that the package is
 * required to be able to compile against.
 *
 * If the compiler is configured to warn about the use of deprecated
 * functions, then using functions that were deprecated in version
 * %ATK_VERSION_MIN_REQUIRED or earlier will cause warnings (but
 * using functions deprecated in later releases will not).
 */
enum VERSION_MIN_REQUIRED = 2;
alias ATK_VERSION_MIN_REQUIRED = VERSION_MIN_REQUIRED;
