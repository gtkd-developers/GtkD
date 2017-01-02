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
		void delegate(WindowIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(WindowIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnActivateDelegateWrapper[] onActivateListeners;

	/**
	 * The signal #AtkWindow::activate is emitted when a window
	 * becomes the active window of the application or session.
	 *
	 * Since: 2.2
	 */
	gulong addOnActivate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onActivateListeners ~= new OnActivateDelegateWrapper(dlg, 0, connectFlags);
		onActivateListeners[onActivateListeners.length - 1].handlerId = Signals.connectData(
			this,
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)onActivateListeners[onActivateListeners.length - 1],
			cast(GClosureNotify)&callBackActivateDestroy,
			connectFlags);
		return onActivateListeners[onActivateListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackActivate(AtkWindow* windowStruct,OnActivateDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackActivateDestroy(OnActivateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnActivate(wrapper);
	}

	protected void internalRemoveOnActivate(OnActivateDelegateWrapper source)
	{
		foreach(index, wrapper; onActivateListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onActivateListeners[index] = null;
				onActivateListeners = std.algorithm.remove(onActivateListeners, index);
				break;
			}
		}
	}
	

	protected class OnCreateDelegateWrapper
	{
		void delegate(WindowIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(WindowIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnCreateDelegateWrapper[] onCreateListeners;

	/**
	 * The signal #AtkWindow::create is emitted when a new window
	 * is created.
	 *
	 * Since: 2.2
	 */
	gulong addOnCreate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onCreateListeners ~= new OnCreateDelegateWrapper(dlg, 0, connectFlags);
		onCreateListeners[onCreateListeners.length - 1].handlerId = Signals.connectData(
			this,
			"create",
			cast(GCallback)&callBackCreate,
			cast(void*)onCreateListeners[onCreateListeners.length - 1],
			cast(GClosureNotify)&callBackCreateDestroy,
			connectFlags);
		return onCreateListeners[onCreateListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackCreate(AtkWindow* windowStruct,OnCreateDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackCreateDestroy(OnCreateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnCreate(wrapper);
	}

	protected void internalRemoveOnCreate(OnCreateDelegateWrapper source)
	{
		foreach(index, wrapper; onCreateListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onCreateListeners[index] = null;
				onCreateListeners = std.algorithm.remove(onCreateListeners, index);
				break;
			}
		}
	}
	

	protected class OnDeactivateDelegateWrapper
	{
		void delegate(WindowIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(WindowIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDeactivateDelegateWrapper[] onDeactivateListeners;

	/**
	 * The signal #AtkWindow::deactivate is emitted when a window is
	 * no longer the active window of the application or session.
	 *
	 * Since: 2.2
	 */
	gulong addOnDeactivate(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDeactivateListeners ~= new OnDeactivateDelegateWrapper(dlg, 0, connectFlags);
		onDeactivateListeners[onDeactivateListeners.length - 1].handlerId = Signals.connectData(
			this,
			"deactivate",
			cast(GCallback)&callBackDeactivate,
			cast(void*)onDeactivateListeners[onDeactivateListeners.length - 1],
			cast(GClosureNotify)&callBackDeactivateDestroy,
			connectFlags);
		return onDeactivateListeners[onDeactivateListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDeactivate(AtkWindow* windowStruct,OnDeactivateDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackDeactivateDestroy(OnDeactivateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDeactivate(wrapper);
	}

	protected void internalRemoveOnDeactivate(OnDeactivateDelegateWrapper source)
	{
		foreach(index, wrapper; onDeactivateListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDeactivateListeners[index] = null;
				onDeactivateListeners = std.algorithm.remove(onDeactivateListeners, index);
				break;
			}
		}
	}
	

	protected class OnDestroyDelegateWrapper
	{
		void delegate(WindowIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(WindowIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDestroyDelegateWrapper[] onDestroyListeners;

	/**
	 * The signal #AtkWindow::destroy is emitted when a window is
	 * destroyed.
	 *
	 * Since: 2.2
	 */
	gulong addOnDestroy(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDestroyListeners ~= new OnDestroyDelegateWrapper(dlg, 0, connectFlags);
		onDestroyListeners[onDestroyListeners.length - 1].handlerId = Signals.connectData(
			this,
			"destroy",
			cast(GCallback)&callBackDestroy,
			cast(void*)onDestroyListeners[onDestroyListeners.length - 1],
			cast(GClosureNotify)&callBackDestroyDestroy,
			connectFlags);
		return onDestroyListeners[onDestroyListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDestroy(AtkWindow* windowStruct,OnDestroyDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackDestroyDestroy(OnDestroyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDestroy(wrapper);
	}

	protected void internalRemoveOnDestroy(OnDestroyDelegateWrapper source)
	{
		foreach(index, wrapper; onDestroyListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDestroyListeners[index] = null;
				onDestroyListeners = std.algorithm.remove(onDestroyListeners, index);
				break;
			}
		}
	}
	

	protected class OnMaximizeDelegateWrapper
	{
		void delegate(WindowIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(WindowIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMaximizeDelegateWrapper[] onMaximizeListeners;

	/**
	 * The signal #AtkWindow::maximize is emitted when a window
	 * is maximized.
	 *
	 * Since: 2.2
	 */
	gulong addOnMaximize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMaximizeListeners ~= new OnMaximizeDelegateWrapper(dlg, 0, connectFlags);
		onMaximizeListeners[onMaximizeListeners.length - 1].handlerId = Signals.connectData(
			this,
			"maximize",
			cast(GCallback)&callBackMaximize,
			cast(void*)onMaximizeListeners[onMaximizeListeners.length - 1],
			cast(GClosureNotify)&callBackMaximizeDestroy,
			connectFlags);
		return onMaximizeListeners[onMaximizeListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMaximize(AtkWindow* windowStruct,OnMaximizeDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackMaximizeDestroy(OnMaximizeDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMaximize(wrapper);
	}

	protected void internalRemoveOnMaximize(OnMaximizeDelegateWrapper source)
	{
		foreach(index, wrapper; onMaximizeListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMaximizeListeners[index] = null;
				onMaximizeListeners = std.algorithm.remove(onMaximizeListeners, index);
				break;
			}
		}
	}
	

	protected class OnMinimizeDelegateWrapper
	{
		void delegate(WindowIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(WindowIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMinimizeDelegateWrapper[] onMinimizeListeners;

	/**
	 * The signal #AtkWindow::minimize is emitted when a window
	 * is minimized.
	 *
	 * Since: 2.2
	 */
	gulong addOnMinimize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMinimizeListeners ~= new OnMinimizeDelegateWrapper(dlg, 0, connectFlags);
		onMinimizeListeners[onMinimizeListeners.length - 1].handlerId = Signals.connectData(
			this,
			"minimize",
			cast(GCallback)&callBackMinimize,
			cast(void*)onMinimizeListeners[onMinimizeListeners.length - 1],
			cast(GClosureNotify)&callBackMinimizeDestroy,
			connectFlags);
		return onMinimizeListeners[onMinimizeListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMinimize(AtkWindow* windowStruct,OnMinimizeDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackMinimizeDestroy(OnMinimizeDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMinimize(wrapper);
	}

	protected void internalRemoveOnMinimize(OnMinimizeDelegateWrapper source)
	{
		foreach(index, wrapper; onMinimizeListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMinimizeListeners[index] = null;
				onMinimizeListeners = std.algorithm.remove(onMinimizeListeners, index);
				break;
			}
		}
	}
	

	protected class OnMoveDelegateWrapper
	{
		void delegate(WindowIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(WindowIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMoveDelegateWrapper[] onMoveListeners;

	/**
	 * The signal #AtkWindow::move is emitted when a window
	 * is moved.
	 *
	 * Since: 2.2
	 */
	gulong addOnMove(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMoveListeners ~= new OnMoveDelegateWrapper(dlg, 0, connectFlags);
		onMoveListeners[onMoveListeners.length - 1].handlerId = Signals.connectData(
			this,
			"move",
			cast(GCallback)&callBackMove,
			cast(void*)onMoveListeners[onMoveListeners.length - 1],
			cast(GClosureNotify)&callBackMoveDestroy,
			connectFlags);
		return onMoveListeners[onMoveListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMove(AtkWindow* windowStruct,OnMoveDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackMoveDestroy(OnMoveDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMove(wrapper);
	}

	protected void internalRemoveOnMove(OnMoveDelegateWrapper source)
	{
		foreach(index, wrapper; onMoveListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMoveListeners[index] = null;
				onMoveListeners = std.algorithm.remove(onMoveListeners, index);
				break;
			}
		}
	}
	

	protected class OnResizeDelegateWrapper
	{
		void delegate(WindowIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(WindowIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnResizeDelegateWrapper[] onResizeListeners;

	/**
	 * The signal #AtkWindow::resize is emitted when a window
	 * is resized.
	 *
	 * Since: 2.2
	 */
	gulong addOnResize(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onResizeListeners ~= new OnResizeDelegateWrapper(dlg, 0, connectFlags);
		onResizeListeners[onResizeListeners.length - 1].handlerId = Signals.connectData(
			this,
			"resize",
			cast(GCallback)&callBackResize,
			cast(void*)onResizeListeners[onResizeListeners.length - 1],
			cast(GClosureNotify)&callBackResizeDestroy,
			connectFlags);
		return onResizeListeners[onResizeListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackResize(AtkWindow* windowStruct,OnResizeDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackResizeDestroy(OnResizeDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnResize(wrapper);
	}

	protected void internalRemoveOnResize(OnResizeDelegateWrapper source)
	{
		foreach(index, wrapper; onResizeListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onResizeListeners[index] = null;
				onResizeListeners = std.algorithm.remove(onResizeListeners, index);
				break;
			}
		}
	}
	

	protected class OnRestoreDelegateWrapper
	{
		void delegate(WindowIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(WindowIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnRestoreDelegateWrapper[] onRestoreListeners;

	/**
	 * The signal #AtkWindow::restore is emitted when a window
	 * is restored.
	 *
	 * Since: 2.2
	 */
	gulong addOnRestore(void delegate(WindowIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onRestoreListeners ~= new OnRestoreDelegateWrapper(dlg, 0, connectFlags);
		onRestoreListeners[onRestoreListeners.length - 1].handlerId = Signals.connectData(
			this,
			"restore",
			cast(GCallback)&callBackRestore,
			cast(void*)onRestoreListeners[onRestoreListeners.length - 1],
			cast(GClosureNotify)&callBackRestoreDestroy,
			connectFlags);
		return onRestoreListeners[onRestoreListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackRestore(AtkWindow* windowStruct,OnRestoreDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackRestoreDestroy(OnRestoreDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnRestore(wrapper);
	}

	protected void internalRemoveOnRestore(OnRestoreDelegateWrapper source)
	{
		foreach(index, wrapper; onRestoreListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onRestoreListeners[index] = null;
				onRestoreListeners = std.algorithm.remove(onRestoreListeners, index);
				break;
			}
		}
	}
	
}
