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


module peas.PluginManagerView;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Menu;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.TreeView;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import peas.Engine;
private import peas.PluginInfo;
private import peasc.peas;
public  import peasc.peastypes;
private import std.algorithm;


/**
 * The #PeasGtkPluginManagerView structure contains only private data
 * and should only be accessed using the provided API.
 */
public class PluginManagerView : TreeView
{
	/** the main Gtk struct */
	protected PeasGtkPluginManagerView* peasGtkPluginManagerView;

	/** Get the main Gtk struct */
	public PeasGtkPluginManagerView* getPluginManagerViewStruct()
	{
		return peasGtkPluginManagerView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)peasGtkPluginManagerView;
	}

	protected override void setStruct(GObject* obj)
	{
		peasGtkPluginManagerView = cast(PeasGtkPluginManagerView*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PeasGtkPluginManagerView* peasGtkPluginManagerView, bool ownedRef = false)
	{
		this.peasGtkPluginManagerView = peasGtkPluginManagerView;
		super(cast(GtkTreeView*)peasGtkPluginManagerView, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return peas_gtk_plugin_manager_view_get_type();
	}

	/**
	 * Creates a new plugin manager view for the given #PeasEngine.
	 *
	 * If @engine is %NULL, then the default engine will be used.
	 *
	 * Params:
	 *     engine = A #PeasEngine, or %NULL.
	 *
	 * Return: the new #PeasGtkPluginManagerView.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Engine engine)
	{
		auto p = peas_gtk_plugin_manager_view_new((engine is null) ? null : engine.getEngineStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(PeasGtkPluginManagerView*) p);
	}

	/**
	 * Returns the currently selected plugin, or %NULL if a plugin is not selected.
	 *
	 * Return: the selected plugin.
	 */
	public PluginInfo getSelectedPlugin()
	{
		auto p = peas_gtk_plugin_manager_view_get_selected_plugin(peasGtkPluginManagerView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PluginInfo)(cast(PeasPluginInfo*) p);
	}

	/**
	 * Returns if builtin plugins should be shown.
	 *
	 * Deprecated: Use hidden plugins instead.
	 *
	 * Return: if builtin plugins should be shown.
	 */
	public bool getShowBuiltin()
	{
		return peas_gtk_plugin_manager_view_get_show_builtin(peasGtkPluginManagerView) != 0;
	}

	/**
	 * Selects the given plugin.
	 *
	 * Params:
	 *     info = A #PeasPluginInfo.
	 */
	public void setSelectedPlugin(PluginInfo info)
	{
		peas_gtk_plugin_manager_view_set_selected_plugin(peasGtkPluginManagerView, (info is null) ? null : info.getPluginInfoStruct());
	}

	/**
	 * Sets if builtin plugins should be shown.
	 *
	 * Deprecated: Use hidden plugins instead.
	 *
	 * Params:
	 *     showBuiltin = If builtin plugins should be shown.
	 */
	public void setShowBuiltin(bool showBuiltin)
	{
		peas_gtk_plugin_manager_view_set_show_builtin(peasGtkPluginManagerView, showBuiltin);
	}

	protected class OnPopulatePopupDelegateWrapper
	{
		void delegate(Menu, PluginManagerView) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Menu, PluginManagerView) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPopulatePopupDelegateWrapper[] onPopulatePopupListeners;

	/**
	 * The ::populate-popup signal is emitted before showing the context
	 * menu of the view. If you need to add items to the context menu,
	 * connect to this signal and add your menuitems to the @menu.
	 *
	 * Params:
	 *     menu = A #GtkMenu.
	 */
	gulong addOnPopulatePopup(void delegate(Menu, PluginManagerView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onPopulatePopupListeners ~= new OnPopulatePopupDelegateWrapper(dlg, 0, connectFlags);
		onPopulatePopupListeners[onPopulatePopupListeners.length - 1].handlerId = Signals.connectData(
			this,
			"populate-popup",
			cast(GCallback)&callBackPopulatePopup,
			cast(void*)onPopulatePopupListeners[onPopulatePopupListeners.length - 1],
			cast(GClosureNotify)&callBackPopulatePopupDestroy,
			connectFlags);
		return onPopulatePopupListeners[onPopulatePopupListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackPopulatePopup(PeasGtkPluginManagerView* pluginmanagerviewStruct, GtkMenu* menu,OnPopulatePopupDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Menu)(menu), wrapper.outer);
	}
	
	extern(C) static void callBackPopulatePopupDestroy(OnPopulatePopupDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPopulatePopup(wrapper);
	}

	protected void internalRemoveOnPopulatePopup(OnPopulatePopupDelegateWrapper source)
	{
		foreach(index, wrapper; onPopulatePopupListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPopulatePopupListeners[index] = null;
				onPopulatePopupListeners = std.algorithm.remove(onPopulatePopupListeners, index);
				break;
			}
		}
	}
	
}
