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


module atk.WindowT;

public  import gobject.Signals;
public  import gtkc.atk;
public  import gtkc.atktypes;
public  import gtkc.gdktypes;


/**
 * #AtkWindow should be implemented by the UI elements that represent
 * a top-level window, such as the main window of an application or
 * dialog.
 */
public template WindowT(TStruct)
{
	/** Get the main Gtk struct */
	public AtkWindow* getWindowStruct()
	{
		return cast(AtkWindow*)getStruct();
	}


	int[string] connectedSignals;

	void delegate(WindowIF)[] _onActivateListeners;
	@property void delegate(WindowIF)[] onActivateListeners()
	{
		return _onActivateListeners;
	}
	/**
	 * The signal #AtkWindow::activate is emitted when a window
	 * becomes the active window of the application or session.
	 *
	 * Since: 2.2
	 */
	void addOnActivate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "activate" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"activate",
				cast(GCallback)&callBackActivate,
				cast(void*)cast(WindowIF)this,
				null,
				connectFlags);
			connectedSignals["activate"] = 1;
		}
		_onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(AtkWindow* windowStruct, WindowIF _window)
	{
		foreach ( void delegate(WindowIF) dlg; _window.onActivateListeners )
		{
			dlg(_window);
		}
	}

	void delegate(WindowIF)[] _onCreateListeners;
	@property void delegate(WindowIF)[] onCreateListeners()
	{
		return _onCreateListeners;
	}
	/**
	 * The signal #AtkWindow::create is emitted when a new window
	 * is created.
	 *
	 * Since: 2.2
	 */
	void addOnCreate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "create" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"create",
				cast(GCallback)&callBackCreate,
				cast(void*)cast(WindowIF)this,
				null,
				connectFlags);
			connectedSignals["create"] = 1;
		}
		_onCreateListeners ~= dlg;
	}
	extern(C) static void callBackCreate(AtkWindow* windowStruct, WindowIF _window)
	{
		foreach ( void delegate(WindowIF) dlg; _window.onCreateListeners )
		{
			dlg(_window);
		}
	}

	void delegate(WindowIF)[] _onDeactivateListeners;
	@property void delegate(WindowIF)[] onDeactivateListeners()
	{
		return _onDeactivateListeners;
	}
	/**
	 * The signal #AtkWindow::deactivate is emitted when a window is
	 * no longer the active window of the application or session.
	 *
	 * Since: 2.2
	 */
	void addOnDeactivate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "deactivate" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"deactivate",
				cast(GCallback)&callBackDeactivate,
				cast(void*)cast(WindowIF)this,
				null,
				connectFlags);
			connectedSignals["deactivate"] = 1;
		}
		_onDeactivateListeners ~= dlg;
	}
	extern(C) static void callBackDeactivate(AtkWindow* windowStruct, WindowIF _window)
	{
		foreach ( void delegate(WindowIF) dlg; _window.onDeactivateListeners )
		{
			dlg(_window);
		}
	}

	void delegate(WindowIF)[] _onDestroyListeners;
	@property void delegate(WindowIF)[] onDestroyListeners()
	{
		return _onDestroyListeners;
	}
	/**
	 * The signal #AtkWindow::destroy is emitted when a window is
	 * destroyed.
	 *
	 * Since: 2.2
	 */
	void addOnDestroy(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "destroy" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"destroy",
				cast(GCallback)&callBackDestroy,
				cast(void*)cast(WindowIF)this,
				null,
				connectFlags);
			connectedSignals["destroy"] = 1;
		}
		_onDestroyListeners ~= dlg;
	}
	extern(C) static void callBackDestroy(AtkWindow* windowStruct, WindowIF _window)
	{
		foreach ( void delegate(WindowIF) dlg; _window.onDestroyListeners )
		{
			dlg(_window);
		}
	}

	void delegate(WindowIF)[] _onMaximizeListeners;
	@property void delegate(WindowIF)[] onMaximizeListeners()
	{
		return _onMaximizeListeners;
	}
	/**
	 * The signal #AtkWindow::maximize is emitted when a window
	 * is maximized.
	 *
	 * Since: 2.2
	 */
	void addOnMaximize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "maximize" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"maximize",
				cast(GCallback)&callBackMaximize,
				cast(void*)cast(WindowIF)this,
				null,
				connectFlags);
			connectedSignals["maximize"] = 1;
		}
		_onMaximizeListeners ~= dlg;
	}
	extern(C) static void callBackMaximize(AtkWindow* windowStruct, WindowIF _window)
	{
		foreach ( void delegate(WindowIF) dlg; _window.onMaximizeListeners )
		{
			dlg(_window);
		}
	}

	void delegate(WindowIF)[] _onMinimizeListeners;
	@property void delegate(WindowIF)[] onMinimizeListeners()
	{
		return _onMinimizeListeners;
	}
	/**
	 * The signal #AtkWindow::minimize is emitted when a window
	 * is minimized.
	 *
	 * Since: 2.2
	 */
	void addOnMinimize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "minimize" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"minimize",
				cast(GCallback)&callBackMinimize,
				cast(void*)cast(WindowIF)this,
				null,
				connectFlags);
			connectedSignals["minimize"] = 1;
		}
		_onMinimizeListeners ~= dlg;
	}
	extern(C) static void callBackMinimize(AtkWindow* windowStruct, WindowIF _window)
	{
		foreach ( void delegate(WindowIF) dlg; _window.onMinimizeListeners )
		{
			dlg(_window);
		}
	}

	void delegate(WindowIF)[] _onMoveListeners;
	@property void delegate(WindowIF)[] onMoveListeners()
	{
		return _onMoveListeners;
	}
	/**
	 * The signal #AtkWindow::move is emitted when a window
	 * is moved.
	 *
	 * Since: 2.2
	 */
	void addOnMove(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "move" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"move",
				cast(GCallback)&callBackMove,
				cast(void*)cast(WindowIF)this,
				null,
				connectFlags);
			connectedSignals["move"] = 1;
		}
		_onMoveListeners ~= dlg;
	}
	extern(C) static void callBackMove(AtkWindow* windowStruct, WindowIF _window)
	{
		foreach ( void delegate(WindowIF) dlg; _window.onMoveListeners )
		{
			dlg(_window);
		}
	}

	void delegate(WindowIF)[] _onResizeListeners;
	@property void delegate(WindowIF)[] onResizeListeners()
	{
		return _onResizeListeners;
	}
	/**
	 * The signal #AtkWindow::resize is emitted when a window
	 * is resized.
	 *
	 * Since: 2.2
	 */
	void addOnResize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "resize" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"resize",
				cast(GCallback)&callBackResize,
				cast(void*)cast(WindowIF)this,
				null,
				connectFlags);
			connectedSignals["resize"] = 1;
		}
		_onResizeListeners ~= dlg;
	}
	extern(C) static void callBackResize(AtkWindow* windowStruct, WindowIF _window)
	{
		foreach ( void delegate(WindowIF) dlg; _window.onResizeListeners )
		{
			dlg(_window);
		}
	}

	void delegate(WindowIF)[] _onRestoreListeners;
	@property void delegate(WindowIF)[] onRestoreListeners()
	{
		return _onRestoreListeners;
	}
	/**
	 * The signal #AtkWindow::restore is emitted when a window
	 * is restored.
	 *
	 * Since: 2.2
	 */
	void addOnRestore(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "restore" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"restore",
				cast(GCallback)&callBackRestore,
				cast(void*)cast(WindowIF)this,
				null,
				connectFlags);
			connectedSignals["restore"] = 1;
		}
		_onRestoreListeners ~= dlg;
	}
	extern(C) static void callBackRestore(AtkWindow* windowStruct, WindowIF _window)
	{
		foreach ( void delegate(WindowIF) dlg; _window.onRestoreListeners )
		{
			dlg(_window);
		}
	}
}
