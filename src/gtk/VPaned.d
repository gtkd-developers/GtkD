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
 * inFile  = GtkVPaned.html
 * outPack = gtk
 * outFile = VPaned
 * strct   = GtkVPaned
 * realStrct=
 * ctorStrct=
 * clss    = VPaned
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_vpaned_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.VPaned;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import gtk.Widget;



private import gtk.Paned;

/**
 * Description
 * The VPaned widget is a container widget with two
 * children arranged vertically. The division between
 * the two panes is adjustable by the user by dragging
 * a handle. See GtkPaned for details.
 */
public class VPaned : Paned
{
	
	/** the main Gtk struct */
	protected GtkVPaned* gtkVPaned;
	
	
	public GtkVPaned* getVPanedStruct()
	{
		return gtkVPaned;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkVPaned;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkVPaned* gtkVPaned)
	{
		if(gtkVPaned is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkVPaned passed to constructor.");
			else return;
		}
		super(cast(GtkPaned*)gtkVPaned);
		this.gtkVPaned = gtkVPaned;
	}
	
	/**
	 * Creates a new HPaned and adds two widgets as it's children
	 * Params:
	 *  child1 =
	 *  child2 =
	 */
	this(Widget child1, Widget child2)
	{
		this();
		add1(child1);
		add2(child2);
	}
	
	
	/**
	 */
	
	/**
	 * Create a new GtkVPaned
	 */
	public this ()
	{
		// GtkWidget* gtk_vpaned_new (void);
		auto p = gtk_vpaned_new();
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkVPaned*) p);
	}
}
