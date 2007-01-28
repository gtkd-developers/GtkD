/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gdk-Threads.html
 * outPack = gdk
 * outFile = Threads
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = 
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gdk.Threads;

private import gtkc.gdktypes;

private import gtkc.gdk;




/**
 * Description
 * For thread safety, GDK relies on the thread primitives in GLib,
 * and on the thread-safe GLib main loop.
 * GLib is completely thread safe (all global data is automatically
 * locked), but individual data structure instances are not automatically
 * locked for performance reasons. So e.g. you must coordinate
 * accesses to the same GHashTable from multiple threads.
 * GTK+ is "thread aware" but not thread safe  it provides a
 * global lock controlled by gdk_threads_enter()/gdk_threads_leave()
 * which protects all use of GTK+. That is, only one thread can use GTK+
 * at any given time.
 * Unfortunately the above holds with the X11 backend only. With the
 * Win32 backend, GDK calls should not be attempted from multiple threads
 * at all.
 * You must call g_thread_init() and gdk_threads_init() before executing
 * any other GTK+ or GDK functions in a threaded GTK+ program.
 * Idles, timeouts, and input functions are executed outside
 * of the main GTK+ lock. So, if you need to call GTK+
 * inside of such a callback, you must surround the callback
 * with a gdk_threads_enter()/gdk_threads_leave() pair.
 * (However, signals are still executed within the main
 * GTK+ lock.)
 * In particular, this means, if you are writing widgets that might
 * be used in threaded programs, you must surround
 * timeouts and idle functions in this matter.
 * As always, you must also surround any calls to GTK+ not made within
 * a signal handler with a gdk_threads_enter()/gdk_threads_leave() pair.
 * Before calling gdk_threads_leave() from a thread other
 * than your main thread, you probably want to call gdk_flush()
 * to send all pending commands to the windowing system.
 * (The reason you don't need to do this from the main thread
 * is that GDK always automatically flushes pending commands
 * when it runs out of incoming events to process and has
 * to sleep while waiting for more events.)
 * A minimal main program for a threaded GTK+ application
 * looks like:
 * int
 * main (int argc, char *argv[])
 * {
	 *  GtkWidget *window;
	 *  g_thread_init (NULL);
	 *  gdk_threads_init ();
	 *  gdk_threads_enter ();
	 *  gtk_init (argc, argv);
	 *  window = create_window ();
	 *  gtk_widget_show (window);
	 *  gtk_main ();
	 *  gdk_threads_leave ();
	 *  return 0;
 * }
 * Callbacks require a bit of attention. Callbacks from GTK+ signals
 * are made within the GTK+ lock. However callbacks from GLib (timeouts,
 * IO callbacks, and idle functions) are made outside of the GTK+
 * lock. So, within a signal handler you do not need to call
 * gdk_threads_enter(), but within the other types of callbacks, you
 * do.
 * Erik Mouw contributed the following code example to
 * illustrate how to use threads within GTK+ programs.
 * /+*-------------------------------------------------------------------------
 *  * Filename: gtk-thread.c
 *  * Version: 0.99.1
 *  * Copyright: Copyright (C) 1999, Erik Mouw
 *  * Author: Erik Mouw <J.A.K.Mouwits.tudelft.nl>
 *  * Description: GTK threads example.
 *  * Created at: Sun Oct 17 21:27:09 1999
 *  * Modified by: Erik Mouw <J.A.K.Mouwits.tudelft.nl>
 *  * Modified at: Sun Oct 24 17:21:41 1999
 *  *-----------------------------------------------------------------------+/
 * /+*
 *  * Compile with:
 *  *
 *  * cc -o gtk-thread gtk-thread.c `gtk-config --cflags --libs gthread`
 *  *
 *  * Thanks to Sebastian Wilhelmi and Owen Taylor for pointing out some
 *  * bugs.
 *  *
 *  +/
 * #include <stdio.h>
 * #include <stdlib.h>
 * #include <unistd.h>
 * #include <time.h>
 * #include <gtk/gtk.h>
 * #include <glib.h>
 * #include <pthread.h>
 * #define YES_IT_IS (1)
 * #define NO_IT_IS_NOT (0)
 * typedef struct
 * {
	 *  GtkWidget *label;
	 *  int what;
 * } yes_or_no_args;
 * G_LOCK_DEFINE_STATIC (yes_or_no);
 * static volatile int yes_or_no = YES_IT_IS;
 * void destroy (GtkWidget *widget, gpointer data)
 * {
	 *  gtk_main_quit ();
 * }
 * void *argument_thread (void *args)
 * {
	 *  yes_or_no_args *data = (yes_or_no_args *)args;
	 *  gboolean say_something;
	 *  for (;;)
	 *  {
		 *  /+* sleep a while +/
		 *  sleep(rand() / (RAND_MAX / 3) + 1);
		 *  /+* lock the yes_or_no_variable +/
		 *  G_LOCK(yes_or_no);
		 *  /+* do we have to say something? +/
		 *  say_something = (yes_or_no != data->what);
		 *  if(say_something)
		 * 	{
			 * 	 /+* set the variable +/
			 * 	 yes_or_no = data->what;
		 * 	}
		 *  /+* Unlock the yes_or_no variable +/
		 *  G_UNLOCK (yes_or_no);
		 *  if (say_something)
		 * 	{
			 * 	 /+* get GTK thread lock +/
			 * 	 gdk_threads_enter ();
			 * 	 /+* set label text +/
			 * 	 if(data->what == YES_IT_IS)
			 * 	 gtk_label_set_text (GTK_LABEL (data->label), "O yes, it is!");
			 * 	 else
			 * 	 gtk_label_set_text (GTK_LABEL (data->label), "O no, it isn't!");
			 * 	 /+* release GTK thread lock +/
			 * 	 gdk_threads_leave ();
		 * 	}
	 *  }
	 *  return NULL;
 * }
 * int main (int argc, char *argv[])
 * {
	 *  GtkWidget *window;
	 *  GtkWidget *label;
	 *  yes_or_no_args yes_args, no_args;
	 *  pthread_t no_tid, yes_tid;
	 *  /+* init threads +/
	 *  g_thread_init (NULL);
	 *  gdk_threads_init ();
	 *  gdk_threads_enter ();
	 *  /+* init gtk +/
	 *  gtk_init(argc, argv);
	 *  /+* init random number generator +/
	 *  srand ((unsigned int) time (NULL));
	 *  /+* create a window +/
	 *  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	 *  gtk_signal_connect (GTK_OBJECT (window), "destroy",
	 * 		 GTK_SIGNAL_FUNC (destroy), NULL);
	 *  gtk_container_set_border_width (GTK_CONTAINER (window), 10);
	 *  /+* create a label +/
	 *  label = gtk_label_new ("And now for something completely different ...");
	 *  gtk_container_add (GTK_CONTAINER (window), label);
	 *  /+* show everything +/
	 *  gtk_widget_show (label);
	 *  gtk_widget_show (window);
	 *  /+* create the threads +/
	 *  yes_args.label = label;
	 *  yes_args.what = YES_IT_IS;
	 *  pthread_create (yes_tid, NULL, argument_thread, yes_args);
	 *  no_args.label = label;
	 *  no_args.what = NO_IT_IS_NOT;
	 *  pthread_create (no_tid, NULL, argument_thread, no_args);
	 *  /+* enter the GTK main loop +/
	 *  gtk_main ();
	 *  gdk_threads_leave ();
	 *  return 0;
 * }
 */

/**
 */



/**
 * Initializes GDK so that it can be used from multiple threads
 * in conjunction with gdk_threads_enter() and gdk_threads_leave().
 * g_thread_init() must be called previous to this function.
 * This call must be made before any use of the main loop from
 * GTK+; to be safe, call it before gtk_init().
 */
public static void gdkThreadsInit()
{
	// void gdk_threads_init (void);
	gdk_threads_init();
}

/**
 * This macro marks the beginning of a critical section
 * in which GDK and GTK+ functions can be called.
 * Only one thread at a time can be in such a critial
 * section.
 */
public static void gdkThreadsEnter()
{
	// void gdk_threads_enter (void);
	gdk_threads_enter();
}

/**
 * Leaves a critical region begun with gdk_threads_enter().
 */
public static void gdkThreadsLeave()
{
	// void gdk_threads_leave (void);
	gdk_threads_leave();
}


/**
 * Allows the application to replace the standard method that
 * GDK uses to protect its data structures. Normally, GDK
 * creates a single GMutex that is locked by gdk_threads_enter(),
 * and released by gdk_threads_leave(); using this function an
 * application provides, instead, a function enter_fn that is
 * called by gdk_threads_enter() and a function leave_fn that is
 * called by gdk_threads_leave().
 * The functions must provide at least same locking functionality
 * as the default implementation, but can also do extra application
 * specific processing.
 * As an example, consider an application that has its own recursive
 * lock that when held, holds the GTK+ lock as well. When GTK+ unlocks
 * the GTK+ lock when entering a recursive main loop, the application
 * must temporarily release its lock as well.
 * Most threaded GTK+ apps won't need to use this method.
 * This method must be called before gdk_threads_init(), and cannot
 * be called multiple times.
 * enter_fn:
 *  function called to guard GDK
 * leave_fn:
 *  function called to release the guard
 * Since 2.4
 */
public static void gdkThreadsSetLockFunctions(GCallback enterFn, GCallback leaveFn)
{
	// void gdk_threads_set_lock_functions (GCallback enter_fn,  GCallback leave_fn);
	gdk_threads_set_lock_functions(enterFn, leaveFn);
}

