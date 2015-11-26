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


module vte.Pty;

private import gio.Cancellable;
private import gio.InitableIF;
private import gio.InitableT;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import vtec.vte;
public  import vtec.vtetypes;


/** */
public class Pty : ObjectG, InitableIF
{
	/** the main Gtk struct */
	protected VtePty* vtePty;

	/** Get the main Gtk struct */
	public VtePty* getPtyStruct()
	{
		return vtePty;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)vtePty;
	}

	protected override void setStruct(GObject* obj)
	{
		vtePty = cast(VtePty*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (VtePty* vtePty, bool ownedRef = false)
	{
		this.vtePty = vtePty;
		super(cast(GObject*)vtePty, ownedRef);
	}

	// add the Initable capabilities
	mixin InitableT!(VtePty);


	public static GType getType()
	{
		return vte_pty_get_type();
	}

	/**
	 * Creates a new #VtePty for the PTY master @fd.
	 *
	 * No entry will be made in the lastlog, utmp or wtmp system files.
	 *
	 * Note that the newly created #VtePty will take ownership of @fd
	 * and close it on finalize.
	 *
	 * Params:
	 *     fd = a file descriptor to the PTY
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Return: a new #VtePty for @fd, or %NULL on error with @error filled in
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int fd, Cancellable cancellable)
	{
		GError* err = null;
		
		auto p = vte_pty_new_foreign_sync(fd, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_foreign_sync");
		}
		
		this(cast(VtePty*) p, true);
	}

	/**
	 * Allocates a new pseudo-terminal.
	 *
	 * You can later use fork() or the g_spawn_async() family of functions
	 * to start a process on the PTY.
	 *
	 * If using fork(), you MUST call vte_pty_child_setup() in the child.
	 *
	 * If using g_spawn_async() and friends, you MUST either use
	 * vte_pty_child_setup() directly as the child setup function, or call
	 * vte_pty_child_setup() from your own child setup function supplied.
	 *
	 * When using vte_terminal_spawn_sync() with a custom child setup
	 * function, vte_pty_child_setup() will be called before the supplied
	 * function; you must not call it again.
	 *
	 * Also, you MUST pass the %G_SPAWN_DO_NOT_REAP_CHILD flag.
	 *
	 * Params:
	 *     flags = flags from #VtePtyFlags
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Return: a new #VtePty, or %NULL on error with @error filled in
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(VtePtyFlags flags, Cancellable cancellable)
	{
		GError* err = null;
		
		auto p = vte_pty_new_sync(flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_sync");
		}
		
		this(cast(VtePty*) p, true);
	}

	/**
	 * FIXMEchpe
	 */
	public void childSetup()
	{
		vte_pty_child_setup(vtePty);
	}

	/**
	 * Return: the file descriptor of the PTY master in @pty. The
	 *     file descriptor belongs to @pty and must not be closed
	 */
	public int getFd()
	{
		return vte_pty_get_fd(vtePty);
	}

	/**
	 * Reads the pseudo terminal's window size.
	 *
	 * If getting the window size failed, @error will be set to a #GIOError.
	 *
	 * Params:
	 *     rows = a location to store the number of rows, or %NULL
	 *     columns = a location to store the number of columns, or %NULL
	 *
	 * Return: %TRUE on success, %FALSE on failure with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public bool getSize(out int rows, out int columns)
	{
		GError* err = null;
		
		auto p = vte_pty_get_size(vtePty, &rows, &columns, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Attempts to resize the pseudo terminal's window size.  If successful, the
	 * OS kernel will send #SIGWINCH to the child process group.
	 *
	 * If setting the window size failed, @error will be set to a #GIOError.
	 *
	 * Params:
	 *     rows = the desired number of rows
	 *     columns = the desired number of columns
	 *
	 * Return: %TRUE on success, %FALSE on failure with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public bool setSize(int rows, int columns)
	{
		GError* err = null;
		
		auto p = vte_pty_set_size(vtePty, rows, columns, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Tells the kernel whether the terminal is UTF-8 or not, in case it can make
	 * use of the info.  Linux 2.6.5 or so defines IUTF8 to make the line
	 * discipline do multibyte backspace correctly.
	 *
	 * Params:
	 *     utf8 = whether or not the pty is in UTF-8 mode
	 *
	 * Return: %TRUE on success, %FALSE on failure with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public bool setUtf8(bool utf8)
	{
		GError* err = null;
		
		auto p = vte_pty_set_utf8(vtePty, utf8, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
