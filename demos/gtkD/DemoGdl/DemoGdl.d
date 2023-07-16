module demos.gtkD.DemoGdl.DemoGdl;

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

Authors: Jan Jurzita <gtkd-contrib@webfreak.org>

This demo shows the Gnome Docking library in action.

*****************************************************************************/

import gtk.Application : Application;
import gio.Application : GioApplication = Application;
import gtk.ApplicationWindow : ApplicationWindow;

import gtk.Button;
import gtk.DrawingArea;

import gdl.DockItem;
import gdl.Dock;

import TestDrawingArea;

class MainWindow : ApplicationWindow {

    this(Application application) {
        super(application);
        initUI();
        showAll();
    }

    /**
     * Create and initialize the GTK widgets
     */
    private void initUI() {
        this.setSizeRequest(1024, 640);

        Dock dock = new Dock;
        DockItem item2 = new DockItem("Drawing Area", "Drawing Area",
            GdlDockItemBehavior.LOCKED
            | GdlDockItemBehavior.CANT_CLOSE
            | GdlDockItemBehavior.NO_GRIP);
        item2.add(new TestDrawingArea());
        dock.addItem(item2, GdlDockPlacement.CENTER);
        DockItem item = new DockItem("Toolbox", "Toolbox", GdlDockItemBehavior.NORMAL);
        item.add(new Button("Toolbox 1"));
        dock.addItem(item, GdlDockPlacement.LEFT);
        DockItem item3 = new DockItem("TBox3", "Long Toolbox 3 Name", GdlDockItemBehavior.NORMAL);
        item3.add(new Button("Toolbox 3"));
        dock.addItem(item3, GdlDockPlacement.BOTTOM);
        add(dock);
    }
}

int main(string[] args) {
    auto application = new Application("demo.gtkd.GDL", GApplicationFlags.FLAGS_NONE);
    application.addOnActivate(delegate void(GioApplication app) { MainWindow mainWindow = new MainWindow(application); });
    return application.run(args);
}
