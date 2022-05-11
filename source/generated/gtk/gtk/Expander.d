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
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkExpander` allows the user to reveal its child by clicking
 * on an expander triangle.
 * 
 * ![An example GtkExpander](expander.png)
 * 
 * This is similar to the triangles used in a `GtkTreeView`.
 * 
 * Normally you use an expander as you would use a frame; you create
 * the child widget and use [method@Gtk.Expander.set_child] to add it
 * to the expander. When the expander is toggled, it will take care of
 * showing and hiding the child automatically.
 * 
 * # Special Usage
 * 
 * There are situations in which you may prefer to show and hide the
 * expanded widget yourself, such as when you want to actually create
 * the widget at expansion time. In this case, create a `GtkExpander`
 * but do not add a child to it. The expander widget has an
 * [property@Gtk.Expander:expanded[ property which can be used to
 * monitor its expansion state. You should watch this property with
 * a signal connection as follows:
 * 
 * ```c
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
 * ```
 * 
 * # GtkExpander as GtkBuildable
 * 
 * The `GtkExpander` implementation of the `GtkBuildable` interface supports
 * placing a child in the label position by specifying “label” as the
 * “type” attribute of a <child> element. A normal content child can be
 * specified without specifying a <child> type attribute.
 * 
 * An example of a UI definition fragment with GtkExpander:
 * 
 * ```xml
 * <object class="GtkExpander">
 * <child type="label">
 * <object class="GtkLabel" id="expander-label"/>
 * </child>
 * <child>
 * <object class="GtkEntry" id="expander-content"/>
 * </child>
 * </object>
 * ```
 * 
 * # CSS nodes
 * 
 * ```
 * expander
 * ╰── box
 * ├── title
 * │   ├── arrow
 * │   ╰── <label widget>
 * ╰── <child>
 * ```
 * 
 * `GtkExpander` has three CSS nodes, the main node with the name expander,
 * a subnode with name title and node below it with name arrow. The arrow of an
 * expander that is showing its child gets the :checked pseudoclass added to it.
 * 
 * # Accessibility
 * 
 * `GtkExpander` uses the %GTK_ACCESSIBLE_ROLE_BUTTON role.
 */
public class Expander : Widget
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
		super(cast(GtkWidget*)gtkExpander, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_expander_get_type();
	}

	/**
	 * Creates a new expander using @label as the text of the label.
	 *
	 * If characters in @label are preceded by an underscore, they are
	 * underlined. If you need a literal underscore character in a label,
	 * use “__” (two underscores). The first underlined character represents
	 * a keyboard accelerator called a mnemonic.
	 *
	 * Pressing Alt and that key activates the button.
	 *
	 * Params:
	 *     label = the text of the label with an underscore
	 *         in front of the mnemonic character
	 *
	 * Returns: a new `GtkExpander` widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string label)
	{
		auto __p = gtk_expander_new_with_mnemonic(Str.toStringz(label));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_mnemonic");
		}

		this(cast(GtkExpander*) __p);
	}

	/**
	 * Gets the child widget of @expander.
	 *
	 * Returns: the child widget of @expander
	 */
	public Widget getChild()
	{
		auto __p = gtk_expander_get_child(gtkExpander);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Queries a `GtkExpander` and returns its current state.
	 *
	 * Returns %TRUE if the child widget is revealed.
	 *
	 * Returns: the current state of the expander
	 */
	public bool getExpanded()
	{
		return gtk_expander_get_expanded(gtkExpander) != 0;
	}

	/**
	 * Fetches the text from a label widget.
	 *
	 * This is including any embedded underlines indicating mnemonics and
	 * Pango markup, as set by [method@Gtk.Expander.set_label]. If the label
	 * text has not been set the return value will be %NULL. This will be the
	 * case if you create an empty button with gtk_button_new() to use as a
	 * container.
	 *
	 * Returns: The text of the label widget. This string is owned
	 *     by the widget and must not be modified or freed.
	 */
	public string getLabel()
	{
		return Str.toString(gtk_expander_get_label(gtkExpander));
	}

	/**
	 * Retrieves the label widget for the frame.
	 *
	 * Returns: the label widget
	 */
	public Widget getLabelWidget()
	{
		auto __p = gtk_expander_get_label_widget(gtkExpander);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether the expander will resize the toplevel widget
	 * containing the expander upon resizing and collpasing.
	 *
	 * Returns: the “resize toplevel” setting.
	 */
	public bool getResizeToplevel()
	{
		return gtk_expander_get_resize_toplevel(gtkExpander) != 0;
	}

	/**
	 * Returns whether the label’s text is interpreted as Pango markup.
	 *
	 * Returns: %TRUE if the label’s text will be parsed for markup
	 */
	public bool getUseMarkup()
	{
		return gtk_expander_get_use_markup(gtkExpander) != 0;
	}

	/**
	 * Returns whether an underline in the text indicates a mnemonic.
	 *
	 * Returns: %TRUE if an embedded underline in the expander
	 *     label indicates the mnemonic accelerator keys
	 */
	public bool getUseUnderline()
	{
		return gtk_expander_get_use_underline(gtkExpander) != 0;
	}

	/**
	 * Sets the child widget of @expander.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_expander_set_child(gtkExpander, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the state of the expander.
	 *
	 * Set to %TRUE, if you want the child widget to be revealed,
	 * and %FALSE if you want the child widget to be hidden.
	 *
	 * Params:
	 *     expanded = whether the child widget is revealed
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
	 */
	public void setLabel(string label)
	{
		gtk_expander_set_label(gtkExpander, Str.toStringz(label));
	}

	/**
	 * Set the label widget for the expander.
	 *
	 * This is the widget that will appear embedded alongside
	 * the expander arrow.
	 *
	 * Params:
	 *     labelWidget = the new label widget
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
	 */
	public void setResizeToplevel(bool resizeToplevel)
	{
		gtk_expander_set_resize_toplevel(gtkExpander, resizeToplevel);
	}

	/**
	 * Sets whether the text of the label contains Pango markup.
	 *
	 * Params:
	 *     useMarkup = %TRUE if the label’s text should be parsed for markup
	 */
	public void setUseMarkup(bool useMarkup)
	{
		gtk_expander_set_use_markup(gtkExpander, useMarkup);
	}

	/**
	 * If true, an underline in the text indicates a mnemonic.
	 *
	 * Params:
	 *     useUnderline = %TRUE if underlines in the text indicate mnemonics
	 */
	public void setUseUnderline(bool useUnderline)
	{
		gtk_expander_set_use_underline(gtkExpander, useUnderline);
	}

	/**
	 * Activates the `GtkExpander`.
	 */
	gulong addOnActivate(void delegate(Expander) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
