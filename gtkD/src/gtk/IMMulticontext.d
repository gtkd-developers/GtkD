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
 * inFile  = GtkIMMulticontext.html
 * outPack = gtk
 * outFile = IMMulticontext
 * strct   = GtkIMMulticontext
 * realStrct=
 * ctorStrct=
 * clss    = IMMulticontext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_im_multicontext_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.IMContext
 * 	- gtk.MenuShell
 * structWrap:
 * 	- GtkIMContext* -> IMContext
 * 	- GtkMenuShell* -> MenuShell
 * module aliases:
 * local aliases:
 */

module gtk.IMMulticontext;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import gtk.IMContext;
private import gtk.MenuShell;



/**
 * Description
 */
private import gtk.IMContext;
public class IMMulticontext : IMContext
{
	
	/** the main Gtk struct */
	protected GtkIMMulticontext* gtkIMMulticontext;
	
	
	public GtkIMMulticontext* getIMMulticontextStruct()
	{
		return gtkIMMulticontext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkIMMulticontext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkIMMulticontext* gtkIMMulticontext)
	{
		super(cast(GtkIMContext*)gtkIMMulticontext);
		this.gtkIMMulticontext = gtkIMMulticontext;
	}
	/**
	 * Allows constructors from Widget - needed for Glade support
	 */
	private import gtk.Widget;
	public this (Widget  parent)
	{
		this(cast(GtkIMMulticontext*) parent.getWidgetStruct());
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkIMMulticontext.
	 * Returns:
	 *  a new GtkIMMulticontext.
	 */
	public static IMContext newIMMulticontext()
	{
		// GtkIMContext* gtk_im_multicontext_new (void);
		return new IMContext( gtk_im_multicontext_new() );
	}
	
	/**
	 * Add menuitems for various available input methods to a menu;
	 * the menuitems, when selected, will switch the input method
	 * for the context and the global default input method.
	 * context:
	 *  a GtkIMMultiContext
	 * menushell:
	 *  a GtkMenuShell
	 */
	public void appendMenuitems(MenuShell menushell)
	{
		// void gtk_im_multicontext_append_menuitems  (GtkIMMulticontext *context,  GtkMenuShell *menushell);
		gtk_im_multicontext_append_menuitems(gtkIMMulticontext, (menushell is null) ? null : menushell.getMenuShellStruct());
	}
}
