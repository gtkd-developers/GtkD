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

/*
 * Conversion parameters:
 * inFile  = GtkApplication.html
 * outPack = gtk
 * outFile = Application
 * strct   = GtkApplication
 * realStrct=
 * ctorStrct=
 * clss    = Application
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GioApplication
 * implements:
 * prefixes:
 * 	- gtk_application_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gio.Application : GioApplication = Application
 * 	- gtk.Window
 * structWrap:
 * 	- GList* -> ListG
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Application;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ListG;
private import gio.Application : GioApplication = Application;
private import gtk.Window;




/**
 * Description
 * GtkApplication is a class that handles many important aspects
 * of a GTK+ application in a convenient fashion, without enforcing
 * a one-size-fits-all application model.
 * Currently, GtkApplication handles GTK+ initialization, application
 * uniqueness, provides some basic scriptability by exporting 'actions',
 * and manages a list of toplevel windows whose life-cycle is automatically
 * tied to the life-cycle of your application.
 * $(DDOC_COMMENT example)
 */
public class Application : GioApplication
{
	
	/** the main Gtk struct */
	protected GtkApplication* gtkApplication;
	
	
	public GtkApplication* getGtkApplicationStruct()
	{
		return gtkApplication;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkApplication;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkApplication* gtkApplication)
	{
		if(gtkApplication is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkApplication);
		if( ptr !is null )
		{
			this = cast(Application)ptr;
			return;
		}
		super(cast(GApplication*)gtkApplication);
		this.gtkApplication = gtkApplication;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkApplication = cast(GtkApplication*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkApplication instance.
	 * This function calls g_type_init() for you. gtk_init() is called
	 * as soon as the application gets registered as the primary instance.
	 * The application id must be valid. See g_application_id_is_valid().
	 * Params:
	 * applicationId = the application id
	 * flags = the application flags
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string applicationId, GApplicationFlags flags)
	{
		// GtkApplication * gtk_application_new (const gchar *application_id,  GApplicationFlags flags);
		auto p = gtk_application_new(Str.toStringz(applicationId), flags);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_application_new(Str.toStringz(applicationId), flags)");
		}
		this(cast(GtkApplication*) p);
	}
	
	/**
	 * Adds a window from application.
	 * This call is equivalent to setting the "application"
	 * property of window to application.
	 * Normally, the connection between the application and the window
	 * will remain until the window is destroyed, but you can explicitly
	 * remove it with gtk_application_remove_window().
	 * GTK+ will keep the application running as long as it has
	 * any windows.
	 * Params:
	 * window = a GtkWindow
	 * Since 3.0
	 */
	public void addWindow(Window window)
	{
		// void gtk_application_add_window (GtkApplication *application,  GtkWindow *window);
		gtk_application_add_window(gtkApplication, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Remove a window from application.
	 * If window belongs to application then this call is equivalent to
	 * setting the "application" property of window to
	 * NULL.
	 * The application may stop running as a result of a call to this
	 * function.
	 * Params:
	 * window = a GtkWindow
	 * Since 3.0
	 */
	public void removeWindow(Window window)
	{
		// void gtk_application_remove_window (GtkApplication *application,  GtkWindow *window);
		gtk_application_remove_window(gtkApplication, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Gets a list of the GtkWindows associated with application.
	 * The list that is returned should not be modified in any way.
	 * Returns: a GList of GtkWindow. [element-type GtkWindow][transfer none] Since 3.0
	 */
	public ListG getWindows()
	{
		// GList * gtk_application_get_windows (GtkApplication *application);
		auto p = gtk_application_get_windows(gtkApplication);
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
}
