/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
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

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module adw.SwipeableIF;

private import adw.c.functions;
public  import adw.c.types;


/**
 * An interface for swipeable widgets.
 * 
 * The `AdwSwipeable` interface is implemented by all swipeable widgets.
 * 
 * See [class@SwipeTracker] for details about implementing it.
 *
 * Since: 1.0
 */
public interface SwipeableIF{
	/** Get the main Gtk struct */
	public AdwSwipeable* getSwipeableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return adw_swipeable_get_type();
	}

	/**
	 * Gets the progress @self will snap back to after the gesture is canceled.
	 *
	 * Returns: the cancel progress, unitless
	 *
	 * Since: 1.0
	 */
	public double getCancelProgress();

	/**
	 * Gets the swipe distance of @self.
	 *
	 * This corresponds to how many pixels 1 unit represents.
	 *
	 * Returns: the swipe distance in pixels
	 *
	 * Since: 1.0
	 */
	public double getDistance();

	/**
	 * Gets the current progress of @self.
	 *
	 * Returns: the current progress, unitless
	 *
	 * Since: 1.0
	 */
	public double getProgress();

	/**
	 * Gets the snap points of @self.
	 *
	 * Each snap point represents a progress value that is considered acceptable to
	 * end the swipe on.
	 *
	 * Returns: the snap points
	 *
	 * Since: 1.0
	 */
	public double[] getSnapPoints();

	/**
	 * Gets the area @self can start a swipe from for the given direction and
	 * gesture type.
	 *
	 * This can be used to restrict swipes to only be possible from a certain area,
	 * for example, to only allow edge swipes, or to have a draggable element and
	 * ignore swipes elsewhere.
	 *
	 * If not implemented, the default implementation returns the allocation of
	 * @self, allowing swipes from anywhere.
	 *
	 * Params:
	 *     navigationDirection = the direction of the swipe
	 *     isDrag = whether the swipe is caused by a dragging gesture
	 *     rect = a pointer to a rectangle to store the swipe area
	 *
	 * Since: 1.0
	 */
	public void getSwipeArea(AdwNavigationDirection navigationDirection, bool isDrag, out GdkRectangle rect);
}
