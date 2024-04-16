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


module gdl.c.types;

public import gdk.c.types;
public import gdkpixbuf.c.types;
public import glib.c.types;
public import gobject.c.types;
public import gtk.c.types;


/**
 * Used to customize the appearance of a #GdlDockBar.
 */
public enum GdlDockBarStyle
{
	/**
	 * Buttons display only icons in the dockbar.
	 */
	ICONS = 0,
	/**
	 * Buttons display only text labels in the dockbar.
	 */
	TEXT = 1,
	/**
	 * Buttons display text and icons in the dockbar.
	 */
	BOTH = 2,
	/**
	 * identical to @GDL_DOCK_BAR_BOTH.
	 */
	AUTO = 3,
}
alias GdlDockBarStyle DockBarStyle;

/**
 * Described the behaviour of a doc item. The item can have multiple flags set.
 */
public enum GdlDockItemBehavior
{
	/**
	 * Normal dock item
	 */
	NORMAL = 0,
	/**
	 * item cannot be undocked
	 */
	NEVER_FLOATING = 1,
	/**
	 * item cannot be docked vertically
	 */
	NEVER_VERTICAL = 2,
	/**
	 * item cannot be docked horizontally
	 */
	NEVER_HORIZONTAL = 4,
	/**
	 * item is locked, it cannot be moved around
	 */
	LOCKED = 8,
	/**
	 * item cannot be docked at top
	 */
	CANT_DOCK_TOP = 16,
	/**
	 * item cannot be docked at bottom
	 */
	CANT_DOCK_BOTTOM = 32,
	/**
	 * item cannot be docked left
	 */
	CANT_DOCK_LEFT = 64,
	/**
	 * item cannot be docked right
	 */
	CANT_DOCK_RIGHT = 128,
	/**
	 * item cannot be docked at center
	 */
	CANT_DOCK_CENTER = 256,
	/**
	 * item cannot be closed
	 */
	CANT_CLOSE = 512,
	/**
	 * item cannot be iconified
	 */
	CANT_ICONIFY = 1024,
	/**
	 * item doesn't have a grip
	 */
	NO_GRIP = 2048,
}
alias GdlDockItemBehavior DockItemBehavior;

/**
 * Define the image displayed.
 */
public enum GdlDockItemButtonImageType
{
	/**
	 * Display a small cross
	 */
	CLOSE = 0,
	/**
	 * Display a small triangle
	 */
	ICONIFY = 1,
}
alias GdlDockItemButtonImageType DockItemButtonImageType;

/**
 * Status flag of a GdlDockItem. Don't use unless you derive a widget from GdlDockItem
 *
 * Deprecated: Use your own private data instead.
 */
public enum GdlDockItemFlags
{
	/**
	 * item is in a drag operation
	 */
	IN_DRAG = 256,
	/**
	 * item is in a predrag operation
	 */
	IN_PREDRAG = 512,
	/**
	 * item is iconified
	 */
	ICONIFIED = 1024,
	/**
	 * indicates the user has started an action on the dock item
	 */
	USER_ACTION = 2048,
}
alias GdlDockItemFlags DockItemFlags;

/**
 * Described the state of a #GdlDockObject.
 *
 * Since 3.6: These flags are available using access function, like
 * gdl_dock_object_is_automatic() or gdl_dock_object_is_closed().
 */
public enum GdlDockObjectFlags
{
	/**
	 * Object is created and destroyed by the master, not the user
	 */
	AUTOMATIC = 1,
	/**
	 * Object has a parent
	 */
	ATTACHED = 2,
	/**
	 * Object is currently part of a rearrangement
	 */
	IN_REFLOW = 4,
	/**
	 * Object will be removed
	 */
	IN_DETACH = 8,
}
alias GdlDockObjectFlags DockObjectFlags;

/**
 * Used to flag additional characteristics to GObject properties used in dock
 * object.
 */
public enum GdlDockParamFlags
{
	/**
	 * The parameter is to be exported for later layout rebuilding
	 */
	EXPORT = 256,
	/**
	 * The parameter must be set after adding the children objects
	 */
	AFTER = 512,
}
alias GdlDockParamFlags DockParamFlags;

/**
 * Described the docking position.
 */
public enum GdlDockPlacement
{
	/**
	 * No position defined
	 */
	NONE = 0,
	/**
	 * Dock object on the top
	 */
	TOP = 1,
	/**
	 * Dock object on the bottom
	 */
	BOTTOM = 2,
	/**
	 * Dock object on the right
	 */
	RIGHT = 3,
	/**
	 * Dock object on the left
	 */
	LEFT = 4,
	/**
	 * Dock object on top of the other
	 */
	CENTER = 5,
	/**
	 * Dock object in its own window
	 */
	FLOATING = 6,
}
alias GdlDockPlacement DockPlacement;

/**
 * Used to customize the appearance of the tabs in #GdlDockNotebook.
 */
public enum GdlSwitcherStyle
{
	/**
	 * Tabs display only text labels.
	 */
	TEXT = 0,
	/**
	 * Tabs display only icons.
	 */
	ICON = 1,
	/**
	 * Tabs display text and icons.
	 */
	BOTH = 2,
	/**
	 * Same as @GDL_SWITCHER_STYLE_BOTH.
	 */
	TOOLBAR = 3,
	/**
	 * Tabs display like notebook tabs.
	 */
	TABS = 4,
	/**
	 * Do not display tabs.
	 */
	NONE = 5,
}
alias GdlSwitcherStyle SwitcherStyle;

struct GdlDock
{
	GdlDockObject object;
	GdlDockPrivate* priv;
}

struct GdlDockBar
{
	GtkBox parent;
	GdlDock* deprecatedDock;
	GdlDockBarPrivate* priv;
}

struct GdlDockBarClass
{
	GtkBoxClass parentClass;
}

struct GdlDockBarPrivate;

struct GdlDockClass
{
	GdlDockObjectClass parentClass;
	/** */
	extern(C) void function(GdlDock* dock) layoutChanged;
}

struct GdlDockItem
{
	GdlDockObject object;
	GdlDockItemPrivate* priv;
}

struct GdlDockItemButtonImage
{
	GtkWidget parent;
	GdlDockItemButtonImageType imageType;
}

struct GdlDockItemButtonImageClass
{
	GtkWidgetClass parentClass;
}

struct GdlDockItemClass
{
	GdlDockObjectClass parentClass;
	GdlDockItemClassPrivate* priv;
	/** */
	extern(C) void function(GdlDockItem* item, GtkOrientation orientation) setOrientation;
	/** */
	extern(C) void function(GdlDockItem* item) dockDragBegin;
	/** */
	extern(C) void function(GdlDockItem* item, GdkDevice* device, int x, int y) dockDragMotion;
	/** */
	extern(C) void function(GdlDockItem* item, int cancelled) dockDragEnd;
	/** */
	extern(C) void function(GdlDockItem* item, GtkDirectionType direction) moveFocusChild;
}

struct GdlDockItemClassPrivate;

struct GdlDockItemGrip
{
	GtkContainer parent;
	GdlDockItemGripPrivate* priv;
}

struct GdlDockItemGripClass
{
	GtkContainerClass parentClass;
}

struct GdlDockItemGripPrivate;

struct GdlDockItemPrivate;

struct GdlDockLayout
{
	GObject gObject;
	bool deprecatedDirty;
	GdlDockMaster* deprecatedMaster;
	GdlDockLayoutPrivate* priv;
}

struct GdlDockLayoutClass
{
	GObjectClass gObjectClass;
}

struct GdlDockLayoutPrivate;

struct GdlDockMaster
{
	GObject object;
	GdlDockMasterPrivate* priv;
}

struct GdlDockMasterClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GdlDockMaster* master) layoutChanged;
}

struct GdlDockMasterPrivate;

struct GdlDockNotebook
{
	GdlDockItem item;
	GdlDockNotebookPrivate* priv;
}

struct GdlDockNotebookClass
{
	GdlDockItemClass parentClass;
	GdlDockNotebookClassPrivate* priv;
}

struct GdlDockNotebookClassPrivate;

struct GdlDockNotebookPrivate;

struct GdlDockObject
{
	GtkContainer container;
	GdlDockObjectFlags deprecatedFlags;
	GObject* deprecatedMaster;
	GdlDockObjectPrivate* priv;
}

struct GdlDockObjectClass
{
	GtkContainerClass parentClass;
	GdlDockObjectClassPrivate* priv;
	/** */
	extern(C) void function(GdlDockObject* object, int recursive) detach;
	/** */
	extern(C) void function(GdlDockObject* object) reduce;
	/**
	 *
	 * Params:
	 *     object = A #GdlDockObject
	 *     x = X coordinate
	 *     y = Y coordinate
	 *     request = A #GdlDockRequest with information about the docking position
	 * Returns: %TRUE if @object has been docked.
	 */
	extern(C) int function(GdlDockObject* object, int x, int y, GdlDockRequest* request) dockRequest;
	/** */
	extern(C) void function(GdlDockObject* object, GdlDockObject* requestor, GdlDockPlacement position, GValue* otherData) dock;
	/**
	 *
	 * Params:
	 *     object = A #GdlDockObject
	 *     child = The child widget to reorder
	 *     newPosition = New position for the child
	 *     otherData = Optional data giving additional information
	 *         depending on the dock object.
	 * Returns: %TRUE if @child has been moved
	 */
	extern(C) int function(GdlDockObject* object, GdlDockObject* child, GdlDockPlacement newPosition, GValue* otherData) reorder;
	/** */
	extern(C) void function(GdlDockObject* object, GdlDockObject* child) present;
	/**
	 *
	 * Params:
	 *     object = the dock object we are asking for child placement
	 *     child = the child of the @object we want the placement for
	 *     placement = where to return the placement information
	 * Returns: %TRUE if @child is a child of @object.
	 */
	extern(C) int function(GdlDockObject* object, GdlDockObject* child, GdlDockPlacement* placement) childPlacement;
}

struct GdlDockObjectClassPrivate;

struct GdlDockObjectPrivate;

struct GdlDockPaned
{
	GdlDockItem dockItem;
	GdlDockPanedPrivate* priv;
}

struct GdlDockPanedClass
{
	GdlDockItemClass parentClass;
}

struct GdlDockPanedPrivate;

struct GdlDockParam;

struct GdlDockPlaceholder
{
	GdlDockObject object;
	GdlDockPlaceholderPrivate* priv;
}

struct GdlDockPlaceholderClass
{
	GdlDockObjectClass parentClass;
}

struct GdlDockPlaceholderPrivate;

struct GdlDockPrivate;

/**
 * Full docking information.
 */
struct GdlDockRequest
{
	/**
	 * A #GdlDockObject to dock
	 */
	GdlDockObject* applicant;
	/**
	 * The #GdlDockObject target
	 */
	GdlDockObject* target;
	/**
	 * how to dock @applicant in @target
	 */
	GdlDockPlacement position;
	/**
	 * Precise position
	 */
	cairo_rectangle_int_t rect;
	/**
	 * Additional information
	 */
	GValue extra;
}

struct GdlDockTablabel
{
	GtkBin parent;
	uint dragHandleSize;
	GtkWidget* item;
	GdkWindow* eventWindow;
	bool active;
	GdkEventButton dragStartEvent;
	bool preDrag;
}

struct GdlDockTablabelClass
{
	GtkBinClass parentClass;
	/** */
	extern(C) void function(GdlDockTablabel* tablabel, GdkEventButton* event) buttonPressedHandle;
}

struct GdlPreviewWindow
{
	GtkWindow parentInstance;
}

struct GdlPreviewWindowClass
{
	GtkWindowClass parentClass;
}

struct GdlSwitcher
{
	GtkNotebook parent;
	GdlSwitcherPrivate* priv;
}

struct GdlSwitcherClass
{
	GtkNotebookClass parentClass;
	GdlSwitcherClassPrivate* priv;
}

struct GdlSwitcherClassPrivate;

struct GdlSwitcherPrivate;

enum DOCK_MASTER_PROPERTY = "master";
alias GDL_DOCK_MASTER_PROPERTY = DOCK_MASTER_PROPERTY;

enum DOCK_NAME_PROPERTY = "name";
alias GDL_DOCK_NAME_PROPERTY = DOCK_NAME_PROPERTY;

/**
 * Minimum shift count to be used for user defined flags, to be stored in
 * #GdlDockObject.flags.
 *
 * Deprecated: Use a private flag instead
 */
enum DOCK_OBJECT_FLAGS_SHIFT = 8;
alias GDL_DOCK_OBJECT_FLAGS_SHIFT = DOCK_OBJECT_FLAGS_SHIFT;
