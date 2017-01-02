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


module atk.Hyperlink;

private import atk.ActionIF;
private import atk.ActionT;
private import atk.ObjectAtk;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtkc.atk;
public  import gtkc.atktypes;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * An ATK object which encapsulates a link or set of links (for
 * instance in the case of client-side image maps) in a hypertext
 * document.  It may implement the AtkAction interface.  AtkHyperlink
 * may also be used to refer to inline embedded content, since it
 * allows specification of a start and end offset within the host
 * AtkHypertext object.
 */
public class Hyperlink : ObjectG, ActionIF
{
	/** the main Gtk struct */
	protected AtkHyperlink* atkHyperlink;

	/** Get the main Gtk struct */
	public AtkHyperlink* getHyperlinkStruct()
	{
		return atkHyperlink;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkHyperlink;
	}

	protected override void setStruct(GObject* obj)
	{
		atkHyperlink = cast(AtkHyperlink*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkHyperlink* atkHyperlink, bool ownedRef = false)
	{
		this.atkHyperlink = atkHyperlink;
		super(cast(GObject*)atkHyperlink, ownedRef);
	}

	// add the Action capabilities
	mixin ActionT!(AtkHyperlink);


	/** */
	public static GType getType()
	{
		return atk_hyperlink_get_type();
	}

	/**
	 * Gets the index with the hypertext document at which this link ends.
	 *
	 * Return: the index with the hypertext document at which this link ends
	 */
	public int getEndIndex()
	{
		return atk_hyperlink_get_end_index(atkHyperlink);
	}

	/**
	 * Gets the number of anchors associated with this hyperlink.
	 *
	 * Return: the number of anchors associated with this hyperlink
	 */
	public int getNAnchors()
	{
		return atk_hyperlink_get_n_anchors(atkHyperlink);
	}

	/**
	 * Returns the item associated with this hyperlinks nth anchor.
	 * For instance, the returned #AtkObject will implement #AtkText
	 * if @link_ is a text hyperlink, #AtkImage if @link_ is an image
	 * hyperlink etc.
	 *
	 * Multiple anchors are primarily used by client-side image maps.
	 *
	 * Params:
	 *     i = a (zero-index) integer specifying the desired anchor
	 *
	 * Return: an #AtkObject associated with this hyperlinks
	 *     i-th anchor
	 */
	public ObjectAtk getObject(int i)
	{
		auto p = atk_hyperlink_get_object(atkHyperlink, i);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}

	/**
	 * Gets the index with the hypertext document at which this link begins.
	 *
	 * Return: the index with the hypertext document at which this link begins
	 */
	public int getStartIndex()
	{
		return atk_hyperlink_get_start_index(atkHyperlink);
	}

	/**
	 * Get a the URI associated with the anchor specified
	 * by @i of @link_.
	 *
	 * Multiple anchors are primarily used by client-side image maps.
	 *
	 * Params:
	 *     i = a (zero-index) integer specifying the desired anchor
	 *
	 * Return: a string specifying the URI
	 */
	public string getUri(int i)
	{
		auto retStr = atk_hyperlink_get_uri(atkHyperlink, i);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Indicates whether the link currently displays some or all of its
	 * content inline.  Ordinary HTML links will usually return
	 * %FALSE, but an inline &lt;src&gt; HTML element will return
	 * %TRUE.
	 *
	 * Return: whether or not this link displays its content inline.
	 */
	public bool isInline()
	{
		return atk_hyperlink_is_inline(atkHyperlink) != 0;
	}

	/**
	 * Determines whether this AtkHyperlink is selected
	 *
	 * Deprecated: Please use ATK_STATE_FOCUSABLE for all links,
	 * and ATK_STATE_FOCUSED for focused links.
	 *
	 * Return: True if the AtkHyperlink is selected, False otherwise
	 *
	 * Since: 1.4
	 */
	public bool isSelectedLink()
	{
		return atk_hyperlink_is_selected_link(atkHyperlink) != 0;
	}

	/**
	 * Since the document that a link is associated with may have changed
	 * this method returns %TRUE if the link is still valid (with
	 * respect to the document it references) and %FALSE otherwise.
	 *
	 * Return: whether or not this link is still valid
	 */
	public bool isValid()
	{
		return atk_hyperlink_is_valid(atkHyperlink) != 0;
	}

	protected class OnLinkActivatedDelegateWrapper
	{
		void delegate(Hyperlink) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Hyperlink) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnLinkActivatedDelegateWrapper[] onLinkActivatedListeners;

	/**
	 * The signal link-activated is emitted when a link is activated.
	 */
	gulong addOnLinkActivated(void delegate(Hyperlink) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onLinkActivatedListeners ~= new OnLinkActivatedDelegateWrapper(dlg, 0, connectFlags);
		onLinkActivatedListeners[onLinkActivatedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"link-activated",
			cast(GCallback)&callBackLinkActivated,
			cast(void*)onLinkActivatedListeners[onLinkActivatedListeners.length - 1],
			cast(GClosureNotify)&callBackLinkActivatedDestroy,
			connectFlags);
		return onLinkActivatedListeners[onLinkActivatedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackLinkActivated(AtkHyperlink* hyperlinkStruct,OnLinkActivatedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackLinkActivatedDestroy(OnLinkActivatedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnLinkActivated(wrapper);
	}

	protected void internalRemoveOnLinkActivated(OnLinkActivatedDelegateWrapper source)
	{
		foreach(index, wrapper; onLinkActivatedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onLinkActivatedListeners[index] = null;
				onLinkActivatedListeners = std.algorithm.remove(onLinkActivatedListeners, index);
				break;
			}
		}
	}
	
}
