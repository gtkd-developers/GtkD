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
 * inFile  = gtk3-Filesystem-utilities.html
 * outPack = gtk
 * outFile = MountOperation
 * strct   = GtkMountOperation
 * realStrct=
 * ctorStrct=GMountOperation
 * clss    = MountOperation
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GioMountOperation
 * implements:
 * prefixes:
 * 	- gtk_mount_operation_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.MountOperation : GioMountOperation = MountOperation
 * 	- gdk.Screen
 * 	- gtk.Window
 * structWrap:
 * 	- GdkScreen* -> Screen
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.MountOperation;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.MountOperation : GioMountOperation = MountOperation;
private import gdk.Screen;
private import gtk.Window;




/**
 * The functions and objects described here make working with GTK+ and
 * GIO more convenient.
 *
 * GtkMountOperation is needed when mounting volumes:
 * It is an implementation of GMountOperation that can be used with
 * GIO functions for mounting volumes such as
 * g_file_mount_enclosing_volume(), g_file_mount_mountable(),
 * g_volume_mount(), g_mount_unmount_with_operation() and others.
 *
 * When necessary, GtkMountOperation shows dialogs to ask for
 * passwords, questions or show processes blocking unmount.
 *
 * gtk_show_uri() is a convenient way to launch applications for URIs.
 *
 * Another object that is worth mentioning in this context is
 * GdkAppLaunchContext, which provides visual feedback when lauching
 * applications.
 */
public class MountOperation : GioMountOperation
{
	
	/** the main Gtk struct */
	protected GtkMountOperation* gtkMountOperation;
	
	
	public GtkMountOperation* getGtkMountOperationStruct()
	{
		return gtkMountOperation;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMountOperation;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMountOperation* gtkMountOperation)
	{
		super(cast(GMountOperation*)gtkMountOperation);
		this.gtkMountOperation = gtkMountOperation;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkMountOperation = cast(GtkMountOperation*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkMountOperation
	 * Since 2.14
	 * Params:
	 * parent = transient parent of the window, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Window parent)
	{
		// GMountOperation * gtk_mount_operation_new (GtkWindow *parent);
		auto p = gtk_mount_operation_new((parent is null) ? null : parent.getWindowStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_mount_operation_new((parent is null) ? null : parent.getWindowStruct())");
		}
		this(cast(GtkMountOperation*) p);
	}
	
	/**
	 * Returns whether the GtkMountOperation is currently displaying
	 * a window.
	 * Since 2.14
	 * Returns: TRUE if op is currently displaying a window
	 */
	public int isShowing()
	{
		// gboolean gtk_mount_operation_is_showing (GtkMountOperation *op);
		return gtk_mount_operation_is_showing(gtkMountOperation);
	}
	
	/**
	 * Sets the transient parent for windows shown by the
	 * GtkMountOperation.
	 * Since 2.14
	 * Params:
	 * parent = transient parent of the window, or NULL. [allow-none]
	 */
	public void setParent(Window parent)
	{
		// void gtk_mount_operation_set_parent (GtkMountOperation *op,  GtkWindow *parent);
		gtk_mount_operation_set_parent(gtkMountOperation, (parent is null) ? null : parent.getWindowStruct());
	}
	
	/**
	 * Gets the transient parent used by the GtkMountOperation
	 * Since 2.14
	 * Returns: the transient parent for windows shown by op. [transfer none]
	 */
	public Window getParent()
	{
		// GtkWindow * gtk_mount_operation_get_parent (GtkMountOperation *op);
		auto p = gtk_mount_operation_get_parent(gtkMountOperation);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GtkWindow*) p);
	}
	
	/**
	 * Sets the screen to show windows of the GtkMountOperation on.
	 * Since 2.14
	 * Params:
	 * screen = a GdkScreen
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_mount_operation_set_screen (GtkMountOperation *op,  GdkScreen *screen);
		gtk_mount_operation_set_screen(gtkMountOperation, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Gets the screen on which windows of the GtkMountOperation
	 * will be shown.
	 * Since 2.14
	 * Returns: the screen on which windows of op are shown. [transfer none]
	 */
	public Screen getScreen()
	{
		// GdkScreen * gtk_mount_operation_get_screen (GtkMountOperation *op);
		auto p = gtk_mount_operation_get_screen(gtkMountOperation);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}
	
	/**
	 * This is a convenience function for launching the default application
	 * to show the uri. The uri must be of a form understood by GIO (i.e. you
	 * need to install gvfs to get support for uri schemes such as http://
	 * or ftp://, as only local files are handled by GIO itself).
	 * Typical examples are
	 * file:///home/gnome/pict.jpg
	 * http://www.gnome.org
	 * mailto:me@gnome.org
	 * Ideally the timestamp is taken from the event triggering
	 * the gtk_show_uri() call. If timestamp is not known you can take
	 * GDK_CURRENT_TIME.
	 * This function can be used as a replacement for gnome_vfs_url_show()
	 * and gnome_url_show().
	 * Since 2.14
	 * Params:
	 * screen = screen to show the uri on
	 * or NULL for the default screen. [allow-none]
	 * uri = the uri to show
	 * timestamp = a timestamp to prevent focus stealing
	 * Returns: TRUE on success, FALSE on error
	 * Throws: GException on failure.
	 */
	public static int showUri(Screen screen, string uri, uint timestamp)
	{
		// gboolean gtk_show_uri (GdkScreen *screen,  const gchar *uri,  guint32 timestamp,  GError **error);
		GError* err = null;
		
		auto p = gtk_show_uri((screen is null) ? null : screen.getScreenStruct(), Str.toStringz(uri), timestamp, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
