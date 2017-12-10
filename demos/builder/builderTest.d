module builder.builderTest;

import gio.Application: GioApplication = Application;

import gtk.Application;
import gtk.ApplicationWindow;
import gtk.Builder;
import gtk.Button;

import std.stdio;
import core.stdc.stdlib;

/**
 * Usage ./gladeText /path/to/your/glade/file.glade
 *
 */

int main(string[] args) {
	string gladefile;
	if(args.length > 1) {
		writefln("Loading %s", args[1]);
		gladefile = args[1];
		args = args[0..1];
	} else {
		writeln("No glade file specified, using default \"builderTest.glade\"");
		gladefile = "builderTest.glade";
	}
	auto application = new Application("org.gtkd.demo.builder.builderTest", GApplicationFlags.FLAGS_NONE);

	void buildAndDisplay(GioApplication a) {
		auto builder = new Builder();
		if( ! builder.addFromFile(gladefile) ) {
			writeln("Oops, could not create Glade object, check your glade file ;)");
			exit(1);
		}
		auto window = cast(ApplicationWindow)builder.getObject("window");
		window.setApplication(application);
		if (window !is null) {
			window.setTitle("This is a glade application window");
			auto button = cast(Button)builder.getObject("button");
			if(button !is null) {
				button.addOnClicked( delegate void(Button aux){ a.quit(); } );
				window.showAll();
			} else {
				writeln("No button in the window?");
				exit(1);
			}
		} else {
			writeln("No window?");
			exit(1);
		}
	}

	application.addOnActivate(&buildAndDisplay);
	return application.run(args);
}
