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


module gstreamer.TypeFindFactory;

private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.Caps;
private import gstreamer.PluginFeature;
private import gstreamer.TypeFind;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * These functions allow querying informations about registered typefind
 * functions. How to create and register these functions is described in
 * the section <link linkend="gstreamer-Writing-typefind-functions">
 * "Writing typefind functions"</link>.
 * 
 * The following example shows how to write a very simple typefinder that
 * identifies the given data. You can get quite a bit more complicated than
 * that though.
 * |[<!-- language="C" -->
 * typedef struct {
 * guint8 *data;
 * guint size;
 * guint probability;
 * GstCaps *data;
 * } MyTypeFind;
 * static void
 * my_peek (gpointer data, gint64 offset, guint size)
 * {
 * MyTypeFind *find = (MyTypeFind *) data;
 * if (offset &gt;= 0 &amp;&amp; offset + size &lt;= find->size) {
 * return find->data + offset;
 * }
 * return NULL;
 * }
 * static void
 * my_suggest (gpointer data, guint probability, GstCaps *caps)
 * {
 * MyTypeFind *find = (MyTypeFind *) data;
 * if (probability &gt; find->probability) {
 * find->probability = probability;
 * gst_caps_replace (&amp;find->caps, caps);
 * }
 * }
 * static GstCaps *
 * find_type (guint8 *data, guint size)
 * {
 * GList *walk, *type_list;
 * MyTypeFind find = {data, size, 0, NULL};
 * GstTypeFind gst_find = {my_peek, my_suggest, &amp;find, };
 * walk = type_list = gst_type_find_factory_get_list ();
 * while (walk) {
 * GstTypeFindFactory *factory = GST_TYPE_FIND_FACTORY (walk->data);
 * walk = g_list_next (walk)
 * gst_type_find_factory_call_function (factory, &amp;gst_find);
 * }
 * g_list_free (type_list);
 * return find.caps;
 * };
 * ]|
 */
public class TypeFindFactory : PluginFeature
{
	/** the main Gtk struct */
	protected GstTypeFindFactory* gstTypeFindFactory;

	/** Get the main Gtk struct */
	public GstTypeFindFactory* getTypeFindFactoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstTypeFindFactory;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstTypeFindFactory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstTypeFindFactory* gstTypeFindFactory, bool ownedRef = false)
	{
		this.gstTypeFindFactory = gstTypeFindFactory;
		super(cast(GstPluginFeature*)gstTypeFindFactory, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_type_find_factory_get_type();
	}

	/**
	 * Gets the list of all registered typefind factories. You must free the
	 * list using gst_plugin_feature_list_free().
	 *
	 * The returned factories are sorted by highest rank first, and then by
	 * factory name.
	 *
	 * Free-function: gst_plugin_feature_list_free
	 *
	 * Returns: the list of all
	 *     registered #GstTypeFindFactory.
	 */
	public static ListG getList()
	{
		auto p = gst_type_find_factory_get_list();

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Calls the #GstTypeFindFunction associated with this factory.
	 *
	 * Params:
	 *     find = a properly setup #GstTypeFind entry. The get_data
	 *         and suggest_type members must be set.
	 */
	public void callFunction(TypeFind find)
	{
		gst_type_find_factory_call_function(gstTypeFindFactory, (find is null) ? null : find.getTypeFindStruct());
	}

	/**
	 * Gets the #GstCaps associated with a typefind factory.
	 *
	 * Returns: the #GstCaps associated with this factory
	 */
	public Caps getCaps()
	{
		auto p = gst_type_find_factory_get_caps(gstTypeFindFactory);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}

	/**
	 * Gets the extensions associated with a #GstTypeFindFactory. The returned
	 * array should not be changed. If you need to change stuff in it, you should
	 * copy it using g_strdupv().  This function may return %NULL to indicate
	 * a 0-length list.
	 *
	 * Returns: a %NULL-terminated array of extensions associated with this factory
	 */
	public string[] getExtensions()
	{
		return Str.toStringArray(gst_type_find_factory_get_extensions(gstTypeFindFactory));
	}

	/**
	 * Check whether the factory has a typefind function. Typefind factories
	 * without typefind functions are a last-effort fallback mechanism to
	 * e.g. assume a certain media type based on the file extension.
	 *
	 * Returns: %TRUE if the factory has a typefind functions set, otherwise %FALSE
	 */
	public bool hasFunction()
	{
		return gst_type_find_factory_has_function(gstTypeFindFactory) != 0;
	}
}
