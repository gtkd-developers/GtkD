/**
 * Author: KonstantIMP <mihedovkos@glail.com>
 * Date: Jun 28 2021
 */ 
module map;

/** Import Gtk libs */
import gtk.Application, gtk.ApplicationWindow;

/** Import shumate */
import shumate.Map;

/** 
 * Start point of the app
 * Params:
 *   args = Input CLi arguments
 * Returns: 0 if everything is ok
 */
int main(string [] args) {
	/** Create and register the app */
	auto map_app = new Application("org.map.kimp", GApplicationFlags.FLAGS_NONE);

	/** Add apps activation */
	map_app.addOnActivate((app) {
		/** Create  new win */
		auto map_win = new ApplicationWindow(map_app);
		map_win.setTitle("Example 1. Shumate");

		auto map_view = new Map(true);

		map_win.setChild(map_view);
		map_win.show();
	});

	/** Run the app */
	return map_app.run(args);
}