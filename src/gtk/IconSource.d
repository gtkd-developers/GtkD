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
 * inFile  = gtk3-Themeable-Stock-Images.html
 * outPack = gtk
 * outFile = IconSource
 * strct   = GtkIconSource
 * realStrct=
 * ctorStrct=
 * clss    = IconSource
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_icon_source_
 * omit structs:
 * omit prefixes:
 * 	- gtk_icon_factory_
 * 	- gtk_icon_set_
 * 	- gtk_icon_size_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixbuf
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkIconSource* -> IconSource
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.IconSource;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Pixbuf;
private import gtkc.paths;
private import gtkc.Loader;




/**
 * Browse the available stock icons in the list of stock IDs found here. You can also use
 * the gtk-demo application for this purpose.
 *
 * An icon factory manages a collection of GtkIconSet; a GtkIconSet manages a
 * set of variants of a particular icon (i.e. a GtkIconSet contains variants for
 * different sizes and widget states). Icons in an icon factory are named by a
 * stock ID, which is a simple string identifying the icon. Each GtkStyle has a
 * list of GtkIconFactory derived from the current theme; those icon factories
 * are consulted first when searching for an icon. If the theme doesn't set a
 * particular icon, GTK+ looks for the icon in a list of default icon factories,
 * maintained by gtk_icon_factory_add_default() and
 * gtk_icon_factory_remove_default(). Applications with icons should add a default
 * icon factory with their icons, which will allow themes to override the icons
 * for the application.
 *
 * To display an icon, always use gtk_style_lookup_icon_set() on the widget that
 * will display the icon, or the convenience function
 * gtk_widget_render_icon(). These functions take the theme into account when
 * looking up the icon to use for a given stock ID.
 *
 * GtkIconFactory as GtkBuildable
 *
 * GtkIconFactory supports a custom <sources> element, which can contain
 * multiple <source> elements.
 * The following attributes are allowed:
 *
 * stock-id
 *
 * The stock id of the source, a string.
 * This attribute is mandatory
 *
 * filename
 *
 * The filename of the source, a string.
 * This attribute is optional
 *
 * icon-name
 *
 * The icon name for the source, a string.
 * This attribute is optional.
 *
 * size
 *
 * Size of the icon, a GtkIconSize enum value.
 * This attribute is optional.
 *
 * direction
 *
 * Direction of the source, a GtkTextDirection enum value.
 * This attribute is optional.
 *
 * state
 *
 * State of the source, a GtkStateType enum value.
 * This attribute is optional.
 *
 * $(DDOC_COMMENT example)
 */
public class IconSource
{
	
	/** the main Gtk struct */
	protected GtkIconSource* gtkIconSource;
	
	
	public GtkIconSource* getIconSourceStruct()
	{
		return gtkIconSource;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkIconSource;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkIconSource* gtkIconSource)
	{
		this.gtkIconSource = gtkIconSource;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GTK) && gtkIconSource !is null )
		{
			gtk_icon_source_free(gtkIconSource);
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a copy of source; mostly useful for language bindings.
	 * Returns: a new GtkIconSource
	 */
	public IconSource copy()
	{
		// GtkIconSource * gtk_icon_source_copy (const GtkIconSource *source);
		auto p = gtk_icon_source_copy(gtkIconSource);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconSource)(cast(GtkIconSource*) p);
	}
	
	/**
	 * Frees a dynamically-allocated icon source, along with its
	 * filename, size, and pixbuf fields if those are not NULL.
	 */
	public void free()
	{
		// void gtk_icon_source_free (GtkIconSource *source);
		gtk_icon_source_free(gtkIconSource);
	}
	
	/**
	 * Obtains the text direction this icon source applies to. The return
	 * value is only useful/meaningful if the text direction is not
	 * wildcarded.
	 * Returns: text direction this source matches
	 */
	public GtkTextDirection getDirection()
	{
		// GtkTextDirection gtk_icon_source_get_direction (const GtkIconSource *source);
		return gtk_icon_source_get_direction(gtkIconSource);
	}
	
	/**
	 * Gets the value set by gtk_icon_source_set_direction_wildcarded().
	 * Returns: TRUE if this icon source is a base for any text direction variant
	 */
	public int getDirectionWildcarded()
	{
		// gboolean gtk_icon_source_get_direction_wildcarded  (const GtkIconSource *source);
		return gtk_icon_source_get_direction_wildcarded(gtkIconSource);
	}
	
	/**
	 * Retrieves the source filename, or NULL if none is set. The
	 * filename is not a copy, and should not be modified or expected to
	 * persist beyond the lifetime of the icon source.
	 * Returns: image filename. This string must not be modified or freed. [type filename]
	 */
	public string getFilename()
	{
		// const gchar * gtk_icon_source_get_filename (const GtkIconSource *source);
		return Str.toString(gtk_icon_source_get_filename(gtkIconSource));
	}
	
	/**
	 * Retrieves the source pixbuf, or NULL if none is set.
	 * In addition, if a filename source is in use, this
	 * function in some cases will return the pixbuf from
	 * loaded from the filename. This is, for example, true
	 * for the GtkIconSource passed to the GtkStyle::render_icon()
	 * virtual function. The reference count on the pixbuf is
	 * not incremented.
	 * Returns: source pixbuf. [transfer none]
	 */
	public Pixbuf getPixbuf()
	{
		// GdkPixbuf * gtk_icon_source_get_pixbuf (const GtkIconSource *source);
		auto p = gtk_icon_source_get_pixbuf(gtkIconSource);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Retrieves the source icon name, or NULL if none is set. The
	 * icon_name is not a copy, and should not be modified or expected to
	 * persist beyond the lifetime of the icon source.
	 * Returns: icon name. This string must not be modified or freed.
	 */
	public string getIconName()
	{
		// const gchar * gtk_icon_source_get_icon_name (const GtkIconSource *source);
		return Str.toString(gtk_icon_source_get_icon_name(gtkIconSource));
	}
	
	/**
	 * Obtains the icon size this source applies to. The return value
	 * is only useful/meaningful if the icon size is not wildcarded.
	 * Returns: icon size this source matches. [type int]
	 */
	public GtkIconSize getSize()
	{
		// GtkIconSize gtk_icon_source_get_size (const GtkIconSource *source);
		return gtk_icon_source_get_size(gtkIconSource);
	}
	
	/**
	 * Gets the value set by gtk_icon_source_set_size_wildcarded().
	 * Returns: TRUE if this icon source is a base for any icon size variant
	 */
	public int getSizeWildcarded()
	{
		// gboolean gtk_icon_source_get_size_wildcarded (const GtkIconSource *source);
		return gtk_icon_source_get_size_wildcarded(gtkIconSource);
	}
	
	/**
	 * Obtains the widget state this icon source applies to. The return
	 * value is only useful/meaningful if the widget state is not
	 * wildcarded.
	 * Returns: widget state this source matches
	 */
	public GtkStateType getState()
	{
		// GtkStateType gtk_icon_source_get_state (const GtkIconSource *source);
		return gtk_icon_source_get_state(gtkIconSource);
	}
	
	/**
	 * Gets the value set by gtk_icon_source_set_state_wildcarded().
	 * Returns: TRUE if this icon source is a base for any widget state variant
	 */
	public int getStateWildcarded()
	{
		// gboolean gtk_icon_source_get_state_wildcarded  (const GtkIconSource *source);
		return gtk_icon_source_get_state_wildcarded(gtkIconSource);
	}
	
	/**
	 * Creates a new GtkIconSource. A GtkIconSource contains a GdkPixbuf (or
	 * image filename) that serves as the base image for one or more of the
	 * icons in a GtkIconSet, along with a specification for which icons in the
	 * icon set will be based on that pixbuf or image file. An icon set contains
	 * a set of icons that represent "the same" logical concept in different states,
	 * different global text directions, and different sizes.
	 * So for example a web browser's "Back to Previous Page" icon might
	 * point in a different direction in Hebrew and in English; it might
	 * look different when insensitive; and it might change size depending
	 * on toolbar mode (small/large icons). So a single icon set would
	 * contain all those variants of the icon. GtkIconSet contains a list
	 * of GtkIconSource from which it can derive specific icon variants in
	 * the set.
	 * In the simplest case, GtkIconSet contains one source pixbuf from
	 * which it derives all variants. The convenience function
	 * gtk_icon_set_new_from_pixbuf() handles this case; if you only have
	 * one source pixbuf, just use that function.
	 * If you want to use a different base pixbuf for different icon
	 * variants, you create multiple icon sources, mark which variants
	 * they'll be used to create, and add them to the icon set with
	 * gtk_icon_set_add_source().
	 * By default, the icon source has all parameters wildcarded. That is,
	 * the icon source will be used as the base icon for any desired text
	 * direction, widget state, or icon size.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkIconSource * gtk_icon_source_new (void);
		auto p = gtk_icon_source_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_icon_source_new()");
		}
		this(cast(GtkIconSource*) p);
	}
	
	/**
	 * Sets the text direction this icon source is intended to be used
	 * with.
	 * Setting the text direction on an icon source makes no difference
	 * if the text direction is wildcarded. Therefore, you should usually
	 * call gtk_icon_source_set_direction_wildcarded() to un-wildcard it
	 * in addition to calling this function.
	 * Params:
	 * direction = text direction this source applies to
	 */
	public void setDirection(GtkTextDirection direction)
	{
		// void gtk_icon_source_set_direction (GtkIconSource *source,  GtkTextDirection direction);
		gtk_icon_source_set_direction(gtkIconSource, direction);
	}
	
	/**
	 * If the text direction is wildcarded, this source can be used
	 * as the base image for an icon in any GtkTextDirection.
	 * If the text direction is not wildcarded, then the
	 * text direction the icon source applies to should be set
	 * with gtk_icon_source_set_direction(), and the icon source
	 * will only be used with that text direction.
	 * GtkIconSet prefers non-wildcarded sources (exact matches) over
	 * wildcarded sources, and will use an exact match when possible.
	 * Params:
	 * setting = TRUE to wildcard the text direction
	 */
	public void setDirectionWildcarded(int setting)
	{
		// void gtk_icon_source_set_direction_wildcarded  (GtkIconSource *source,  gboolean setting);
		gtk_icon_source_set_direction_wildcarded(gtkIconSource, setting);
	}
	
	/**
	 * Sets the name of an image file to use as a base image when creating
	 * icon variants for GtkIconSet. The filename must be absolute.
	 * Params:
	 * filename = image file to use. [type filename]
	 */
	public void setFilename(string filename)
	{
		// void gtk_icon_source_set_filename (GtkIconSource *source,  const gchar *filename);
		gtk_icon_source_set_filename(gtkIconSource, Str.toStringz(filename));
	}
	
	/**
	 * Sets a pixbuf to use as a base image when creating icon variants
	 * for GtkIconSet.
	 * Params:
	 * pixbuf = pixbuf to use as a source
	 */
	public void setPixbuf(Pixbuf pixbuf)
	{
		// void gtk_icon_source_set_pixbuf (GtkIconSource *source,  GdkPixbuf *pixbuf);
		gtk_icon_source_set_pixbuf(gtkIconSource, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Sets the name of an icon to look up in the current icon theme
	 * to use as a base image when creating icon variants for GtkIconSet.
	 * Params:
	 * iconName = name of icon to use. [allow-none]
	 */
	public void setIconName(string iconName)
	{
		// void gtk_icon_source_set_icon_name (GtkIconSource *source,  const gchar *icon_name);
		gtk_icon_source_set_icon_name(gtkIconSource, Str.toStringz(iconName));
	}
	
	/**
	 * Sets the icon size this icon source is intended to be used
	 * with.
	 * Setting the icon size on an icon source makes no difference
	 * if the size is wildcarded. Therefore, you should usually
	 * call gtk_icon_source_set_size_wildcarded() to un-wildcard it
	 * in addition to calling this function.
	 * Params:
	 * size = icon size this source applies to. [type int]
	 */
	public void setSize(GtkIconSize size)
	{
		// void gtk_icon_source_set_size (GtkIconSource *source,  GtkIconSize size);
		gtk_icon_source_set_size(gtkIconSource, size);
	}
	
	/**
	 * If the icon size is wildcarded, this source can be used as the base
	 * image for an icon of any size. If the size is not wildcarded, then
	 * the size the source applies to should be set with
	 * gtk_icon_source_set_size() and the icon source will only be used
	 * with that specific size.
	 * GtkIconSet prefers non-wildcarded sources (exact matches) over
	 * wildcarded sources, and will use an exact match when possible.
	 * GtkIconSet will normally scale wildcarded source images to produce
	 * an appropriate icon at a given size, but will not change the size
	 * of source images that match exactly.
	 * Params:
	 * setting = TRUE to wildcard the widget state
	 */
	public void setSizeWildcarded(int setting)
	{
		// void gtk_icon_source_set_size_wildcarded (GtkIconSource *source,  gboolean setting);
		gtk_icon_source_set_size_wildcarded(gtkIconSource, setting);
	}
	
	/**
	 * Sets the widget state this icon source is intended to be used
	 * with.
	 * Setting the widget state on an icon source makes no difference
	 * if the state is wildcarded. Therefore, you should usually
	 * call gtk_icon_source_set_state_wildcarded() to un-wildcard it
	 * in addition to calling this function.
	 * Params:
	 * state = widget state this source applies to
	 */
	public void setState(GtkStateType state)
	{
		// void gtk_icon_source_set_state (GtkIconSource *source,  GtkStateType state);
		gtk_icon_source_set_state(gtkIconSource, state);
	}
	
	/**
	 * If the widget state is wildcarded, this source can be used as the
	 * base image for an icon in any GtkStateType. If the widget state
	 * is not wildcarded, then the state the source applies to should be
	 * set with gtk_icon_source_set_state() and the icon source will
	 * only be used with that specific state.
	 * GtkIconSet prefers non-wildcarded sources (exact matches) over
	 * wildcarded sources, and will use an exact match when possible.
	 * GtkIconSet will normally transform wildcarded source images to
	 * produce an appropriate icon for a given state, for example
	 * lightening an image on prelight, but will not modify source images
	 * that match exactly.
	 * Params:
	 * setting = TRUE to wildcard the widget state
	 */
	public void setStateWildcarded(int setting)
	{
		// void gtk_icon_source_set_state_wildcarded  (GtkIconSource *source,  gboolean setting);
		gtk_icon_source_set_state_wildcarded(gtkIconSource, setting);
	}
}
