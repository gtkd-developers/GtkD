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

module gtk.HelloWorld;

import gio.Application : GioApplication = Application;
import gtk.Application;
import gtk.ApplicationWindow;
import gtk.Label;

class HelloWorld : ApplicationWindow
{
	this(Application application)
	{
		super(application);
		setTitle("GtkD");
		setBorderWidth(10);
		add(new Label("Hello World"));

		showAll();
	}
}

int main(string[] args)
{
	auto application = new Application("org.gtkd.demo.helloworld", GApplicationFlags.FLAGS_NONE);
	application.addOnActivate(delegate void(GioApplication app) { new HelloWorld(application); });
	return application.run(args);
}
