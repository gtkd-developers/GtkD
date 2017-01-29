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


module gtk.LinkButton;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Button;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A GtkLinkButton is a #GtkButton with a hyperlink, similar to the one
 * used by web browsers, which triggers an action when clicked. It is useful
 * to show quick links to resources.
 * 
 * A link button is created by calling either gtk_link_button_new() or
 * gtk_link_button_new_with_label(). If using the former, the URI you pass
 * to the constructor is used as a label for the widget.
 * 
 * The URI bound to a GtkLinkButton can be set specifically using
 * gtk_link_button_set_uri(), and retrieved using gtk_link_button_get_uri().
 * 
 * By default, GtkLinkButton calls gtk_show_uri() when the button is
 * clicked. This behaviour can be overridden by connecting to the
 * #GtkLinkButton::activate-link signal and returning %TRUE from the
 * signal handler.
 * 
 * # CSS nodes
 * 
 * GtkLinkButton has a single CSS node with name button. To differentiate
 * it from a plain #GtkButton, it gets the .link style class.
 */
public class LinkButton : Button
{
	/** the main Gtk struct */
	protected GtkLinkButton* gtkLinkButton;

	/** Get the main Gtk struct */
	public GtkLinkButton* getLinkButtonStruct()
	{
		return gtkLinkButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLinkButton;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkLinkButton = cast(GtkLinkButton*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkLinkButton* gtkLinkButton, bool ownedRef = false)
	{
		this.gtkLinkButton = gtkLinkButton;
		super(cast(GtkButton*)gtkLinkButton, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_link_button_get_type();
	}

	/**
	 * Creates a new #GtkLinkButton with the URI as its text.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Return: a new link button widget.
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string uri)
	{
		auto p = gtk_link_button_new(Str.toStringz(uri));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkLinkButton*) p);
	}

	/**
	 * Creates a new #GtkLinkButton containing a label.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     label = the text of the button
	 *
	 * Return: a new link button widget.
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string uri, string label)
	{
		auto p = gtk_link_button_new_with_label(Str.toStringz(uri), Str.toStringz(label));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_label");
		}
		
		this(cast(GtkLinkButton*) p);
	}

	/**
	 * Retrieves the URI set using gtk_link_button_set_uri().
	 *
	 * Return: a valid URI.  The returned string is owned by the link button
	 *     and should not be modified or freed.
	 *
	 * Since: 2.10
	 */
	public string getUri()
	{
		return Str.toString(gtk_link_button_get_uri(gtkLinkButton));
	}

	/**
	 * Retrieves the “visited” state of the URI where the #GtkLinkButton
	 * points. The button becomes visited when it is clicked. If the URI
	 * is changed on the button, the “visited” state is unset again.
	 *
	 * The state may also be changed using gtk_link_button_set_visited().
	 *
	 * Return: %TRUE if the link has been visited, %FALSE otherwise
	 *
	 * Since: 2.14
	 */
	public bool getVisited()
	{
		return gtk_link_button_get_visited(gtkLinkButton) != 0;
	}

	/**
	 * Sets @uri as the URI where the #GtkLinkButton points. As a side-effect
	 * this unsets the “visited” state of the button.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Since: 2.10
	 */
	public void setUri(string uri)
	{
		gtk_link_button_set_uri(gtkLinkButton, Str.toStringz(uri));
	}

	/**
	 * Sets the “visited” state of the URI where the #GtkLinkButton
	 * points.  See gtk_link_button_get_visited() for more details.
	 *
	 * Params:
	 *     visited = the new “visited” state
	 *
	 * Since: 2.14
	 */
	public void setVisited(bool visited)
	{
		gtk_link_button_set_visited(gtkLinkButton, visited);
	}

	protected class OnActivateLinkDelegateWrapper
	{
		static OnActivateLinkDelegateWrapper[] listeners;
		bool delegate(LinkButton) dlg;
		gulong handlerId;
		
		this(bool delegate(LinkButton) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnActivateLinkDelegateWrapper source)
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
	 * The ::activate-link signal is emitted each time the #GtkLinkButton
	 * has been clicked.
	 *
	 * The default handler will call gtk_show_uri() with the URI stored inside
	 * the #GtkLinkButton:uri property.
	 *
	 * To override the default behavior, you can connect to the ::activate-link
	 * signal and stop the propagation of the signal by returning %TRUE from
	 * your handler.
	 */
	gulong addOnActivateLink(bool delegate(LinkButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnActivateLinkDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"activate-link",
			cast(GCallback)&callBackActivateLink,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackActivateLinkDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static int callBackActivateLink(GtkLinkButton* linkbuttonStruct, OnActivateLinkDelegateWrapper wrapper)
	{
		return wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackActivateLinkDestroy(OnActivateLinkDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
