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

	This is a simple demo of multithreading using gtkd and the D std.concurrency
	package. It simply spawns a thread that counts with the results being
	displayed in a TreeView.

	The demo uses the send/receive message paradigm in D integrated with
	the gdk.Threads.threadsAddIdle callback. Essentially the spawned thread
	sends the current count to the GTK thread and the message is received
	in the threadsAddIdle callback. This allows the GTK widgets to be updated
	since the threadsAddIdle happens on the GTK main thread.

*****************************************************************************/

import core.thread;
import std.concurrency;
import std.stdio;

import gtk.Application: Application;
import gio.Application: GioApplication = Application;
import gtk.ApplicationWindow: ApplicationWindow;
import gtkc.giotypes: GApplicationFlags;

import gtk.Box;
import gtk.Button;
import gtk.CellRendererText;
import gdk.Event;
import gdk.Threads;
import gtk.ListStore;
import gtk.ScrolledWindow;
import gtk.TreeIter;
import gtk.TreeView;
import gtk.TreeViewColumn;
import gtk.Widget;

class MainWindow: ApplicationWindow {
	private TreeView results;
	private ListStore store;
	private Button button;

	private Tid childTid;

	this(Application application) {
		super(application);
		this.addOnDelete(&windowClosed);
		setTitle("Multithreading GTKD Example");
		initUI();
		showAll();
	}

	/**
	 * Create and initialize the GTK widgets
	 */
	private void initUI() {
		this.setSizeRequest(1024,640);

		Box box = new Box(Orientation.VERTICAL,5);

		ScrolledWindow scroll = new ScrolledWindow();

		results = new TreeView();
		results.setHexpand(true);
		results.setVexpand(true);
		results.appendColumn(new TreeViewColumn(
				"Count", new CellRendererText(), "text", 0));

		store = new ListStore([GType.LONG]);
		results.setModel(store);
		TreeIter iter = store.createIter();
		store.setValue(iter, 0, 0);

		scroll.add(results);
		box.add(scroll);

		button = new Button("Start");
		button.addOnClicked(&buttonClicked);
		box.add(button);
		add(box);
	}

	/**
	 * Stop the child thread if it is running
	 */
	bool windowClosed(Event event, Widget widget) {
		stopThread();
		return false;
	}

	/**
	 * Event handler for the Start/Stop button
	 */
	private void buttonClicked(Button button) {
		if (!running) {
			writeln("Adding idle delegate");
			gdk.Threads.threadsAddIdle(&threadIdleProcess, null);

			writeln("Spawning thread...");
			childTid = spawn(&countNumbers);
			button.setLabel("Stop");
		} else {
			stopThread();
			button.setLabel("Start");
		}
	}

	/**
	 * Stop the spawned thread by sending it a message to
	 * stop
	 */
	public void stopThread() {
		if (running) {
			childTid.send(true);
		}
	}

	/**
	 * Called by the idle thread callback to add a value
	 * to the TreeView
	 */
	public void addValue(int value) {
		TreeIter iter = store.createIter();
		store.setValue(iter, 0, value);
	}
}

// Used to track if the spawned thread is running
shared bool running = false;

/**
 * Function call that get's spawned. It simply counts numbers
 * and sleeps for a second between each interval simulating
 * doing work and sending progress updates.
 * 
 * It also listens for a message from the GTK thread telling
 * it to stop if the user wishes to abort processing.
 */
void countNumbers() {
	writeln("Thread running ");
	int count = 0;
	running = true;
	bool stop = false;
	while (!stop) {
		count++;
		writeln("Current count: ",count);
		ownerTid.send(count);
		Thread.getThis().sleep(dur!("msecs")( 1000 ));
		receiveTimeout(dur!("msecs")( 0 ), (bool abort) {
				stop = abort;
			}
			);
	}
	writeln("Shutting down thread");
	running = false;
}

/**
 * The idle callback invoked by GTK periodically when the
 * application main thread is not engaged in any processing.
 */
extern(C) nothrow static int threadIdleProcess(void* data) {
	//Don't let D exceptions get thrown from function
	try{
		receiveTimeout(dur!("msecs")( 0 ), (int value) {
				mainWindow.addValue(value);
			}
		);
		// If thread is not running, return false so GTK removes it
		// and no longer calls it during idle processing.
		if (!running) {
			return 0;
		}
	} catch (Throwable t) {
		return 0;
	}
	return 1;
}

MainWindow mainWindow;

int main(string[] args) {
	std.concurrency.thisTid;
	auto application = new Application("demo.gtkd.Multithread", GApplicationFlags.FLAGS_NONE);
	application.addOnActivate(delegate void(GioApplication app){ 
			mainWindow = new MainWindow(application); 
		});
	return application.run(args);
}
