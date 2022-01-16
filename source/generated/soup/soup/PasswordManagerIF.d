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


module soup.PasswordManagerIF;

private import gio.Cancellable;
private import glib.MainContext;
private import soup.Auth;
private import soup.Message;
private import soup.c.functions;
public  import soup.c.types;


/** */
public interface PasswordManagerIF{
	/** Get the main Gtk struct */
	public SoupPasswordManager* getPasswordManagerStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return soup_password_manager_get_type();
	}

	/** */
	public void getPasswordsAsync(Message msg, Auth auth, bool retrying, MainContext asyncContext, Cancellable cancellable, SoupPasswordManagerCallback callback, void* userData);

	/** */
	public void getPasswordsSync(Message msg, Auth auth, Cancellable cancellable);
}
