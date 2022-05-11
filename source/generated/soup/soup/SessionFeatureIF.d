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


module soup.SessionFeatureIF;

private import soup.Session;
private import soup.c.functions;
public  import soup.c.types;


/**
 * An object that implement some sort of optional feature for
 * #SoupSession.
 *
 * Since: 2.24
 */
public interface SessionFeatureIF{
	/** Get the main Gtk struct */
	public SoupSessionFeature* getSessionFeatureStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return soup_session_feature_get_type();
	}

	/**
	 * Adds a "sub-feature" of type @type to the base feature @feature.
	 * This is used for features that can be extended with multiple
	 * different types. Eg, the authentication manager can be extended
	 * with subtypes of #SoupAuth.
	 *
	 * Params:
	 *     type = the #GType of a "sub-feature"
	 *
	 * Returns: %TRUE if @feature accepted @type as a subfeature.
	 *
	 * Since: 2.34
	 */
	public bool addFeature(GType type);

	/** */
	public void attach(Session session);

	/** */
	public void detach(Session session);

	/**
	 * Tests if @feature has a "sub-feature" of type @type. See
	 * soup_session_feature_add_feature().
	 *
	 * Params:
	 *     type = the #GType of a "sub-feature"
	 *
	 * Returns: %TRUE if @feature has a subfeature of type @type
	 *
	 * Since: 2.34
	 */
	public bool hasFeature(GType type);

	/**
	 * Removes the "sub-feature" of type @type from the base feature
	 * @feature. See soup_session_feature_add_feature().
	 *
	 * Params:
	 *     type = the #GType of a "sub-feature"
	 *
	 * Returns: %TRUE if @type was removed from @feature
	 *
	 * Since: 2.34
	 */
	public bool removeFeature(GType type);
}
