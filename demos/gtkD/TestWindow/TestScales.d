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

module TestScales;

private import gtk.Table;

private import gtk.VScale;
private import gtk.HScale;
private import gtk.MenuItem;
private import gtk.Menu;
private import gtk.CheckButton;
private import gtk.Box;
private import gtk.Button;
private import gtk.Scrollbar;
private import gtk.Separator;
//private import gtk.OptionMenu;
private import gtk.Label;
private import gtk.Scale;
private import gtk.Adjustment;
private import gtk.VBox;
private import gtk.HBox;
private import gtk.HScrollbar;
private import gtk.Range;

/**
 * This tests the gtkD scales and scrollbar widgets
 */

class TestScales : Table //, MenuItemListener
{
	VScale vscale;
	HScale hscale;

	this()
	{

		debug(1)
		{
			printf("instantiating TestScales\n");
		}

		super(1,1,0);

		createRangeControls();
	}
private import gtk.ComboBox;
	void createRangeControls()
	{

			Box box1,box2,box3;
			Button button;
			Scrollbar scrollbar;
			Separator separator;
			ComboBox positionSelection;
			ComboBox updateSelection;

			Label label;
			Scale scale;
			Adjustment adj1, adj2;

			box1 = new VBox(false,0);
			add(box1);

			box2 = new HBox(false,0);
			box2.setBorderWidth(10);
			box1.packStart(box2, true,true,0);

			/* value, lower, upper, step_increment, page_increment, page_size */
			/* Note that the page_size value only makes a difference for
			 * scrollbar widgets, and the highest value you'll get is actually
			 * (upper - page_size). */
			adj1 = new Adjustment(0.0, 0.0, 101.0, 0.1, 1.0, 1.0);

			vscale = new VScale(adj1);
			//scale_set_default_values (GTK_SCALE (vscale));
			box2.packStart(vscale, true, true, 0);

			box3 = new VBox(false,10);
			box2.packStart(box3,true,true,0);

			/* Reuse the same adjustment */
			hscale = new HScale(adj1);
			hscale.setSizeRequest(200,-1);
			//scale_set_default_values (GTK_SCALE (hscale));
			box3.packStart(hscale,true,true,0);

			/* Reuse the same adjustment again */
			scrollbar = new HScrollbar(adj1);
			/* Notice how this causes the scales to always be updated
			 * continuously when the scrollbar is moved */
			scrollbar.setUpdatePolicy(UpdateType.CONTINUOUS);
			box3.packStart(scrollbar,true,true,0);

			box2 = new HBox(false,10);
			box2.setBorderWidth(10);
			box1.packStart(box2,true,true,0);

			/* A checkbutton to control whether the value is displayed or not */
			CheckButton cButton = new CheckButton("Display value on scale widgets");
			cButton.setActive(true);
			cButton.addOnClicked(&displayValues);
			box2.packStart(cButton,true,true,0);

			box2 = new HBox(false,10);
			box2.setBorderWidth(10);

			/* An option menu to change the position of the value */
			label = new Label("Scale Value Position:");
			box2.packStart(label,false,false,0);

			positionSelection = new ComboBox();
			positionSelection.appendText("Top");
			positionSelection.appendText("Bottom");
			positionSelection.appendText("Left");
			positionSelection.appendText("Right");
			positionSelection.addOnChanged(&onPositionSelectionChanged);
			positionSelection.setActive(0);

			box2.packStart(positionSelection,false,false,0);

			box1.packStart(box2,false,false,0);

			box2 = new HBox(false,10);
			box2.setBorderWidth(10);

			/* Yet another option menu, this time for the update policy of the scale widgets */
			label = new Label("Scale Update Policy:");
			box2.packStart(label,false,false,0);

			updateSelection = new ComboBox();

  			updateSelection.appendText("Continuous");
  			updateSelection.appendText("Discontinuous");
  			updateSelection.appendText("Delayed");
			updateSelection.addOnChanged(&onUpdateSelectionChanged);
			updateSelection.setActive(0);

			box2.packStart(updateSelection,false,false,0);
			box1.packStart(box2,false,false,0);


			/**
			 * Here is a bit a pure C GTK+ code.
			 * This code would compile and execute in D,
			 * we just need to define the functions as extern.
			 */
			/+
			box2 = gtk_hbox_new (FALSE, 10);
			gtk_container_set_border_width (GTK_CONTAINER (box2), 10);

			/* An HScale widget for adjusting the number of digits on the
			 * sample scales. */
			label = gtk_label_new ("Scale Digits:");
			gtk_box_pack_start (GTK_BOX (box2), label, FALSE, FALSE, 0);
			gtk_widget_show (label);

			adj2 = gtk_adjustment_new (1.0, 0.0, 5.0, 1.0, 1.0, 0.0);
			g_signal_connect (G_OBJECT (adj2), "value_changed",
							  G_CALLBACK (cb_digits_scale), NULL);
			scale = gtk_hscale_new (GTK_ADJUSTMENT (adj2));
			gtk_scale_set_digits (GTK_SCALE (scale), 0);
			gtk_box_pack_start (GTK_BOX (box2), scale, TRUE, TRUE, 0);
			gtk_widget_show (scale);

			gtk_box_pack_start (GTK_BOX (box1), box2, TRUE, TRUE, 0);
			gtk_widget_show (box2);

			box2 = gtk_hbox_new (FALSE, 10);
			gtk_container_set_border_width (GTK_CONTAINER (box2), 10);

			/* And, one last HScale widget for adjusting the page size of the
			 * scrollbar. */
			label = gtk_label_new ("Scrollbar Page Size:");
			gtk_box_pack_start (GTK_BOX (box2), label, FALSE, FALSE, 0);
			gtk_widget_show (label);

			adj2 = gtk_adjustment_new (1.0, 1.0, 101.0, 1.0, 1.0, 0.0);
			g_signal_connect (G_OBJECT (adj2), "value_changed",
							  G_CALLBACK (cb_page_size), (gpointer) adj1);
			scale = gtk_hscale_new (GTK_ADJUSTMENT (adj2));
			gtk_scale_set_digits (GTK_SCALE (scale), 0);
			gtk_box_pack_start (GTK_BOX (box2), scale, TRUE, TRUE, 0);
			gtk_widget_show (scale);

			gtk_box_pack_start (GTK_BOX (box1), box2, TRUE, TRUE, 0);
			gtk_widget_show (box2);

			separator = gtk_hseparator_new ();
			gtk_box_pack_start (GTK_BOX (box1), separator, FALSE, TRUE, 0);
			gtk_widget_show (separator);

			box2 = gtk_vbox_new (FALSE, 10);
			gtk_container_set_border_width (GTK_CONTAINER (box2), 10);
			gtk_box_pack_start (GTK_BOX (box1), box2, FALSE, TRUE, 0);
			gtk_widget_show (box2);

			button = gtk_button_new_with_label ("Quit");
			g_signal_connect_swapped (G_OBJECT (button), "clicked",
									  G_CALLBACK (gtk_main_quit),
									  NULL);
			gtk_box_pack_start (GTK_BOX (box2), button, TRUE, TRUE, 0);
			GTK_WIDGET_SET_FLAGS (button, GTK_CAN_DEFAULT);
			gtk_widget_grab_default (button);
			gtk_widget_show (button);

			gtk_widget_show (window);
			+/

	}

	void onPositionSelectionChanged(ComboBox comboBox)
	{

		switch ( comboBox.getActiveText() )
		{
			case "Top":
				vscale.setValuePos(PositionType.TOP);
				hscale.setValuePos(PositionType.TOP);
				break;
			case "Bottom":
				vscale.setValuePos(PositionType.BOTTOM);
				hscale.setValuePos(PositionType.BOTTOM);
				break;
			case "Left":
				vscale.setValuePos(PositionType.LEFT);
				hscale.setValuePos(PositionType.LEFT);
				break;
			case "Right":
				vscale.setValuePos(PositionType.RIGHT);
				hscale.setValuePos(PositionType.RIGHT);
				break;
			default:
				break;

		}
	}

	void onUpdateSelectionChanged(ComboBox comboBox)
	{
		switch ( comboBox.getActiveText() )
		{
  			case "Continuous":
				vscale.setUpdatePolicy(UpdateType.CONTINUOUS);
				hscale.setUpdatePolicy(UpdateType.CONTINUOUS);
				break;
  			case "Discontinuous":
				vscale.setUpdatePolicy(UpdateType.DISCONTINUOUS);
				hscale.setUpdatePolicy(UpdateType.DISCONTINUOUS);
				break;
  			case "Delayed":
				vscale.setUpdatePolicy(UpdateType.DELAYED);
				hscale.setUpdatePolicy(UpdateType.DELAYED);
				break;
			default:
				break;
		}
	}



	/*
	void activateItemCallback(MenuItem menuItem, char [] action)
	{
	}

	void activateCallback(MenuItem menuItem, char [] action)
	{
		switch ( action )
		{
			case "ValueTop":
				vscale.setValuePos(Scale.TOP);
				hscale.setValuePos(Scale.TOP);
			break;
			case "ValueBottom":
				vscale.setValuePos(Scale.BOTTOM);
				hscale.setValuePos(Scale.BOTTOM);
			break;
			case "ValueLeft":
				vscale.setValuePos(Scale.LEFT);
				hscale.setValuePos(Scale.LEFT);
			break;
			case "ValueRight":
				vscale.setValuePos(Scale.RIGHT);
				hscale.setValuePos(Scale.RIGHT);
			break;
			case "ScaleContinuous":
				vscale.setUpdatePolicy(Scale.CONTINUOUS);
				hscale.setUpdatePolicy(Scale.CONTINUOUS);
			break;
			case "ScaleDiscontinuous":
				vscale.setUpdatePolicy(Scale.DISCONTINUOUS);
				hscale.setUpdatePolicy(Scale.DISCONTINUOUS);
			break;
			case "ScaleDelayed":
				vscale.setUpdatePolicy(Scale.DELAYED);
				hscale.setUpdatePolicy(Scale.DELAYED);
			break;
			default:
				printf("menuItem.action %.*s received\n",action);
			break;

		}
	}
	*/
	void displayValues(Button checkButton)
	{
		//CheckButton cb = (CheckButton)button;
		//printf("check button %X %X\n",button,(CheckButton)button);
		//printf("button.toString %.*s\n",button.toString());
		vscale.setDrawValue((cast(CheckButton)checkButton).getActive());
		hscale.setDrawValue((cast(CheckButton)checkButton).getActive());
	}

}
