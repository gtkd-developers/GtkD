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


module atk.HyperlinkImplT;

public  import atk.Hyperlink;
public  import atk.c.functions;
public  import atk.c.types;
public  import gobject.ObjectG;


/**
 * AtkHyperlinkImpl allows AtkObjects to refer to their associated
 * AtkHyperlink instance, if one exists.  AtkHyperlinkImpl differs
 * from AtkHyperlink in that AtkHyperlinkImpl is an interface, whereas
 * AtkHyperlink is a object type.  The AtkHyperlinkImpl interface
 * allows a client to query an AtkObject for the availability of an
 * associated AtkHyperlink instance, and obtain that instance.  It is
 * thus particularly useful in cases where embedded content or inline
 * content within a text object is present, since the embedding text
 * object implements AtkHypertext and the inline/embedded objects are
 * exposed as children which implement AtkHyperlinkImpl, in addition
 * to their being obtainable via AtkHypertext:getLink followed by
 * AtkHyperlink:getObject.
 * 
 * The AtkHyperlinkImpl interface should be supported by objects
 * exposed within the hierarchy as children of an AtkHypertext
 * container which correspond to "links" or embedded content within
 * the text.  HTML anchors are not, for instance, normally exposed
 * this way, but embedded images and components which appear inline in
 * the content of a text object are. The AtkHyperlinkIface interface
 * allows a means of determining which children are hyperlinks in this
 * sense of the word, and for obtaining their corresponding
 * AtkHyperlink object, from which the embedding range, URI, etc. can
 * be obtained.
 * 
 * To some extent this interface exists because, for historical
 * reasons, AtkHyperlink was defined as an object type, not an
 * interface.  Thus, in order to interact with AtkObjects via
 * AtkHyperlink semantics, a new interface was required.
 */
public template HyperlinkImplT(TStruct)
{
	/** Get the main Gtk struct */
	public AtkHyperlinkImpl* getHyperlinkImplStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(AtkHyperlinkImpl*)getStruct();
	}


	/**
	 * Gets the hyperlink associated with this object.
	 *
	 * Returns: an AtkHyperlink object which points to this
	 *     implementing AtkObject.
	 *
	 * Since: 1.12
	 */
	public Hyperlink getHyperlink()
	{
		auto __p = atk_hyperlink_impl_get_hyperlink(getHyperlinkImplStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Hyperlink)(cast(AtkHyperlink*) __p, true);
	}
}
