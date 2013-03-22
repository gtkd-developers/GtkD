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

/*
 * Conversion parameters:
 * inFile  = AtkHypertext.html
 * outPack = atk
 * outFile = Hypertext
 * strct   = AtkHypertext
 * realStrct=
 * ctorStrct=
 * clss    = Hypertext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_hypertext_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- atk.Hyperlink
 * structWrap:
 * 	- AtkHyperlink* -> Hyperlink
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.Hypertext;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import atk.Hyperlink;




/**
 * An interface used for objects which implement linking between multiple
 * resource or content locations, or multiple 'markers' within a single
 * document. A Hypertext instance is associated with one or more Hyperlinks,
 * which are associated with particular offsets within the Hypertext's included
 * content. While this interface is derived from Text, there is no requirement that Hypertext instances have textual content; they may implement Image as well, and Hyperlinks need not have non-zero text offsets.
 */
public class Hypertext
{
	
	/** the main Gtk struct */
	protected AtkHypertext* atkHypertext;
	
	
	public AtkHypertext* getHypertextStruct()
	{
		return atkHypertext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkHypertext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkHypertext* atkHypertext)
	{
		this.atkHypertext = atkHypertext;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(gint, Hypertext)[] onLinkSelectedListeners;
	/**
	 * The "link-selected" signal is emitted by an AtkHyperText object when one of
	 * the hyperlinks associated with the object is selected.
	 * See Also
	 * AtkHyperlink
	 */
	void addOnLinkSelected(void delegate(gint, Hypertext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("link-selected" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"link-selected",
			cast(GCallback)&callBackLinkSelected,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["link-selected"] = 1;
		}
		onLinkSelectedListeners ~= dlg;
	}
	extern(C) static void callBackLinkSelected(AtkHypertext* atkhypertextStruct, gint arg1, Hypertext _hypertext)
	{
		foreach ( void delegate(gint, Hypertext) dlg ; _hypertext.onLinkSelectedListeners )
		{
			dlg(arg1, _hypertext);
		}
	}
	
	
	/**
	 * Gets the link in this hypertext document at index
	 * link_index
	 * Params:
	 * linkIndex = an integer specifying the desired link
	 * Returns: the link in this hypertext document at index link_index. [transfer none]
	 */
	public Hyperlink getLink(int linkIndex)
	{
		// AtkHyperlink * atk_hypertext_get_link (AtkHypertext *hypertext,  gint link_index);
		auto p = atk_hypertext_get_link(atkHypertext, linkIndex);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Hyperlink)(cast(AtkHyperlink*) p);
	}
	
	/**
	 * Gets the number of links within this hypertext document.
	 * Returns: the number of links within this hypertext document
	 */
	public int getNLinks()
	{
		// gint atk_hypertext_get_n_links (AtkHypertext *hypertext);
		return atk_hypertext_get_n_links(atkHypertext);
	}
	
	/**
	 * Gets the index into the array of hyperlinks that is associated with
	 * the character specified by char_index.
	 * Params:
	 * charIndex = a character index
	 * Returns: an index into the array of hyperlinks in hypertext, or -1 if there is no hyperlink associated with this character. Signal Details The "link-selected" signal void user_function (AtkHypertext *atkhypertext, gint arg1, gpointer user_data) : Run Last The "link-selected" signal is emitted by an AtkHyperText object when one of the hyperlinks associated with the object is selected.
	 */
	public int getLinkIndex(int charIndex)
	{
		// gint atk_hypertext_get_link_index (AtkHypertext *hypertext,  gint char_index);
		return atk_hypertext_get_link_index(atkHypertext, charIndex);
	}
}
