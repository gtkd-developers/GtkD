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


module peas.ExtensionSet;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import peas.Engine;
private import peas.PluginInfo;
private import peas.c.functions;
public  import peas.c.types;
private import std.algorithm;


/**
 * The #PeasExtensionSet structure contains only private data and should only
 * be accessed using the provided API.
 */
public class ExtensionSet : ObjectG
{
	/** the main Gtk struct */
	protected PeasExtensionSet* peasExtensionSet;

	/** Get the main Gtk struct */
	public PeasExtensionSet* getExtensionSetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return peasExtensionSet;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)peasExtensionSet;
	}

	protected override void setStruct(GObject* obj)
	{
		peasExtensionSet = cast(PeasExtensionSet*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PeasExtensionSet* peasExtensionSet, bool ownedRef = false)
	{
		this.peasExtensionSet = peasExtensionSet;
		super(cast(GObject*)peasExtensionSet, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return peas_extension_set_get_type();
	}

	/**
	 * Create a new #PeasExtensionSet for the @exten_type extension type.
	 *
	 * If @engine is %NULL, then the default engine will be used.
	 *
	 * See peas_extension_set_new() for more information.
	 *
	 * Params:
	 *     engine = A #PeasEngine, or %NULL.
	 *     extenType = the extension #GType.
	 *     firstProperty = the name of the first property.
	 *     varArgs = the value of the first property, followed optionally by more
	 *         name/value pairs, followed by %NULL.
	 *
	 * Returns: a new instance of #PeasExtensionSet.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Engine engine, GType extenType, string firstProperty, void* varArgs)
	{
		auto p = peas_extension_set_new_valist((engine is null) ? null : engine.getEngineStruct(), extenType, Str.toStringz(firstProperty), varArgs);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_valist");
		}

		this(cast(PeasExtensionSet*) p, true);
	}

	/**
	 * Create a new #PeasExtensionSet for the @exten_type extension type.
	 *
	 * If @engine is %NULL, then the default engine will be used.
	 *
	 * See peas_extension_set_new() for more information.
	 *
	 * Params:
	 *     engine = A #PeasEngine, or %NULL.
	 *     extenType = the extension #GType.
	 *     nParameters = the length of the @parameters array.
	 *     parameters = an array of #GParameter.
	 *
	 * Returns: a new instance of #PeasExtensionSet.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Engine engine, GType extenType, GParameter[] parameters)
	{
		auto p = peas_extension_set_newv((engine is null) ? null : engine.getEngineStruct(), extenType, cast(uint)parameters.length, parameters.ptr);

		if(p is null)
		{
			throw new ConstructionException("null returned by newv");
		}

		this(cast(PeasExtensionSet*) p, true);
	}

	/**
	 * Calls @func for each #PeasExtension.
	 *
	 * Params:
	 *     func = A function call for each extension.
	 *     data = Optional data to be passed to the function or %NULL.
	 *
	 * Since: 1.2
	 */
	public void foreac(PeasExtensionSetForeachFunc func, void* data)
	{
		peas_extension_set_foreach(peasExtensionSet, func, data);
	}

	/**
	 * Returns the #PeasExtension object corresponding to @info, or %NULL
	 * if the plugin doesn't provide such an extension.
	 *
	 * Params:
	 *     info = a #PeasPluginInfo
	 *
	 * Returns: a reference to a #PeasExtension or %NULL
	 */
	public PeasExtension* getExtension(PluginInfo info)
	{
		return peas_extension_set_get_extension(peasExtensionSet, (info is null) ? null : info.getPluginInfoStruct());
	}

	protected class OnExtensionAddedDelegateWrapper
	{
		static OnExtensionAddedDelegateWrapper[] listeners;
		void delegate(PluginInfo, ObjectG, ExtensionSet) dlg;
		gulong handlerId;

		this(void delegate(PluginInfo, ObjectG, ExtensionSet) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}

		void remove(OnExtensionAddedDelegateWrapper source)
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
	 * The extension-added signal is emitted when a new extension has been
	 * added to the #PeasExtensionSet. It happens when a new plugin implementing
	 * the extension set's extension type is loaded.
	 *
	 * You should connect to this signal in order to set up the extensions when
	 * they are loaded. Note that this signal is not fired for extensions coming
	 * from plugins that were already loaded when the #PeasExtensionSet instance
	 * was created. You should set those up by yourself.
	 *
	 * Params:
	 *     info = A #PeasPluginInfo.
	 *     exten = A #PeasExtension.
	 */
	gulong addOnExtensionAdded(void delegate(PluginInfo, ObjectG, ExtensionSet) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnExtensionAddedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"extension-added",
			cast(GCallback)&callBackExtensionAdded,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackExtensionAddedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static void callBackExtensionAdded(PeasExtensionSet* extensionsetStruct, PeasPluginInfo* info, GObject* exten, OnExtensionAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(PluginInfo)(info), ObjectG.getDObject!(ObjectG)(exten), wrapper.outer);
	}

	extern(C) static void callBackExtensionAddedDestroy(OnExtensionAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnExtensionRemovedDelegateWrapper
	{
		static OnExtensionRemovedDelegateWrapper[] listeners;
		void delegate(PluginInfo, ObjectG, ExtensionSet) dlg;
		gulong handlerId;

		this(void delegate(PluginInfo, ObjectG, ExtensionSet) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}

		void remove(OnExtensionRemovedDelegateWrapper source)
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
	 * The extension-removed signal is emitted when a new extension is about to be
	 * removed from the #PeasExtensionSet. It happens when a plugin implementing
	 * the extension set's extension type is unloaded, or when the
	 * #PeasExtensionSet itself is destroyed.
	 *
	 * You should connect to this signal in order to clean up the extensions
	 * when their plugin is unload. Note that this signal is not fired for the
	 * #PeasExtension instances still available when the #PeasExtensionSet
	 * instance is destroyed. You should clean those up by yourself.
	 *
	 * Params:
	 *     info = A #PeasPluginInfo.
	 *     exten = A #PeasExtension.
	 */
	gulong addOnExtensionRemoved(void delegate(PluginInfo, ObjectG, ExtensionSet) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnExtensionRemovedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"extension-removed",
			cast(GCallback)&callBackExtensionRemoved,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackExtensionRemovedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static void callBackExtensionRemoved(PeasExtensionSet* extensionsetStruct, PeasPluginInfo* info, GObject* exten, OnExtensionRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(PluginInfo)(info), ObjectG.getDObject!(ObjectG)(exten), wrapper.outer);
	}

	extern(C) static void callBackExtensionRemovedDestroy(OnExtensionRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
