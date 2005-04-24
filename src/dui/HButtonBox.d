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

module dui.HButtonBox;

private import def.Types;
private import def.Constants;
private import dui.ButtonBox;

private:
extern (C) GType gtk_hbutton_box_get_type();
extern (C) GtkWidget* gtk_hbutton_box_new();

/**
 * A container for a horizontal row of buttons
 */
public:
class HButtonBox : ButtonBox
{

	private import event.Dispatcher;
	private import event.ButtonListener;
	private import dui.DUIObject;
	private import dui.Button;
	
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A container for a horizontal row of buttons";}
		char[] author(){return "Antonio";}
	}
	

    package:
	this(GtkWidget *gtkWidget)
	{
		super(gtkWidget);
	}
    
    public:
    
	/**
	 * Gets this class type
	 * @return this class Type
	 */
	static GType getType()
	{
		return gtk_hbutton_box_get_type();
	}
	
    /**
     * Creates a new HButtonBox
     */
	this()
	{
		this(gtk_hbutton_box_new());
	}

	/**
	 * Creates a new HButtonBox and sets comon parameters
	 */
	static HButtonBox createActionBox()
	{
		HButtonBox bBox = new HButtonBox();
		bBox.setLayout(ButtonBox.END);
		bBox.setBorderWidth(5);
		bBox.setSpacing(7);
		return bBox;
	}
	
	static HButtonBox createActionBox(ButtonClickedListener listener, Stock[] stocks, char[][] actions)
	{
		String[] a;
		foreach(char[] ca ; actions)
		{
			a ~= new String(ca);
		}
		return createActionBox(listener, stocks, a);
	}
	static HButtonBox createActionBox(ButtonClickedListener listener, Stock[] stocks, String[] actions)
	{
		HButtonBox bBox = createActionBox();
		Dispatcher disp = Dispatcher.getDispatcher();
		Button button;
		for( int i=0 ; i<stocks.length && i<actions.length ; i++)
		{
			button =  new Button(stocks[i]);
			bBox.packEnd(button, false, false, 7);
			disp.addButtonClickedListener(listener, button, actions[i]);
		}
		return bBox;
	}
	
	static HButtonBox createOkBox(ButtonClickedListener listener)
	{
		static Stock[] stocks = [Stock.OK];
		String[] actions;
		actions ~= new String("action.ok");
		return createActionBox(listener, stocks, actions);
	}

	static HButtonBox createOkCancelBox(ButtonClickedListener listener)
	{
		static Stock[] stocks = [Stock.OK, Stock.CANCEL];
		String[] actions;
		actions ~= new String("action.ok");
		actions ~= new String("action.cancel");
		return createActionBox(listener, stocks, actions);
	}
	
	
}
