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

    2018-03-29: ref to issiue #231
    Added colors in first column GdkColor & RGBA.
    This tests ListStore storing more complex attribute, than simple GType.
    Jakub Zdroik <jakub.zdroik@gmail.com>

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

import gdk.RGBA;
import gdk.Color;

import pango.PgFontDescription;
import std.stdio;

enum {
    COLUMN_NAME,
    COLUMN_TEXT,
    COLUMN_TEXT_VISIBLE,
    COLUMN_BOOL,
    COLUMN_BOOL_VISIBLE,
    COLUMN_TEXT_COLOR,
    COLUMN_TEXT_COLOR_RGBA,
    COLUMN_TEXT_FONT_DESCRIPTION,
}

void main(string[] args){
    Main.init(args);
    ListStore store = new ListStore( [
        GType.STRING,
        GType.STRING,
        GType.INT,
        GType.INT,
        GType.INT,
        Color.getType(),
        RGBA.getType(),
        PgFontDescription.getType(),
        ] );

    void appendRecord( string name, string value, bool isBoolean, RGBA rgba, Color color ){
        auto it = store.createIter();
        store.setValue( it, COLUMN_NAME, name );
        store.setValue( it, COLUMN_TEXT, value );
        store.setValue( it, COLUMN_TEXT_VISIBLE, !isBoolean );
        store.setValue( it, COLUMN_BOOL, value == "true" );
        store.setValue( it, COLUMN_BOOL_VISIBLE, isBoolean  );
        store.setValue( it, COLUMN_TEXT_COLOR_RGBA, rgba );
        store.setValue( it, COLUMN_TEXT_COLOR, color );
        store.setValue( it, COLUMN_TEXT_FONT_DESCRIPTION, new PgFontDescription() );
    }
    // fill store with data
    appendRecord( "Loops", "10", false, new RGBA(1.0,0.0,0.0,1.0), new Color(64,64,64) );
    appendRecord( "Name", "keinfarbton", false, new RGBA(0.0,1.0,0.0,1.0), new Color(127,127,127) );
    appendRecord( "Verbose", "true", true, new RGBA(0.0,0.0,1.0,1.0), new Color(200,200,200) );

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
    column.addAttribute(cell_text, "background-gdk", COLUMN_TEXT_COLOR);
    column.addAttribute(cell_text, "foreground-rgba", COLUMN_TEXT_COLOR_RGBA);

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

        auto val = store.getValue(it, COLUMN_TEXT_FONT_DESCRIPTION);

        import gobject.Type;

        writeln(Type.isA(PgFontDescription.getType(), GType.BOXED));
        writeln(PgFontDescription.getType(), " ", val.gType);

        auto font = val.get!PgFontDescription();

        writeln(font.getFamily());
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

