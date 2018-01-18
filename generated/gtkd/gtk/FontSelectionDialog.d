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


module gtk.FontSelectionDialog;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Dialog;
private import gtk.FontSelection;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class FontSelectionDialog : Dialog
{
	/** the main Gtk struct */
	protected GtkFontSelectionDialog* gtkFontSelectionDialog;

	/** Get the main Gtk struct */
	public GtkFontSelectionDialog* getFontSelectionDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFontSelectionDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFontSelectionDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFontSelectionDialog* gtkFontSelectionDialog, bool ownedRef = false)
	{
		this.gtkFontSelectionDialog = gtkFontSelectionDialog;
		super(cast(GtkDialog*)gtkFontSelectionDialog, ownedRef);
	}

	/**
	 * Retrieves the FontSelection widget embedded in the dialog.
	 *
	 * Deprecated: Use FontChooserDialog
	 *
	 * Return: the embedded FontSelection
	 *
	 * Since: 2.22
	 */
	public FontSelection getFontSelection()
	{
		auto p = gtk_font_selection_dialog_get_font_selection(gtkFontSelectionDialog);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FontSelection)(cast(GtkFontSelection*) p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_font_selection_dialog_get_type();
	}

	/**
	 * Creates a new #GtkFontSelectionDialog.
	 *
	 * Deprecated: Use #GtkFontChooserDialog
	 *
	 * Params:
	 *     title = the title of the dialog window
	 *
	 * Returns: a new #GtkFontSelectionDialog
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title)
	{
		auto p = gtk_font_selection_dialog_new(Str.toStringz(title));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFontSelectionDialog*) p);
	}

	/**
	 * Gets the “Cancel” button.
	 *
	 * Deprecated: Use #GtkFontChooserDialog
	 *
	 * Returns: the #GtkWidget used in the dialog
	 *     for the “Cancel” button.
	 *
	 * Since: 2.14
	 */
	public Widget getCancelButton()
	{
		auto p = gtk_font_selection_dialog_get_cancel_button(gtkFontSelectionDialog);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the currently-selected font name.
	 *
	 * Note that this can be a different string than what you set with
	 * gtk_font_selection_dialog_set_font_name(), as the font selection widget
	 * may normalize font names and thus return a string with a different
	 * structure. For example, “Helvetica Italic Bold 12” could be normalized
	 * to “Helvetica Bold Italic 12”.  Use pango_font_description_equal()
	 * if you want to compare two font descriptions.
	 *
	 * Deprecated: Use #GtkFontChooserDialog
	 *
	 * Returns: A string with the name of the current font, or %NULL if no
	 *     font is selected. You must free this string with g_free().
	 */
	public string getFontName()
	{
		auto retStr = gtk_font_selection_dialog_get_font_name(gtkFontSelectionDialog);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the “OK” button.
	 *
	 * Deprecated: Use #GtkFontChooserDialog
	 *
	 * Returns: the #GtkWidget used in the dialog
	 *     for the “OK” button.
	 *
	 * Since: 2.14
	 */
	public Widget getOkButton()
	{
		auto p = gtk_font_selection_dialog_get_ok_button(gtkFontSelectionDialog);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the text displayed in the preview area.
	 *
	 * Deprecated: Use #GtkFontChooserDialog
	 *
	 * Returns: the text displayed in the preview area.
	 *     This string is owned by the widget and should not be
	 *     modified or freed
	 */
	public string getPreviewText()
	{
		return Str.toString(gtk_font_selection_dialog_get_preview_text(gtkFontSelectionDialog));
	}

	/**
	 * Sets the currently selected font.
	 *
	 * Deprecated: Use #GtkFontChooserDialog
	 *
	 * Params:
	 *     fontname = a font name like “Helvetica 12” or “Times Bold 18”
	 *
	 * Returns: %TRUE if the font selected in @fsd is now the
	 *     @fontname specified, %FALSE otherwise.
	 */
	public bool setFontName(string fontname)
	{
		return gtk_font_selection_dialog_set_font_name(gtkFontSelectionDialog, Str.toStringz(fontname)) != 0;
	}

	/**
	 * Sets the text displayed in the preview area.
	 *
	 * Deprecated: Use #GtkFontChooserDialog
	 *
	 * Params:
	 *     text = the text to display in the preview area
	 */
	public void setPreviewText(string text)
	{
		gtk_font_selection_dialog_set_preview_text(gtkFontSelectionDialog, Str.toStringz(text));
	}
}
