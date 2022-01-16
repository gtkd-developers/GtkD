/**
 * Author: KonstantIMP <mihedovkos@gmail.com>
 * Date: Jun 25 2021
 * License: LGPLv3
 */
module avatar;

/** Import Gtk lib */
import gtk.Application, gtk.ApplicationWindow;

/** Import Adw lib */
import adw.Avatar;

/** 
 * Start point of the app
 * Params:
 *   args = Input CL arguments
 * Returns: 0 if everything is OK
 */
int main(string [] args) {
	/** Create an register an app */
	Application avatar_app = new Application("org.avatar.d_adw.example.kimp", GApplicationFlags.FLAGS_NONE);

	/** Connect app activation */
	avatar_app.addOnActivate((app) {
		/** Create the main window */
		ApplicationWindow avatar_win = new ApplicationWindow(avatar_app);

		/** Create AdwaitaAvatar object */
		Avatar avatar = new Avatar(128, "KonstantIMP", true);

		/** Insert the avatar to the window */
		avatar_win.setChild(avatar);

		/** Show the window */
		avatar_win.show();
	});

	/** Run the app */
	return avatar_app.run(args);
}