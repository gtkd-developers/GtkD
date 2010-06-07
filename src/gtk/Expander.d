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
 * inFile  = GtkExpander.html
 * outPack = gtk
 * outFile = Expander
 * strct   = GtkExpander
 * realStrct=
 * ctorStrct=
 * clss    = Expander
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_expander_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_expander_new
 * 	- gtk_expander_new_with_mnemonic
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Expander;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Widget;



private import gtk.Bin;

/**
 * Description
 * A GtkExpander allows the user to hide or show its child by clicking
 * on an expander triangle similar to the triangles used in a GtkTreeView.
 * Normally you use an expander as you would use any other descendant
 * of GtkBin; you create the child widget and use gtk_container_add()
 * to add it to the expander. When the expander is toggled, it will take
 * care of showing and hiding the child automatically.
 * Special Usage
 * There are situations in which you may prefer to show and hide the
 * expanded widget yourself, such as when you want to actually create
 * the widget at expansion time. In this case, create a GtkExpander
 * but do not add a child to it. The expander widget has an
 * expanded property which can be used to monitor
 * its expansion state. You should watch this property with a signal
 * connection as follows:
 * expander = gtk_expander_new_with_mnemonic ("_More Options");
 * g_signal_connect (expander, "notify::expanded",
 *  G_CALLBACK (expander_callback), NULL);
 * ...
 * static void
 * expander_callback (GObject *object,
 *  GParamSpec *param_spec,
 *  gpointer user_data)
 * {
	 *  GtkExpander *expander;
	 *  expander = GTK_EXPANDER (object);
	 *  if (gtk_expander_get_expanded (expander))
	 *  {
		 *  /+* Show or create widgets +/
	 *  }
	 *  else
	 *  {
		 *  /+* Hide or destroy widgets +/
	 *  }
 * }
 * GtkExpander as GtkBuildable
 * The GtkExpander implementation of the GtkBuildable interface
 * supports placing a child in the label position by specifying
 * "label" as the "type" attribute of a <child> element.
 * A normal content child can be specified without specifying
 * a <child> type attribute.
 * Example  44.  A UI definition fragment with GtkExpander
 *  1
 * 2
 * 3
 * 4
 * 5
 * 6
 * 7
 * 8
 *  <object class="GtkExpander">
 *  <child type="label">
 *  <object class="GtkLabel" id="expander-label"/>
 *  </child>
 *  <child>
 *  <object class="GtkEntry" id="expander-content"/>
 *  </child>
 * </object>
 */
public class Expander : Bin
{
	
	/** the main Gtk struct */
	protected GtkExpander* gtkExpander;
	
	
	public GtkExpander* getExpanderStruct()
	{
		return gtkExpander;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkExpander;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkExpander* gtkExpander)
	{
		if(gtkExpander is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkExpander);
		if( ptr !is null )
		{
			this = cast(Expander)ptr;
			return;
		}
		super(cast(GtkBin*)gtkExpander);
		this.gtkExpander = gtkExpander;
	}
	
	/**
	 * Creates a new expander using label as the text of the label.
	 * Since 2.4
	 * Params:
	 *  label = the text of the label
	 *  mnemonic = if true characters in label that are preceded by an underscore,
	 *  are underlined.
	 *  If you need a literal underscore character in a label, use '__' (two
	 *  underscores). The first underlined character represents a keyboard
	 *  accelerator called a mnemonic.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label, bool mnemonic=true)
	{
		GtkExpander* p;
		
		if ( mnemonic )
		{
			// GtkWidget* gtk_expander_new_with_mnemonic (const gchar *label);
			p = cast(GtkExpander*)gtk_expander_new_with_mnemonic(Str.toStringz(label));
		}
		else
		{
			// GtkWidget* gtk_expander_new (const gchar *label);
			p = cast(GtkExpander*)gtk_expander_new(Str.toStringz(label));
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_expander_new");
		}
		
		this(p);
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(Expander)[] onActivateListeners;
	/**
	 */
	void addOnActivate(void delegate(Expander) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkExpander* expanderStruct, Expander expander)
	{
		foreach ( void delegate(Expander) dlg ; expander.onActivateListeners )
		{
			dlg(expander);
		}
	}
	
	
	/**
	 * Sets the state of the expander. Set to TRUE, if you want
	 * the child widget to be revealed, and FALSE if you want the
	 * child widget to be hidden.
	 * Since 2.4
	 * Params:
	 * expanded = whether the child widget is revealed
	 */
	public void setExpanded(int expanded)
	{
		// void gtk_expander_set_expanded (GtkExpander *expander,  gboolean expanded);
		gtk_expander_set_expanded(gtkExpander, expanded);
	}
	
	/**
	 * Queries a GtkExpander and returns its current state. Returns TRUE
	 * if the child widget is revealed.
	 * See gtk_expander_set_expanded().
	 * Since 2.4
	 * Returns: the current state of the expander.
	 */
	public int getExpanded()
	{
		// gboolean gtk_expander_get_expanded (GtkExpander *expander);
		return gtk_expander_get_expanded(gtkExpander);
	}
	
	/**
	 * Sets the spacing field of expander, which is the number of pixels to
	 * place between expander and the child.
	 * Since 2.4
	 * Params:
	 * spacing = distance between the expander and child in pixels.
	 */
	public void setSpacing(int spacing)
	{
		// void gtk_expander_set_spacing (GtkExpander *expander,  gint spacing);
		gtk_expander_set_spacing(gtkExpander, spacing);
	}
	
	/**
	 * Gets the value set by gtk_expander_set_spacing().
	 * Since 2.4
	 * Returns: spacing between the expander and child.
	 */
	public int getSpacing()
	{
		// gint gtk_expander_get_spacing (GtkExpander *expander);
		return gtk_expander_get_spacing(gtkExpander);
	}
	
	/**
	 * Sets the text of the label of the expander to label.
	 * This will also clear any previously set labels.
	 * Since 2.4
	 * Params:
	 * label = a string. allow-none.
	 */
	public void setLabel(string label)
	{
		// void gtk_expander_set_label (GtkExpander *expander,  const gchar *label);
		gtk_expander_set_label(gtkExpander, Str.toStringz(label));
	}
	
	/**
	 * Fetches the text from a label widget including any embedded
	 * underlines indicating mnemonics and Pango markup, as set by
	 * gtk_expander_set_label(). If the label text has not been set the
	 * return value will be NULL. This will be the case if you create an
	 * empty button with gtk_button_new() to use as a container.
	 * Note that this function behaved differently in versions prior to
	 * 2.14 and used to return the label text stripped of embedded
	 * underlines indicating mnemonics and Pango markup. This problem can
	 * be avoided by fetching the label text directly from the label
	 * widget.
	 * Since 2.4
	 * Returns: The text of the label widget. This string is ownedby the widget and must not be modified or freed.
	 */
	public string getLabel()
	{
		// const gchar * gtk_expander_get_label (GtkExpander *expander);
		return Str.toString(gtk_expander_get_label(gtkExpander));
	}
	
	/**
	 * If true, an underline in the text of the expander label indicates
	 * the next character should be used for the mnemonic accelerator key.
	 * Since 2.4
	 * Params:
	 * useUnderline = TRUE if underlines in the text indicate mnemonics
	 */
	public void setUseUnderline(int useUnderline)
	{
		// void gtk_expander_set_use_underline (GtkExpander *expander,  gboolean use_underline);
		gtk_expander_set_use_underline(gtkExpander, useUnderline);
	}
	
	/**
	 * Returns whether an embedded underline in the expander label indicates a
	 * mnemonic. See gtk_expander_set_use_underline().
	 * Since 2.4
	 * Returns: TRUE if an embedded underline in the expander label indicates the mnemonic accelerator keys.
	 */
	public int getUseUnderline()
	{
		// gboolean gtk_expander_get_use_underline (GtkExpander *expander);
		return gtk_expander_get_use_underline(gtkExpander);
	}
	
	/**
	 * Sets whether the text of the label contains markup in Pango's text markup
	 * language. See gtk_label_set_markup().
	 * Since 2.4
	 * Params:
	 * useMarkup = TRUE if the label's text should be parsed for markup
	 */
	public void setUseMarkup(int useMarkup)
	{
		// void gtk_expander_set_use_markup (GtkExpander *expander,  gboolean use_markup);
		gtk_expander_set_use_markup(gtkExpander, useMarkup);
	}
	
	/**
	 * Returns whether the label's text is interpreted as marked up with
	 * the Pango text markup
	 * language. See gtk_expander_set_use_markup().
	 * Since 2.4
	 * Returns: TRUE if the label's text will be parsed for markup
	 */
	public int getUseMarkup()
	{
		// gboolean gtk_expander_get_use_markup (GtkExpander *expander);
		return gtk_expander_get_use_markup(gtkExpander);
	}
	
	/**
	 * Set the label widget for the expander. This is the widget
	 * that will appear embedded alongside the expander arrow.
	 * Since 2.4
	 * Params:
	 * labelWidget = the new label widget. allow-none.
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		// void gtk_expander_set_label_widget (GtkExpander *expander,  GtkWidget *label_widget);
		gtk_expander_set_label_widget(gtkExpander, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}
	
	/**
	 * Retrieves the label widget for the frame. See
	 * gtk_expander_set_label_widget().
	 * Since 2.4
	 * Returns: the label widget, or NULL if there is none.
	 */
	public Widget getLabelWidget()
	{
		// GtkWidget * gtk_expander_get_label_widget (GtkExpander *expander);
		auto p = gtk_expander_get_label_widget(gtkExpander);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
}
