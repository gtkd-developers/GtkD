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


module gtk.ColumnViewColumn;

private import gio.MenuModel;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.ColumnView;
private import gtk.ListItemFactory;
private import gtk.Sorter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkColumnViewColumn` represents the columns being added to `GtkColumnView`.
 * 
 * The main ingredient for a `GtkColumnViewColumn` is the `GtkListItemFactory`
 * that tells the columnview how to create cells for this column from items in
 * the model.
 * 
 * Columns have a title, and can optionally have a header menu set
 * with [method@Gtk.ColumnViewColumn.set_header_menu].
 * 
 * A sorter can be associated with a column using
 * [method@Gtk.ColumnViewColumn.set_sorter], to let users influence sorting
 * by clicking on the column header.
 */
public class ColumnViewColumn : ObjectG
{
	/** the main Gtk struct */
	protected GtkColumnViewColumn* gtkColumnViewColumn;

	/** Get the main Gtk struct */
	public GtkColumnViewColumn* getColumnViewColumnStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkColumnViewColumn;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkColumnViewColumn;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkColumnViewColumn* gtkColumnViewColumn, bool ownedRef = false)
	{
		this.gtkColumnViewColumn = gtkColumnViewColumn;
		super(cast(GObject*)gtkColumnViewColumn, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_column_view_column_get_type();
	}

	/**
	 * Creates a new `GtkColumnViewColumn` that uses the given @factory for
	 * mapping items to widgets.
	 *
	 * You most likely want to call [method@Gtk.ColumnView.append_column] next.
	 *
	 * The function takes ownership of the argument, so you can write code like:
	 *
	 * ```c
	 * column = gtk_column_view_column_new (_("Name"),
	 * gtk_builder_list_item_factory_new_from_resource ("/name.ui"));
	 * ```
	 *
	 * Params:
	 *     title = Title to use for this column
	 *     factory = The factory to populate items with
	 *
	 * Returns: a new `GtkColumnViewColumn` using the given @factory
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title, ListItemFactory factory)
	{
		auto __p = gtk_column_view_column_new(Str.toStringz(title), (factory is null) ? null : factory.getListItemFactoryStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkColumnViewColumn*) __p, true);
	}

	/**
	 * Gets the column view that's currently displaying this column.
	 *
	 * If @self has not been added to a column view yet, %NULL is returned.
	 *
	 * Returns: The column view displaying @self.
	 */
	public ColumnView getColumnView()
	{
		auto __p = gtk_column_view_column_get_column_view(gtkColumnViewColumn);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ColumnView)(cast(GtkColumnView*) __p);
	}

	/**
	 * Returns whether this column should expand.
	 *
	 * Returns: %TRUE if this column expands
	 */
	public bool getExpand()
	{
		return gtk_column_view_column_get_expand(gtkColumnViewColumn) != 0;
	}

	/**
	 * Gets the factory that's currently used to populate list items for
	 * this column.
	 *
	 * Returns: The factory in use
	 */
	public ListItemFactory getFactory()
	{
		auto __p = gtk_column_view_column_get_factory(gtkColumnViewColumn);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListItemFactory)(cast(GtkListItemFactory*) __p);
	}

	/**
	 * Gets the fixed width of the column.
	 *
	 * Returns: the fixed with of the column
	 */
	public int getFixedWidth()
	{
		return gtk_column_view_column_get_fixed_width(gtkColumnViewColumn);
	}

	/**
	 * Gets the menu model that is used to create the context menu
	 * for the column header.
	 *
	 * Returns: the `GMenuModel`
	 */
	public MenuModel getHeaderMenu()
	{
		auto __p = gtk_column_view_column_get_header_menu(gtkColumnViewColumn);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p);
	}

	/**
	 * Returns whether this column is resizable.
	 *
	 * Returns: %TRUE if this column is resizable
	 */
	public bool getResizable()
	{
		return gtk_column_view_column_get_resizable(gtkColumnViewColumn) != 0;
	}

	/**
	 * Returns the sorter that is associated with the column.
	 *
	 * Returns: the `GtkSorter` of @self
	 */
	public Sorter getSorter()
	{
		auto __p = gtk_column_view_column_get_sorter(gtkColumnViewColumn);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sorter)(cast(GtkSorter*) __p);
	}

	/**
	 * Returns the title set with gtk_column_view_column_set_title().
	 *
	 * Returns: The column's title
	 */
	public string getTitle()
	{
		return Str.toString(gtk_column_view_column_get_title(gtkColumnViewColumn));
	}

	/**
	 * Returns whether this column is visible.
	 *
	 * Returns: %TRUE if this column is visible
	 */
	public bool getVisible()
	{
		return gtk_column_view_column_get_visible(gtkColumnViewColumn) != 0;
	}

	/**
	 * Sets the column to take available extra space.
	 *
	 * The extra space is shared equally amongst all columns that
	 * have the expand set to %TRUE.
	 *
	 * Params:
	 *     expand = %TRUE if this column should expand to fill available sace
	 */
	public void setExpand(bool expand)
	{
		gtk_column_view_column_set_expand(gtkColumnViewColumn, expand);
	}

	/**
	 * Sets the `GtkListItemFactory` to use for populating list items for this
	 * column.
	 *
	 * Params:
	 *     factory = the factory to use
	 */
	public void setFactory(ListItemFactory factory)
	{
		gtk_column_view_column_set_factory(gtkColumnViewColumn, (factory is null) ? null : factory.getListItemFactoryStruct());
	}

	/**
	 * If @fixed_width is not -1, sets the fixed width of @column;
	 * otherwise unsets it.
	 *
	 * Setting a fixed width overrides the automatically calculated
	 * width. Interactive resizing also sets the “fixed-width” property.
	 *
	 * Params:
	 *     fixedWidth = the new fixed width, or -1
	 */
	public void setFixedWidth(int fixedWidth)
	{
		gtk_column_view_column_set_fixed_width(gtkColumnViewColumn, fixedWidth);
	}

	/**
	 * Sets the menu model that is used to create the context menu
	 * for the column header.
	 *
	 * Params:
	 *     menu = a `GMenuModel`
	 */
	public void setHeaderMenu(MenuModel menu)
	{
		gtk_column_view_column_set_header_menu(gtkColumnViewColumn, (menu is null) ? null : menu.getMenuModelStruct());
	}

	/**
	 * Sets whether this column should be resizable by dragging.
	 *
	 * Params:
	 *     resizable = whether this column should be resizable
	 */
	public void setResizable(bool resizable)
	{
		gtk_column_view_column_set_resizable(gtkColumnViewColumn, resizable);
	}

	/**
	 * Associates a sorter with the column.
	 *
	 * If @sorter is %NULL, the column will not let users change
	 * the sorting by clicking on its header.
	 *
	 * This sorter can be made active by clicking on the column
	 * header, or by calling [method@Gtk.ColumnView.sort_by_column].
	 *
	 * See [method@Gtk.ColumnView.get_sorter] for the necessary steps
	 * for setting up customizable sorting for [class@Gtk.ColumnView].
	 *
	 * Params:
	 *     sorter = the `GtkSorter` to associate with @column
	 */
	public void setSorter(Sorter sorter)
	{
		gtk_column_view_column_set_sorter(gtkColumnViewColumn, (sorter is null) ? null : sorter.getSorterStruct());
	}

	/**
	 * Sets the title of this column.
	 *
	 * The title is displayed in the header of a `GtkColumnView`
	 * for this column and is therefore user-facing text that should
	 * be translated.
	 *
	 * Params:
	 *     title = Title to use for this column
	 */
	public void setTitle(string title)
	{
		gtk_column_view_column_set_title(gtkColumnViewColumn, Str.toStringz(title));
	}

	/**
	 * Sets whether this column should be visible in views.
	 *
	 * Params:
	 *     visible = whether this column should be visible
	 */
	public void setVisible(bool visible)
	{
		gtk_column_view_column_set_visible(gtkColumnViewColumn, visible);
	}
}
