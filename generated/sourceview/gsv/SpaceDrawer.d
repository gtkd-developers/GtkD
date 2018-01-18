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


module gsv.SpaceDrawer;

private import gio.Settings;
private import glib.ConstructionException;
private import glib.Str;
private import glib.Variant;
private import gobject.ObjectG;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;


/** */
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
	 * Creates a new #GtkSourceSpaceDrawer object. Useful for storing space drawing
	 * settings independently of a #GtkSourceView.
	 *
	 * Returns: a new #GtkSourceSpaceDrawer.
	 *
	 * Since: 3.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_source_space_drawer_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceSpaceDrawer*) p, true);
	}

	/**
	 * Binds the #GtkSourceSpaceDrawer:matrix property to a #GSettings key.
	 *
	 * The #GSettings key must be of the same type as the
	 * #GtkSourceSpaceDrawer:matrix property, that is, `"au"`.
	 *
	 * The g_settings_bind() function cannot be used, because the default GIO
	 * mapping functions don't support #GVariant properties (maybe it will be
	 * supported by a future GIO version, in which case this function can be
	 * deprecated).
	 *
	 * Params:
	 *     settings = a #GSettings object.
	 *     key = the @settings key to bind.
	 *     flags = flags for the binding.
	 *
	 * Since: 3.24
	 */
	public void bindMatrixSetting(Settings settings, string key, GSettingsBindFlags flags)
	{
		gtk_source_space_drawer_bind_matrix_setting(gtkSourceSpaceDrawer, (settings is null) ? null : settings.getSettingsStruct(), Str.toStringz(key), flags);
	}

	/**
	 * Returns: whether the #GtkSourceSpaceDrawer:matrix property is enabled.
	 *
	 * Since: 3.24
	 */
	public bool getEnableMatrix()
	{
		return gtk_source_space_drawer_get_enable_matrix(gtkSourceSpaceDrawer) != 0;
	}

	/**
	 * Gets the value of the #GtkSourceSpaceDrawer:matrix property, as a #GVariant.
	 * An empty array can be returned in case the matrix is a zero matrix.
	 *
	 * The gtk_source_space_drawer_get_types_for_locations() function may be more
	 * convenient to use.
	 *
	 * Returns: the #GtkSourceSpaceDrawer:matrix value as a new floating #GVariant
	 *     instance.
	 *
	 * Since: 3.24
	 */
	public Variant getMatrix()
	{
		auto p = gtk_source_space_drawer_get_matrix(gtkSourceSpaceDrawer);

		if(p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * If only one location is specified, this function returns what kind of
	 * white spaces are drawn at that location. The value is retrieved from the
	 * #GtkSourceSpaceDrawer:matrix property.
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
	 *
	 * Since: 3.24
	 */
	public GtkSourceSpaceTypeFlags getTypesForLocations(GtkSourceSpaceLocationFlags locations)
	{
		return gtk_source_space_drawer_get_types_for_locations(gtkSourceSpaceDrawer, locations);
	}

	/**
	 * Sets whether the #GtkSourceSpaceDrawer:matrix property is enabled.
	 *
	 * Params:
	 *     enableMatrix = the new value.
	 *
	 * Since: 3.24
	 */
	public void setEnableMatrix(bool enableMatrix)
	{
		gtk_source_space_drawer_set_enable_matrix(gtkSourceSpaceDrawer, enableMatrix);
	}

	/**
	 * Sets a new value to the #GtkSourceSpaceDrawer:matrix property, as a
	 * #GVariant. If @matrix is %NULL, then an empty array is set.
	 *
	 * If @matrix is floating, it is consumed.
	 *
	 * The gtk_source_space_drawer_set_types_for_locations() function may be more
	 * convenient to use.
	 *
	 * Params:
	 *     matrix = the new matrix value, or %NULL.
	 *
	 * Since: 3.24
	 */
	public void setMatrix(Variant matrix)
	{
		gtk_source_space_drawer_set_matrix(gtkSourceSpaceDrawer, (matrix is null) ? null : matrix.getVariantStruct());
	}

	/**
	 * Modifies the #GtkSourceSpaceDrawer:matrix property at the specified
	 * @locations.
	 *
	 * Params:
	 *     locations = one or several #GtkSourceSpaceLocationFlags.
	 *     types = a combination of #GtkSourceSpaceTypeFlags.
	 *
	 * Since: 3.24
	 */
	public void setTypesForLocations(GtkSourceSpaceLocationFlags locations, GtkSourceSpaceTypeFlags types)
	{
		gtk_source_space_drawer_set_types_for_locations(gtkSourceSpaceDrawer, locations, types);
	}
}
