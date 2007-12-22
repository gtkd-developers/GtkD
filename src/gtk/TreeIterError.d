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
 * inFile  = 
 * outPack = gtk
 * outFile = TreeIterError
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = TreeIterError
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = Exception
 * implements:
 * prefixes:
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.TreeIterError;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;






/**
 */
public class TreeIterError : Exception
{
	
	/**
	 * A TreeIter error.
	 * thrown<br>
	 * - trying to access a method that requires a tree model and the tree model was never set
	 */
	public this(char[] method, char[] message)
	{
		super("TreeIter."~method~" : "~message);
	}
	
	/**
	 */
}
