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
 * inFile  = GtkIMMulticontext.html
 * outPack = gtk
 * outFile = IMMulticontext
 * strct   = GtkIMMulticontext
 * realStrct=
 * ctorStrct=GtkIMContext
 * clss    = IMMulticontext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_im_multicontext_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.MenuShell
 * structWrap:
 * 	- GtkMenuShell* -> MenuShell
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.IMMulticontext;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.MenuShell;



private import gtk.IMContext;

/**
 * Description
 */
public class IMMulticontext : IMContext
{
	
	/** the main Gtk struct */
	protected GtkIMMulticontext* gtkIMMulticontext;
	
	
	public GtkIMMulticontext* getIMMulticontextStruct()
	{
		return gtkIMMulticontext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkIMMulticontext = cast(GtkIMMulticontext*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkIMMulticontext.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkIMContext * gtk_im_multicontext_new (void);
		auto p = gtk_im_multicontext_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_im_multicontext_new()");
		}
		this(cast(GtkIMMulticontext*) p);
	}
	
	/**
	 * Add menuitems for various available input methods to a menu;
	 * the menuitems, when selected, will switch the input method
	 * for the context and the global default input method.
	 * Params:
	 * menushell = a GtkMenuShell
	 */
	public void appendMenuitems(MenuShell menushell)
	{
		// void gtk_im_multicontext_append_menuitems  (GtkIMMulticontext *context,  GtkMenuShell *menushell);
		gtk_im_multicontext_append_menuitems(gtkIMMulticontext, (menushell is null) ? null : menushell.getMenuShellStruct());
	}
	
	/**
	 * Gets the id of the currently active slave of the context.
	 * Since 2.16
	 * Returns: the id of the currently active slave
	 */
	public string getContextId()
	{
		// const char * gtk_im_multicontext_get_context_id (GtkIMMulticontext *context);
		return Str.toString(gtk_im_multicontext_get_context_id(gtkIMMulticontext));
	}
	
	/**
	 * Sets the context id for context.
	 * This causes the currently active slave of context to be
	 * replaced by the slave corresponding to the new context id.
	 * Since 2.16
	 * Params:
	 * context = a GtkIMMulticontext
	 * contextId = the id to use
	 */
	public void setContextId(string contextId)
	{
		// void gtk_im_multicontext_set_context_id (GtkIMMulticontext *context,  const char *context_id);
		gtk_im_multicontext_set_context_id(gtkIMMulticontext, Str.toStringz(contextId));
	}
}
