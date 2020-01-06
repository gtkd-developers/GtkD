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


module gtk.SelectionData;

private import gdk.Display;
private import gdk.Texture;
private import gdkpixbuf.Pixbuf;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/** */
public class SelectionData
{
	/** the main Gtk struct */
	protected GtkSelectionData* gtkSelectionData;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkSelectionData* getSelectionDataStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSelectionData;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSelectionData;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSelectionData* gtkSelectionData, bool ownedRef = false)
	{
		this.gtkSelectionData = gtkSelectionData;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			gtk_selection_data_free(gtkSelectionData);
	}

	/**
	 * Retrieves the raw data of the selection.
	 *
	 * Return: the raw data of the selection.
	 *
	 * Since: 2.14
	 */
	public char* getData()
	{
		return gtk_selection_data_get_data(gtkSelectionData);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_selection_data_get_type();
	}

	/**
	 * Makes a copy of a #GtkSelectionData-struct and its data.
	 *
	 * Returns: a pointer to a copy of @data.
	 */
	public SelectionData copy()
	{
		auto __p = gtk_selection_data_copy(gtkSelectionData);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SelectionData)(cast(GtkSelectionData*) __p, true);
	}

	/**
	 * Frees a #GtkSelectionData-struct returned from
	 * gtk_selection_data_copy().
	 */
	public void free()
	{
		gtk_selection_data_free(gtkSelectionData);
		ownedRef = false;
	}

	/**
	 * Retrieves the data type of the selection.
	 *
	 * Returns: the data type of the selection.
	 */
	public GdkAtom getDataType()
	{
		return gtk_selection_data_get_data_type(gtkSelectionData);
	}

	/**
	 * Retrieves the raw data of the selection along with its length.
	 *
	 * Returns: the raw data of the selection
	 */
	public char[] getDataWithLength()
	{
		int length;

		auto __p = gtk_selection_data_get_data_with_length(gtkSelectionData, &length);

		return __p[0 .. length];
	}

	/**
	 * Retrieves the display of the selection.
	 *
	 * Returns: the display of the selection.
	 */
	public Display getDisplay()
	{
		auto __p = gtk_selection_data_get_display(gtkSelectionData);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Retrieves the format of the selection.
	 *
	 * Returns: the format of the selection.
	 */
	public int getFormat()
	{
		return gtk_selection_data_get_format(gtkSelectionData);
	}

	/**
	 * Retrieves the length of the raw data of the selection.
	 *
	 * Returns: the length of the data of the selection.
	 */
	public int getLength()
	{
		return gtk_selection_data_get_length(gtkSelectionData);
	}

	/**
	 * Gets the contents of the selection data as a #GdkPixbuf.
	 *
	 * Returns: if the selection data
	 *     contained a recognized image type and it could be converted to a
	 *     #GdkPixbuf, a newly allocated pixbuf is returned, otherwise
	 *     %NULL.  If the result is non-%NULL it must be freed with
	 *     g_object_unref().
	 */
	public Pixbuf getPixbuf()
	{
		auto __p = gtk_selection_data_get_pixbuf(gtkSelectionData);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Retrieves the target of the selection.
	 *
	 * Returns: the target of the selection.
	 */
	public GdkAtom getTarget()
	{
		return gtk_selection_data_get_target(gtkSelectionData);
	}

	/**
	 * Gets the contents of @selection_data as an array of targets.
	 * This can be used to interpret the results of getting
	 * the standard TARGETS target that is always supplied for
	 * any selection.
	 *
	 * Params:
	 *     targets = location to store an array of targets. The result stored
	 *         here must be freed with g_free().
	 *
	 * Returns: %TRUE if @selection_data contains a valid
	 *     array of targets, otherwise %FALSE.
	 */
	public bool getTargets(out GdkAtom[] targets)
	{
		GdkAtom* outtargets = null;
		int nAtoms;

		auto __p = gtk_selection_data_get_targets(gtkSelectionData, &outtargets, &nAtoms) != 0;

		targets = outtargets[0 .. nAtoms];

		return __p;
	}

	/**
	 * Gets the contents of the selection data as a UTF-8 string.
	 *
	 * Returns: if the selection data contained a
	 *     recognized text type and it could be converted to UTF-8, a newly
	 *     allocated string containing the converted text, otherwise %NULL.
	 *     If the result is non-%NULL it must be freed with g_free().
	 */
	public string getText()
	{
		auto retStr = gtk_selection_data_get_text(gtkSelectionData);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the contents of the selection data as a #GdkPixbuf.
	 *
	 * Returns: if the selection data
	 *     contained a recognized image type and it could be converted to a
	 *     #GdkTexture, a newly allocated texture is returned, otherwise
	 *     %NULL.  If the result is non-%NULL it must be freed with
	 *     g_object_unref().
	 */
	public Texture getTexture()
	{
		auto __p = gtk_selection_data_get_texture(gtkSelectionData);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Texture)(cast(GdkTexture*) __p, true);
	}

	/**
	 * Gets the contents of the selection data as array of URIs.
	 *
	 * Returns: if
	 *     the selection data contains a list of
	 *     URIs, a newly allocated %NULL-terminated string array
	 *     containing the URIs, otherwise %NULL. If the result is
	 *     non-%NULL it must be freed with g_strfreev().
	 */
	public string[] getUris()
	{
		auto retStr = gtk_selection_data_get_uris(gtkSelectionData);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Stores new data into a #GtkSelectionData object. Should
	 * only be called from a selection handler callback.
	 * Zero-terminates the stored data.
	 *
	 * Params:
	 *     type = the type of selection data
	 *     format = format (number of bits in a unit)
	 *     data = pointer to the data (will be copied)
	 */
	public void set(GdkAtom type, int format, char[] data)
	{
		gtk_selection_data_set(gtkSelectionData, type, format, data.ptr, cast(int)data.length);
	}

	/**
	 * Sets the contents of the selection from a #GdkPixbuf
	 * The pixbuf is converted to the form determined by
	 * @selection_data->target.
	 *
	 * Params:
	 *     pixbuf = a #GdkPixbuf
	 *
	 * Returns: %TRUE if the selection was successfully set,
	 *     otherwise %FALSE.
	 */
	public bool setPixbuf(Pixbuf pixbuf)
	{
		return gtk_selection_data_set_pixbuf(gtkSelectionData, (pixbuf is null) ? null : pixbuf.getPixbufStruct()) != 0;
	}

	/**
	 * Sets the contents of the selection from a UTF-8 encoded string.
	 * The string is converted to the form determined by
	 * @selection_data->target.
	 *
	 * Params:
	 *     str = a UTF-8 string
	 *     len = the length of @str, or -1 if @str is nul-terminated.
	 *
	 * Returns: %TRUE if the selection was successfully set,
	 *     otherwise %FALSE.
	 */
	public bool setText(string str, int len)
	{
		return gtk_selection_data_set_text(gtkSelectionData, Str.toStringz(str), len) != 0;
	}

	/**
	 * Sets the contents of the selection from a #GdkTexture.
	 * The surface is converted to the form determined by
	 * @selection_data->target.
	 *
	 * Params:
	 *     texture = a #GdkTexture
	 *
	 * Returns: %TRUE if the selection was successfully set,
	 *     otherwise %FALSE.
	 */
	public bool setTexture(Texture texture)
	{
		return gtk_selection_data_set_texture(gtkSelectionData, (texture is null) ? null : texture.getTextureStruct()) != 0;
	}

	/**
	 * Sets the contents of the selection from a list of URIs.
	 * The string is converted to the form determined by
	 * @selection_data->target.
	 *
	 * Params:
	 *     uris = a %NULL-terminated array of
	 *         strings holding URIs
	 *
	 * Returns: %TRUE if the selection was successfully set,
	 *     otherwise %FALSE.
	 */
	public bool setUris(string[] uris)
	{
		return gtk_selection_data_set_uris(gtkSelectionData, Str.toStringzArray(uris)) != 0;
	}

	/**
	 * Given a #GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in @targets can be used to
	 * provide a #GdkPixbuf.
	 *
	 * Params:
	 *     writable = whether to accept only targets for which GTK+ knows
	 *         how to convert a pixbuf into the format
	 *
	 * Returns: %TRUE if @selection_data holds a list of targets,
	 *     and a suitable target for images is included, otherwise %FALSE.
	 */
	public bool targetsIncludeImage(bool writable)
	{
		return gtk_selection_data_targets_include_image(gtkSelectionData, writable) != 0;
	}

	/**
	 * Given a #GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in @targets can be used to
	 * provide text.
	 *
	 * Returns: %TRUE if @selection_data holds a list of targets,
	 *     and a suitable target for text is included, otherwise %FALSE.
	 */
	public bool targetsIncludeText()
	{
		return gtk_selection_data_targets_include_text(gtkSelectionData) != 0;
	}

	/**
	 * Given a #GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in @targets can be used to
	 * provide a list or URIs.
	 *
	 * Returns: %TRUE if @selection_data holds a list of targets,
	 *     and a suitable target for URI lists is included, otherwise %FALSE.
	 */
	public bool targetsIncludeUri()
	{
		return gtk_selection_data_targets_include_uri(gtkSelectionData) != 0;
	}
}
