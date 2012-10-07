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

module gtkc.atktypes;


public import gtkc.glibtypes;
public import gtkc.gobjecttypes;
public alias void* AtkFocusHandler;
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
 * Link is inline
 */
public enum AtkHyperlinkStateFlags
{
	IS_INLINE = 1 << 0
}
/**
 * Describes the role of an object
 * These are the built-in enumerated roles that UI components can have in
 * ATK. Other roles may be added at runtime, so an AtkRole >=
 * ATK_ROLE_LAST_DEFINED is not necessarily an error.
 * ATK_ROLE_INVALID
 * Invalid role
 * ATK_ROLE_ACCEL_LABEL
 * A label which represents an accelerator
 * ATK_ROLE_ALERT
 * An object which is an alert to the user. Assistive Technologies typically respond to ATK_ROLE_ALERT by reading the entire onscreen contents of containers advertising this role. Should be used for warning dialogs, etc.
 * ATK_ROLE_ANIMATION
 * An object which is an animated image
 * ATK_ROLE_ARROW
 * An arrow in one of the four cardinal directions
 * ATK_ROLE_CALENDAR
 * An object that displays a calendar and allows the user to select a date
 * ATK_ROLE_CANVAS
 * An object that can be drawn into and is used to trap events
 * ATK_ROLE_CHECK_BOX
 * A choice that can be checked or unchecked and provides a separate indicator for the current state
 * ATK_ROLE_CHECK_MENU_ITEM
 * A menu item with a check box
 * ATK_ROLE_COLOR_CHOOSER
 * A specialized dialog that lets the user choose a color
 * ATK_ROLE_COLUMN_HEADER
 * The header for a column of data
 * ATK_ROLE_COMBO_BOX
 * A collapsible list of choices the user can select from
 * ATK_ROLE_DATE_EDITOR
 * An object whose purpose is to allow a user to edit a date
 * ATK_ROLE_DESKTOP_ICON
 * An inconifed internal frame within a DESKTOP_PANE
 * ATK_ROLE_DESKTOP_FRAME
 * A pane that supports internal frames and iconified versions of those internal frames
 * ATK_ROLE_DIAL
 * An object whose purpose is to allow a user to set a value
 * ATK_ROLE_DIALOG
 * A top level window with title bar and a border
 * ATK_ROLE_DIRECTORY_PANE
 * A pane that allows the user to navigate through and select the contents of a directory
 * ATK_ROLE_DRAWING_AREA
 * An object used for drawing custom user interface elements
 * ATK_ROLE_FILE_CHOOSER
 * A specialized dialog that lets the user choose a file
 * ATK_ROLE_FILLER
 * A object that fills up space in a user interface
 * ATK_ROLE_FONT_CHOOSER
 * A specialized dialog that lets the user choose a font
 * ATK_ROLE_FRAME
 * A top level window with a title bar, border, menubar, etc.
 * ATK_ROLE_GLASS_PANE
 * A pane that is guaranteed to be painted on top of all panes beneath it
 * ATK_ROLE_HTML_CONTAINER
 * A document container for HTML, whose children represent the document content
 * ATK_ROLE_ICON
 * A small fixed size picture, typically used to decorate components
 * ATK_ROLE_IMAGE
 * An object whose primary purpose is to display an image
 * ATK_ROLE_INTERNAL_FRAME
 * A frame-like object that is clipped by a desktop pane
 * ATK_ROLE_LABEL
 * An object used to present an icon or short string in an interface
 * ATK_ROLE_LAYERED_PANE
 * A specialized pane that allows its children to be drawn in layers, providing a form of stacking order
 * ATK_ROLE_LIST
 * An object that presents a list of objects to the user and allows the user to select one or more of them
 * ATK_ROLE_LIST_ITEM
 * An object that represents an element of a list
 * ATK_ROLE_MENU
 * An object usually found inside a menu bar that contains a list of actions the user can choose from
 * ATK_ROLE_MENU_BAR
 * An object usually drawn at the top of the primary dialog box of an application that contains a list of menus the user can choose from
 * ATK_ROLE_MENU_ITEM
 * An object usually contained in a menu that presents an action the user can choose
 * ATK_ROLE_OPTION_PANE
 * A specialized pane whose primary use is inside a DIALOG
 * ATK_ROLE_PAGE_TAB
 * An object that is a child of a page tab list
 * ATK_ROLE_PAGE_TAB_LIST
 * An object that presents a series of panels (or page tabs), one at a time, through some mechanism provided by the object
 * ATK_ROLE_PANEL
 * A generic container that is often used to group objects
 * ATK_ROLE_PASSWORD_TEXT
 * A text object uses for passwords, or other places where the text content is not shown visibly to the user
 * ATK_ROLE_POPUP_MENU
 * A temporary window that is usually used to offer the user a list of choices, and then hides when the user selects one of those choices
 * ATK_ROLE_PROGRESS_BAR
 * An object used to indicate how much of a task has been completed
 * ATK_ROLE_PUSH_BUTTON
 * An object the user can manipulate to tell the application to do something
 * ATK_ROLE_RADIO_BUTTON
 * A specialized check box that will cause other radio buttons in the same group to become unchecked when this one is checked
 * ATK_ROLE_RADIO_MENU_ITEM
 * A check menu item which belongs to a group. At each instant exactly one of the radio menu items from a group is selected
 * ATK_ROLE_ROOT_PANE
 * A specialized pane that has a glass pane and a layered pane as its children
 * ATK_ROLE_ROW_HEADER
 * The header for a row of data
 * ATK_ROLE_SCROLL_BAR
 * An object usually used to allow a user to incrementally view a large amount of data.
 * ATK_ROLE_SCROLL_PANE
 * An object that allows a user to incrementally view a large amount of information
 * ATK_ROLE_SEPARATOR
 * An object usually contained in a menu to provide a visible and logical separation of the contents in a menu
 * ATK_ROLE_SLIDER
 * An object that allows the user to select from a bounded range
 * ATK_ROLE_SPLIT_PANE
 * A specialized panel that presents two other panels at the same time
 * ATK_ROLE_SPIN_BUTTON
 * An object used to get an integer or floating point number from the user
 * ATK_ROLE_STATUSBAR
 * An object which reports messages of minor importance to the user
 * ATK_ROLE_TABLE
 * An object used to represent information in terms of rows and columns
 * ATK_ROLE_TABLE_CELL
 * A cell in a table
 * ATK_ROLE_TABLE_COLUMN_HEADER
 * The header for a column of a table
 * ATK_ROLE_TABLE_ROW_HEADER
 * The header for a row of a table
 * ATK_ROLE_TEAR_OFF_MENU_ITEM
 * A menu item used to tear off and reattach its menu
 * ATK_ROLE_TERMINAL
 * An object that represents an accessible terminal. Since: ATK-0.6
 * ATK_ROLE_TEXT
 * An object that presents text to the user
 * ATK_ROLE_TOGGLE_BUTTON
 * A specialized push button that can be checked or unchecked, but does not provide a separate indicator for the current state
 * ATK_ROLE_TOOL_BAR
 * A bar or palette usually composed of push buttons or toggle buttons
 * ATK_ROLE_TOOL_TIP
 * An object that provides information about another object
 * ATK_ROLE_TREE
 * An object used to represent hierarchical information to the user
 * ATK_ROLE_TREE_TABLE
 * An object capable of expanding and collapsing rows as well as showing multiple columns of data. Since: ATK-0.7
 * ATK_ROLE_UNKNOWN
 * The object contains some Accessible information, but its role is not known
 * ATK_ROLE_VIEWPORT
 * An object usually used in a scroll pane
 * ATK_ROLE_WINDOW
 * A top level window with no title or border.
 * ATK_ROLE_HEADER
 * An object that serves as a document header. Since: ATK-1.1.1
 * ATK_ROLE_FOOTER
 * An object that serves as a document footer. Since: ATK-1.1.1
 * ATK_ROLE_PARAGRAPH
 * An object which is contains a paragraph of text content. Since: ATK-1.1.1
 * ATK_ROLE_RULER
 * An object which describes margins and tab stops, etc. for text objects which it controls (should have CONTROLLER_FOR relation to such). Since: ATK-1.1.1
 * ATK_ROLE_APPLICATION
 * The object is an application object, which may contain ATK_ROLE_FRAME objects or other types of accessibles. The root accessible of any application's ATK hierarchy should have ATK_ROLE_APPLICATION. Since: ATK-1.1.4
 * ATK_ROLE_AUTOCOMPLETE
 * The object is a dialog or list containing items for insertion into an entry widget, for instance a list of words for completion of a text entry. Since: ATK-1.3
 * ATK_ROLE_EDITBAR
 * The object is an editable text object in a toolbar. Since: ATK-1.5
 * ATK_ROLE_EMBEDDED
 * The object is an embedded container within a document or panel. This role is a grouping "hint" indicating that the contained objects share a context. Since: ATK-1.7.2
 * ATK_ROLE_ENTRY
 * The object is a component whose textual content may be entered or modified by the user, provided ATK_STATE_EDITABLE is present. Since: ATK-1.11
 * ATK_ROLE_CHART
 * The object is a graphical depiction of quantitative data. It may contain multiple subelements whose attributes and/or description may be queried to obtain both the quantitative data and information about how the data is being presented. The LABELLED_BY relation is particularly important in interpreting objects of this type, as is the accessible-description property. Since: ATK-1.11
 * ATK_ROLE_CAPTION
 * The object contains descriptive information, usually textual, about another user interface element such as a table, chart, or image. Since: ATK-1.11
 * ATK_ROLE_DOCUMENT_FRAME
 * The object is a visual frame or container which contains a view of document content. Document frames may occur within another Document instance, in which case the second document may be said to be embedded in the containing instance. HTML frames are often ROLE_DOCUMENT_FRAME. Either this object, or a singleton descendant, should implement the Document interface. Since: ATK-1.11
 * ATK_ROLE_HEADING
 * The object serves as a heading for content which follows it in a document. The 'heading level' of the heading, if availabe, may be obtained by querying the object's attributes.
 * ATK_ROLE_PAGE
 * The object is a containing instance which encapsulates a page of information. ATK_ROLE_PAGE is used in documents and content which support a paginated navigation model. Since: ATK-1.11
 * ATK_ROLE_SECTION
 * The object is a containing instance of document content which constitutes a particular 'logical' section of the document. The type of content within a section, and the nature of the section division itself, may be obtained by querying the object's attributes. Sections may be nested. Since: ATK-1.11
 * ATK_ROLE_REDUNDANT_OBJECT
 * The object is redundant with another object in the hierarchy, and is exposed for purely technical reasons. Objects of this role should normally be ignored by clients. Since: ATK-1.11
 * ATK_ROLE_FORM
 * The object is a container for form controls, for instance as part of a
 * web form or user-input form within a document. This role is primarily a tag/convenience for
 * clients when navigating complex documents, it is not expected that ordinary GUI containers will
 * always have ATK_ROLE_FORM. Since: ATK-1.12.0
 * ATK_ROLE_LINK
 * The object is a hypertext anchor, i.e. a "link" in a
 * hypertext document. Such objects are distinct from 'inline'
 * content which may also use the Hypertext/Hyperlink interfaces
 * to indicate the range/location within a text object where
 * an inline or embedded object lies. Since: ATK-1.12.1
 * ATK_ROLE_INPUT_METHOD_WINDOW
 * The object is a window or similar viewport
 * which is used to allow composition or input of a 'complex character',
 * in other words it is an "input method window." Since: ATK-1.12.1
 * ATK_ROLE_TABLE_ROW
 * A row in a table. Since: ATK-2.1.0
 * ATK_ROLE_TREE_ITEM
 * An object that represents an element of a tree. Since: ATK-2.1.0
 * ATK_ROLE_DOCUMENT_SPREADSHEET
 * A document frame which contains a spreadsheet. Since: ATK-2.1.0
 * ATK_ROLE_DOCUMENT_PRESENTATION
 * A document frame which contains a presentation or slide content. Since: ATK-2.1.0
 * ATK_ROLE_DOCUMENT_TEXT
 * A document frame which contains textual content, such as found in a word processing application. Since: ATK-2.1.0
 * ATK_ROLE_DOCUMENT_WEB
 * A document frame which contains HTML or other markup suitable for display in a web browser. Since: ATK-2.1.0
 * ATK_ROLE_DOCUMENT_EMAIL
 * A document frame which contains email content to be displayed or composed either in plain text or HTML. Since: ATK-2.1.0
 * ATK_ROLE_COMMENT
 * An object found within a document and designed to present a comment, note, or other annotation. In some cases, this object might not be visible until activated. Since: ATK-2.1.0
 * ATK_ROLE_LIST_BOX
 * A non-collapsible list of choices the user can select from. Since: ATK-2.1.0
 * ATK_ROLE_GROUPING
 * A group of related widgets. This group typically has a label. Since: ATK-2.1.0
 * ATK_ROLE_IMAGE_MAP
 * An image map object. Usually a graphic with multiple hotspots, where each hotspot can be activated resulting in the loading of another document or section of a document. Since: ATK-2.1.0
 * ATK_ROLE_NOTIFICATION
 * A transitory object designed to present a message to the user, typically at the desktop level rather than inside a particular application. Since: ATK-2.1.0
 * ATK_ROLE_INFO_BAR
 * An object designed to present a message to the user within an existing window. Since: ATK-2.1.0
 * ATK_ROLE_LAST_DEFINED
 * not a valid role, used for finding end of the enumeration
 */
public enum AtkRole
{
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
	TABLE_ROW,
	TREE_ITEM,
	DOCUMENT_SPREADSHEET,
	DOCUMENT_PRESENTATION,
	DOCUMENT_TEXT,
	DOCUMENT_WEB,
	DOCUMENT_EMAIL,
	COMMENT,
	LIST_BOX,
	GROUPING,
	IMAGE_MAP,
	NOTIFICATION,
	INFO_BAR,
	LAST_DEFINED
}
/**
 * Describes the layer of a component
 * These enumerated "layer values" are used when determining which UI
 * rendering layer a component is drawn into, which can help in making
 * determinations of when components occlude one another.
 * ATK_LAYER_INVALID
 * The object does not have a layer
 * ATK_LAYER_BACKGROUND
 * This layer is reserved for the desktop background
 * ATK_LAYER_CANVAS
 * This layer is used for Canvas components
 * ATK_LAYER_WIDGET
 * This layer is normally used for components
 * ATK_LAYER_MDI
 * This layer is used for layered components
 * ATK_LAYER_POPUP
 * This layer is used for popup components, such as menus
 * ATK_LAYER_OVERLAY
 * This layer is reserved for future use.
 * ATK_LAYER_WINDOW
 * This layer is used for toplevel windows.
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
 * Not used, represens "no relationship" or an error condition.
 * ATK_RELATION_CONTROLLED_BY
 * Indicates an object controlled by one or more target objects.
 * ATK_RELATION_CONTROLLER_FOR
 * Indicates an object is an controller for one or more target objects.
 * ATK_RELATION_LABEL_FOR
 * Indicates an object is a label for one or more target objects.
 * ATK_RELATION_LABELLED_BY
 * Indicates an object is labelled by one or more target objects.
 * ATK_RELATION_MEMBER_OF
 * Indicates an object is a member of a group of one or more target objects.
 * ATK_RELATION_NODE_CHILD_OF
 * Indicates an object is a cell in a treetable which is displayed because a cell in the same column is expanded and identifies that cell.
 * ATK_RELATION_FLOWS_TO
 * Indicates that the object has content that flows logically to another
 *  AtkObject in a sequential way, (for instance text-flow).
 * ATK_RELATION_FLOWS_FROM
 * Indicates that the object has content that flows logically from
 *  another AtkObject in a sequential way, (for instance text-flow).
 * ATK_RELATION_SUBWINDOW_OF
 * Indicates a subwindow attached to a component but otherwise has no connection in the UI heirarchy to that component.
 * ATK_RELATION_EMBEDS
 * Indicates that the object visually embeds
 *  another object's content, i.e. this object's content flows around
 *  another's content.
 * ATK_RELATION_EMBEDDED_BY
 * Inverse of ATK_RELATION_EMBEDS, indicates that
 *  this object's content is visualy embedded in another object.
 * ATK_RELATION_POPUP_FOR
 * Indicates that an object is a popup for another object.
 * ATK_RELATION_PARENT_WINDOW_OF
 * Indicates that an object is a parent window of another object.
 * ATK_RELATION_DESCRIBED_BY
 * Indicates that another object provides descriptive information about this object; more verbose than ATK_RELATION_LABELLED_BY.
 * ATK_RELATION_DESCRIPTION_FOR
 * Indicates that an object provides descriptive information about another object; more verbose than ATK_RELATION_LABEL_FOR.
 * ATK_RELATION_NODE_PARENT_OF
 * Indicates an object is a cell in a treetable and is expanded to display other cells in the same column.
 * ATK_RELATION_LAST_DEFINED
 * Not used, this value indicates the end of the enumeration.
 */
public enum AtkRelationType
{
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
	NODE_PARENT_OF,
	LAST_DEFINED
}
/**
 * The possible types of states of an object
 * ATK_STATE_INVALID
 * Indicates an invalid state - probably an error condition.
 * ATK_STATE_ACTIVE
 * Indicates a window is currently the active window, or is an active subelement within a container or table
 * ATK_STATE_ARMED
 * Indicates that the object is 'armed', i.e. will be activated by if a pointer button-release event occurs within its bounds. Buttons often enter this state when a pointer click occurs within their bounds, as a precursor to activation.
 * ATK_STATE_BUSY
 * Indicates the current object is busy, i.e. onscreen representation is in the process of changing, or the object is temporarily unavailable for interaction due to activity already in progress. This state may be used by implementors of Document to indicate that content loading is underway. It also may indicate other 'pending' conditions; clients may wish to interrogate this object when the ATK_STATE_BUSY flag is removed.
 * ATK_STATE_CHECKED
 * Indicates this object is currently checked, for instance a checkbox is 'non-empty'.
 * ATK_STATE_DEFUNCT
 * Indicates that this object no longer has a valid backing widget (for instance, if its peer object has been destroyed)
 * ATK_STATE_EDITABLE
 * Indicates the user can change the contents of this object
 * ATK_STATE_ENABLED
 * Indicates that this object is enabled, i.e. that it currently reflects some application state. Objects that are "greyed out" may lack this state, and may lack the STATE_SENSITIVE if direct user interaction cannot cause them to acquire STATE_ENABLED. See also: ATK_STATE_SENSITIVE
 * ATK_STATE_EXPANDABLE
 * Indicates this object allows progressive disclosure of its children
 * ATK_STATE_EXPANDED
 * Indicates this object its expanded - see ATK_STATE_EXPANDABLE above
 * ATK_STATE_FOCUSABLE
 * Indicates this object can accept keyboard focus, which means all events resulting from typing on the keyboard will normally be passed to it when it has focus
 * ATK_STATE_FOCUSED
 * Indicates this object currently has the keyboard focus
 * ATK_STATE_HORIZONTAL
 * Indicates the orientation of this object is horizontal; used, for instance, by objects of ATK_ROLE_SCROLL_BAR. For objects where vertical/horizontal orientation is especially meaningful.
 * ATK_STATE_ICONIFIED
 * Indicates this object is minimized and is represented only by an icon
 * ATK_STATE_MODAL
 * Indicates something must be done with this object before the user can interact with an object in a different window
 * ATK_STATE_MULTI_LINE
 * Indicates this (text) object can contain multiple lines of text
 * ATK_STATE_MULTISELECTABLE
 * Indicates this object allows more than one of its children to be selected at the same time, or in the case of text objects, that the object supports non-contiguous text selections.
 * ATK_STATE_OPAQUE
 * Indicates this object paints every pixel within its rectangular region.
 * ATK_STATE_PRESSED
 * Indicates this object is currently pressed; c.f. ATK_STATE_ARMED
 * ATK_STATE_RESIZABLE
 * Indicates the size of this object is not fixed
 * ATK_STATE_SELECTABLE
 * Indicates this object is the child of an object that allows its children to be selected and that this child is one of those children that can be selected
 * ATK_STATE_SELECTED
 * Indicates this object is the child of an object that allows its children to be selected and that this child is one of those children that has been selected
 * ATK_STATE_SENSITIVE
 * Indicates this object is sensitive, e.g. to user interaction.
 * STATE_SENSITIVE usually accompanies STATE_ENABLED for user-actionable controls,
 * but may be found in the absence of STATE_ENABLED if the current visible state of the
 * control is "disconnected" from the application state. In such cases, direct user interaction
 * can often result in the object gaining STATE_SENSITIVE, for instance if a user makes
 * an explicit selection using an object whose current state is ambiguous or undefined.
 * see STATE_ENABLED, STATE_INDETERMINATE.
 * ATK_STATE_SHOWING
 * Indicates this object, the object's parent, the object's parent's parent, and so on,
 * are all 'shown' to the end-user, i.e. subject to "exposure" if blocking or obscuring objects do not interpose
 * between this object and the top of the window stack.
 * ATK_STATE_SINGLE_LINE
 * Indicates this (text) object can contain only a single line of text
 * ATK_STATE_STALE
 * Indicates that the information returned for this object may no longer be
 * synchronized with the application state. This is implied if the object has STATE_TRANSIENT,
 * and can also occur towards the end of the object peer's lifecycle. It can also be used to indicate that
 * the index associated with this object has changed since the user accessed the object (in lieu of
 * "index-in-parent-changed" events).
 * ATK_STATE_TRANSIENT
 * Indicates this object is transient, i.e. a snapshot which may not emit events when its
 * state changes. Data from objects with ATK_STATE_TRANSIENT should not be cached, since there may be no
 * notification given when the cached data becomes obsolete.
 * ATK_STATE_VERTICAL
 * Indicates the orientation of this object is vertical
 * ATK_STATE_VISIBLE
 * Indicates this object is visible, e.g. has been explicitly marked for exposure to the user.
 * ATK_STATE_MANAGES_DESCENDANTS
 * Indicates that "active-descendant-changed" event
 * is sent when children become 'active' (i.e. are selected or navigated to onscreen).
 * Used to prevent need to enumerate all children in very large containers, like tables.
 * The presence of STATE_MANAGES_DESCENDANTS is an indication to the client.
 * that the children should not, and need not, be enumerated by the client.
 * Objects implementing this state are expected to provide relevant state
 * notifications to listening clients, for instance notifications of visibility
 * changes and activation of their contained child objects, without the client
 * having previously requested references to those children.
 * ATK_STATE_INDETERMINATE
 * Indicates that a check box is in a state other than checked or not checked.
 * This usually means that the boolean value reflected or
 * controlled by the object does not apply consistently to the entire current context.
 * For example, a checkbox for the "Bold" attribute of text may have STATE_INDETERMINATE
 * if the currently selected text contains a mixture of weight attributes.
 * In many cases interacting with a STATE_INDETERMINATE object will cause
 * the context's corresponding boolean attribute to be homogenized, whereupon the object
 * will lose STATE_INDETERMINATE and a corresponding state-changed event will be fired.
 * ATK_STATE_TRUNCATED
 * Indicates that an object is truncated, e.g. a text value in a speradsheet cell.
 * ATK_STATE_REQUIRED
 * Indicates that explicit user interaction with an object is required by the user interface, e.g. a required field in a "web-form" interface.
 * ATK_STATE_INVALID_ENTRY
 * Indicates that the object has encountered an error condition due to failure of input validation. For instance, a form control may acquire this state in response to invalid or malformed user input.
 * ATK_STATE_SUPPORTS_AUTOCOMPLETION
 * Indicates that the object in question implements some form of ¨typeahead¨ or
 * pre-selection behavior whereby entering the first character of one or more sub-elements
 * causes those elements to scroll into view or become selected. Subsequent character input
 * may narrow the selection further as long as one or more sub-elements match the string.
 * This state is normally only useful and encountered on objects that implement Selection.
 * In some cases the typeahead behavior may result in full or partial ¨completion¨ of
 * the data in the input field, in which case these input events may trigger text-changed
 * events from the AtkText interface. This state supplants ATK_ROLE_AUTOCOMPLETE.
 * ATK_STATE_SELECTABLE_TEXT
 * Indicates that the object in question supports text selection. It should only be exposed on objects which implement the Text interface, in order to distinguish this state from ATK_STATE_SELECTABLE, which infers that the object in question is a selectable child of an object which implements Selection. While similar, text selection and subelement selection are distinct operations.
 * ATK_STATE_DEFAULT
 * Indicates that the object is the "default" active component, i.e. the object which is activated by an end-user press of the "Enter" or "Return" key. Typically a "close" or "submit" button.
 * ATK_STATE_ANIMATED
 * Indicates that the object changes its appearance dynamically as an inherent part of its presentation. This state may come and go if an object is only temporarily animated on the way to a 'final' onscreen presentation.
 * note some applications, notably content viewers, may not be able to detect
 * all kinds of animated content. Therefore the absence of this state should not
 * be taken as definitive evidence that the object's visual representation is
 * static; this state is advisory.
 * ATK_STATE_VISITED
 * Indicates that the object (typically a hyperlink) has already been 'activated', and/or its backing data has already been downloaded, rendered, or otherwise "visited".
 * ATK_STATE_LAST_DEFINED
 * Not a valid state, used for finding end of enumeration
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
 * Boundary is the boundary between characters
 * (including non-printing characters)
 * ATK_TEXT_BOUNDARY_WORD_START
 * Boundary is the start (i.e. first character) of a word.
 * ATK_TEXT_BOUNDARY_WORD_END
 * Boundary is the end (i.e. last character) of a word.
 * ATK_TEXT_BOUNDARY_SENTENCE_START
 * Boundary is the first character in a sentence.
 * ATK_TEXT_BOUNDARY_SENTENCE_END
 * Boundary is the last (terminal) character in a sentence;
 * in languages which use "sentence stop" punctuation such as English, the boundary is thus the
 * '.', '?', or similar terminal punctuation character.
 * ATK_TEXT_BOUNDARY_LINE_START
 * Boundary is the initial character of the content or a
 * character immediately following a newline, linefeed, or return character.
 * ATK_TEXT_BOUNDARY_LINE_END
 * Boundary is the linefeed, or return character.
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
 * No clipping to be done
 * ATK_TEXT_CLIP_MIN
 * Text clipped by min coordinate is omitted
 * ATK_TEXT_CLIP_MAX
 * Text clipped by max coordinate is omitted
 * ATK_TEXT_CLIP_BOTH
 * Only text fully within mix/max bound is retained
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
 * Invalid attribute
 * ATK_TEXT_ATTR_LEFT_MARGIN
 * The pixel width of the left margin
 * ATK_TEXT_ATTR_RIGHT_MARGIN
 * The pixel width of the right margin
 * ATK_TEXT_ATTR_INDENT
 * The number of pixels that the text is indented
 * ATK_TEXT_ATTR_INVISIBLE
 * Either "true" or "false" indicating whether text is visible or not
 * ATK_TEXT_ATTR_EDITABLE
 * Either "true" or "false" indicating whether text is editable or not
 * ATK_TEXT_ATTR_PIXELS_ABOVE_LINES
 * Pixels of blank space to leave above each newline-terminated line.
 * ATK_TEXT_ATTR_PIXELS_BELOW_LINES
 * Pixels of blank space to leave below each newline-terminated line.
 * ATK_TEXT_ATTR_PIXELS_INSIDE_WRAP
 * Pixels of blank space to leave between wrapped lines inside the same newline-terminated line (paragraph).
 * ATK_TEXT_ATTR_BG_FULL_HEIGHT
 * "true" or "false" whether to make the background color for each character the height of the highest font used on the current line, or the height of the font used for the current character.
 * ATK_TEXT_ATTR_RISE
 * Number of pixels that the characters are risen above the baseline
 * ATK_TEXT_ATTR_UNDERLINE
 * "none", "single", "double", "low", or "error"
 * ATK_TEXT_ATTR_STRIKETHROUGH
 * "true" or "false" whether the text is strikethrough
 * ATK_TEXT_ATTR_SIZE
 * The size of the characters.
 * ATK_TEXT_ATTR_SCALE
 * The scale of the characters. The value is a string representation of a double
 * ATK_TEXT_ATTR_WEIGHT
 * The weight of the characters.
 * ATK_TEXT_ATTR_LANGUAGE
 * The language used
 * ATK_TEXT_ATTR_FAMILY_NAME
 * The font family name
 * ATK_TEXT_ATTR_BG_COLOR
 * The background color. The value is an RGB value of the format "u,u,u"
 * ATK_TEXT_ATTR_FG_COLOR
 * The foreground color. The value is an RGB value of the format "u,u,u"
 * ATK_TEXT_ATTR_BG_STIPPLE
 * "true" if a GdkBitmap is set for stippling the background color.
 * ATK_TEXT_ATTR_FG_STIPPLE
 * "true" if a GdkBitmap is set for stippling the foreground color.
 * ATK_TEXT_ATTR_WRAP_MODE
 * The wrap mode of the text, if any. Values are "none", "char", "word", or "word_char".
 * ATK_TEXT_ATTR_DIRECTION
 * The direction of the text, if set. Values are "none", "ltr" or "rtl"
 * ATK_TEXT_ATTR_JUSTIFICATION
 * The justification of the text, if set. Values are "left", "right", "center" or "fill"
 * ATK_TEXT_ATTR_STRETCH
 * The stretch of the text, if set. Values are "ultra_condensed", "extra_condensed", "condensed", "semi_condensed", "normal", "semi_expanded", "expanded", "extra_expanded" or "ultra_expanded"
 * ATK_TEXT_ATTR_VARIANT
 * The capitalization variant of the text, if set. Values are "normal" or "small_caps"
 * ATK_TEXT_ATTR_STYLE
 * The slant style of the text, if set. Values are "normal", "oblique" or "italic"
 * ATK_TEXT_ATTR_LAST_DEFINED
 * not a valid text attribute, used for finding end of enumeration
 */
public enum AtkTextAttribute
{
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
 * specifies xy coordinates relative to the screen
 * ATK_XY_WINDOW
 * specifies xy coordinates relative to the widget's
 * top-level window
 */
public enum AtkCoordType
{
	XY_SCREEN,
	XY_WINDOW
}
/**
 * Specifies the type of a keyboard evemt.
 * ATK_KEY_EVENT_PRESS
 * specifies a key press event
 * ATK_KEY_EVENT_RELEASE
 * specifies a key release event
 * ATK_KEY_EVENT_LAST_DEFINED
 * Not a valid value; specifies end of enumeration
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
 * const gchar *property_name;
 * The name of the ATK property which is being presented or which has been changed.
 * GValue old_value;
 * The old property value, NULL; in some contexts this value is undefined (see note below).
 * GValue new_value;
 * The new value of the named property.
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
 * AtkTextRectangle bounds;
 * A rectangle giving the bounds of the text range
 * gint start_offset;
 * The start offset of a AtkTextRange
 * gint end_offset;
 * The end offset of a AtkTextRange
 * gchar *content;
 * The text in the text range
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
 * gint x;
 * The horizontal coordinate of a rectangle
 * gint y;
 * The vertical coordinate of a rectangle
 * gint width;
 * The width of a rectangle
 * gint height;
 * The height of a rectangle
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
 * gchar *name;
 * The attribute name. Call atk_text_attr_get_name()
 * gchar *value;
 * the value of the attribute, represented as a string.
 * Call atk_text_attr_get_value() for those which are strings.
 * For values which are numbers, the string representation of the number
 * is in value.
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
 * gint type;
 * An AtkKeyEventType, generally one of ATK_KEY_EVENT_PRESS or ATK_KEY_EVENT_RELEASE
 * guint state;
 * A bitmask representing the state of the modifier keys immediately after the event takes place.
 * The meaning of the bits is currently defined to match the bitmask used by GDK in
 * GdkEventType.state, see
 * http://developer.gnome.org/doc/API/2.0/gdk/gdk-Event-Structures.htmlGdkEventKey
 * guint keyval;
 * A guint representing a keysym value corresponding to those used by GDK and X11: see
 * /usr/X11/include/keysymdef.h.
 * gint length;
 * The length of member string.
 * gchar *string;
 * A string containing one of the following: either a string approximating the text that would
 * result from this keypress, if the key is a control or graphic character, or a symbolic name for this keypress.
 * Alphanumeric and printable keys will have the symbolic key name in this string member, for instance "A". "0",
 * "semicolon", "aacute". Keypad keys have the prefix "KP".
 * guint16 keycode;
 * The raw hardware code that generated the key event. This field is raraly useful.
 * guint32 timestamp;
 * A timestamp in milliseconds indicating when the event occurred.
 * These timestamps are relative to a starting point which should be considered arbitrary,
 * and only used to compare the dispatch times of events to one another.
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
 * A convenience macro for type ATK implementations, which declares a class
 * initialization function, an instance initialization function (see GTypeInfo
 * for information about these) and a static variable named
 * t_n _parent_class pointing to the parent class. Furthermore, it
 * defines a _get_type() function.
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type, in lowercase, with words separated by '_'.
 * T_P :
 * The GType of the parent type.
 * Since 1.22
 */
// TODO
// #define ATK_DEFINE_TYPE(TN, t_n, T_P)			 ATK_DEFINE_TYPE_EXTENDED (TN, t_n, T_P, 0, {})

/*
 * The most general convenience macro for ATK type implementations, on which
 * ATK_DEFINE_TYPE(), etc are based.
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type, in lowercase, with words separated by '_'.
 * T_P :
 * The GType of the parent type.
 * _f_ :
 * GTypeFlags to pass to g_type_register_static()
 * _C_ :
 * Custom code that gets inserted in the _get_type() function.
 * Since 1.22
 */
// TODO
// #define ATK_DEFINE_TYPE_EXTENDED(TN, t_n, T_P, _f_, _C_) _ATK_DEFINE_TYPE_EXTENDED_BEGIN (TN, t_n, T_P, _f_) {_C_;} _ATK_DEFINE_TYPE_EXTENDED_END()

/*
 * A convenience macro for ATK type implementations.
 * Similar to ATK_DEFINE_TYPE(), but allows you to insert custom code into the
 * _get_type() function, e.g. interface implementations via G_IMPLEMENT_INTERFACE().
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type in lowercase, with words separated by '_'.
 * T_P :
 * The GType of the parent type.
 * _C_ :
 * Custom code that gets inserted in the _get_type() function.
 * Since 1.22
 */
// TODO
// #define ATK_DEFINE_TYPE_WITH_CODE(TN, t_n, T_P, _C_)	 _ATK_DEFINE_TYPE_EXTENDED_BEGIN (TN, t_n, T_P, 0) {_C_;} _ATK_DEFINE_TYPE_EXTENDED_END()

/*
 * A convenience macro for ATK type implementations.
 * Similar to ATK_DEFINE_TYPE(), but defines an abstract type.
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type, in lowercase, with words separated by '_'.
 * T_P :
 * The GType of the parent type.
 * Since 1.22
 */
// TODO
// #define ATK_DEFINE_ABSTRACT_TYPE(TN, t_n, T_P)		 ATK_DEFINE_TYPE_EXTENDED (TN, t_n, T_P, G_TYPE_FLAG_ABSTRACT, {})

/*
 * A convenience macro for ATK type implementations.
 * Similar to ATK_DEFINE_TYPE_WITH_CODE(), but defines an abstract type.
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type, in lowercase, with words separated by '_'.
 * T_P :
 * The GType of the parent type.
 * _C_ :
 * Custom code that gets inserted in the _get_type() function.
 * Since 1.22
 */
// TODO
// #define ATK_DEFINE_ABSTRACT_TYPE_WITH_CODE(TN, t_n, T_P, _C_) _ATK_DEFINE_TYPE_EXTENDED_BEGIN (TN, t_n, T_P, G_TYPE_FLAG_ABSTRACT) {_C_;} _ATK_DEFINE_TYPE_EXTENDED_END()

/*
 * An AtkFunction is a function definition used for padding which has been added
 * to class and interface structures to allow for expansion in the future.
 * data :
 * a gpointer to parameter data.
 * Returns :
 * Nothing useful, this is only a dummy prototype.
 */
// gboolean (*AtkFunction) (gpointer data);
public alias extern(C) int function(void* data) AtkFunction;

/*
 * An AtkPropertyChangeHandler is a function which is executed when an AtkObject's property changes value. It is specified in a call to
 * atk_object_connect_property_change_handler().
 * Param1 :
 * an AtkObject
 * Param2 :
 * an AtkPropertyValues
 */
// void (*AtkPropertyChangeHandler) (AtkObject *Param1,  AtkPropertyValues *Param2);
public alias extern(C) void function(AtkObject* Param1, AtkPropertyValues* Param2) AtkPropertyChangeHandler;

/*
 * A function which is called when an object emits a matching event,
 * as used in atk_add_focus_tracker.
 * Currently the only events for which object-specific handlers are
 * supported are events of type "focus:". Most clients of ATK will prefer to
 * attach signal handlers for the various ATK signals instead.
 * see atk_add_focus_tracker.
 * obj :
 * An AtkObject instance for whom the callback will be called when
 * the specified event (e.g. 'focus:') takes place.
 */
// void (*AtkEventListener) (AtkObject *obj);
public alias extern(C) void function(AtkObject* obj) AtkEventListener;

/*
 * An AtkEventListenerInit function is a special function that is
 * called in order to initialize the per-object event registration system
 * used by AtkEventListener, if any preparation is required.
 * see atk_focus_tracker_init.
 */
// void (*AtkEventListenerInit) (void);
public alias extern(C) void function() AtkEventListenerInit;

/*
 * An AtkKeySnoopFunc is a type of callback which is called whenever a key event occurs,
 * if registered via atk_add_key_event_listener. It allows for pre-emptive
 * interception of key events via the return code as described below.
 * event :
 * an AtkKeyEventStruct containing information about the key event for which
 * notification is being given.
 * func_data :
 * a block of data which will be passed to the event listener, on notification.
 * Returns :
 * TRUE (nonzero) if the event emission should be stopped and the event
 * discarded without being passed to the normal GUI recipient; FALSE (zero) if the
 * event dispatch to the client application should proceed as normal.
 * see atk_add_key_event_listener.
 */
// gint (*AtkKeySnoopFunc) (AtkKeyEventStruct *event,  gpointer func_data);
public alias extern(C) int function(AtkKeyEventStruct* event, void* funcData) AtkKeySnoopFunc;
