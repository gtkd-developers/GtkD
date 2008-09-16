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

/*
 * Conversion parameters:
 * inFile  = GUnixInputStream.html
 * outPack = gio
 * outFile = UnixInputStream
 * strct   = GUnixInputStream
 * realStrct=
 * ctorStrct=GInputStream
 * clss    = UnixInputStream
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_unix_input_stream_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.UnixInputStream;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;





private import gio.InputStream;

/**
 * Description
 * GUnixInputStream implements GInputStream for reading from a
 * unix file descriptor, including asynchronous operations. The file
 * descriptor must be selectable, so it doesn't work with opened files.
 */
public class UnixInputStream : InputStream
{
	
	/** the main Gtk struct */
	protected GUnixInputStream* gUnixInputStream;
	
	
	public GUnixInputStream* getUnixInputStreamStruct()
	{
		return gUnixInputStream;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixInputStream;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GUnixInputStream* gUnixInputStream)
	{
		if(gUnixInputStream is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gUnixInputStream);
		if( ptr !is null )
		{
			this = cast(UnixInputStream)ptr;
			return;
		}
		super(cast(GInputStream*)gUnixInputStream);
		this.gUnixInputStream = gUnixInputStream;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GUnixInputStream for the given fd. If close_fd_at_close
	 * is TRUE, the file descriptor will be closed when the stream is closed.
	 * Params:
	 * fd =  unix file descriptor.
	 * closeFdAtClose =  a gboolean.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int fd, int closeFdAtClose)
	{
		// GInputStream* g_unix_input_stream_new (int fd,  gboolean close_fd_at_close);
		auto p = g_unix_input_stream_new(fd, closeFdAtClose);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_unix_input_stream_new(fd, closeFdAtClose)");
		}
		this(cast(GUnixInputStream*) p);
	}
}
