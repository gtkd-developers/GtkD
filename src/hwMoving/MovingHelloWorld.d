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

module hw.MovingHelloWorld;

private import dui.DUI;
private import event.Dispatcher;
private import dui.MainWindow;
private import event.TimeoutListener;

public:
class MovingHelloWorld : MainWindow , TimeoutListener
{
	
	private import dool.String;
	private import dui.Button;
	private import dui.VBox;
	
	private import def.Constants;
	
	Button[10] labels;
	char[][] texts = ["Hello World","From DUI","D language","Graphical","User","Interface"," "
					"This","demonstrates","the","use","of","the","timeout","event",""];

	int textsOff = 0;
	int start = 0;
	this()
	{
		super("DUI test");
		
		String s = new String("");
		
		setBorderWidth(10);
		textsOff = 0;
		VBox vbox = new VBox(false,0);
		for ( int i = 0 ; i<labels.length ; i++ )
		{
			labels[i] = new Button(texts[textsOff++]);
			labels[i].modifyFont("Luxi Serif 14");
			labels[i].setRelief(ReliefStyle.NONE);
			if ( textsOff >= texts.length ) 
			{
				textsOff = 0;
			}
			vbox.packStart(labels[i],false,false,0);
		}
		Dispatcher.getDispatcher().addTimeoutListener(this,500);
		add(vbox);
		show();

	}
	
	bit timeoutCallback()
	{
		// \todo something change the labels can no longer change the text !?
		textsOff = start++;
		for ( int i = 0 ; i<labels.length ; i++ )
		{
			labels[i].setLabel(texts[textsOff++]);
			if ( textsOff >= texts.length ) 
			{
				textsOff = 0;
			}
		}
		if ( start >= texts.length ) 
		{
			start = 0;
		}
		return true;
	}
	
}

void main(char [][]args)
{
	
	DUI dui = DUI.dui(args);	// GTK can receive and process it's own parameters
	Dispatcher.getDispatcher(); // init the event dispatcher
	new MovingHelloWorld();
	dui.go();					// start the main event loop
	
}
 
