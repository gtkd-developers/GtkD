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


module sourceview.SpaceDrawer;

private import gio.Settings;
private import glib.ConstructionException;
private import glib.Str;
private import glib.Variant;
private import gobject.ObjectG;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Represent white space characters with symbols.
 * 
 * #GtkSourceSpaceDrawer provides a way to visualize white spaces, by drawing
 * symbols.
 * 
 * Call [method@View.get_space_drawer] to get the `GtkSourceSpaceDrawer`
 * instance of a certain [class@View].
 * 
 * By default, no white spaces are drawn because the
 * [property@SpaceDrawer:enable-matrix] is %FALSE.
 * 
 * To draw white spaces, [method@SpaceDrawer.set_types_for_locations] can
 * be called to set the [property@SpaceDrawer:matrix] property (by default all
 * space types are enabled at all locations). Then call
 * [method@SpaceDrawer.set_enable_matrix].
 * 
 * For a finer-grained method, there is also the [class@Tag]'s
 * [property@Tag:draw-spaces] property.
 * 
 * # Example
 * 
 * To draw non-breaking spaces everywhere and draw all types of trailing spaces
 * except newlines:
 * ```c
 * gtk_source_space_drawer_set_types_for_locations (space_drawer,
 * GTK_SOURCE_SPACE_LOCATION_ALL,
 * GTK_SOURCE_SPACE_TYPE_NBSP);
 * 
 * gtk_source_space_drawer_set_types_for_locations (space_drawer,
 * GTK_SOURCE_SPACE_LOCATION_TRAILING,
 * GTK_SOURCE_SPACE_TYPE_ALL &
 * ~GTK_SOURCE_SPACE_TYPE_NEWLINE);
 * 
 * gtk_source_space_drawer_set_enable_matrix (space_drawer, TRUE);
 * ```
 * 
 * # Use-case: draw unwanted white spaces
 * 
 * A possible use-case is to draw only unwanted white spaces. Examples:
 * 
 * - Draw all trailing spaces.
 * - If the indentation and alignment must be done with spaces, draw tabs.
 * 
 * And non-breaking spaces can always be drawn, everywhere, to distinguish them
 * from normal spaces.
 */
public class SpaceDrawer : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceSpaceDrawer* gtkSourceSpaceDrawer;

	/** Get the main Gtk struct */
	public GtkSourceSpaceDrawer* getSpaceDrawerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceSpaceDrawer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceSpaceDrawer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceSpaceDrawer* gtkSourceSpaceDrawer, bool ownedRef = false)
	{
		this.gtkSourceSpaceDrawer = gtkSourceSpaceDrawer;
		super(cast(GObject*)gtkSourceSpaceDrawer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_space_drawer_get_type();
	}

	/**
	 * Creates a new #GtkSourceSpaceDrawer object.
	 *
	 * Useful for storing space drawing settings independently of a [class@View].
	 *
	 * Returns: a new #GtkSourceSpaceDrawer.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_source_space_drawer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceSpaceDrawer*) __p, true);
	}

	/**
	 * Binds the [property@SpaceDrawer:matrix] property to a [class@Gio.Settings] key.
	 *
	 * The [class@Gio.Settings] key must be of the same type as the
	 * [property@SpaceDrawer:matrix] property, that is, `"au"`.
	 *
	 * The [method@Gio.Settings.bind] function cannot be used, because the default GIO
	 * mapping functions don't support [struct@GLib.Variant] properties (maybe it will be
	 * supported by a future GIO version, in which case this function can be
	 * deprecated).
	 *
	 * Params:
	 *     settings = a #GSettings object.
	 *     key = the @settings key to bind.
	 *     flags = flags for the binding.
	 */
	public void bindMatrixSetting(Settings settings, string key, GSettingsBindFlags flags)
	{
		gtk_source_space_drawer_bind_matrix_setting(gtkSourceSpaceDrawer, (settings is null) ? null : settings.getSettingsStruct(), Str.toStringz(key), flags);
	}

	/**
	 * Returns: whether the #GtkSourceSpaceDrawer:matrix property is enabled.
	 */
	public bool getEnableMatrix()
	{
		return gtk_source_space_drawer_get_enable_matrix(gtkSourceSpaceDrawer) != 0;
	}

	/**
	 * Gets the value of the [property@SpaceDrawer:matrix] property, as a [struct@GLib.Variant].
	 *
	 * An empty array can be returned in case the matrix is a zero matrix.
	 *
	 * The [method@SpaceDrawer.get_types_for_locations] function may be more
	 * convenient to use.
	 *
	 * Returns: the #GtkSourceSpaceDrawer:matrix value as a new floating #GVariant
	 *     instance.
	 */
	public Variant getMatrix()
	{
		auto __p = gtk_source_space_drawer_get_matrix(gtkSourceSpaceDrawer);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * If only one location is specified, this function returns what kind of
	 * white spaces are drawn at that location.
	 *
	 * The value is retrieved from the [property@SpaceDrawer:matrix] property.
	 *
	 * If several locations are specified, this function returns the logical AND for
	 * those locations. Which means that if a certain kind of white space is present
	 * in the return value, then that kind of white space is drawn at all the
	 * specified @locations.
	 *
	 * Params:
	 *     locations = one or several #GtkSourceSpaceLocationFlags.
	 *
	 * Returns: a combination of #GtkSourceSpaceTypeFlags.
	 */
	public GtkSourceSpaceTypeFlags getTypesForLocations(GtkSourceSpaceLocationFlags locations)
	{
		return gtk_source_space_drawer_get_types_for_locations(gtkSourceSpaceDrawer, locations);
	}

	/**
	 * Sets whether the [property@SpaceDrawer:matrix] property is enabled.
	 *
	 * Params:
	 *     enableMatrix = the new value.
	 */
	public void setEnableMatrix(bool enableMatrix)
	{
		gtk_source_space_drawer_set_enable_matrix(gtkSourceSpaceDrawer, enableMatrix);
	}

	/**
	 * Sets a new value to the [property@SpaceDrawer:matrix] property, as a [struct@GLib.Variant].
	 *
	 * If @matrix is %NULL, then an empty array is set.
	 *
	 * If @matrix is floating, it is consumed.
	 *
	 * The [method@SpaceDrawer.set_types_for_locations] function may be more
	 * convenient to use.
	 *
	 * Params:
	 *     matrix = the new matrix value, or %NULL.
	 */
	public void setMatrix(Variant matrix)
	{
		gtk_source_space_drawer_set_matrix(gtkSourceSpaceDrawer, (matrix is null) ? null : matrix.getVariantStruct());
	}

	/**
	 * Modifies the [property@SpaceDrawer:matrix] property at the specified
	 * @locations.
	 *
	 * Params:
	 *     locations = one or several #GtkSourceSpaceLocationFlags.
	 *     types = a combination of #GtkSourceSpaceTypeFlags.
	 */
	public void setTypesForLocations(GtkSourceSpaceLocationFlags locations, GtkSourceSpaceTypeFlags types)
	{
		gtk_source_space_drawer_set_types_for_locations(gtkSourceSpaceDrawer, locations, types);
	}
}
