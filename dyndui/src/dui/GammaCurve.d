/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.GammaCurve;
/**
 *
 */

private import def.Types;
private import dui.VBox;
private import lib.gtk;

/**
 * A subclass of GtkCurve for editing gamma curves.
 * NOTE this widget is considered too specialized/little-used for GTK+,
 * and will in the future be moved to some other package.
 * \deprecated
 */
public:
class GammaCurve : VBox
{
    
    protected:
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }

	public:

	/**
	 * Creates a new Cammge curve
	 */
	this()
	{
		this(gtk_gamma_curve_new());
	}
    
}
