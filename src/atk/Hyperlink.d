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
 * 	- atk_hyperlink_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- atk.ObjectAtk
 * 	- glib.Str
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.Hyperlink;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import atk.ObjectAtk;
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
	protected override void* getStruct()
	{
		return cast(void*)atkHyperlink;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkHyperlink* atkHyperlink)
	{
		super(cast(GObject*)atkHyperlink);
		this.atkHyperlink = atkHyperlink;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		atkHyperlink = cast(AtkHyperlink*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Hyperlink)[] onLinkActivatedListeners;
	/**
	 * The signal link-activated is emitted when a link is activated.
	 */
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
	extern(C) static void callBackLinkActivated(AtkHyperlink* atkhyperlinkStruct, Hyperlink _hyperlink)
	{
		foreach ( void delegate(Hyperlink) dlg ; _hyperlink.onLinkActivatedListeners )
		{
			dlg(_hyperlink);
		}
	}
	
	
	/**
	 * Get a the URI associated with the anchor specified
	 * by i of link_.
	 * Multiple anchors are primarily used by client-side image maps.
	 * Params:
	 * i = a (zero-index) integer specifying the desired anchor
	 * Returns: a string specifying the URI
	 */
	public string getUri(int i)
	{
		// gchar * atk_hyperlink_get_uri (AtkHyperlink *link_,  gint i);
		return Str.toString(atk_hyperlink_get_uri(atkHyperlink, i));
	}
	
	/**
	 * Returns the item associated with this hyperlinks nth anchor.
	 * For instance, the returned AtkObject will implement AtkText
	 * if link_ is a text hyperlink, AtkImage if link_ is an image
	 * hyperlink etc.
	 * Multiple anchors are primarily used by client-side image maps.
	 * Params:
	 * i = a (zero-index) integer specifying the desired anchor
	 * Returns: an AtkObject associated with this hyperlinks i-th anchor. [transfer none]
	 */
	public ObjectAtk getObject(int i)
	{
		// AtkObject * atk_hyperlink_get_object (AtkHyperlink *link_,  gint i);
		auto p = atk_hyperlink_get_object(atkHyperlink, i);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets the index with the hypertext document at which this link ends.
	 * Returns: the index with the hypertext document at which this link ends
	 */
	public int getEndIndex()
	{
		// gint atk_hyperlink_get_end_index (AtkHyperlink *link_);
		return atk_hyperlink_get_end_index(atkHyperlink);
	}
	
	/**
	 * Gets the index with the hypertext document at which this link begins.
	 * Returns: the index with the hypertext document at which this link begins
	 */
	public int getStartIndex()
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
	public int isValid()
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
	public int isInline()
	{
		// gboolean atk_hyperlink_is_inline (AtkHyperlink *link_);
		return atk_hyperlink_is_inline(atkHyperlink);
	}
	
	/**
	 * Gets the number of anchors associated with this hyperlink.
	 * Returns: the number of anchors associated with this hyperlink
	 */
	public int getNAnchors()
	{
		// gint atk_hyperlink_get_n_anchors (AtkHyperlink *link_);
		return atk_hyperlink_get_n_anchors(atkHyperlink);
	}
	
	/**
	 * Warning
	 * atk_hyperlink_is_selected_link is deprecated and should not be used in newly-written code. Please use ATK_STATE_SELECTED to indicate when a hyperlink within a Hypertext container is selected.
	 * Determines whether this AtkHyperlink is selected
	 * Since 1.4
	 * Returns: True is the AtkHyperlink is selected, False otherwise
	 */
	public int isSelectedLink()
	{
		// gboolean atk_hyperlink_is_selected_link (AtkHyperlink *link_);
		return atk_hyperlink_is_selected_link(atkHyperlink);
	}
}
