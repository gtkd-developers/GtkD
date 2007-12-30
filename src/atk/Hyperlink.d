/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = AtkHyperlink.html
 * outPack = atk
 * outFile = Hyperlink
 * strct   = AtkHyperlink
 * realStrct=
 * ctorStrct=
 * clss    = Hyperlink
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_hyperlink
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module atk.Hyperlink;

private import gtkc.atktypes;

private import gtkc.atk;


private import glib.Str;



private import gobject.ObjectG;

/**
 * Description
 * An ATK object which encapsulates a link or set of links
 * (for instance in the case of client-side image maps) in a hypertext document.
 * It may implement the AtkAction interface. AtkHyperlink may also be used
 * to refer to inline embedded content, since it allows specification of a start
 * and end offset within the host AtkHypertext object.
 */
public class Hyperlink : ObjectG
{
	
	/** the main Gtk struct */
	protected AtkHyperlink* atkHyperlink;
	
	
	public AtkHyperlink* getHyperlinkStruct()
	{
		return atkHyperlink;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkHyperlink;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkHyperlink* atkHyperlink)
	{
		if(atkHyperlink is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null atkHyperlink passed to constructor.");
			else return;
		}
		super(cast(GObject*)atkHyperlink);
		this.atkHyperlink = atkHyperlink;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Hyperlink)[] onLinkActivatedListeners;
	void addOnLinkActivated(void delegate(Hyperlink) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("link-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"link-activated",
			cast(GCallback)&callBackLinkActivated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["link-activated"] = 1;
		}
		onLinkActivatedListeners ~= dlg;
	}
	extern(C) static void callBackLinkActivated(AtkHyperlink* atkhyperlinkStruct, Hyperlink hyperlink)
	{
		bool consumed = false;
		
		foreach ( void delegate(Hyperlink) dlg ; hyperlink.onLinkActivatedListeners )
		{
			dlg(hyperlink);
		}
		
		return consumed;
	}
	
	
	
	
	/**
	 * Get a the URI associated with the anchor specified
	 * by i of link_.
	 * Multiple anchors are primarily used by client-side image maps.
	 * Params:
	 * i =  a (zero-index) integer specifying the desired anchor
	 * Returns: a string specifying the URI
	 */
	public char[] _GetUri(int i)
	{
		// gchar* atk_hyperlink_get_uri (AtkHyperlink *link_,  gint i);
		return Str.toString(atk_hyperlink_get_uri(atkHyperlink, i) );
	}
	
	/**
	 * Returns the item associated with this hyperlinks nth anchor.
	 * For instance, the returned AtkObject will implement AtkText
	 * if link_ is a text hyperlink, AtkImage if link_ is an image
	 * hyperlink etc.
	 * Multiple anchors are primarily used by client-side image maps.
	 * Params:
	 * i =  a (zero-index) integer specifying the desired anchor
	 * Returns: an AtkObject associated with this hyperlinks i-th anchor
	 */
	public AtkObject* _GetObject(int i)
	{
		// AtkObject* atk_hyperlink_get_object (AtkHyperlink *link_,  gint i);
		return atk_hyperlink_get_object(atkHyperlink, i);
	}
	
	/**
	 * Gets the index with the hypertext document at which this link ends.
	 * Returns: the index with the hypertext document at which this link ends
	 */
	public int _GetEndIndex()
	{
		// gint atk_hyperlink_get_end_index (AtkHyperlink *link_);
		return atk_hyperlink_get_end_index(atkHyperlink);
	}
	
	/**
	 * Gets the index with the hypertext document at which this link begins.
	 * Returns: the index with the hypertext document at which this link begins
	 */
	public int _GetStartIndex()
	{
		// gint atk_hyperlink_get_start_index (AtkHyperlink *link_);
		return atk_hyperlink_get_start_index(atkHyperlink);
	}
	
	/**
	 * Since the document that a link is associated with may have changed
	 * this method returns TRUE if the link is still valid (with
	 * respect to the document it references) and FALSE otherwise.
	 * Returns: whether or not this link is still valid
	 */
	public int _IsValid()
	{
		// gboolean atk_hyperlink_is_valid (AtkHyperlink *link_);
		return atk_hyperlink_is_valid(atkHyperlink);
	}
	
	/**
	 * Indicates whether the link currently displays some or all of its
	 *  content inline. Ordinary HTML links will usually return
	 *  FALSE, but an inline lt;srcgt; HTML element will return
	 *  TRUE.
	 * a *
	 * Returns: whether or not this link displays its content inline.
	 */
	public int _IsInline()
	{
		// gboolean atk_hyperlink_is_inline (AtkHyperlink *link_);
		return atk_hyperlink_is_inline(atkHyperlink);
	}
	
	/**
	 * Gets the number of anchors associated with this hyperlink.
	 * Returns: the number of anchors associated with this hyperlink
	 */
	public int _GetNAnchors()
	{
		// gint atk_hyperlink_get_n_anchors (AtkHyperlink *link_);
		return atk_hyperlink_get_n_anchors(atkHyperlink);
	}
	
	/**
	 * Determines whether this AtkHyperlink is selected
	 * Returns:Returns: True is the AtkHyperlink is selected, False otherwiseSince ATK 1.4@Deprecated: This method is deprecated since ATK version 1.8.Please use ATK_STATE_SELECTED to indicate when a hyperlink within aHypertext container is selected.
	 */
	public int _IsSelectedLink()
	{
		// gboolean atk_hyperlink_is_selected_link (AtkHyperlink *link_);
		return atk_hyperlink_is_selected_link(atkHyperlink);
	}
	
	
	
}
