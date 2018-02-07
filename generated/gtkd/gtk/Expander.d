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


module gtk.Expander;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Bin;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkExpander allows the user to hide or show its child by clicking
 * on an expander triangle similar to the triangles used in a #GtkTreeView.
 * 
 * Normally you use an expander as you would use any other descendant
 * of #GtkBin; you create the child widget and use gtk_container_add()
 * to add it to the expander. When the expander is toggled, it will take
 * care of showing and hiding the child automatically.
 * 
 * # Special Usage
 * 
 * There are situations in which you may prefer to show and hide the
 * expanded widget yourself, such as when you want to actually create
 * the widget at expansion time. In this case, create a #GtkExpander
 * but do not add a child to it. The expander widget has an
 * #GtkExpander:expanded property which can be used to monitor
 * its expansion state. You should watch this property with a signal
 * connection as follows:
 * 
 * |[<!-- language="C" -->
 * static void
 * expander_callback (GObject    *object,
 * GParamSpec *param_spec,
 * gpointer    user_data)
 * {
 * GtkExpander *expander;
 * 
 * expander = GTK_EXPANDER (object);
 * 
 * if (gtk_expander_get_expanded (expander))
 * {
 * // Show or create widgets
 * }
 * else
 * {
 * // Hide or destroy widgets
 * }
 * }
 * 
 * static void
 * create_expander (void)
 * {
 * GtkWidget *expander = gtk_expander_new_with_mnemonic ("_More Options");
 * g_signal_connect (expander, "notify::expanded",
 * G_CALLBACK (expander_callback), NULL);
 * 
 * // ...
 * }
 * ]|
 * 
 * # GtkExpander as GtkBuildable
 * 
 * The GtkExpander implementation of the GtkBuildable interface supports
 * placing a child in the label position by specifying “label” as the
 * “type” attribute of a <child> element. A normal content child can be
 * specified without specifying a <child> type attribute.
 * 
 * An example of a UI definition fragment with GtkExpander:
 * |[
 * <object class="GtkExpander">
 * <child type="label">
 * <object class="GtkLabel" id="expander-label"/>
 * </child>
 * <child>
 * <object class="GtkEntry" id="expander-content"/>
 * </child>
 * </object>
 * ]|
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * expander
 * ├── title
 * │   ├── arrow
 * │   ╰── <label widget>
 * ╰── <child>
 * ]|
 * 
 * GtkExpander has three CSS nodes, the main node with the name expander,
 * a subnode with name title and node below it with name arrow. The arrow of an
 * expander that is showing its child gets the :checked pseudoclass added to it.
 */
public class Expander : Bin
{
	/** the main Gtk struct */
	protected GtkExpander* gtkExpander;

	/** Get the main Gtk struct */
	public GtkExpander* getExpanderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkExpander;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkExpander;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkExpander* gtkExpander, bool ownedRef = false)
	{
		this.gtkExpander = gtkExpander;
		super(cast(GtkBin*)gtkExpander, ownedRef);
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
			p = cast(GtkExpander*)gtk_expander_new_with_mnemonic(Str.toStringz(label));
		}
		else
		{
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

	/** */
	public static GType getType()
	{
		return gtk_expander_get_type();
	}

	/**
	 * Queries a #GtkExpander and returns its current state. Returns %TRUE
	 * if the child widget is revealed.
	 *
	 * See gtk_expander_set_expanded().
	 *
	 * Returns: the current state of the expander
	 *
	 * Since: 2.4
	 */
	public bool getExpanded()
	{
		return gtk_expander_get_expanded(gtkExpander) != 0;
	}

	/**
	 * Fetches the text from a label widget including any embedded
	 * underlines indicating mnemonics and Pango markup, as set by
	 * gtk_expander_set_label(). If the label text has not been set the
	 * return value will be %NULL. This will be the case if you create an
	 * empty button with gtk_button_new() to use as a container.
	 *
	 * Note that this function behaved differently in versions prior to
	 * 2.14 and used to return the label text stripped of embedded
	 * underlines indicating mnemonics and Pango markup. This problem can
	 * be avoided by fetching the label text directly from the label
	 * widget.
	 *
	 * Returns: The text of the label widget. This string is owned
	 *     by the widget and must not be modified or freed.
	 *
	 * Since: 2.4
	 */
	public string getLabel()
	{
		return Str.toString(gtk_expander_get_label(gtkExpander));
	}

	/**
	 * Returns whether the label widget will fill all available
	 * horizontal space allocated to @expander.
	 *
	 * Returns: %TRUE if the label widget will fill all
	 *     available horizontal space
	 *
	 * Since: 2.22
	 */
	public bool getLabelFill()
	{
		return gtk_expander_get_label_fill(gtkExpander) != 0;
	}

	/**
	 * Retrieves the label widget for the frame. See
	 * gtk_expander_set_label_widget().
	 *
	 * Returns: the label widget,
	 *     or %NULL if there is none
	 *
	 * Since: 2.4
	 */
	public Widget getLabelWidget()
	{
		auto p = gtk_expander_get_label_widget(gtkExpander);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns whether the expander will resize the toplevel widget
	 * containing the expander upon resizing and collpasing.
	 *
	 * Returns: the “resize toplevel” setting.
	 *
	 * Since: 3.2
	 */
	public bool getResizeToplevel()
	{
		return gtk_expander_get_resize_toplevel(gtkExpander) != 0;
	}

	/**
	 * Gets the value set by gtk_expander_set_spacing().
	 *
	 * Deprecated: Use margins on the child instead.
	 *
	 * Returns: spacing between the expander and child
	 *
	 * Since: 2.4
	 */
	public int getSpacing()
	{
		return gtk_expander_get_spacing(gtkExpander);
	}

	/**
	 * Returns whether the label’s text is interpreted as marked up with
	 * the [Pango text markup language][PangoMarkupFormat].
	 * See gtk_expander_set_use_markup().
	 *
	 * Returns: %TRUE if the label’s text will be parsed for markup
	 *
	 * Since: 2.4
	 */
	public bool getUseMarkup()
	{
		return gtk_expander_get_use_markup(gtkExpander) != 0;
	}

	/**
	 * Returns whether an embedded underline in the expander label
	 * indicates a mnemonic. See gtk_expander_set_use_underline().
	 *
	 * Returns: %TRUE if an embedded underline in the expander
	 *     label indicates the mnemonic accelerator keys
	 *
	 * Since: 2.4
	 */
	public bool getUseUnderline()
	{
		return gtk_expander_get_use_underline(gtkExpander) != 0;
	}

	/**
	 * Sets the state of the expander. Set to %TRUE, if you want
	 * the child widget to be revealed, and %FALSE if you want the
	 * child widget to be hidden.
	 *
	 * Params:
	 *     expanded = whether the child widget is revealed
	 *
	 * Since: 2.4
	 */
	public void setExpanded(bool expanded)
	{
		gtk_expander_set_expanded(gtkExpander, expanded);
	}

	/**
	 * Sets the text of the label of the expander to @label.
	 *
	 * This will also clear any previously set labels.
	 *
	 * Params:
	 *     label = a string
	 *
	 * Since: 2.4
	 */
	public void setLabel(string label)
	{
		gtk_expander_set_label(gtkExpander, Str.toStringz(label));
	}

	/**
	 * Sets whether the label widget should fill all available
	 * horizontal space allocated to @expander.
	 *
	 * Params:
	 *     labelFill = %TRUE if the label should should fill
	 *         all available horizontal space
	 *
	 * Since: 2.22
	 */
	public void setLabelFill(bool labelFill)
	{
		gtk_expander_set_label_fill(gtkExpander, labelFill);
	}

	/**
	 * Set the label widget for the expander. This is the widget
	 * that will appear embedded alongside the expander arrow.
	 *
	 * Params:
	 *     labelWidget = the new label widget
	 *
	 * Since: 2.4
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		gtk_expander_set_label_widget(gtkExpander, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}

	/**
	 * Sets whether the expander will resize the toplevel widget
	 * containing the expander upon resizing and collpasing.
	 *
	 * Params:
	 *     resizeToplevel = whether to resize the toplevel
	 *
	 * Since: 3.2
	 */
	public void setResizeToplevel(bool resizeToplevel)
	{
		gtk_expander_set_resize_toplevel(gtkExpander, resizeToplevel);
	}

	/**
	 * Sets the spacing field of @expander, which is the number of
	 * pixels to place between expander and the child.
	 *
	 * Deprecated: Use margins on the child instead.
	 *
	 * Params:
	 *     spacing = distance between the expander and child in pixels
	 *
	 * Since: 2.4
	 */
	public void setSpacing(int spacing)
	{
		gtk_expander_set_spacing(gtkExpander, spacing);
	}

	/**
	 * Sets whether the text of the label contains markup in
	 * [Pango’s text markup language][PangoMarkupFormat].
	 * See gtk_label_set_markup().
	 *
	 * Params:
	 *     useMarkup = %TRUE if the label’s text should be parsed for markup
	 *
	 * Since: 2.4
	 */
	public void setUseMarkup(bool useMarkup)
	{
		gtk_expander_set_use_markup(gtkExpander, useMarkup);
	}

	/**
	 * If true, an underline in the text of the expander label indicates
	 * the next character should be used for the mnemonic accelerator key.
	 *
	 * Params:
	 *     useUnderline = %TRUE if underlines in the text indicate mnemonics
	 *
	 * Since: 2.4
	 */
	public void setUseUnderline(bool useUnderline)
	{
		gtk_expander_set_use_underline(gtkExpander, useUnderline);
	}

	/** */
	gulong addOnActivate(void delegate(Expander) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
