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

module event.Dispatcher;

private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.ObjectG;
private import dui.DUIObject;
private import event.Event;
private import event.IdleListener;
private import event.TimeoutListener;
private import event.ButtonListener;
private import event.MenuItemListener;
private import event.WidgetListener;
private import event.WindowListener;
private import event.NotebookListener;
private import event.CalendarListener;
private import event.TreeModelListener;
private import event.TextListener;
private import event.CellListener;
private import event.EditableListener;
private import event.EntryListener;
private import event.TreeViewListener;
private import ddi.Drawable;
private import dui.TreeModel;
private import dui.TreeStore;
private import dui.ListStore;
private import dui.TreePath;
private import dui.TreeIter;
private import dui.CellRenderer;
private import dui.CellRendererText;
private import dui.TextBuffer;

private import dui.Button;
private import dui.MenuShell;
private import dui.MenuItem;
private import dui.Notebook;
private import dui.Widget;
private import dui.Window;
private import dui.Calendar;
private import dui.Editable;
private import dui.Entry;
private import dui.Menu;

private import dui.TreeView;
private import dui.TreeViewColumn;
private import dui.TreePath;

private import event.All;

//extern(C) int g_signal_connect_data(void * object, char * name, void * func, void * func_data, int, int);
//extern(C) int g_signal_connect(void * object, char * name, void * func, void * data);

//enum GSignalFlags {
//	G_SIGNAL_RUN_FIRST = 1 << 0, G_SIGNAL_RUN_LAST = 1 << 1, G_SIGNAL_RUN_CLEANUP = 1 << 2, G_SIGNAL_NO_RECURSE = 1 << 3, G_SIGNAL_DETAILED = 1 << 4, G_SIGNAL_ACTION = 1 << 5, G_SIGNAL_NO_HOOKS = 1 << 6};
//
//const int  G_SIGNAL_FLAGS_MASK = 0x7F ;
//
//enum GConnectFlags {
//	G_CONNECT_AFTER = 1 << 0, G_CONNECT_SWAPPED = 1 << 1};
//enum GSignalMatchType {
//	G_SIGNAL_MATCH_ID = 1 << 0, G_SIGNAL_MATCH_DETAIL = 1 << 1, G_SIGNAL_MATCH_CLOSURE = 1 << 2, G_SIGNAL_MATCH_FUNC = 1 << 3, G_SIGNAL_MATCH_DATA = 1 << 4, G_SIGNAL_MATCH_UNBLOCKED = 1 << 5};
//
//const int G_SIGNAL_MATCH_MASK = 0x3f ;
//
////# define G_SIGNAL_TYPE_STATIC_SCOPE(G_TYPE_FLAG_RESERVED_ID_BIT)
//
///* --- signal information --- */
//struct _GSignalInvocationHint {
//	guint signal_id;
//	GQuark detail;
//	GSignalFlags run_type;
//};
//struct _GSignalQuery {
//	guint signal_id;
//	gchar * signal_name;
//	GType itype;
//	GSignalFlags signal_flags;
//	GType return_type; /* mangled with G_SIGNAL_TYPE_STATIC_SCOPE flag */
//	guint n_params;
//	GType * param_types; /* mangled with G_SIGNAL_TYPE_STATIC_SCOPE flag */
//};
//
///* --- signals --- */
//extern(C) guint g_signal_newv(
//	gchar * signal_name,
//	GType itype,
//	GSignalFlags signal_flags,
//	GClosure * class_closure,
//	GSignalAccumulator accumulator,
//	gpointer accu_data,
//	GSignalCMarshaller c_marshaller,
//	GType return_type,
//	guint n_params,
//	GType * param_types);
//extern(C) guint g_signal_new_valist(
//	gchar * signal_name,
//	GType itype,
//	GSignalFlags signal_flags,
//	GClosure * class_closure,
//	GSignalAccumulator accumulator,
//	gpointer accu_data,
//	GSignalCMarshaller c_marshaller,
//	GType return_type,
//	guint n_params,
//	vaList args);
//extern(C) guint g_signal_new(gchar * signal_name, GType itype, GSignalFlags signal_flags, guint class_offset, GSignalAccumulator accumulator, gpointer accu_data, GSignalCMarshaller c_marshaller, GType return_type, guint n_params,...);
//extern(C) void g_signal_emitv(GValue * instnce_and_params, guint signal_id, GQuark detail, GValue * return_value);
//extern(C) void g_signal_emit_valist(gpointer instnce, guint signal_id, GQuark detail, vaList var_args);
//extern(C) void g_signal_emit(gpointer instnce, guint signal_id, GQuark detail,...);
//extern(C) void g_signal_emit_by_name(gpointer instnce, gchar * detailed_signal,...);
//extern(C) guint g_signal_lookup(gchar * name, GType itype);
//extern(C) gchar * g_signal_name(guint signal_id);
//extern(C) void g_signal_query(guint signal_id, GSignalQuery * query);
//extern(C) guint * g_signal_list_ids(GType itype, guint * n_ids);
//extern(C) gboolean g_signal_parse_name(gchar * detailed_signal, GType itype, guint * signal_id_p, GQuark * detail_p, gboolean force_detail_quark);
//extern(C) GSignalInvocationHint * g_signal_get_invocation_hint(gpointer instnce);

/* --- signal emissions --- */
alias void * GSignalEmissionHook;
alias void * GClosureNotify;
alias int GSignalMatchType;

alias int GtkSignalRunType;
alias void * GtkSignalMarshaller;
alias void * GtkSignalFunc;
alias void * GtkCallbackMarshal;
alias void * GtkDestroyNotify;
struct GtkArg;


private:
extern(C)
{
	void g_signal_stop_emission(gpointer instnce, guint signal_id, GQuark detail);
	void g_signal_stop_emission_by_name(gpointer instnce, gchar * detailed_signal);
	gulong g_signal_add_emission_hook(guint signal_id, GQuark detail, GSignalEmissionHook hook_func, gpointer hook_data, GDestroyNotify data_destroy);
void g_signal_remove_emission_hook(guint signal_id, gulong hook_id);

/* --- signal handlers --- */
	gboolean g_signal_has_handler_pending(gpointer instnce, guint signal_id, GQuark detail, gboolean may_be_blocked);
	gulong g_signal_connect_closure_by_id(gpointer instnce, guint signal_id, GQuark detail, GClosure * closure, gboolean after);
	gulong g_signal_connect_closure(gpointer instnce, gchar * detailed_signal, GClosure * closure, gboolean after);
	
	gulong g_signal_connect_data(gpointer instnce, gchar * detailed_signal, GCallback c_handler, gpointer data, GClosureNotify destroy_data, GConnectFlags connect_flags);
	
	void g_signal_handler_block(gpointer instnce, gulong handler_id);
	void g_signal_handler_unblock(gpointer instnce, gulong handler_id);
	void g_signal_handler_disconnect(gpointer instnce, gulong handler_id);
	gboolean g_signal_handler_is_connected(gpointer instnce, gulong handler_id);
	gulong g_signal_handler_find(gpointer instnce, GSignalMatchType mask, guint signal_id, GQuark detail, GClosure * closure, gpointer func, gpointer data);
	guint g_signal_handlers_block_matched(gpointer instnce, GSignalMatchType mask, guint signal_id, GQuark detail, GClosure * closure, gpointer func, gpointer data);
	guint g_signal_handlers_unblock_matched(gpointer instnce, GSignalMatchType mask, guint signal_id, GQuark detail, GClosure * closure, gpointer func, gpointer data);
guint g_signal_handlers_disconnect_matched(gpointer instnce, GSignalMatchType mask, guint signal_id, GQuark detail, GClosure * closure, gpointer func, gpointer data);

/* --- chaining for language bindings --- */
	void g_signal_override_class_closure(guint signal_id, GType instnce_type, GClosure * class_closure);
	void g_signal_chain_from_overridden(GValue * instnce_and_params, GValue * return_value);
}

/* --- convenience --- */
// DONE # define g_signal_connect(instnce, detailed_signal, c_handler, data)

//# define g_signal_connect_after(
//	instnce,
//	detailed_signal,
//	c_handler,
//	data) \ g_signal_connect_data(
//	(instnce),
//	(detailed_signal),
//	(c_handler),
//	(data),
//	NULL,
//	G_CONNECT_AFTER)

//# define g_signal_connect_swapped(
//	instnce,
//	detailed_signal,
//	c_handler,
//	data) \ g_signal_connect_data(
//	(instnce),
//	(detailed_signal),
//	(c_handler),
//	(data),
//	NULL,
//	G_CONNECT_SWAPPED)

//# define g_signal_handlers_disconnect_by_func(
//	instnce,
//	func,
//	data) \ g_signal_handlers_disconnect_matched(
//	(instnce),
//	\ (GSignalMatchType) (G_SIGNAL_MATCH_FUNC | G_SIGNAL_MATCH_DATA),
//	\ 0,
//	0,
//	NULL,
//	(func),
//	(data))

//# define g_signal_handlers_block_by_func(
//	instnce,
//	func,
//	data) \ g_signal_handlers_block_matched(
//	(instnce),
//	\ (GSignalMatchType) (G_SIGNAL_MATCH_FUNC | G_SIGNAL_MATCH_DATA),
//	\ 0,
//	0,
//	NULL,
//	(func),
//	(data))

//# define g_signal_handlers_unblock_by_func(
//	instnce,
//	func,
//	data) \ g_signal_handlers_unblock_matched(
//	(instnce),
//	\ (GSignalMatchType) (G_SIGNAL_MATCH_FUNC | G_SIGNAL_MATCH_DATA),
//	\ 0,
//	0,
//	NULL,
//	(func),
//	(data))


/* --- compat defines --- */

//# define GTK_SIGNAL_OFFSET GTK_STRUCT_OFFSET

//# define gtk_signal_lookup(name, object_type) \ g_signal_lookup((name), (object_type))

//# define gtk_signal_name(signal_id) \ g_signal_name(signal_id)

//# define gtk_signal_emit_stop(
//object, signal_id) \ g_signal_stop_emission((object), (signal_id), 0)

//# define gtk_signal_connect(object, name, func, func_data)
// gtk_signal_connect_full((object), (name), (func), 0, (func_data), 0, 0, 0)

//# define gtk_signal_connect_after(
//object, name, func, func_data) \ gtk_signal_connect_full((object), (name), (func), 0, (func_data), 0, 0, 1)

//# define gtk_signal_connect_object(
//object, name, func, slot_object) \ gtk_signal_connect_full((object), (name), (func), 0, (slot_object), 0, 1, 0)

//# define gtk_signal_connect_object_after(
//object, name, func, slot_object) \ gtk_signal_connect_full((object), (name), (func), 0, (slot_object), 0, 1, 1)

//# define gtk_signal_disconnect(
//object, handler_id) \ g_signal_handler_disconnect((object), (handler_id))

// # define gtk_signal_handler_block(
//object, handler_id) \ g_signal_handler_block((object), (handler_id))

// # define gtk_signal_handler_unblock(
//object, handler_id) \ g_signal_handler_unblock((object), (handler_id))

//# define gtk_signal_disconnect_by_func(
//object, func, data) \ gtk_signal_compat_matched((object), (func), (data), \ (GSignalMatchType) (G_SIGNAL_MATCH_FUNC | \ G_SIGNAL_MATCH_DATA), 0)

//# define gtk_signal_disconnect_by_data(
//object, data) \ gtk_signal_compat_matched((object), 0, (data), G_SIGNAL_MATCH_DATA, 0)

//# define gtk_signal_handler_block_by_func(
//object, func, data) \ gtk_signal_compat_matched((object), (func), (data), \ (GSignalMatchType) (G_SIGNAL_MATCH_FUNC | \ G_SIGNAL_MATCH_DATA), 1)

//# define gtk_signal_handler_block_by_data(
//object, data) \ gtk_signal_compat_matched((object), 0, (data), G_SIGNAL_MATCH_DATA, 1)

//# define gtk_signal_handler_unblock_by_func(
//object, func, data) \ gtk_signal_compat_matched((object), (func), (data), \ (GSignalMatchType) (G_SIGNAL_MATCH_FUNC | \ G_SIGNAL_MATCH_DATA), 2)

//# define gtk_signal_handler_unblock_by_data(
//object, data) \ gtk_signal_compat_matched((object), 0, (data), G_SIGNAL_MATCH_DATA, 2)

//# define gtk_signal_handler_pending(
//object, signal_id, may_be_blocked) \ g_signal_has_handler_pending((object), (signal_id), 0, (may_be_blocked))

//# define gtk_signal_handler_pending_by_func(
//object,
//	signal_id,
//	may_be_blocked,
//	func,
//	data) \ (g_signal_handler_find((object), \ (GSignalMatchType) (G_SIGNAL_MATCH_ID | \ G_SIGNAL_MATCH_FUNC | \ G_SIGNAL_MATCH_DATA | \ ((may_be_blocked) ? 0 : G_SIGNAL_MATCH_UNBLOCKED)), \ (signal_id), 0, 0, (func), (data)) != 0)

/* --- compat functions --- */
private:
extern (C)
{
	guint gtk_signal_newv(gchar * name, GtkSignalRunType signal_flags, GtkType object_type, guint function_offset, GtkSignalMarshaller marshaller,
			GtkType return_val, guint n_args, GtkType * args);
	guint gtk_signal_new(gchar * name, GtkSignalRunType signal_flags, GtkType object_type, guint function_offset, GtkSignalMarshaller marshaller,
		GtkType return_val, guint n_args, ...);
	void gtk_signal_emit_stop_by_name(GtkObject * object, gchar * name);
	void gtk_signal_connect_object_while_alive(GtkObject * object, gchar * name, GtkSignalFunc func, GtkObject * alive_object);
	void gtk_signal_connect_while_alive(GtkObject * object, gchar * name, GtkSignalFunc func, gpointer func_data, GtkObject * alive_object);
	gulong gtk_signal_connect_full(GtkObject * object, gchar * name, GtkSignalFunc func, GtkCallbackMarshal unsupported, gpointer data,
		GtkDestroyNotify destroy_func, gint object_signal, gint after);
	void gtk_signal_emitv(GtkObject * object, guint signal_id, GtkArg * args);
	void gtk_signal_emit(GtkObject * object, guint signal_id, ...);
	void gtk_signal_emit_by_name(GtkObject * object, gchar * name, ...);
	void gtk_signal_emitv_by_name(GtkObject * object, gchar * name, GtkArg * args);
	void gtk_signal_compat_matched(GtkObject * object, GtkSignalFunc func, gpointer data, GSignalMatchType match, guint action);
	
	void gdk_window_get_pointer (void * , int * ,int * , int *);
}

extern(C)
{
	guint gtk_idle_add(void* funct, gpointer data);
	guint gtk_idle_add_priority(gint priority, void* funct, gpointer data);
	//guint gtk_idle_add_full(gint priority, void* function, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy);
	void gtk_idle_remove(guint idle_handler_id);
	void gtk_idle_remove_by_data(gpointer data);
	
	guint gtk_timeout_add_full(guint32 interval, void* funct, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy);
	guint gtk_timeout_add(guint32 interval, void* funct, gpointer data);
	void gtk_timeout_remove(guint timeout_handler_id);

};	


/**
 * This a is singleton that dispatches events and signals to listeners.
 * This can still change.
 * Q: Should this be a singleton? or should we allow the creation of multiple dispatchers?
 * Q: Should this be moved to DUIObject?
 * Q: Should this be moved to the base objectG?
 */
public:
class Dispatcher
{

	private import dool.String;

	private:
	static Dispatcher dispatcher;

	private:
	this()
	{

	}

	/**
	 * Gets the dispatcher for this application.
	 * Only one dispatcher is created by application
	 */
	public:
	static Dispatcher getDispatcher()
	{
		if (dispatcher === null)
		{
			dispatcher = new Dispatcher();
		}
		return dispatcher;
	}

	/**
	 * callback, listeners and stuff
	 */
	private:
	void connectData(ObjectG objG, char [] signal, void * handler, gpointer data, GClosureNotify destroyData, GConnectFlags connect_flags)
	{
		g_signal_connect_data(cast(void *) objG.obj(), cChar(signal), handler, data, destroyData, connect_flags);
	}

	/**
	 * connects a signal to an GObject
	 */
	private:
	void connect(ObjectG objG, String signal, void * handler, gpointer data)
	{
		g_signal_connect_data(cast(void *) objG.obj(), signal.toStringz(), handler, data, null, 0);
	}

	private:
	void connect(GtkTreeModel* obj, String signal, void * handler, gpointer data)
	{
		g_signal_connect_data(obj, signal.toStringz(), handler, data, null, 0);
	}
	
	//private: gulong gtkConnect(ObjectG objG,char [] name, void * func, gpointer data)
	//{
	//	return gtk_signal_connect_full((GtkObject*)objG.obj(),cChar(name), func, null, data, null, 0, 0);
	//}

	guint idleAdd(void* funct, gpointer data)
	{
		return gtk_idle_add(funct, data);
	}
	guint idleAddPriority(gint priority, void* funct, IdleListener listener)
	{
		return gtk_idle_add_priority(priority, funct, listener);
	}
	//guint gtk_idle_add_full(gint priority, GtkFunction function, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy);
	void idleRemove(guint idle_handler_id)
	{
		gtk_idle_remove(idle_handler_id);
	}
	//void gtk_idle_remove_by_data(gpointer data);
	

	public:

	/**
	 * Adds a idle listener to an object
	 * @param listener the IdleListener object
	 * @return the idle id. The idle id can be used to remove the idle listener
	 */
	int addIdleListener(IdleListener listener)
	{
		return idleAdd(&idle,listener);
	}
	
	/**
	 * Adds a idle listener to an object
	 * @param listener the IdleListener object
	 * @param priority ???
	 * @return the idle id. The idle id can be used to remove the idle listener
	 */
	int addIdleListener(IdleListener listener, int priority)
	{
		return idleAddPriority(priority, &idle,listener);
	}
	
	/**
	 * Removes a idle listener by idle id
	 * @param idleID the idleID id to remove.
	 */
	void removeIdleListener(int idleID)
	{
		idleRemove(idleID);
	}
	
	extern(C)
	{
		static int idle(IdleListener listener)
		{
			return listener.idleCallback();
		}
	}

	/**
	 * When the listener returns false ends the timeout cycle
	 */
	guint addTimeoutListener(TimeoutListener listener, guint32 interval)
	{
		return gtk_timeout_add(interval, &timeout, listener);
	}
	
	void removeTimeoutListener(guint timeout_handler_id)
	{
		gtk_timeout_remove(timeout_handler_id);
	}

	extern(C)
	{
		static int timeout(TimeoutListener listener)
		{
			return listener.timeoutCallback();
		}
	}
	
	/**
	 * Add a listener to a clickable button with a click action name.
	 * @param listener the listener
	 * @param button the button that generates a click
	 * @param action the action name
	 */
	void addButtonClickedListener(ButtonClickedListener listener, Button button, String action)
	{
		button.setActionCommand(action);
		addButtonClickedListener(listener, button);
	}

	void addButtonListener(ButtonListener listener, Button button, String action)
	{
		button.setActionCommand(action);
		addButtonListener(listener, button);
	}

	// the delegate experiment
	void connectDLG(ObjectG objG, String signal, void * handler, void delegate() data)
	{
printf("+++++++++++++++++++++++ delegate %X\n",&data);
		g_signal_connect_data(cast(void *) objG.obj(), signal.toStringz(), handler, &data, null, 0);
	}


static void delegate() dlg;
	/**
	 * Add a listener to a clickable button using the object defaul action name.
	 * @param listener the listener
	 * @param button the button that generates a click
	 */
	void addButtonClickedListener(void delegate() listener, Button button)
	{
		dlg = listener;
		/**
		 * All the button clicked actions will be distributed from here.
		   */
		connectDLG(button, button.getDefaultAction(), &buttonClickedDLG, listener);
	}
	extern (C)
	{
		static void buttonClickedDLG(GtkWidget * gtkwidget, void* listener)
		{
			//void delegate() dkl = listener;
			printf("buttonClickedDLG 1 \n");
printf("+++++++++++++++++++++++ delegate back %X\n",&listener);
			dlg();
			printf("buttonClickedDLG 2 \n");
			//dkl();
			printf("buttonClickedDLG 3 \n");
		}
	};

	/**
	 * Add a listener to a clickable button using the object defaul action name.
	 * @param listener the listener
	 * @param button the button that generates a click
	 */
	void addButtonClickedListener(ButtonClickedListener listener, Button button)
	{
		/**
		 * All the button clicked actions will be distributed from here.
		   */
		connect(button, button.getDefaultAction(), &buttonClicked, listener);
	}
	extern (C)
	{
		static void buttonClicked(GtkWidget * gtkwidget, ButtonClickedListener listener)
		{
			//printf("Dispatcher.buttonClicked 1\n");
			Button button = new Button(gtkwidget);
			//printf("Dispatcher.buttonClicked 2\n");
			//printf("Dispatcher.buttonClicked gtkWidget %X\n",gtkwidget);
			//printf("Dispatcher.buttonClicked button %X\n",button);
			//printf("Dispatcher.buttonClicked button.actionCommand =  >%.*s<\n",button.getActionCommand());
			//printf("Dispatcher.buttonClicked lietener %X\n",listener);
			listener.buttonClickedCallback(button, button.getActionCommand());
			//printf("Dispatcher.buttonClicked 3\n");
		}
	};
	

	void addButtonListener(ButtonListener listener, Button button)
	{
		//connect(button, button.getDefaultAction(), &buttonReleased, listener);
	}
	//extern(C)
	//{
	//	static void buttonReleased
	//}
	/**
	 * Add a listener to a clickable menu item with a click action name.
	 * @param listener the listener
	 * @param menuItem the menu item that generates a click
	 * @param action the action name
	 */
	void addMenuItemListener(MenuItemListener listener, MenuItem menuItem, String action)
	{
		menuItem.setActionCommand(action);
		addMenuItemListener(listener, menuItem);
	}

	/**
	 * Add a listener to a clickable menu item with a click action name.
	 * @param listener the listener
	 * @param menuItem the menu item that generates a click
	 */
	void addMenuItemListener(MenuItemListener listener, MenuItem menuItem)
	{
		connect(menuItem, menuItem.getDefaultAction(), &menuItemActivate, listener);
		connect(menuItem, menuItem.getDefaultAction(), &menuItemActivateItem, listener);
	}
	extern (C)
	{
		/**
		 * All the menu item clicked actions will be distributed from here.
		 */
		static void menuItemActivate(GtkWidget * gtkwidget, MenuItemListener listener)
		{
			//printf("Dispatcher 1\n");
			MenuItem menuItem = new MenuItem(gtkwidget);
			//printf("Dispatcher 1a\n");
			listener.activateCallback(menuItem, menuItem.getActionCommand());
			//printf("Dispatcher 1b\n");
		}

		/**
		 * All the menu item clicked actions will be distributed from here.
		 */
		static void menuItemActivateItem(GtkWidget * gtkwidget, MenuItemListener listener)
		{
			//printf("Dispatcher 2\n");
			MenuItem menuItem = new MenuItem(gtkwidget);
			//printf("Dispatcher 2a\n");
			listener.activateItemCallback(menuItem, menuItem.getActionCommand());
			//printf("Dispatcher 2b\n");
		}
	};

	/**
	 * Adds a mouse button listener to an object.
	 * @param listener the listener
	 * @param widget the widget that generates mouse button events
	 */
	void addMouseButtonListener(MouseButtonListener listener, Widget widget)
	{
		widget.addEvents(EventMask.BUTTON_PRESS | EventMask.BUTTON_RELEASE);
		connect(widget, new String("button_press_event"),&mouseButtonPressed, listener);
		connect(widget, new String("button_release_event"),&mouseButtonReleased, listener);
	}
	extern (C)
	{
		/**
		 * Callback for button pressed events
		 * @param event the GdkEvent
		 * @param gtkwidget the gtkwidget that generated the event
		 * @param data our data set to the listener
		 */
		static void mouseButtonPressed(GtkWidget * gtkwidget, GdkEvent * event, MouseButtonListener listener)
		{
			Widget widget = new Widget(gtkwidget);
			listener.mouseButtonPressCallback(widget, new EventButton(event));
		}

		/**
		 * Callback for button release events
		 * @param event the GdkEvent
		 * @param gtkwidget the gtkwidget that generated the event
		 * @param data our data set to the listener
		 */
		static void mouseButtonReleased(GtkWidget* gtkwidget, GdkEvent * event, MouseButtonListener listener)
		{
			Widget widget = new Widget(gtkwidget);
			listener.mouseButtonReleaseCallback(widget, new EventButton(event));
		}
	};

	/**
	 * Adds a mouse movement listener to an object.
	 * @param listener the listener
	 * @param widget the widget that generates mouse motion events
	 */
	void addMouseMotionListener(MouseMotionListener listener, Widget widget)
	{
		widget.addEvents(EventMask.POINTER_MOTION);
		connect(widget, new String("motion_notify_event"),&mouseMoved, listener);
	}
	extern (C)
	{
		/**
		 * Callback for mouseMoved events
		 * @param event the GdkEvent
		 * @param gtkwidget the gtkwidget that generated the event
		 * @param data our data set to the listener
		 */
		static void mouseMoved(GtkWidget* gtkwidget, GdkEvent * event, MouseMotionListener listener)
		{
			Widget widget = new Widget(gtkwidget);
			listener.motionNotifyCallback(widget, new EventMotion(event));
		}
	};

	/**
	 * Adds a mouse enter and exit listener to an object.
	 * @param listener the listener
	 * @param widget the widget that generates mouse enter/exit events
	 */
	void addMouseEnterListener(MouseEnterListener listener, Widget widget)
	{
		widget.addEvents(EventMask.ENTER_NOTIFY | EventMask.LEAVE_NOTIFY);
		connect(widget, new String("enter_notify_event"),&mouseEnterNotify, listener);
		connect(widget, new String("leave_notify_event"),&mouseLeaveNotify, listener);
	}
	extern (C)
	{
		/**
		 * Callback for mouseEnter events
		 * @param event the GdkEvent
		 * @param gtkwidget the gtkwidget that generated the event
		 * @param data our data set to the listener
		 */
		static void mouseEnterNotify(GtkWidget* gtkwidget, GdkEvent * event, MouseEnterListener listener)
		{
			Widget widget = new Widget(gtkwidget);
			listener.enterNotifyCallback(widget, new EventCrossing(event));
		}

		/**
		 * Callback for mouseLeave events
		 * @param event the GdkEvent
		 * @param gtkwidget the gtkwidget that generated the event
		 * @param data our data set to the listener
		 */
		static void mouseLeaveNotify(GtkWidget* gtkwidget, GdkEvent * event, MouseEnterListener listener)
		{
			Widget widget = new Widget(gtkwidget);
			listener.enterNotifyCallback(widget, new EventCrossing(event));
		}

	};

	/**
	 * Adds a window listener to an object
	 * @param listener the window listener
	 * @param window the window that generated the event
	 */
	void addWindowListener(WindowListener listener, Window window)
	{
		debug(events)
		{
			printf("Dispatcher.addWindowListener.listener %X\n",listener);
			printf("Dispatcher.addWindowListener.window %X\n",window);
			printf("Dispatcher.addWindowListener.window.obj() %X\n",window.obj());
		}

		connect(window, new String("delete_event"),&windowDelete, listener);
		connect(window, new String("destroy_event"),&windowDestroy, listener);
	}
	extern (C)
	{
		/**
		 * Callback for window events
		 * @param event the GdkEvent
		 * @param gtkwidget the gtkwidget that generated the event
		 * @param data our data set to the listener
		 */
		static int windowDelete(GtkWidget * gtkwidget, GdkEvent * event, WindowListener listener)
		{
			debug(events)
			{
				printf("Dispatcher.windowDelete\n");
				printf("Dispatcher.windowDelete.listener %X\n",listener);
				printf("Dispatcher.windowDelete.gtkwidget %X\n",gtkwidget);
			}
			Window window = new Window(gtkwidget);
			debug(events) printf("Dispatcher.windowDelete.window %X\n",window);
			return listener.windowDeleteCallback(window, new Event(event));
		}

		/**
		 * Callback for window destroy events
		 * @param event the GdkEvent
		 * @param gtkwidget the gtkwidget that generated the event
		 * @param data our data set to the listener
		 */
		static int windowDestroy(GtkWidget * gtkwidget, GdkEvent * event, WindowListener listener)
		{
			debug(events)
			{
				printf("Dispatcher.windowDestroy\n");
			}
			Window window = new Window(gtkwidget);
			return listener.windowDestroyCallback(window, new Event(event));
		}

	};

	/**
	 * Adds a focus listener to an object
	 * @param listener the focus listener
	 * @param widget the widget that generated the even
	 */
	void addFocusListener(FocusListener listener, Widget widget)
	{
		connect(widget, new String("focus_in_event"),&focusIn, listener);
		connect(widget, new String("focus_out_event"),&focusOut, listener);
	}
	extern (C)
	{
		/**
		 * Callback for focus in events
		 * @param event the GdkEvent
		 * @param gtkwidget the gtkwidget that generated the event
		 * @param data our data set to the listener
		 */
		static void focusIn(GtkWidget* gtkwidget, GdkEvent * event, FocusListener listener)
		{
			Widget widget = new Widget(gtkwidget);
			listener.focusInCallback(widget, new EventFocus(event));
		}

		/**
		 * Callback for focus out events
		 * @param event the GdkEvent
		 * @param gtkwidget the gtkwidget that generated the event
		 * @param data our data set to the listener
		 */
		static void focusOut(GtkWidget* gtkwidget, GdkEvent * event, FocusListener listener)
		{
			Widget widget = new  Widget(gtkwidget);
			listener.focusOutCallback(widget, new EventFocus(event));
		}
	};

	/**
	 * Adds a key listener to an object
	 * @param listener the key listener
	 * @param widget the widget that generated the even
	 */
	void addKeyListener(KeyListener listener, Widget widget)
	{
		//printf("0 Dispatcher.addKeyListener %X %X\n",listener,widget);
		connect(widget, new String("key-press-event"), &keyPress, listener);
		connect(widget, new String("key-release-event"), &keyRelease, listener);
	}
	extern(C)
	{
		/**
		 * Key press callback
		 * @param event the key press event
		 * @param gtkwidget the widget that generated the event
		 * @param data the callback data that was set the the listener
		 */
		static bit keyPress(GtkWidget* gtkwidget, GdkEvent * event, KeyListener listener)
		{
			//printf("1 Dispatcher.keyPressed %X %X\n",listener,gtkwidget);
			Widget widget = new  Widget(gtkwidget);
			//printf("2 Dispatcher.keyPressed %X %X\n",listener,gtkwidget);
			return listener.keyPressCallback(widget, new EventKey(event));
			//printf("3 Dispatcher.keyPressed %X %X\n",listener,gtkwidget);
		}

		/**
		 * Key release callback
		 * @param event the key press event
		 * @param gtkwidget the widget that generated the event
		 * @param data the callback data that was set the the listener
		 */
		static void keyRelease(GtkWidget* gtkwidget, GdkEvent * event, KeyListener listener)
		{
			Widget widget = new  Widget(gtkwidget);
			listener.keyReleaseCallback(widget, new EventKey(event));
		}

	};

	/**
	 * Adds a exposed wareness to a widget.
	 * Usaly the exposed event is processed by the GTK and we don't need
	 * to know about it. An example of usage is the refresh a DrawingArea.
	 * @param listener the exposeListener
	 * @param widget the widget that needs to know about expose events
	 */
	void addExposeListener(ExposeListener listener, Widget widget)
	{
		connect(widget, new String("expose_event"), &expose, listener);
		connect(widget, new String("no_expose_event"), &noExpose, listener);
	}
	extern (C)
	{
		/**
		 * All the "exposed" actions will be distributed from here.
		 */
		static gboolean expose(GtkWidget * gtkwidget, GdkEvent * event, ExposeListener listener)
		{
			Widget widget = new  Widget(gtkwidget);
			return listener.exposeCallback(widget);
		}

		/**
		 * All the "noExposed" actions will be distributed from here.
		 */
		static gboolean noExpose(GtkWidget * gtkwidget, GdkEvent * event, ExposeListener listener)
		{
			Widget widget = new  Widget(gtkwidget);
			return listener.noExposeCallback(widget);
		}

	};

	/**
	 * Adds configuration changes wareness to a widget.
	 * @param listener the configureListener
	 * @param widget the widget that needs to know about configure events
	 */
	void addConfigureListener(ConfigureListener listener, Widget widget)
	{
		connect(widget, new String("configure_event"), &configure, listener);
	}
	extern (C)
	{
		/**
		 * All the "exposed" actions will be distributed from here.
		 */
		static gboolean configure(GtkWidget * gtkwidget, GdkEvent * event, ConfigureListener listener)
		{
			EventConfigure cEvent = new EventConfigure(event);
			Widget widget = new  Widget(gtkwidget);
			return listener.configureCallback(widget,cEvent);
		}

	};

	/**
	 * Adds visibility changes wareness to a widget.
	 * @param listener the VisibilityListener
	 * @param widget the widget that needs to know about visilibity events
	 * \bug this one a kind of broken : visibility never gets called back...
	 */
	void addVisibilityListener(VisibilityListener listener, Widget widget)
	{
		//printf("addVisibilityListener\n");
		connect(widget, new String("visibility_notify_event"), &visibility, listener);
	}
	extern (C)
	{
		/**
		 * All the "exposed" actions will be distributed from here.
		 * \but never ges called back
		 */
		static gboolean visibility(GtkWidget * gtkwidget, GdkEvent * event, VisibilityListener listener)
		{
			//printf("visibility\n");
			EventVisibility vEvent = new EventVisibility(event);
			Widget widget = new  Widget(gtkwidget);
			return listener.visibilityCallback(widget, vEvent);
		}

	};

	/**
	 * Adds a map wareness to a widget.
	 * After mapped a widget should have a window so we can 
	 * change properties that depend on the window, an example is the cursor
	 * @param listener the map events
	 * @param widget the widget generated the map event
	 */
	void addMapListener(MapListener listener, Widget widget)
	{
		connect(widget, new String("map_event"), &map, listener);
		connect(widget, new String("unmap_event"), &unmap, listener);
	}
	extern (C)
	{
		/**
		 * All the "map" events will be distributed from here.
		 */
		static gboolean map(GtkWidget * gtkwidget, GdkEvent * event, MapListener listener)
		{
			Widget widget = new  Widget(gtkwidget);
			return listener.mapCallback(new Drawable(widget));
		}

		/**
		 * All the "unmap" events will be distributed from here.
		 */
		static gboolean unmap(GtkWidget * gtkwidget, GdkEvent * event, MapListener listener)
		{
			Widget widget = new  Widget(gtkwidget);
			return listener.unmapCallback(new Drawable(widget));
		}

	};

	/**
	 * Adds a realize wareness to a widget.
	 * @param listener the realize events listener
	 * @param widget the widget generated the realize event
	 */
	void addRealizeListener(RealizeListener listener, Widget widget)
	{
		connect(widget, new String("realize"), &realize, listener);
		connect(widget, new String("unrealize"), &unrealize, listener);
	}
	extern (C)
	{
		/**
		 * All the "realize" events will be distributed from here.
		 */
		static bit realize(GtkWidget * gtkwidget, RealizeListener listener)
		{
			Widget widget = new  Widget(gtkwidget);
			return listener.realizeCallback(widget);
		}

		/**
		 * All the "unrealize" events will be distributed from here.
		 */
		static bit unrealize(GtkWidget * gtkwidget, RealizeListener listener)
		{
			Widget widget = new  Widget(gtkwidget);
			return listener.unrealizeCallback(widget);
		}
	};

	/**
	 * Adds a notebook switch page listener
	 * @param listener the notebook listener
	 * @param widget the widget that generated the event
	 */
	void addNotebookSwitchPageListener(NotebookSwitchPageListener listener, Widget widget)
	{
		connect(widget, new String("switch-page"), &switchPage, listener);
	}
	extern (C)
	{
		/**
		 * All the "switchPage" actions will be distributed from here.
		 */
		static void switchPage(GtkWidget * gtkwidget, NotebookPage * page, int pageNumber, NotebookSwitchPageListener listener)
		{
			// NotebookPage is an opaque struct let's ignore it
			Notebook notebook = new Notebook(gtkwidget);
			listener.switchPageCallback(notebook, pageNumber);
		}

	};

	/**
	 * Adds a notebook listener
	 * @param listener the notebook listener
	 * @param widget the widget that generated the event
	 */
	void addNotebookListener(NotebookListener listener, Widget widget)
	{
		connect(widget, new String("change-current-page") , &changeCurrentPage, listener);
		connect(widget, new String("focus-tab"), &focusTab, listener);
		connect(widget, new String("move-focus-out"), &moveFocusOut, listener);
		connect(widget, new String("select-page"), &selectPage, listener);
		connect(widget, new String("switch-page"), &switchPage, listener);
	}
	extern (C)
	{
		/**
		 * All the "notebook" actions will be distributed from here.
		 */
		
		static void changeCurrentPage(GtkNotebook * gtkNotebook, gint pageNumber, NotebookListener listener)
		{
			Notebook notebook = new Notebook(gtkNotebook);
			listener.changeCurrentPageCallback(notebook, pageNumber);
		}
		static bit focusTab(GtkNotebook * gtkwidget, void* noteboookTab, NotebookListener listener)
		{
			Notebook notebook = new Notebook(gtkwidget);
			return listener.focusTabCallback(notebook);
		}
		static void moveFocusOut(GtkNotebook * gtkwidget, DirectionType direction, NotebookListener listener)
		{
			Notebook notebook = new Notebook(gtkwidget);
			listener.moveFocusOutCallback(notebook, direction);
		}
		static bit selectPage(GtkNotebook * gtkwidget, gboolean arg1, NotebookListener listener)
		{
			Notebook notebook = new Notebook(gtkwidget);
			return listener.selectPageCallback(notebook, ((arg1==0)?false:true));
		}

		static void switchPage(GtkWidget * gtkwidget, NotebookPage * page, int pageNumber, NotebookListener listener)
		{
			// NotebookPage is an opaque struct let's ignore it
			Notebook notebook = new Notebook(gtkwidget);
			listener.switchPageCallback(notebook, pageNumber);
		}


	};

	

	/**
	 * Adds a calendar listener
	 * @param listener the Calendar listener
	 * @param widget the widget that generated the event
	 */
	void addCalendarListener(CalendarListener listener, Widget widget)
	{

		connect(widget, new String("day-selected"), &daySelected, listener);
		connect(widget, new String("day-selected-double-click"), &daySelectedDC, listener);
		connect(widget, new String("month-changed"), &monthChanged, listener);
		connect(widget, new String("next-month"), &nextMonth, listener);
		connect(widget, new String("next-year"), &nextYear, listener);
		connect(widget, new String("prev-month"), &prevMonth, listener);
		connect(widget, new String("prev-year"), &prevYear, listener);

	}
	extern (C)
	{
		static void daySelected(GtkWidget * gtkwidget, CalendarListener listener)
		{
			listener.daySelectedCallback(new Calendar(gtkwidget));
		}
		static void daySelectedDC(GtkWidget * gtkwidget, CalendarListener listener)
		{
			listener.daySelectedDCCallback(new Calendar(gtkwidget));
		}
		static void monthChanged(GtkWidget * gtkwidget, CalendarListener listener)
		{
			listener.monthChangedCallback(new Calendar(gtkwidget));
		}
		static void prevMonth(GtkWidget * gtkwidget, CalendarListener listener)
		{
			listener.prevMonthCallback(new Calendar(gtkwidget));
		}
		static void nextMonth(GtkWidget * gtkwidget, CalendarListener listener)
		{
			listener.nextMonthCallback(new Calendar(gtkwidget));
		}
		static void prevYear(GtkWidget * gtkwidget, CalendarListener listener)
		{
			listener.prevYearCallback(new Calendar(gtkwidget));
		}
		static void nextYear(GtkWidget * gtkwidget, CalendarListener listener)
		{
			listener.nextYearCallback(new Calendar(gtkwidget));
		}

	};

	/**
	 * Adds a TreeModel listener
	 * @param listener the TreeModel listener
	 * @param model the treeModel that generated the event
	 */
	void addCalendarListener(TreeModelListener listener, TreeModel model)
	{

		connect(model.model(), new String("row-changed"), &rowChanged, listener);
		connect(model.model(), new String("row-deleted"), &rowDeleted, listener);
		connect(model.model(), new String("row-has-child-toggled"), &rowHasChildToggled, listener);
		connect(model.model(), new String("row-inserted"), &rowInserted, listener);
		connect(model.model(), new String("rows-reordered"), &rowsReordered, listener);

	}
	extern(C)
	{
		static void rowChanged(GtkTreeModel *treemodel,GtkTreePath *gtkPath,GtkTreeIter *gtkIter, TreeModelListener listener)
		{
			TreePath path = new TreePath(gtkPath);
			TreeIter iter = new TreeIter(gtkIter);
			TreeModel model = new TreeModel(treemodel);
			listener.rowChangedCallback(model, path, iter);
		}
		static void rowDeleted(GtkTreeModel *treemodel,GtkTreePath *gtkPath,TreeModelListener listener)
		{
			TreePath path = new TreePath(gtkPath);
			TreeModel model = new TreeModel(treemodel);
			listener.rowDeletedCallback(model, path);
		}
		static void rowHasChildToggled(GtkTreeModel *treemodel,GtkTreePath *gtkPath,GtkTreeIter *gtkIter, TreeModelListener listener)
		{
			TreePath path = new TreePath(gtkPath);
			TreeIter iter = new TreeIter(gtkIter);
			TreeModel model = new TreeModel(treemodel);
			listener.rowHasChildToggledCallback(model, path, iter);
		}
		static void rowInserted(GtkTreeModel *treemodel,GtkTreePath *gtkPath,GtkTreeIter *gtkIter, TreeModelListener listener)
		{
			TreePath path = new TreePath(gtkPath);
			TreeIter iter = new TreeIter(gtkIter);
			TreeModel model = new TreeModel(treemodel);
			listener.rowInsertedCallback(model, path, iter);
		}
		static void rowsReordered(GtkTreeModel *treemodel,GtkTreePath *gtkPath,GtkTreeIter *gtkIter,int *newOrder, TreeModelListener listener)
		{
			TreePath path = new TreePath(gtkPath);
			TreeIter iter = new TreeIter(gtkIter);
			TreeModel model = new TreeModel(treemodel);
			listener.rowsReorderedCallback(model, path, iter, newOrder);
		}
	};

	/**
	 * Add TextChangedListener
	 */
	void addTextChangedListener(TextChangedListener listener, TextBuffer textBuffer)
	{
		connect(textBuffer,new String("changed"), &textChanged, listener);
	}
	
	extern(C)
	{
		static void textChanged(GtkTextBuffer * textbuffer, TextChangedListener listener)
		{
			listener.textChangedCallback(new TextBuffer(textbuffer));
		}
	}
	
	/**
	 * Add cell listener
	 */
	void addCellListener(CellListener listener, CellRenderer renderer, TreeModel model, int column) 
	{
		//printf("add cell listener model type = %d\n",*(model.getType()));

		renderer.setData(new String("__column"),cast(int*)column);
		//printf("addCellListener 1\n");
		renderer.setData(new String("__model"),model.model());
		//printf("addCellListener 2\n");
		connect(renderer,new String("edited"),&edited, listener);
		//printf("addCellListener 3\n");
	};
	
	extern(C)
	{
		static void edited(GtkCellRenderer* cell, gchar* pathString, gchar* newText, CellListener listener)
		{
			//printf("edited\n");
			CellRenderer renderer = new CellRendererText(cell);
			int column = cast(int)renderer.getData(new String("__column"));
			//printf("column = %d\n",column);
			TreeModel model = new ListStore(cast(GObject*)renderer.getData(new String("__model")));
			listener.editedCallback(renderer, model, String.newz(pathString), String.newz(newText),column);
		}
	};
	
	/**
	 * Adds a entry change listener
	 * @param listener the entry listener
	 * @param entry the entry that generated the event
	 */
	void addEntryChangeListener(EntryChangeListener listener, Entry entry)
	{
		debug(events)
		{
			printf("DDDDDDDDDDDD 0.obj() %X\n", (cast(ObjectG) entry). obj());
			printf("DDDDDDDDDDDD 0.listener %X\n", listener);
			printf("DDDDDDDDDDDD 0.entry %X\n", entry);
		}
		entry.setData(new String("ObjectG"), cast(Entry) entry);

		connect(entry, new String("changed"), &changed, listener);

	};

	/**
	 * Adds a entry insert listener
	 * @param listener the entry listener
	 * @param entry the widget that generated the event
	 */
	void addEntryInsertListener(EntryInsertListener listener, Entry entry)
	{


		debug(events)
		{
			printf("DDDDDDDDDDDD 0.obj() %X\n", (cast(ObjectG) entry). obj());
			printf("DDDDDDDDDDDD 0.listener %X\n", listener);
			printf("DDDDDDDDDDDD 0.entry %X\n", entry);
		}
		entry.setData(new String("ObjectG"), cast(Entry) entry);

		//connect(entry, "changed"), changed, listener);
		connect(entry, new String("delete-text"), &deleteText, listener);
		connect(entry, new String("insert-text"), &insertText, listener);

	}

	/**
	 * Adds a entry listener
	 * @param listener the listener
	 * @param entry the entry widget
	 */
	void addEntryListener(EntryListener listener, Entry entry)
	{
		debug(events)
		{
			printf("DDDDDDDDDDDD 0.obj() %X\n", (cast(ObjectG) entry). obj());
			printf("DDDDDDDDDDDD 0.listener %X\n", listener);
			printf("DDDDDDDDDDDD 0.entry %X\n", entry);
		}

		entry.setData(new String("ObjectG"), cast(Entry) entry);

		//connect(entry, "changed"), changed, listener);
		//connect(entry, "delete-text"), deleteText, listener);
		//connect(entry, "insert-text"), insertText, listener);

		connect(entry, new String("activate"), &activate, listener);
		connect(entry, new String("copy-clipboard"), &copyClipboard, listener);
		connect(entry, new String("cut-clipboard"), &cutClipboard, listener);
		connect(entry, new String("delete-from-cursor"), &deleteFromCursor, listener);
		connect(entry, new String("insert-at-cursor"), &insertAtCursor, listener);
		connect(entry, new String("move-cursor"), &moveCursor, listener);
		connect(entry, new String("paste-clipboard"), &pasteClipboard, listener);
		connect(entry, new String("populate-popup"), &populatePopup, listener);
		connect(entry, new String("toggle-overwrite"), &toggleOverwrite, listener);
	}
	
	void addEntryActivateListener(EntryActivateListener listener, Entry entry, String action)
	{
		entry.setActionCommand(action);
		connect(entry, new String("activate"), &entryActivate, listener);
	}
	extern (C)
	{
		static bit entryActivate(GtkWidget * gtkwidget, EntryActivateListener listener)
		{
			Entry entry = new Entry(gtkwidget);
			return listener.activateCallback(entry, entry.getActionCommand());
		}
		static void changed(GtkWidget * gtkwidget, EntryChangeListener listener)
		{
			debug(events)
			{
				printf("DDDDDD 1.gtkwidget %X\n",gtkwidget);
				printf("DDDDDD 1.listener %X\n",listener);
				printf("DDDDDD 1.ObjectG.getObjectG(gtkwidget) %X\n",ObjectG.getObjectG(gtkwidget));
			}
			listener.changedCallback(new Entry(gtkwidget));
		}
		static void deleteText(GtkWidget * gtkwidget, gint startPos, gint endPos, EntryInsertListener listener)
		{
			debug(events)
			{
				printf("DDDDDD 2.gtkwidget %X\n",gtkwidget);
				printf("DDDDDD 2.start %X\n",startPos);
				printf("DDDDDD 2.end %X\n",endPos);
				printf("DDDDDD 2.listener %X\n",listener);
				printf("DDDDDD 2.object %X\n",ObjectG.getObjectG(gtkwidget));
			}
			listener.deleteTextCallback(new Entry(gtkwidget), startPos, endPos);
		}
		static void insertText(GtkWidget * gtkwidget, gchar * newText, gint newTextLength, gint * position, EntryInsertListener listener)
		{
			debug(events)
			{
				printf("DDDDDD 3.newText %s\n",newText);
				printf("DDDDDD 3.newTextLength %d\n",newTextLength);
				printf("DDDDDD 3.listener %X\n",listener);
				printf("DDDDDD 3.position %X\n",*position);
				printf("DDDDDD 3.gtkwidget %X\n",gtkwidget);
			}
			listener.insertTextCallback(new Entry(gtkwidget), String.newz(newText), newTextLength, *position);
		}

		static void activate(GtkWidget * gtkwidget, EntryListener listener)
		{
			Entry entry = new Entry(gtkwidget);
			listener.activateCallback(entry, entry.getActionCommand());
		}
		static void copyClipboard(GtkWidget * gtkwidget, EntryListener listener)
		{
			listener.copyClipboardCallback(new Entry(gtkwidget));
		}
		static void cutClipboard(GtkWidget * gtkwidget, EntryListener listener)
		{
			listener.cutClipboardCallback(new Entry(gtkwidget));
		}
		
		alias DeleteType GtkDeleteType;
		alias MovementStep GtkMovementStep;
		static void deleteFromCursor(GtkWidget * gtkwidget, GtkDeleteType arg1, gint arg2, EntryListener listener)
		{
			listener.deleteFromCursorCallback(new Entry(gtkwidget), arg1, arg2);
		}
		static void insertAtCursor(GtkWidget * gtkwidget, gchar * arg1, EntryListener listener)
		{
			listener.insertAtCursorCallback(new Entry(gtkwidget), String.newz(arg1));
		}
		static void moveCursor(GtkWidget * gtkwidget, GtkMovementStep arg1, gint arg2, gboolean arg3, EntryListener listener)
		{
			listener.moveCursorCallback(new Entry(gtkwidget), arg1, arg2, arg3);
		}
		static void pasteClipboard(GtkWidget * gtkwidget, EntryListener listener)
		{
			listener.pasteClipboardCallback(new Entry(gtkwidget));
		}
		static void populatePopup(GtkWidget * gtkwidget, GtkMenu * arg1, EntryListener listener)
		{
			listener.populatePopupCallback(new Entry(gtkwidget), new Menu(cast(GtkWidget*)arg1));
		}
		static void toggleOverwrite(GtkWidget * gtkwidget, EntryListener listener)
		{
			listener.toggleOverwriteCallback(new Entry(gtkwidget));
		}

	};

	
	/** \todo
	 * Adds a entry listener
	 * @param listener the listener
	 * @param treeView the Treeview
	 */
	void addTreeViewListener(TreeViewListener listener, TreeView treeView)
	{
		connect(treeView, new String("row-activated") , &rowActivated , listener);

		/+
		connect(entry, new String("activate"), &activate, listener);

		connect(treeView,"columns-changed","columns-changed", listener);
		connect(treeView,"cursor-changed","cursor-changed", listener);
		connect(treeView,"expand-collapse-cursor-row","expand-collapse-cursor-row", gboolean arg1, gboolean arg2, gboolean arg3, listener);
		connect(treeView, "move-cursor", "move-cursor", GtkMovementStep arg1, gint arg2, listener);
		connect(treeView,"row-activated" ,"row-activated" , GtkTreePath * arg1, GtktreeViewColumn * arg2, listener);
		connect(treeView, "row-collapsed" ,"row-collapsed" ,GtkTreeIter * arg1, GtkTreePath * arg2, listener);
		connect(treeView, "row-expanded" ,"row-expanded" ,GtkTreeIter * arg1, GtkTreePath * arg2, listener);
		connect(treeView, "select-all" ,"select-all" ,listener);
		connect(treeView, "select-cursor-parent" ,"select-cursor-parent" ,listener);
		connect(treeView, "select-cursor-row" ,"select-cursor-row" ,gboolean arg1, listener);
		connect(treeView, "set-scroll-adjustments" ,"set-scroll-adjustments" ,GtkAdjustment * arg1, GtkAdjustment * arg2, listener);
		connect(treeView, "start-interactive-search" ,"start-interactive-search" ,listener);
		connect(treeView, "test-collapse-row" ,"test-collapse-row" ,GtkTreeIter * arg1, GtkTreePath * arg2, listener);
		connect(treeView, "test-expand-row" ,"test-expand-row" ,GtkTreeIter * arg1, GtkTreePath * arg2, listener);
		gconnect(treeView, "toggle-cursor-row" ,"toggle-cursor-row" ,listener);
		connect(treeView, "unselect-all" ,"unselect-all" ,listener);
		+/
		
	};
	extern(C)
	{	
		static void rowActivated(GtkWidget* gtkTreeView, GtkTreePath* gtkTreePath, GtkTreeViewColumn* gtkTreeViewColumn, TreeViewListener listener)
		{
			TreeView treeView = new TreeView(gtkTreeView);
			TreePath path = new TreePath(gtkTreePath);
			TreeViewColumn column = new TreeViewColumn(gtkTreeViewColumn);
			listener.rowActivatedCallback(treeView, path, column);
		}

		/+
		"columns-changed" void user_function (GtkTreeView * treeview, gpointer user_data);
		"cursor-changed" void user_function (GtkTreeView * treeview, gpointer user_data);
		"expand-collapse-cursor-row" gboolean user_function (GtkTreeView * treeview, gboolean arg1, gboolean arg2, gboolean arg3, gpointer user_data);
		"move-cursor" gboolean user_function (GtkTreeView * treeview, GtkMovementStep arg1, gint arg2, gpointer user_data);
		"row-activated" void user_function (GtkTreeView * treeview, GtkTreePath * arg1, GtkTreeViewColumn * arg2, gpointer user_data);
		"row-collapsed" void user_function (GtkTreeView * treeview, GtkTreeIter * arg1, GtkTreePath * arg2, gpointer user_data);
		"row-expanded" void user_function (GtkTreeView * treeview, GtkTreeIter * arg1, GtkTreePath * arg2, gpointer user_data);
		"select-all" gboolean user_function (GtkTreeView * treeview, gpointer user_data);
		"select-cursor-parent" gboolean user_function (GtkTreeView * treeview, gpointer user_data);
		"select-cursor-row" gboolean user_function (GtkTreeView * treeview, gboolean arg1, gpointer user_data);
		"set-scroll-adjustments" void user_function (GtkTreeView * treeview, GtkAdjustment * arg1, GtkAdjustment * arg2, gpointer user_data);
		"start-interactive-search" gboolean user_function (GtkTreeView * treeview, gpointer user_data);
		"test-collapse-row" gboolean user_function (GtkTreeView * treeview, GtkTreeIter * arg1, GtkTreePath * arg2, gpointer user_data);
		"test-expand-row" gboolean user_function (GtkTreeView * treeview, GtkTreeIter * arg1, GtkTreePath * arg2, gpointer user_data);
		"toggle-cursor-row" gboolean user_function (GtkTreeView * treeview, gpointer user_data);
		"unselect-all" gboolean user_function (GtkTreeView * treeview, gpointer user_data);
		+/
	};
	

}
