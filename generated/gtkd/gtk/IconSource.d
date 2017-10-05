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


module gtk.IconSource;

private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/** */
public class IconSource
{
	/** the main Gtk struct */
	protected GtkIconSource* gtkIconSource;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkIconSource* getIconSourceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkIconSource;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkIconSource;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkIconSource* gtkIconSource, bool ownedRef = false)
	{
		this.gtkIconSource = gtkIconSource;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK) && ownedRef )
			gtk_icon_source_free(gtkIconSource);
	}


	/** */
	public static GType getType()
	{
		return gtk_icon_source_get_type();
	}

	/**
	 * Creates a new #GtkIconSource. A #GtkIconSource contains a #GdkPixbuf (or
	 * image filename) that serves as the base image for one or more of the
	 * icons in a #GtkIconSet, along with a specification for which icons in the
	 * icon set will be based on that pixbuf or image file. An icon set contains
	 * a set of icons that represent “the same” logical concept in different states,
	 * different global text directions, and different sizes.
	 *
	 * So for example a web browser’s “Back to Previous Page” icon might
	 * point in a different direction in Hebrew and in English; it might
	 * look different when insensitive; and it might change size depending
	 * on toolbar mode (small/large icons). So a single icon set would
	 * contain all those variants of the icon. #GtkIconSet contains a list
	 * of #GtkIconSource from which it can derive specific icon variants in
	 * the set.
	 *
	 * In the simplest case, #GtkIconSet contains one source pixbuf from
	 * which it derives all variants. The convenience function
	 * gtk_icon_set_new_from_pixbuf() handles this case; if you only have
	 * one source pixbuf, just use that function.
	 *
	 * If you want to use a different base pixbuf for different icon
	 * variants, you create multiple icon sources, mark which variants
	 * they’ll be used to create, and add them to the icon set with
	 * gtk_icon_set_add_source().
	 *
	 * By default, the icon source has all parameters wildcarded. That is,
	 * the icon source will be used as the base icon for any desired text
	 * direction, widget state, or icon size.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: a new #GtkIconSource
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_icon_source_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkIconSource*) p);
	}

	/**
	 * Creates a copy of @source; mostly useful for language bindings.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: a new #GtkIconSource
	 */
	public IconSource copy()
	{
		auto p = gtk_icon_source_copy(gtkIconSource);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconSource)(cast(GtkIconSource*) p, true);
	}

	/**
	 * Frees a dynamically-allocated icon source, along with its
	 * filename, size, and pixbuf fields if those are not %NULL.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 */
	public void free()
	{
		gtk_icon_source_free(gtkIconSource);
		ownedRef = false;
	}

	/**
	 * Obtains the text direction this icon source applies to. The return
	 * value is only useful/meaningful if the text direction is not
	 * wildcarded.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: text direction this source matches
	 */
	public GtkTextDirection getDirection()
	{
		return gtk_icon_source_get_direction(gtkIconSource);
	}

	/**
	 * Gets the value set by gtk_icon_source_set_direction_wildcarded().
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: %TRUE if this icon source is a base for any text direction variant
	 */
	public bool getDirectionWildcarded()
	{
		return gtk_icon_source_get_direction_wildcarded(gtkIconSource) != 0;
	}

	/**
	 * Retrieves the source filename, or %NULL if none is set. The
	 * filename is not a copy, and should not be modified or expected to
	 * persist beyond the lifetime of the icon source.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: image filename. This string must not
	 *     be modified or freed.
	 */
	public string getFilename()
	{
		return Str.toString(gtk_icon_source_get_filename(gtkIconSource));
	}

	/**
	 * Retrieves the source icon name, or %NULL if none is set. The
	 * icon_name is not a copy, and should not be modified or expected to
	 * persist beyond the lifetime of the icon source.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: icon name. This string must not be modified or freed.
	 */
	public string getIconName()
	{
		return Str.toString(gtk_icon_source_get_icon_name(gtkIconSource));
	}

	/**
	 * Retrieves the source pixbuf, or %NULL if none is set.
	 * In addition, if a filename source is in use, this
	 * function in some cases will return the pixbuf from
	 * loaded from the filename. This is, for example, true
	 * for the GtkIconSource passed to the #GtkStyle render_icon()
	 * virtual function. The reference count on the pixbuf is
	 * not incremented.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: source pixbuf
	 */
	public Pixbuf getPixbuf()
	{
		auto p = gtk_icon_source_get_pixbuf(gtkIconSource);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}

	/**
	 * Obtains the icon size this source applies to. The return value
	 * is only useful/meaningful if the icon size is not wildcarded.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: icon size (#GtkIconSize) this source matches.
	 */
	public GtkIconSize getSize()
	{
		return gtk_icon_source_get_size(gtkIconSource);
	}

	/**
	 * Gets the value set by gtk_icon_source_set_size_wildcarded().
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: %TRUE if this icon source is a base for any icon size variant
	 */
	public bool getSizeWildcarded()
	{
		return gtk_icon_source_get_size_wildcarded(gtkIconSource) != 0;
	}

	/**
	 * Obtains the widget state this icon source applies to. The return
	 * value is only useful/meaningful if the widget state is not
	 * wildcarded.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: widget state this source matches
	 */
	public GtkStateType getState()
	{
		return gtk_icon_source_get_state(gtkIconSource);
	}

	/**
	 * Gets the value set by gtk_icon_source_set_state_wildcarded().
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: %TRUE if this icon source is a base for any widget state variant
	 */
	public bool getStateWildcarded()
	{
		return gtk_icon_source_get_state_wildcarded(gtkIconSource) != 0;
	}

	/**
	 * Sets the text direction this icon source is intended to be used
	 * with.
	 *
	 * Setting the text direction on an icon source makes no difference
	 * if the text direction is wildcarded. Therefore, you should usually
	 * call gtk_icon_source_set_direction_wildcarded() to un-wildcard it
	 * in addition to calling this function.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     direction = text direction this source applies to
	 */
	public void setDirection(GtkTextDirection direction)
	{
		gtk_icon_source_set_direction(gtkIconSource, direction);
	}

	/**
	 * If the text direction is wildcarded, this source can be used
	 * as the base image for an icon in any #GtkTextDirection.
	 * If the text direction is not wildcarded, then the
	 * text direction the icon source applies to should be set
	 * with gtk_icon_source_set_direction(), and the icon source
	 * will only be used with that text direction.
	 *
	 * #GtkIconSet prefers non-wildcarded sources (exact matches) over
	 * wildcarded sources, and will use an exact match when possible.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     setting = %TRUE to wildcard the text direction
	 */
	public void setDirectionWildcarded(bool setting)
	{
		gtk_icon_source_set_direction_wildcarded(gtkIconSource, setting);
	}

	/**
	 * Sets the name of an image file to use as a base image when creating
	 * icon variants for #GtkIconSet. The filename must be absolute.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     filename = image file to use
	 */
	public void setFilename(string filename)
	{
		gtk_icon_source_set_filename(gtkIconSource, Str.toStringz(filename));
	}

	/**
	 * Sets the name of an icon to look up in the current icon theme
	 * to use as a base image when creating icon variants for #GtkIconSet.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     iconName = name of icon to use
	 */
	public void setIconName(string iconName)
	{
		gtk_icon_source_set_icon_name(gtkIconSource, Str.toStringz(iconName));
	}

	/**
	 * Sets a pixbuf to use as a base image when creating icon variants
	 * for #GtkIconSet.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     pixbuf = pixbuf to use as a source
	 */
	public void setPixbuf(Pixbuf pixbuf)
	{
		gtk_icon_source_set_pixbuf(gtkIconSource, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * Sets the icon size this icon source is intended to be used
	 * with.
	 *
	 * Setting the icon size on an icon source makes no difference
	 * if the size is wildcarded. Therefore, you should usually
	 * call gtk_icon_source_set_size_wildcarded() to un-wildcard it
	 * in addition to calling this function.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     size = icon size (#GtkIconSize) this source applies to
	 */
	public void setSize(GtkIconSize size)
	{
		gtk_icon_source_set_size(gtkIconSource, size);
	}

	/**
	 * If the icon size is wildcarded, this source can be used as the base
	 * image for an icon of any size.  If the size is not wildcarded, then
	 * the size the source applies to should be set with
	 * gtk_icon_source_set_size() and the icon source will only be used
	 * with that specific size.
	 *
	 * #GtkIconSet prefers non-wildcarded sources (exact matches) over
	 * wildcarded sources, and will use an exact match when possible.
	 *
	 * #GtkIconSet will normally scale wildcarded source images to produce
	 * an appropriate icon at a given size, but will not change the size
	 * of source images that match exactly.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     setting = %TRUE to wildcard the widget state
	 */
	public void setSizeWildcarded(bool setting)
	{
		gtk_icon_source_set_size_wildcarded(gtkIconSource, setting);
	}

	/**
	 * Sets the widget state this icon source is intended to be used
	 * with.
	 *
	 * Setting the widget state on an icon source makes no difference
	 * if the state is wildcarded. Therefore, you should usually
	 * call gtk_icon_source_set_state_wildcarded() to un-wildcard it
	 * in addition to calling this function.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     state = widget state this source applies to
	 */
	public void setState(GtkStateType state)
	{
		gtk_icon_source_set_state(gtkIconSource, state);
	}

	/**
	 * If the widget state is wildcarded, this source can be used as the
	 * base image for an icon in any #GtkStateType.  If the widget state
	 * is not wildcarded, then the state the source applies to should be
	 * set with gtk_icon_source_set_state() and the icon source will
	 * only be used with that specific state.
	 *
	 * #GtkIconSet prefers non-wildcarded sources (exact matches) over
	 * wildcarded sources, and will use an exact match when possible.
	 *
	 * #GtkIconSet will normally transform wildcarded source images to
	 * produce an appropriate icon for a given state, for example
	 * lightening an image on prelight, but will not modify source images
	 * that match exactly.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     setting = %TRUE to wildcard the widget state
	 */
	public void setStateWildcarded(bool setting)
	{
		gtk_icon_source_set_state_wildcarded(gtkIconSource, setting);
	}
}
