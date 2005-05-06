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

module dui.ColorSelection;
/**
 *
 */

private import def.Types;
private import dui.VBox;

private import lib.gtk;

/**
 * A widget to select color.
 * @see ColorSelectionDialog.
 * \todo a lot todo
 */

// moved out -----------------
	private import ddi.Color;
// ---------------------------

public:
class ColorSelection :
VBox {
	debug(status)
	{
		int complete(){return 5;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A widget to select color.";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget) {
		super(gtkWidget);
	}

	public:
	
	this()
	{
		this(gtk_color_selection_new ());
	}
	
	/+
	void gtk_color_selection_set_update_policy(gtkW(), GtkUpdateType policy);
	+/
	
	void setHasOpacityControl(bit hasOpacity)
	{
		gtk_color_selection_set_has_opacity_control(cast(GtkBox*)gtkW(), hasOpacity);
	}
	
	/+
	bit gtk_color_selection_get_has_opacity_control(gtkW());
	void gtk_color_selection_set_has_palette(gtkW(), bit has_palette);
	bit gtk_color_selection_get_has_palette(gtkW());
	guint16 gtk_color_selection_get_current_alpha(gtkW());
	void gtk_color_selection_set_current_alpha(gtkW(), guint16 alpha);
	+/
	
	Color getCurrentColor()
	{
		GdkColor* color = new GdkColor;
		color.red = 10;
		color.green = 100;
		color.blue = 200;
		Color pc = new Color(color);
		printf("ColorSelection.getCurrentColor 0 %X\n",pc.getValue());
		//printf("ColorSelection.getCurrentColor 1\n");
		gtk_color_selection_get_current_color(cast(GtkBox*)gtkW(), color);
		//printf("ColorSelection.getCurrentColor 2\n");
		Color c = new Color(color);
		//printf("ColorSelection.getCurrentColor 3\n");
		printf("ColorSelection.getCurrentColor 4 %X\n",c.getValue());
		//printf("ColorSelection.getCurrentColor 5\n");
		return c;
	}
	
	void setCurrentColor(Color color)
	{
		gtk_color_selection_set_current_color(cast(GtkBox*)gtkW(), color.gdkColor());
	}
	
	/+
	guint16 gtk_color_selection_get_previous_alpha (GtkColorSelection * colorsel);
	void gtk_color_selection_set_previous_alpha (GtkColorSelection * colorsel, guint16 alpha);
	void gtk_color_selection_get_previous_color (GtkColorSelection * colorsel, GdkColor * color);
	void gtk_color_selection_set_previous_color (GtkColorSelection * colorsel, GdkColor * color);
	gboolean gtk_color_selection_is_adjusting (GtkColorSelection * colorsel);
	gboolean gtk_color_selection_palette_from_string (gchar * str, GdkColor * *colors, gint * n_colors);
	gchar * gtk_color_selection_palette_to_string (GdkColor * colors, gint n_colors);
	GtkColorSelectionChangePaletteFunc gtk_color_selection_set_change_palette_hook (GtkColorSelectionChangePaletteFunc func);
	void (*GtkColorSelectionChangePaletteFunc)(GdkColor * colors, gint n_colors);
	GtkColorSelectionChangePaletteWithScreenFunc gtk_color_selection_set_change_palette_with_screen_hook (GtkColorSelectionChangePaletteWithScreenFunc func);
	void (*GtkColorSelectionChangePaletteWithScreenFunc)(GdkScreen * screen, GdkColor * colors, gint n_colors);
	void gtk_color_selection_set_color (GtkColorSelection * colorsel, gdouble * color);
	void gtk_color_selection_get_color (GtkColorSelection * colorsel, gdouble * color);
	+/
	
}
