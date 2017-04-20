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
public  import std.algorithm;


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


	protected class OnActivateDelegateWrapper
	{
		static OnActivateDelegateWrapper[] listeners;
		void delegate(WindowIF) dlg;
		gulong handlerId;
		
		this(void delegate(WindowIF) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnActivateDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The signal #AtkWindow::activate is emitted when a window
	 * becomes the active window of the application or session.
	 *
	 * Since: 2.2
	 */
	gulong addOnActivate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnActivateDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackActivateDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackActivate(AtkWindow* windowStruct, OnActivateDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackActivateDestroy(OnActivateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnCreateDelegateWrapper
	{
		static OnCreateDelegateWrapper[] listeners;
		void delegate(WindowIF) dlg;
		gulong handlerId;
		
		this(void delegate(WindowIF) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnCreateDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The signal #AtkWindow::create is emitted when a new window
	 * is created.
	 *
	 * Since: 2.2
	 */
	gulong addOnCreate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnCreateDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"create",
			cast(GCallback)&callBackCreate,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackCreateDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackCreate(AtkWindow* windowStruct, OnCreateDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackCreateDestroy(OnCreateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnDeactivateDelegateWrapper
	{
		static OnDeactivateDelegateWrapper[] listeners;
		void delegate(WindowIF) dlg;
		gulong handlerId;
		
		this(void delegate(WindowIF) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnDeactivateDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The signal #AtkWindow::deactivate is emitted when a window is
	 * no longer the active window of the application or session.
	 *
	 * Since: 2.2
	 */
	gulong addOnDeactivate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnDeactivateDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"deactivate",
			cast(GCallback)&callBackDeactivate,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackDeactivateDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackDeactivate(AtkWindow* windowStruct, OnDeactivateDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackDeactivateDestroy(OnDeactivateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnDestroyDelegateWrapper
	{
		static OnDestroyDelegateWrapper[] listeners;
		void delegate(WindowIF) dlg;
		gulong handlerId;
		
		this(void delegate(WindowIF) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnDestroyDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The signal #AtkWindow::destroy is emitted when a window is
	 * destroyed.
	 *
	 * Since: 2.2
	 */
	gulong addOnDestroy(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnDestroyDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"destroy",
			cast(GCallback)&callBackDestroy,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackDestroyDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackDestroy(AtkWindow* windowStruct, OnDestroyDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackDestroyDestroy(OnDestroyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMaximizeDelegateWrapper
	{
		static OnMaximizeDelegateWrapper[] listeners;
		void delegate(WindowIF) dlg;
		gulong handlerId;
		
		this(void delegate(WindowIF) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnMaximizeDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The signal #AtkWindow::maximize is emitted when a window
	 * is maximized.
	 *
	 * Since: 2.2
	 */
	gulong addOnMaximize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMaximizeDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"maximize",
			cast(GCallback)&callBackMaximize,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMaximizeDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMaximize(AtkWindow* windowStruct, OnMaximizeDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackMaximizeDestroy(OnMaximizeDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMinimizeDelegateWrapper
	{
		static OnMinimizeDelegateWrapper[] listeners;
		void delegate(WindowIF) dlg;
		gulong handlerId;
		
		this(void delegate(WindowIF) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnMinimizeDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The signal #AtkWindow::minimize is emitted when a window
	 * is minimized.
	 *
	 * Since: 2.2
	 */
	gulong addOnMinimize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMinimizeDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"minimize",
			cast(GCallback)&callBackMinimize,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMinimizeDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMinimize(AtkWindow* windowStruct, OnMinimizeDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackMinimizeDestroy(OnMinimizeDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMoveDelegateWrapper
	{
		static OnMoveDelegateWrapper[] listeners;
		void delegate(WindowIF) dlg;
		gulong handlerId;
		
		this(void delegate(WindowIF) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnMoveDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The signal #AtkWindow::move is emitted when a window
	 * is moved.
	 *
	 * Since: 2.2
	 */
	gulong addOnMove(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMoveDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"move",
			cast(GCallback)&callBackMove,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMoveDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMove(AtkWindow* windowStruct, OnMoveDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackMoveDestroy(OnMoveDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnResizeDelegateWrapper
	{
		static OnResizeDelegateWrapper[] listeners;
		void delegate(WindowIF) dlg;
		gulong handlerId;
		
		this(void delegate(WindowIF) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnResizeDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The signal #AtkWindow::resize is emitted when a window
	 * is resized.
	 *
	 * Since: 2.2
	 */
	gulong addOnResize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnResizeDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"resize",
			cast(GCallback)&callBackResize,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackResizeDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackResize(AtkWindow* windowStruct, OnResizeDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackResizeDestroy(OnResizeDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnRestoreDelegateWrapper
	{
		static OnRestoreDelegateWrapper[] listeners;
		void delegate(WindowIF) dlg;
		gulong handlerId;
		
		this(void delegate(WindowIF) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnRestoreDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The signal #AtkWindow::restore is emitted when a window
	 * is restored.
	 *
	 * Since: 2.2
	 */
	gulong addOnRestore(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnRestoreDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"restore",
			cast(GCallback)&callBackRestore,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackRestoreDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackRestore(AtkWindow* windowStruct, OnRestoreDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackRestoreDestroy(OnRestoreDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
