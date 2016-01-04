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

Authors: Gerald Nunn <gerald.b.nunn@gmail.com>

This is a demo of using GIO actions with GTK PopOver. It demonstrates
stateless and stateful actions displayed as normal, checkbox and radiobutton
menu items

See here for information about GIO actions: https://wiki.gnome.org/HowDoI/GAction

*****************************************************************************/

import std.stdio;

import gtk.Application : Application;
import gio.Application : GioApplication = Application;
import gtk.ApplicationWindow : ApplicationWindow;
import gtkc.giotypes : GApplicationFlags;

import gdk.Event;

import gio.Menu;
import gio.MenuItem;
import gio.SimpleAction;

import glib.Variant;
import glib.VariantType;

import gtk.HeaderBar;
import gtk.Image;
import gtk.MenuButton;
import gtk.MessageDialog;
import gtk.Popover;
import gtk.Widget;

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

        //HeaderBar
        HeaderBar hb = new HeaderBar();
        hb.setShowCloseButton(true);
        hb.setTitle("Actions Demo, Click the menu button >>>");
        this.setTitlebar(hb);

        //Normal stateless action
        SimpleAction saNormal = new SimpleAction("normal", null);
        saNormal.addOnActivate(delegate(Variant, SimpleAction) {
            MessageDialog dialog = new MessageDialog(this, DialogFlags.MODAL, MessageType.ERROR, ButtonsType.OK, "Normal action clicked!", null);
            scope (exit) {
                dialog.destroy();
            }
            dialog.run();
        });
        addAction(saNormal);

        //Stateful action which generates a Checkbox in popover
        SimpleAction saCheck = new SimpleAction("check", null, new Variant(false));
        saCheck.addOnActivate(delegate(Variant value, SimpleAction sa) { bool newState = !sa.getState().getBoolean(); sa.setState(new Variant(newState)); });
        addAction(saCheck);

        // Stateful action which uses targets. A target is essentially
        // one of a set of actions that an action can hold as state. When
        // using this type of action there is only one action for it however
        // when creating the menu model there is one menu item for each target.
        //
        // When using this type of action, you need to create the SimpleAction telling
        // it what type of variant the state represents. The parameter "new VariantType("s")" 
        // says that it is a string in this example. See GtkD documentation on VariantType
        // for more information.
        SimpleAction saRadio = new SimpleAction("radio", new VariantType("s"), new Variant("left"));
        saRadio.addOnActivate(delegate(Variant value, SimpleAction sa) {
            //The selected target is passed as the value.
            sa.setState(value);
        });
        addAction(saRadio);

        //Menu Model
        Menu model = new Menu();
        // Note that action names consist of a prefix and an id which when 
        // combined make a detailed name. The prefix comes from the container (ActionMap)
        // that the action is inserted against. GTK Application has a prefix of "app"
        // while GTK ApplicationWindow has a prefix of "win". You can create your own
        // prefixes by creating SimpleActionGroup to hold a set of actions and then call
        // Widget.insertActionGroup with your own prefix. 
        model.append("Normal", "win.normal");
        model.append("Checkbox", "win.check");

        Menu section = new Menu();
        //Note the target of the action is represented by the portion after the double colon
        section.append("Left", "win.radio::left");
        section.append("Center", "win.radio::center");
        section.append("Left", "win.radio::right");
        model.appendSection(null, section);

        //MenuButton
        MenuButton mb = new MenuButton();
        mb.setFocusOnClick(false);
        Image imgHamburger = new Image("open-menu-symbolic", IconSize.MENU);
        mb.add(imgHamburger);
        hb.packEnd(mb);

        //Popover
        Popover po = new Popover(mb, model);
        mb.setPopover(po);
    }
}

int main(string[] args) {
    auto application = new Application("demo.gtkd.Actions", GApplicationFlags.FLAGS_NONE);
    application.addOnActivate(delegate void(GioApplication app) { MainWindow mainWindow = new MainWindow(application); });
    return application.run(args);
}
