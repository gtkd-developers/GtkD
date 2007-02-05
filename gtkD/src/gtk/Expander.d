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
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module gtk.Expander;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gtk.Widget;



/**
 * Description
 * A GtkExpander allows the user to hide or show its child by clicking on an expander triangle similar to
 * the triangles used in a GtkTreeView.
 *  Normally you use an expander as you would use any other descendant
 *  of GtkBin; you create the child widget and use
 *  gtk_container_add() to add it to the expander. When the expander
 *  is toggled, it will take care of showing and hiding the child
 *  automatically.
 * Special Usage
 *  There are situations in which you may prefer to show and
 *  hide the expanded widget yourself, such as when you want to
 *  actually create the widget at expansion time. In this case,
 *  create a GtkExpander but do not add a child to it. The
 *  expander widget has an expanded property
 *  which can be used to monitor its expansion state. You should
 *  watch this property with a signal connection as follows:
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
 */
private import gtk.Bin;
public class Expander : Bin
{
	
	/** the main Gtk struct */
	protected GtkExpander* gtkExpander;
	
	
	public GtkExpander* getExpanderStruct()
	{
		return gtkExpander;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkExpander;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkExpander* gtkExpander)
	{
		super(cast(GtkBin*)gtkExpander);
		this.gtkExpander = gtkExpander;
	}
	/**
	 * Allows constructors from Widget - needed for Glade support
	 */
	private import gtk.Widget;
	public this (Widget  parent)
	{
		this(cast(GtkExpander*) parent.getWidgetStruct());
	}
	
	/**
	 * Creates a new expander using label as the text of the label.
	 * If mnemonic os true
	 * If characters in label are preceded by an underscore, they are underlined.
	 * If you need a literal underscore character in a label, use '__' (two
	 * underscores). The first underlined character represents a keyboard
	 * accelerator called a mnemonic.
	 * label:
	 *  the text of the label
	 * Returns:
	 *  a new GtkExpander widget.
	 * Since 2.4
	 */
	public this (char[] label, bit mnemonic=true)
	{
		if ( mnemonic )
		{
			// GtkWidget* gtk_expander_new_with_mnemonic (const gchar *label);
			this(cast(GtkExpander*)gtk_expander_new_with_mnemonic(Str.toStringz(label)) );
		}
		else
		{
			// GtkWidget* gtk_expander_new (const gchar *label);
			this(cast(GtkExpander*)gtk_expander_new(Str.toStringz(label)) );
		}
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Expander)[] onActivateListeners;
	void addOnActivate(void delegate(Expander) dlg)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkExpander* expanderStruct, Expander expander)
	{
		bit consumed = false;
		
		foreach ( void delegate(Expander) dlg ; expander.onActivateListeners )
		{
			dlg(expander);
		}
		
		return consumed;
	}
	
	
	
	
	
	/**
	 * Sets the state of the expander. Set to TRUE, if you want
	 * the child widget to be revealed, and FALSE if you want the
	 * child widget to be hidden.
	 * expander:
	 *  a GtkExpander
	 * expanded:
	 *  whether the child widget is revealed
	 * Since 2.4
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
	 * expander:
	 * a GtkExpander
	 * Returns:
	 *  the current state of the expander.
	 * Since 2.4
	 */
	public int getExpanded()
	{
		// gboolean gtk_expander_get_expanded (GtkExpander *expander);
		return gtk_expander_get_expanded(gtkExpander);
	}
	
	/**
	 * Sets the spacing field of expander, which is the number of pixels to
	 * place between expander and the child.
	 * expander:
	 *  a GtkExpander
	 * spacing:
	 *  distance between the expander and child in pixels.
	 * Since 2.4
	 */
	public void setSpacing(int spacing)
	{
		// void gtk_expander_set_spacing (GtkExpander *expander,  gint spacing);
		gtk_expander_set_spacing(gtkExpander, spacing);
	}
	
	/**
	 * Gets the value set by gtk_expander_set_spacing().
	 * expander:
	 *  a GtkExpander
	 * Returns:
	 *  spacing between the expander and child.
	 * Since 2.4
	 */
	public int getSpacing()
	{
		// gint gtk_expander_get_spacing (GtkExpander *expander);
		return gtk_expander_get_spacing(gtkExpander);
	}
	
	/**
	 * Sets the text of the label of the expander to label.
	 * This will also clear any previously set labels.
	 * expander:
	 *  a GtkExpander
	 * label:
	 *  a string
	 * Since 2.4
	 */
	public void setLabel(char[] label)
	{
		// void gtk_expander_set_label (GtkExpander *expander,  const gchar *label);
		gtk_expander_set_label(gtkExpander, Str.toStringz(label));
	}
	
	/**
	 * Fetches the text from the label of the expander, as set by
	 * gtk_expander_set_label(). If the label text has not
	 * been set the return value will be NULL. This will be the
	 * case if you create an empty button with gtk_button_new() to
	 * use as a container.
	 * expander:
	 *  a GtkExpander
	 * Returns:
	 *  The text of the label widget. This string is owned
	 * by the widget and must not be modified or freed.
	 * Since 2.4
	 */
	public char[] getLabel()
	{
		// const gchar* gtk_expander_get_label (GtkExpander *expander);
		return Str.toString(gtk_expander_get_label(gtkExpander) );
	}
	
	/**
	 * If true, an underline in the text of the expander label indicates
	 * the next character should be used for the mnemonic accelerator key.
	 * expander:
	 *  a GtkExpander
	 * use_underline:
	 *  TRUE if underlines in the text indicate mnemonics
	 * Since 2.4
	 */
	public void setUseUnderline(int useUnderline)
	{
		// void gtk_expander_set_use_underline (GtkExpander *expander,  gboolean use_underline);
		gtk_expander_set_use_underline(gtkExpander, useUnderline);
	}
	
	/**
	 * Returns whether an embedded underline in the expander label indicates a
	 * mnemonic. See gtk_expander_set_use_underline().
	 * expander:
	 *  a GtkExpander
	 * Returns:
	 *  TRUE if an embedded underline in the expander label
	 *  indicates the mnemonic accelerator keys.
	 * Since 2.4
	 */
	public int getUseUnderline()
	{
		// gboolean gtk_expander_get_use_underline (GtkExpander *expander);
		return gtk_expander_get_use_underline(gtkExpander);
	}
	
	/**
	 * Sets whether the text of the label contains markup in Pango's text markup
	 * language. See gtk_label_set_markup().
	 * expander:
	 *  a GtkExpander
	 * use_markup:
	 *  TRUE if the label's text should be parsed for markup
	 * Since 2.4
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
	 * expander:
	 *  a GtkExpander
	 * Returns:
	 *  TRUE if the label's text will be parsed for markup
	 * Since 2.4
	 */
	public int getUseMarkup()
	{
		// gboolean gtk_expander_get_use_markup (GtkExpander *expander);
		return gtk_expander_get_use_markup(gtkExpander);
	}
	
	/**
	 * Set the label widget for the expander. This is the widget
	 * that will appear embedded alongside the expander arrow.
	 * expander:
	 *  a GtkExpander
	 * label_widget:
	 *  the new label widget
	 * Since 2.4
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		// void gtk_expander_set_label_widget (GtkExpander *expander,  GtkWidget *label_widget);
		gtk_expander_set_label_widget(gtkExpander, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}
	
	/**
	 * Retrieves the label widget for the frame. See
	 * gtk_expander_set_label_widget().
	 * expander:
	 *  a GtkExpander
	 * Returns:
	 *  the label widget, or NULL if there is none.
	 * Since 2.4
	 * Property Details
	 * The "expanded" property
	 *  "expanded" gboolean : Read / Write / Construct
	 * Whether the expander has been opened to reveal the child widget.
	 * Default value: FALSE
	 */
	public Widget getLabelWidget()
	{
		// GtkWidget* gtk_expander_get_label_widget (GtkExpander *expander);
		return new Widget( gtk_expander_get_label_widget(gtkExpander) );
	}
	
	
	
	
	
	
}
