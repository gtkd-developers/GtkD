/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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


/*****************************************************************************

    Authors: Frank Benoit <keinfarbton@googlemail.com>
             muntyan #gtk+

    This demo shows a table with key/value pairs. The values can be edited.
    There are two types of values: strings and bools. Dependent of the type,
    either a CellRendererText or CellRendererToggle is used to show and edit
    the value.

    This is done by connecting the visibility of a CellRenderer to a
    ListStore column.

*****************************************************************************/
module DemoMultiCellRenderer;

import gtk.Main;
import gdk.Event;
import gtk.Window;
import gtk.Widget;
import gtk.TreeIter;
import gtk.TreePath;
import gtk.TreeView;
import gtk.TreeViewColumn;
import gtk.CellRendererText;
import gtk.CellRendererToggle;
import gtk.ListStore;

enum {
    COLUMN_NAME,
    COLUMN_TEXT,
    COLUMN_TEXT_VISIBLE,
    COLUMN_BOOL,
    COLUMN_BOOL_VISIBLE
}

void main(string[] args){
    Main.init(args);
    ListStore store = new ListStore( [
        GType.STRING,
        GType.STRING,
        GType.INT,
        GType.INT,
        GType.INT] );

    void appendRecord( string name, string value, bool isBoolean ){
        auto it = store.createIter();
        store.setValue( it, COLUMN_NAME, name );
        store.setValue( it, COLUMN_TEXT, value );
        store.setValue( it, COLUMN_TEXT_VISIBLE, !isBoolean );
        store.setValue( it, COLUMN_BOOL, value == "true" );
        store.setValue( it, COLUMN_BOOL_VISIBLE, isBoolean  );
    }
    // fill store with data
    appendRecord( "Loops", "10", false );
    appendRecord( "Name", "keinfarbton", false );
    appendRecord( "Verbose", "true", true );

    auto wnd = new Window( "Celleditor Demo" );
    auto tv  = new TreeView();
    wnd.add(tv);

    // create first column with text renderer
    TreeViewColumn column = new TreeViewColumn();
    column.setTitle( "Name" );
    tv.appendColumn(column);

    CellRendererText cell_text = new CellRendererText();
    column.packStart(cell_text, 0 );
    column.addAttribute(cell_text, "text", COLUMN_NAME);

    // create second column with two renderers
    column = new TreeViewColumn();
    column.setTitle( "Value" );
    tv.appendColumn(column);

    CellRendererToggle cell_bool = new CellRendererToggle();
    column.packStart(cell_bool, 0 );
    column.addAttribute(cell_bool, "active", COLUMN_BOOL);
    column.addAttribute(cell_bool, "visible", COLUMN_BOOL_VISIBLE);

    cell_text = new CellRendererText();
    column.packStart(cell_text, 0 );
    column.addAttribute(cell_text, "text", COLUMN_TEXT);
    column.addAttribute(cell_text, "visible", COLUMN_TEXT_VISIBLE);
    cell_text.setProperty( "editable", 1 );

    // change value in store on toggle event
    cell_bool.addOnToggled( delegate void(string p, CellRendererToggle){
        auto path = new TreePath( p );
        auto it = new TreeIter( store, path );
        store.setValue(it, COLUMN_BOOL, it.getValueInt( COLUMN_BOOL ) ? 0 : 1 );
    });

    // change the text in the store on end of edit
    cell_text.addOnEdited( delegate void(string p, string v, CellRendererText cell ){
        auto path = new TreePath( p );
        auto it = new TreeIter( store, path );
        store.setValue( it, COLUMN_TEXT, v );
    });

    tv.setModel(store);
    wnd.showAll();

    wnd.addOnDelete( delegate bool (Event event, Widget widget) {
        widget.destroy();
        Main.quit();
        return false;
    });

    Main.run();
}

