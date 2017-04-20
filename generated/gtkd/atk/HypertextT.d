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


module atk.HypertextT;

public  import atk.Hyperlink;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtkc.atk;
public  import gtkc.atktypes;
public  import std.algorithm;


/**
 * An interface used for objects which implement linking between
 * multiple resource or content locations, or multiple 'markers'
 * within a single document.  A Hypertext instance is associated with
 * one or more Hyperlinks, which are associated with particular
 * offsets within the Hypertext's included content.  While this
 * interface is derived from Text, there is no requirement that
 * Hypertext instances have textual content; they may implement Image
 * as well, and Hyperlinks need not have non-zero text offsets.
 */
public template HypertextT(TStruct)
{
	/** Get the main Gtk struct */
	public AtkHypertext* getHypertextStruct()
	{
		return cast(AtkHypertext*)getStruct();
	}


	/**
	 * Gets the link in this hypertext document at index
	 * @link_index
	 *
	 * Params:
	 *     linkIndex = an integer specifying the desired link
	 *
	 * Return: the link in this hypertext document at
	 *     index @link_index
	 */
	public Hyperlink getLink(int linkIndex)
	{
		auto p = atk_hypertext_get_link(getHypertextStruct(), linkIndex);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Hyperlink)(cast(AtkHyperlink*) p);
	}

	/**
	 * Gets the index into the array of hyperlinks that is associated with
	 * the character specified by @char_index.
	 *
	 * Params:
	 *     charIndex = a character index
	 *
	 * Return: an index into the array of hyperlinks in @hypertext,
	 *     or -1 if there is no hyperlink associated with this character.
	 */
	public int getLinkIndex(int charIndex)
	{
		return atk_hypertext_get_link_index(getHypertextStruct(), charIndex);
	}

	/**
	 * Gets the number of links within this hypertext document.
	 *
	 * Return: the number of links within this hypertext document
	 */
	public int getNLinks()
	{
		return atk_hypertext_get_n_links(getHypertextStruct());
	}

	protected class OnLinkSelectedDelegateWrapper
	{
		static OnLinkSelectedDelegateWrapper[] listeners;
		void delegate(int, HypertextIF) dlg;
		gulong handlerId;
		
		this(void delegate(int, HypertextIF) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnLinkSelectedDelegateWrapper source)
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
	 * The "link-selected" signal is emitted by an AtkHyperText
	 * object when one of the hyperlinks associated with the object
	 * is selected.
	 *
	 * Params:
	 *     arg1 = the index of the hyperlink which is selected
	 */
	gulong addOnLinkSelected(void delegate(int, HypertextIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnLinkSelectedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"link-selected",
			cast(GCallback)&callBackLinkSelected,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackLinkSelectedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackLinkSelected(AtkHypertext* hypertextStruct, int arg1, OnLinkSelectedDelegateWrapper wrapper)
	{
		wrapper.dlg(arg1, wrapper.outer);
	}
	
	extern(C) static void callBackLinkSelectedDestroy(OnLinkSelectedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
