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
 * inFile  = vte-Vte-PTY.html
 * outPack = vte
 * outFile = Pty
 * strct   = VtePty
 * realStrct=
 * ctorStrct=
 * clss    = Pty
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- InitableIF
 * prefixes:
 * 	- vte_pty_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.InitableIF
 * 	- gio.InitableT
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module vte.Pty;

public  import vtec.vtetypes;

private import vtec.vte;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.InitableIF;
private import gio.InitableT;



/**
 * The terminal widget uses these functions to start commands with new controlling
 * pseudo-terminals and to resize pseudo-terminals.
 */
public class Pty : InitableIF
{
	
	/** the main Gtk struct */
	protected VtePty* vtePty;
	
	
	public VtePty* getPtyStruct()
	{
		return vtePty;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)vtePty;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (VtePty* vtePty)
	{
		this.vtePty = vtePty;
	}
	
	// add the Initable capabilities
	mixin InitableT!(VtePty);
	
	/**
	 */
	
	/**
	 * Allocates a new pseudo-terminal.
	 * You can later use fork() or the g_spawn_async() family of functions
	 * to start a process on the PTY.
	 * If using fork(), you MUST call vte_pty_child_setup() in the child.
	 * If using g_spawn_async() and friends, you MUST either use
	 * vte_pty_child_setup() directly as the child setup function, or call
	 * vte_pty_child_setup() from your own child setup function supplied.
	 * When using vte_terminal_fork_command_full() with a custom child setup
	 * function, vte_pty_child_setup() will be called before the supplied
	 * function; you must not call it again.
	 * Also, you MUST pass the G_SPAWN_DO_NOT_REAP_CHILD flag.
	 * If GNOME PTY Helper is available and
	 * unless some of the VTE_PTY_NO_LASTLOG, VTE_PTY_NO_UTMP or
	 * VTE_PTY_NO_WTMP flags are passed in flags, the
	 * session is logged in the corresponding lastlog, utmp or wtmp
	 * system files. When passing VTE_PTY_NO_HELPER in flags, the
	 * GNOME PTY Helper is bypassed entirely.
	 * When passing VTE_PTY_NO_FALLBACK in flags,
	 * and opening a PTY using the PTY helper fails, there will
	 * be no fallback to allocate a PTY using Unix98 PTY functions.
	 * Params:
	 * flags = flags from VtePtyFlags
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (VtePtyFlags flags)
	{
		// VtePty * vte_pty_new (VtePtyFlags flags,  GError **error);
		GError* err = null;
		
		auto p = vte_pty_new(flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by vte_pty_new(flags, &err)");
		}
		this(cast(VtePty*) p);
	}
	
	/**
	 * Creates a new VtePty for the PTY master fd.
	 * No entry will be made in the lastlog, utmp or wtmp system files.
	 * Note that the newly created VtePty will take ownership of fd
	 * and close it on finalize.
	 * Params:
	 * fd = a file descriptor to the PTY. [transfer full]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int fd)
	{
		// VtePty * vte_pty_new_foreign (int fd,  GError **error);
		GError* err = null;
		
		auto p = vte_pty_new_foreign(fd, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by vte_pty_new_foreign(fd, &err)");
		}
		this(cast(VtePty*) p);
	}
	
	/**
	 * Cleans up the PTY, specifically any logging performed for the session.
	 * The file descriptor to the PTY master remains open.
	 */
	public void close()
	{
		// void vte_pty_close (VtePty *pty);
		vte_pty_close(vtePty);
	}
	
	/**
	 * FIXMEchpe
	 */
	public void childSetup()
	{
		// void vte_pty_child_setup (VtePty *pty);
		vte_pty_child_setup(vtePty);
	}
	
	/**
	 * Returns: the file descriptor of the PTY master in pty. The file descriptor belongs to pty and must not be closed. [transfer none]
	 */
	public int getFd()
	{
		// int vte_pty_get_fd (VtePty *pty);
		return vte_pty_get_fd(vtePty);
	}
	
	/**
	 * Attempts to resize the pseudo terminal's window size. If successful, the
	 * OS kernel will send SIGWINCH to the child process group.
	 * If setting the window size failed, error will be set to a GIOError.
	 * Params:
	 * rows = the desired number of rows
	 * columns = the desired number of columns
	 * Returns: TRUE on success, FALSE on failure with error filled in Since 0.26
	 * Throws: GException on failure.
	 */
	public int setSize(int rows, int columns)
	{
		// gboolean vte_pty_set_size (VtePty *pty,  int rows,  int columns,  GError **error);
		GError* err = null;
		
		auto p = vte_pty_set_size(vtePty, rows, columns, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Reads the pseudo terminal's window size.
	 * If getting the window size failed, error will be set to a GIOError.
	 * Params:
	 * rows = a location to store the number of rows, or NULL. [out][allow-none]
	 * columns = a location to store the number of columns, or NULL. [out][allow-none]
	 * Returns: TRUE on success, FALSE on failure with error filled in Since 0.26
	 * Throws: GException on failure.
	 */
	public int getSize(out int rows, out int columns)
	{
		// gboolean vte_pty_get_size (VtePty *pty,  int *rows,  int *columns,  GError **error);
		GError* err = null;
		
		auto p = vte_pty_get_size(vtePty, &rows, &columns, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Sets what value of the TERM environment variable to set just after forking.
	 * Params:
	 * emulation = the name of a terminal description, or NULL. [allow-none]
	 * Since 0.26
	 */
	public void setTerm(string emulation)
	{
		// void vte_pty_set_term (VtePty *pty,  const char *emulation);
		vte_pty_set_term(vtePty, Str.toStringz(emulation));
	}
	
	/**
	 * Tells the kernel whether the terminal is UTF-8 or not, in case it can make
	 * use of the info. Linux 2.6.5 or so defines IUTF8 to make the line
	 * discipline do multibyte backspace correctly.
	 * Params:
	 * utf8 = whether or not the pty is in UTF-8 mode
	 * Returns: TRUE on success, FALSE on failure with error filled in Since 0.26
	 * Throws: GException on failure.
	 */
	public int setUtf8(int utf8)
	{
		// gboolean vte_pty_set_utf8 (VtePty *pty,  gboolean utf8,  GError **error);
		GError* err = null;
		
		auto p = vte_pty_set_utf8(vtePty, utf8, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
