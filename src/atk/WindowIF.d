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


module atk.WindowIF;

private import gobject.Signals;
private import gtkc.atk;
public  import gtkc.atktypes;
public  import gtkc.gdktypes;


/**
 * #AtkWindow should be implemented by the UI elements that represent
 * a top-level window, such as the main window of an application or
 * dialog.
 */
public interface WindowIF{
	/** Get the main Gtk struct */
	public AtkWindow* getWindowStruct();

	/** the main Gtk struct as a void* */
	protected void* getStruct();

	/**
	 */
	@property void delegate(WindowIF)[] onActivateListeners();
	/**
	 * The signal #AtkWindow::activate is emitted when a window
	 * becomes the active window of the application or session.
	 *
	 * Since: 2.2
	 */
	void addOnActivate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	@property void delegate(WindowIF)[] onCreateListeners();
	/**
	 * The signal #AtkWindow::create is emitted when a new window
	 * is created.
	 *
	 * Since: 2.2
	 */
	void addOnCreate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	@property void delegate(WindowIF)[] onDeactivateListeners();
	/**
	 * The signal #AtkWindow::deactivate is emitted when a window is
	 * no longer the active window of the application or session.
	 *
	 * Since: 2.2
	 */
	void addOnDeactivate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	@property void delegate(WindowIF)[] onDestroyListeners();
	/**
	 * The signal #AtkWindow::destroy is emitted when a window is
	 * destroyed.
	 *
	 * Since: 2.2
	 */
	void addOnDestroy(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	@property void delegate(WindowIF)[] onMaximizeListeners();
	/**
	 * The signal #AtkWindow::maximize is emitted when a window
	 * is maximized.
	 *
	 * Since: 2.2
	 */
	void addOnMaximize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	@property void delegate(WindowIF)[] onMinimizeListeners();
	/**
	 * The signal #AtkWindow::minimize is emitted when a window
	 * is minimized.
	 *
	 * Since: 2.2
	 */
	void addOnMinimize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	@property void delegate(WindowIF)[] onMoveListeners();
	/**
	 * The signal #AtkWindow::move is emitted when a window
	 * is moved.
	 *
	 * Since: 2.2
	 */
	void addOnMove(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	@property void delegate(WindowIF)[] onResizeListeners();
	/**
	 * The signal #AtkWindow::resize is emitted when a window
	 * is resized.
	 *
	 * Since: 2.2
	 */
	void addOnResize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	@property void delegate(WindowIF)[] onRestoreListeners();
	/**
	 * The signal #AtkWindow::restore is emitted when a window
	 * is restored.
	 *
	 * Since: 2.2
	 */
	void addOnRestore(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

}
