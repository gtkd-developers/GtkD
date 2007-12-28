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
 * inFile  = GtkAssistant.html
 * outPack = gtk
 * outFile = Assistant
 * strct   = GtkAssistant
 * realStrct=
 * ctorStrct=
 * clss    = Assistant
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_assistant_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixbuf
 * 	- gtk.Widget
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module gtk.Assistant;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gdk.Pixbuf;
private import gtk.Widget;



private import gtk.Window;

/**
 * Description
 * A GtkAssistant is a widget used to represent a generally complex
 * operation splitted in several steps, guiding the user through its pages
 * and controlling the page flow to collect the necessary data.
 */
public class Assistant : Window
{
	
	/** the main Gtk struct */
	protected GtkAssistant* gtkAssistant;
	
	
	public GtkAssistant* getAssistantStruct()
	{
		return gtkAssistant;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkAssistant;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAssistant* gtkAssistant)
	{
		version(noAssert)
		{
			if ( gtkAssistant is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkAssistant is null on constructor").newline;
				}
				else
				{
					printf("struct gtkAssistant is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkAssistant !is null, "struct gtkAssistant is null on constructor");
		}
		super(cast(GtkWindow*)gtkAssistant);
		this.gtkAssistant = gtkAssistant;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Assistant)[] onApplyListeners;
	void addOnApply(void delegate(Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("apply" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"apply",
			cast(GCallback)&callBackApply,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["apply"] = 1;
		}
		onApplyListeners ~= dlg;
	}
	extern(C) static void callBackApply(GtkAssistant* assistantStruct, Assistant assistant)
	{
		bool consumed = false;
		
		foreach ( void delegate(Assistant) dlg ; assistant.onApplyListeners )
		{
			dlg(assistant);
		}
		
		return consumed;
	}
	
	void delegate(Assistant)[] onCancelListeners;
	void addOnCancel(void delegate(Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cancel" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cancel",
			cast(GCallback)&callBackCancel,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cancel"] = 1;
		}
		onCancelListeners ~= dlg;
	}
	extern(C) static void callBackCancel(GtkAssistant* assistantStruct, Assistant assistant)
	{
		bool consumed = false;
		
		foreach ( void delegate(Assistant) dlg ; assistant.onCancelListeners )
		{
			dlg(assistant);
		}
		
		return consumed;
	}
	
	void delegate(Assistant)[] onCloseListeners;
	void addOnClose(void delegate(Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("close" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"close",
			cast(GCallback)&callBackClose,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["close"] = 1;
		}
		onCloseListeners ~= dlg;
	}
	extern(C) static void callBackClose(GtkAssistant* assistantStruct, Assistant assistant)
	{
		bool consumed = false;
		
		foreach ( void delegate(Assistant) dlg ; assistant.onCloseListeners )
		{
			dlg(assistant);
		}
		
		return consumed;
	}
	
	void delegate(Widget, Assistant)[] onPrepareListeners;
	void addOnPrepare(void delegate(Widget, Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("prepare" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"prepare",
			cast(GCallback)&callBackPrepare,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["prepare"] = 1;
		}
		onPrepareListeners ~= dlg;
	}
	extern(C) static void callBackPrepare(GtkAssistant* assistantStruct, GtkWidget* page, Assistant assistant)
	{
		bool consumed = false;
		
		foreach ( void delegate(Widget, Assistant) dlg ; assistant.onPrepareListeners )
		{
			dlg(new Widget(page), assistant);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkAssistant.
	 * Since 2.10
	 */
	public this ()
	{
		// GtkWidget* gtk_assistant_new (void);
		this(cast(GtkAssistant*)gtk_assistant_new() );
	}
	
	/**
	 * Returns the page number of the current page
	 * Since 2.10
	 * Returns: The index (starting from 0) of the current page inthe assistant, if the assistant has no pages, -1 will be returned
	 */
	public int getCurrentPage()
	{
		// gint gtk_assistant_get_current_page (GtkAssistant *assistant);
		return gtk_assistant_get_current_page(gtkAssistant);
	}
	
	/**
	 * Switches the page to page_num. Note that this will only be necessary
	 * in custom buttons, as the assistant flow can be set with
	 * gtk_assistant_set_forward_page_func().
	 * Since 2.10
	 * Params:
	 * pageNum =  index of the page to switch to, starting from 0.
	 *  If negative, the last page will be used. If greater
	 *  than the number of pages in the assistant, nothing
	 *  will be done.
	 */
	public void setCurrentPage(int pageNum)
	{
		// void gtk_assistant_set_current_page (GtkAssistant *assistant,  gint page_num);
		gtk_assistant_set_current_page(gtkAssistant, pageNum);
	}
	
	/**
	 * Returns the number of pages in the assistant
	 * Since 2.10
	 * Returns: The number of pages in the assistant.
	 */
	public int getNPages()
	{
		// gint gtk_assistant_get_n_pages (GtkAssistant *assistant);
		return gtk_assistant_get_n_pages(gtkAssistant);
	}
	
	/**
	 * Returns the child widget contained in page number page_num.
	 * Since 2.10
	 * Params:
	 * pageNum =  The index of a page in the assistant, or -1 to get the last page;
	 * Returns: The child widget, or NULL if page_num is out of bounds.
	 */
	public Widget getNthPage(int pageNum)
	{
		// GtkWidget* gtk_assistant_get_nth_page (GtkAssistant *assistant,  gint page_num);
		return new Widget( gtk_assistant_get_nth_page(gtkAssistant, pageNum) );
	}
	
	/**
	 * Prepends a page to the assistant.
	 * Since 2.10
	 * Params:
	 * page =  a GtkWidget
	 * Returns: the index (starting at 0) of the inserted page
	 */
	public int prependPage(Widget page)
	{
		// gint gtk_assistant_prepend_page (GtkAssistant *assistant,  GtkWidget *page);
		return gtk_assistant_prepend_page(gtkAssistant, (page is null) ? null : page.getWidgetStruct());
	}
	
	/**
	 * Appends a page to the assistant.
	 * Since 2.10
	 * Params:
	 * page =  a GtkWidget
	 * Returns: the index (starting at 0) of the inserted page
	 */
	public int appendPage(Widget page)
	{
		// gint gtk_assistant_append_page (GtkAssistant *assistant,  GtkWidget *page);
		return gtk_assistant_append_page(gtkAssistant, (page is null) ? null : page.getWidgetStruct());
	}
	
	/**
	 * Inserts a page in the assistant at a given position.
	 * Since 2.10
	 * Params:
	 * page =  a GtkWidget
	 * position =  the index (starting at 0) at which to insert the page,
	 *  or -1 to append the page to the assistant
	 * Returns: the index (starting from 0) of the inserted page
	 */
	public int insertPage(Widget page, int position)
	{
		// gint gtk_assistant_insert_page (GtkAssistant *assistant,  GtkWidget *page,  gint position);
		return gtk_assistant_insert_page(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), position);
	}
	
	
	/**
	 * Sets the page forwarding function to be page_func, this function will
	 * be used to determine what will be the next page when the user presses
	 * the forward button. Setting page_func to NULL will make the assistant
	 * to use the default forward function, which just goes to the next visible
	 * page.
	 * Since 2.10
	 * Params:
	 * pageFunc =  the GtkAssistantPageFunc, or NULL to use the default one
	 * data =  user data for page_func
	 * destroy =  destroy notifier for data
	 */
	public void setForwardPageFunc(GtkAssistantPageFunc pageFunc, void* data, GDestroyNotify destroy)
	{
		// void gtk_assistant_set_forward_page_func (GtkAssistant *assistant,  GtkAssistantPageFunc page_func,  gpointer data,  GDestroyNotify destroy);
		gtk_assistant_set_forward_page_func(gtkAssistant, pageFunc, data, destroy);
	}
	
	
	/**
	 * Sets the page type for page. The page type determines the page
	 * behavior in the assistant.
	 * Since 2.10
	 * Params:
	 * page =  a page of assistant
	 * type =  the new type for page
	 */
	public void setPageType(Widget page, GtkAssistantPageType type)
	{
		// void gtk_assistant_set_page_type (GtkAssistant *assistant,  GtkWidget *page,  GtkAssistantPageType type);
		gtk_assistant_set_page_type(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), type);
	}
	
	/**
	 * Gets the page type of page.
	 * Since 2.10
	 * Params:
	 * page =  a page of assistant
	 * Returns: the page type of page.
	 */
	public GtkAssistantPageType getPageType(Widget page)
	{
		// GtkAssistantPageType gtk_assistant_get_page_type (GtkAssistant *assistant,  GtkWidget *page);
		return gtk_assistant_get_page_type(gtkAssistant, (page is null) ? null : page.getWidgetStruct());
	}
	
	/**
	 * Sets a title for page. The title is displayed in the header
	 * area of the assistant when page is the current page.
	 * Since 2.10
	 * Params:
	 * page =  a page of assistant
	 * title =  the new title for page
	 */
	public void setPageTitle(Widget page, char[] title)
	{
		// void gtk_assistant_set_page_title (GtkAssistant *assistant,  GtkWidget *page,  const gchar *title);
		gtk_assistant_set_page_title(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), Str.toStringz(title));
	}
	
	/**
	 * Gets the title for page.
	 * Since 2.10
	 * Params:
	 * page =  a page of assistant
	 * Returns: the title for page.
	 */
	public char[] getPageTitle(Widget page)
	{
		// const gchar* gtk_assistant_get_page_title (GtkAssistant *assistant,  GtkWidget *page);
		return Str.toString(gtk_assistant_get_page_title(gtkAssistant, (page is null) ? null : page.getWidgetStruct()) );
	}
	
	/**
	 * Sets a header image for page. This image is displayed in the header
	 * area of the assistant when page is the current page.
	 * Since 2.10
	 * Params:
	 * page =  a page of assistant
	 * pixbuf =  the new header image page
	 */
	public void setPageHeaderImage(Widget page, Pixbuf pixbuf)
	{
		// void gtk_assistant_set_page_header_image (GtkAssistant *assistant,  GtkWidget *page,  GdkPixbuf *pixbuf);
		gtk_assistant_set_page_header_image(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Gets the header image for page.
	 * Since 2.10
	 * Params:
	 * page =  a page of assistant
	 * Returns: the header image for page, or NULLif there's no header image for the page.
	 */
	public Pixbuf getPageHeaderImage(Widget page)
	{
		// GdkPixbuf* gtk_assistant_get_page_header_image (GtkAssistant *assistant,  GtkWidget *page);
		return new Pixbuf( gtk_assistant_get_page_header_image(gtkAssistant, (page is null) ? null : page.getWidgetStruct()) );
	}
	
	/**
	 * Sets a header image for page. This image is displayed in the side
	 * area of the assistant when page is the current page.
	 * Since 2.10
	 * Params:
	 * page =  a page of assistant
	 * pixbuf =  the new header image page
	 */
	public void setPageSideImage(Widget page, Pixbuf pixbuf)
	{
		// void gtk_assistant_set_page_side_image (GtkAssistant *assistant,  GtkWidget *page,  GdkPixbuf *pixbuf);
		gtk_assistant_set_page_side_image(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Gets the header image for page.
	 * Since 2.10
	 * Params:
	 * page =  a page of assistant
	 * Returns: the side image for page, or NULLif there's no side image for the page.
	 */
	public Pixbuf getPageSideImage(Widget page)
	{
		// GdkPixbuf* gtk_assistant_get_page_side_image (GtkAssistant *assistant,  GtkWidget *page);
		return new Pixbuf( gtk_assistant_get_page_side_image(gtkAssistant, (page is null) ? null : page.getWidgetStruct()) );
	}
	
	/**
	 * Sets whether page contents are complete. This will make
	 * assistant update the buttons state to be able to continue the task.
	 * Since 2.10
	 * Params:
	 * page =  a page of assistant
	 * complete =  the completeness status of the page
	 */
	public void setPageComplete(Widget page, int complete)
	{
		// void gtk_assistant_set_page_complete (GtkAssistant *assistant,  GtkWidget *page,  gboolean complete);
		gtk_assistant_set_page_complete(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), complete);
	}
	
	/**
	 * Gets whether page is complete..
	 * Since 2.10
	 * Params:
	 * page =  a page of assistant
	 * Returns: TRUE if page is complete.
	 */
	public int getPageComplete(Widget page)
	{
		// gboolean gtk_assistant_get_page_complete (GtkAssistant *assistant,  GtkWidget *page);
		return gtk_assistant_get_page_complete(gtkAssistant, (page is null) ? null : page.getWidgetStruct());
	}
	
	/**
	 * Adds a widget to the action area of a GtkAssistant.
	 * Since 2.10
	 * Params:
	 * child =  a GtkWidget
	 */
	public void addActionWidget(Widget child)
	{
		// void gtk_assistant_add_action_widget (GtkAssistant *assistant,  GtkWidget *child);
		gtk_assistant_add_action_widget(gtkAssistant, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Removes a widget from the action area of a GtkAssistant.
	 * Since 2.10
	 * Params:
	 * child =  a GtkWidget
	 */
	public void removeActionWidget(Widget child)
	{
		// void gtk_assistant_remove_action_widget (GtkAssistant *assistant,  GtkWidget *child);
		gtk_assistant_remove_action_widget(gtkAssistant, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Forces assistant to recompute the buttons state.
	 * GTK+ automatically takes care of this in most situations,
	 * e.g. when the user goes to a different page, or when the
	 * visibility or completeness of a page changes.
	 * One situation where it can be necessary to call this
	 * function is when changing a value on the current page
	 * affects the future page flow of the assistant.
	 * Since 2.10
	 * Child Property Details
	 * The "complete" child property
	 *  "complete" gboolean : Read / Write
	 * Setting the "complete" child property to TRUE marks a page as complete
	 * (i.e.: all the required fields are filled out). GTK+ uses this information
	 * to control the sensitivity of the navigation buttons.
	 * Default value: FALSE
	 * Since 2.10
	 */
	public void updateButtonsState()
	{
		// void gtk_assistant_update_buttons_state (GtkAssistant *assistant);
		gtk_assistant_update_buttons_state(gtkAssistant);
	}
	
	
	
	
	
	
	
	
}
