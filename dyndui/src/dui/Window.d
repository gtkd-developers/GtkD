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

module dui.Window;

private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.Bin;
private import lib.gtk;

private import dglib.ErrorG;

private import dui.AccelGroup;
private import event.Event;
private import event.EventHandler;

/**
 * A top Level window
 */

// moved out ------------------------
	private import dui.OGTK;
	private import dui.Widget;
	private import ddi.Screen;
	private import dui.ListG;
	private import ddi.Pixbuf;

	private import dool.String;
// ----------------------------------

 public:
class Window : Bin
{
protected:
	
	alias EventHandler!(Window, Event) OnDelete;
	alias EventHandler!(Window, Event) OnDestroy;
	
	OnDelete onDelete;
	OnDestroy onDestroy;

	public:
	
	void addOnDelete(bit delegate(Window, Event) dlg)
	{
		if ( onDelete === null )
		{
			onDelete = new OnDelete(this, EventMask.NONE, new String("delete_event"));
		}
		onDelete += dlg;
	}

	void addOnDestroy(bit delegate(Window, Event) dlg)
	{
		if ( onDestroy === null )
		{
			onDestroy = new OnDestroy(this, EventMask.NONE, new String("destroy_event"));
		}
		onDestroy += dlg;
	}

	debug(status)
	{
		int complete(){return 10;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A top Level window";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_window_get_type();
	}

	override bit getAutoShow()
	{
		return false;
	}
	
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    	setAutoShow(false);
    }
    
    this(GtkWindow *gtkWindow)
    {
        this(cast(GtkWidget*)gtkWindow);
    }
    public:

	/**
	 * creates a new Window top level window
	 */
	this()
	{
        this(gtk_window_new (WindowType.TOPLEVEL));
	}
	
	/**
	 * creates a new Window top level window optionally with no frame
	 */
	this(bit hasFrame)
	{
		if ( hasFrame )
		{
			this(gtk_window_new (WindowType.TOPLEVEL));
		}
		else
		{
			this(gtk_window_new (WindowType.POPUP));
			setHasFrame(hasFrame);
		}
	}
	
	/**
	 * creates a new Window of a specific type
	 * @param windowType
	 */
	this(WindowType windowType)
	{
		this(gtk_window_new (windowType));
	}
	
	/**
	 * Creates a new window with a title
	 * @param title the window title
	 */
	this(char[] title)
	{
		this(new String(title));
	}
	/**
	 * Creates a new window with a title
	 * @param title the window title
	 */
	this(String title)
	{
        this();
		setTitle(title);
	}
	
	/**
	 * Sets the window title
	 */
	void setTitle(char[] title)
	{
		setTitle(new String(title));
	}
	void setTitle(String title)
	{
        gtk_window_set_title(cast(GtkWindow*)gtkW(), title.toStringz());
	}


	/**
	 * getTitle
	 * @return 
	 */
	String getTitle()
	{
		return String.newz(gtk_window_get_title(cast(GtkWindow*)gtkW()));
	}

	/**
	 * 
	 * @param wmclass_name
	 * @param wmclass_class
	 */
	void setWMClass(String wmclass_name, String wmclass_class)
	{
		gtk_window_set_wmclass(cast(GtkWindow*)gtkW(), wmclass_name.toStringz(), wmclass_class.toStringz());
	}

	/**
	 * setRole
	 * @param role
	 */
	void setRole(String role)
	{
		gtk_window_set_role(cast(GtkWindow*)gtkW(), role.toStringz());
	}

	/**
	 * getRole
	 * @return 
	 */
	String getRole()
	{
		return String.newz(gtk_window_get_role(cast(GtkWindow*)gtkW()));
	}
	
	/**
	 * addAccelGroup
	 * @param accel_group
	 */
	void addAccelGroup(AccelGroup accel_group)
	{
		gtk_window_add_accel_group(cast(GtkWindow*)gtkW(), accel_group.obj());
	}

	/**
	 * removeAccelGroup
	 * @param accel_group
	 */
	void removeAccelGroup(AccelGroup accel_group)
	{
		gtk_window_remove_accel_group(cast(GtkWindow*)gtkW(), accel_group.obj());
	}
	
	/**
	 * setPosition
	 * @param position
	 */
	void setPosition(WindowPosition position)
	{
		gtk_window_set_position(cast(GtkWindow*)gtkW(), position);
	}
	

	/**
	 * activateFocus
	 * @return 
	 */
	bit activateFocus()
	{
		return gtk_window_activate_focus(cast(GtkWindow*)gtkW()) == 0 ? false : true;
	}

	/**
	 * setFocus
	 * @param focus
	 */
	void setFocus(Widget focus)
	{
		gtk_window_set_focus(cast(GtkWindow*)gtkW(), focus.gtkW());
	}

	/**
	 * getFocus
	 * @return 
	 */
	Widget getFocus()
	{
		return new Widget(gtk_window_get_focus(cast(GtkWindow*)gtkW()));
	}

	/**
	 * setDefault
	 * @param default_widget
	 */
	void setDefault(Widget default_widget)
	{
		gtk_window_set_default(cast(GtkWindow*)gtkW(), default_widget.gtkW());
	}

	/**
	 * activateDefault
	 * @return 
	 */
	bit activateDefault()
	{
		return gtk_window_activate_default(cast(GtkWindow*)gtkW()) == 0 ? false : true;
	}


	/**
	 * setTransientFor
	 * @param parent
	 */
	void setTransientFor(Window parent)
	{
		gtk_window_set_transient_for(cast(GtkWindow*)gtkW(), cast(GtkWindow*)parent.gtkW());
	}
	

	/**
	 * getTransientFor
	 * @return 
	 */
	Window getTransientFor()
	{
		return new Window(gtk_window_get_transient_for(cast(GtkWindow*)gtkW()));
	}


	/+
	/** todo */	
	void setTypeHint(WindowTypeHint hint)
	{
		gtk_window_set_type_hint(cast(GtkWindow*)gtkW(), hint);
	}
	+/	
	/+
	/** todo */
	GdkWindowTypeHint gtk_window_get_type_hint(cast(GtkWindow*)gtkW());
	+/
	

	/**
	 * setSkipTaskbarHint
	 * @param setting
	 */
	void setSkipTaskbarHint(bit setting)
	{
		gtk_window_set_skip_taskbar_hint(cast(GtkWindow*)gtkW(), setting);
	}

	/**
	 * getSkipTaskbarHint
	 * @return 
	 */
	bit getSkipTaskbarHint()
	{
		return gtk_window_get_skip_taskbar_hint(cast(GtkWindow*)gtkW()) == 0 ? false : true;
	}

	/**
	 * setSkipPagerHint
	 * @param setting
	 */
	void setSkipPagerHint(bit setting)
	{
		gtk_window_set_skip_pager_hint(cast(GtkWindow*)gtkW(), setting);
	}

	/**
	 * getSkipPagerHint
	 * @return 
	 */
	bit getSkipPagerHint()
	{
		return gtk_window_get_skip_pager_hint(cast(GtkWindow*)gtkW()) == 0 ? false : true;
	}

	/**
	 * setDesctroyWithParen
	 * @param setting
	 */
	void setDesctroyWithParen(bit setting)
	{
		gtk_window_set_destroy_with_parent(cast(GtkWindow*)gtkW(), setting);
	}

	/**
	 * getDestroyWithParent
	 * @return 
	 */
	bit getDestroyWithParent()
	{
		return gtk_window_get_destroy_with_parent(cast(GtkWindow*)gtkW()) == 0 ? false : true;
	}


	/**
	 * setResizable
	 * @param resizable
	 */
	void setResizable(bit resizable)
	{
		gtk_window_set_resizable(cast(GtkWindow*)gtkW(), resizable);
	}

	/**
	 * getResizable
	 * @return 
	 */
	bit getResizable()
	{
		return gtk_window_get_resizable(cast(GtkWindow*)gtkW()) == 0 ? false : true;
	}


	/**
	 * setGravity
	 * @param gravity
	 */
	void setGravity(Gravity gravity)
	{
		gtk_window_set_gravity(cast(GtkWindow*)gtkW(), gravity);
	}

	/**
	 * getGravity
	 * @return 
	 */
	Gravity getGravity()
	{
		return gtk_window_get_gravity(cast(GtkWindow*)gtkW());
	}

	
	/**
	 * setGeometryHints
	 */
	void setGeometryHints(Widget geometry_widget, GdkGeometry * geometry, GdkWindowHints geom_mask)
	{
		gtk_window_set_geometry_hints(cast(GtkWindow*)gtkW(), geometry_widget.gtkW(), geometry, geom_mask);
	}
	

	/**
	 * setScreen
	 * @param screen
	 */
	void setScreen(Screen screen)
	{
		gtk_window_set_screen(cast(GtkWindow*)gtkW(), screen.gdkScreen());
	}

	/**
	 * getScreen
	 * @return 
	 */
	Screen getScreen()
	{
		return new Screen(gtk_window_get_screen(cast(GtkWindow*)gtkW()));
	}


	/**
	 * setHasFrame
	 * gtk_window_set_has_frame () must be called before realizing the window_
	 * @param setting
	 */
	void setHasFrame(bit setting)
	{
		gtk_window_set_has_frame(cast(GtkWindow*)gtkW(), setting);
	}

	/**
	 * getHasFrame
	 * @return 
	 */
	bit getHasFrame()
	{
		return gtk_window_get_has_frame(cast(GtkWindow*)gtkW()) == 0 ? false : true;
	}

	/**
	 * setFrameDimensions
	 * @param left
	 * @param top
	 * @param right
	 * @param bottom
	 */
	void setFrameDimensions(gint left, gint top, gint right, gint bottom)
	{
		gtk_window_set_frame_dimensions(cast(GtkWindow*)gtkW(), left, top, right, bottom);
	}

	/**
	 * getFrameDimensions
	 * @param left
	 * @param top
	 * @param right
	 * @param bottom
	 */
	void getFrameDimensions(gint * left, gint * top, gint * right, gint * bottom)
	{
		gtk_window_get_frame_dimensions(cast(GtkWindow*)gtkW(), left, top, right, bottom);
	}

	/**
	 * setDecorated
	 * @param setting
	 */
	void setDecorated(gboolean setting)
	{
		gtk_window_set_decorated(cast(GtkWindow*)gtkW(), setting);
	}

	/**
	 * getDecorated
	 * @return 
	 */
	bit getDecorated()
	{
		return gtk_window_get_decorated(cast(GtkWindow*)gtkW()) == 0 ? false : true;
	}

	
	/**
	 * set icon list
	 * @param ogtks the arrays of gtk objects
	 */
	void setIconList(OGTK[] ogtks)
	{
		setIconList(new ListG(ogtks));
	}

	/**
	 * set icon list
	 * @param list 
	 */
	void setIconList(ListG list)
	{
		gtk_window_set_icon_list(cast(GtkWindow*)gtkW(), list.obj());
	}

	
	/**
	 * get icons list
	 * @return a new ListG
	 */
	ListG getIconsList()
	{
		return new ListG(gtk_window_get_icon_list(cast(GtkWindow*)gtkW()));
	}
	


	/**
	 * setIcon
	 * @param icon
	 */
	void setIcon(Pixbuf icon)
	{
		gtk_window_set_icon(cast(GtkWindow*)gtkW(), icon.gdkP());
	}

	/**
	 * setIconFromFile
	 * @param filename
	 * @param err
	 * @return 
	 */
	bit setIconFromFile(String filename, GError * * err)
	{
		return gtk_window_set_icon_from_file(cast(GtkWindow*)gtkW(), filename.toStringz(), err) == 0 ? false : true;
	}

	

	/**
	 * getIcon
	 * @return 
	 */
	Pixbuf getIcon()
	{
		return new Pixbuf(gtk_window_get_icon(cast(GtkWindow*)gtkW()));
	}
	
	
	/**
	 * setDefaultIconList
	 * @param list the icon list
	 */
	void setDefaultIconList(ListG list)
	{
		gtk_window_set_default_icon_list(list.obj());
	}
	
	
	/**
	 * getDefaultIconList
	 * @return a new ListG
	 */
	ListG getDefaultIconList()
	{
		return new ListG(gtk_window_get_default_icon_list());
	}
	


	/**
	 * setDefaultIconFromFile
	 * @param filename
	 * @param err
	 * @return 
	 */
	bit setDefaultIconFromFile(String filename, GError * * err)
	{
		return gtk_window_set_default_icon_from_file(filename.toStringz(), err) == 0 ? false : true;
	}

	/**
	 * setAutpStartupNotification
	 * @param setting
	 */
	static void setAutpStartupNotification(bit setting)
	{
		gtk_window_set_auto_startup_notification(setting);
	}
	
	
	/**
	 * Sets the modal.
	 * If window is set modal, input will be grabbed when show and released when hide 
	 * @param modal
	 */
	void setModal(bit modal)
	{
		gtk_window_set_modal(cast(GtkWindow*)gtkW(), modal);
	}
	
	/**
	 * tests if this window is modal
	 * @return true if the window is modal
	 */
	bit getModal()
	{
		return gtk_window_get_modal(cast(GtkWindow*)gtkW()) == 0 ? false : true;
	}
	
	
	/**
	 * List top levels
	 * @return a new ListG
	 */
	ListG listTopLevels()
	{
		return new ListG(gtk_window_list_toplevels());
	}
	

	/**
	 * addMnemonic
	 * @param keyval
	 * @param target
	 */
	void addMnemonic(guint keyval, Widget target)
	{
		gtk_window_add_mnemonic(cast(GtkWindow*)gtkW(), keyval, target.gtkW());
	}

	/**
	 * removeMnemonic
	 * @param keyval
	 * @param target
	 */
	void removeMnemonic(guint keyval, Widget target)
	{
		gtk_window_remove_mnemonic(cast(GtkWindow*)gtkW(), keyval, target.gtkW());
	}

	/**
	 * mnemonicActivate
	 * @param keyval
	 * @param modifier
	 * @return 
	 */
	bit mnemonicActivate(guint keyval, ModifierType modifier)
	{
		return gtk_window_mnemonic_activate(cast(GtkWindow*)gtkW(), keyval, modifier) == 0 ? false : true;
	}

	/**
	 * setMnemonicModifier
	 * @param modifier
	 */
	void setMnemonicModifier(ModifierType modifier)
	{
		gtk_window_set_mnemonic_modifier(cast(GtkWindow*)gtkW(), modifier);
	}

	/**
	 * getMnemonicModifier
	 * @return ModifierType
	 */
	ModifierType getMnemonicModifier()
	{
		return gtk_window_get_mnemonic_modifier(cast(GtkWindow*)gtkW());
	}


	/**
	 * present
	 */
	void present()
	{
		gtk_window_present(cast(GtkWindow*)gtkW());
	}

	/**
	 * iconify
	 */
	void iconify()
	{
		gtk_window_iconify(cast(GtkWindow*)gtkW());
	}

	/**
	 * deiconify
	 */
	void deiconify()
	{
		gtk_window_deiconify(cast(GtkWindow*)gtkW());
	}

	/**
	 * stick
	 */
	void stick()
	{
		gtk_window_stick(cast(GtkWindow*)gtkW());
	}

	/**
	 * unstick
	 */
	void unstick()
	{
		gtk_window_unstick(cast(GtkWindow*)gtkW());
	}

	/**
	 * maximize
	 */
	void maximize()
	{
		gtk_window_maximize(cast(GtkWindow*)gtkW());
	}

	/**
	 * unmaximize
	 */
	void unmaximize()
	{
		gtk_window_unmaximize(cast(GtkWindow*)gtkW());
	}

	/**
	 * fullScreen
	 */
	void fullScreen()
	{
		gtk_window_fullscreen(cast(GtkWindow*)gtkW());
	}

	/**
	 * unfullScreen
	 */
	void unfullScreen()
	{
		gtk_window_unfullscreen(cast(GtkWindow*)gtkW());
	}

	/**
	 * resizeDrag
	 * @param edge
	 * @param button
	 * @param root_x
	 * @param root_y
	 * @param timestamp
	 */
	void resizeDrag(WindowEdge edge, gint button, gint root_x, gint root_y, guint32 timestamp)
	{
		gtk_window_begin_resize_drag(cast(GtkWindow*)gtkW(), edge, button, root_x, root_y, timestamp);
	}
	
	/**
	 * beginModeDrag
	 * @param button
	 * @param root_x
	 * @param root_y
	 * @param timestamp
	 */
	void beginModeDrag(gint button, gint root_x, gint root_y, guint32 timestamp)
	{
		gtk_window_begin_move_drag(cast(GtkWindow*)gtkW(), button, root_x, root_y, timestamp);
	}

	// Set initial default size of the window (does not constrain user
	// resize operations)
	//

	/**
	 * Sets the default size for this window
	 * @param width 
	 * @param height
	 */
	void setDefaultSize(gint width, gint height)
	{
		gtk_window_set_default_size(cast(GtkWindow*)gtkW(), width, height);
	}
	
	/**
	 * Gets the default size for this window
	 * @param width
	 * @param height
	 */
	void getDefaultSize(out gint width, out gint height)
	{
		gtk_window_get_default_size(cast(GtkWindow*)gtkW(), &width, &height);
	}
	
	/**
	 * resize
	 * @param width
	 * @param height
	 */
	void resize(gint width, gint height)
	{
		gtk_window_resize(cast(GtkWindow*)gtkW(), width, height);
	}
	
	/**
	 * getSize
	 * @param width
	 * @param height
	 */
	void getSize(gint * width, gint * height)
	{
		gtk_window_get_size(cast(GtkWindow*)gtkW(), width, height);
	}
	
	/**
	 * move
	 * @param x
	 * @param y
	 */
	void move(gint x, gint y)
	{
		gtk_window_move(cast(GtkWindow*)gtkW(), x, y);
	}
	
	/**
	 * getPosition
	 * @param root_x
	 * @param root_y
	 */
	void getPosition(gint * root_x, gint * root_y)
	{
		gtk_window_get_position(cast(GtkWindow*)gtkW(), root_x, root_y);
	}
	
	/**
	 * parseGeometry
	 * @param geometry
	 * @return 
	 */
	bit parseGeometry(String geometry)
	{
		return gtk_window_parse_geometry(cast(GtkWindow*)gtkW(), geometry.toStringz()) == 0 ? false : true;
	}

	/// Ignore this unless you are writing a GUI builder
	
	/**
	 * reshowWithInitialSize
	 */
	void reshowWithInitialSize()
	{
		gtk_window_reshow_with_initial_size(cast(GtkWindow*)gtkW());
	}

};
