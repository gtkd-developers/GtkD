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

module duit.TestEntries;

private import gtk.Table;
	
private import gtk.Entry;
private import gtk.CheckButton;
private import gtk.Button;
private import gtk.Label;
private import gtk.typedefs;

private import glib.Str;
/**
 * This tests the DUI Entry widget
 */
class TestEntries : Table
{	
	/**
	 * Out main widget to test
	 */
	Entry entry;

	/**
	 * Creates a new TestEntries
	 */
	this()
	{
		super(3,2,false);
		printf("Success... TestEntries.super()\n");
		// create the main test widget
		entry = new Entry("Change me!");
		attach(new Label("Input text"),0,1,0,1,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
		attach(entry,1,2,0,1,AttachOptions.EXPAND,AttachOptions.EXPAND,4,4);
		// create a button that will print the content of the entry to stdout
		Button testButton = new Button("Show entry", &showEntry);
		attach(testButton,2,3,0,1,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
		//testButton.setTooltip("This is just a test",null);
		// create a button that will change the entry display mode to invisible
		// i.e. like a password entry
		CheckButton entryVisible = new CheckButton("Visible", &entryVisible);
		entryVisible.setActive(true);
		attach(entryVisible,2,3,1,2,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);

		// create a button that will change the entry mode to not editable
		CheckButton entryEditable = new CheckButton("Editable", &entryEditable);
		entryEditable.setActive(true);
		attach(entryEditable,1,2,1,2,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
	}

	void showEntry(Button button)
	{
		printf("text field contains %s\n",Str.toStringz(entry.getText()));
		
	}

	void entryEditable(CheckButton button)
	{
		//CheckButton cb = cast(CheckButton)button;
		//printf("cb = %X\n",cb);
		//entry.setEditable(cb.getActive());
		entry.setEditable(button.getActive());
	}
	
	void entryVisible(CheckButton button)
	{
		//CheckButton cb = new CheckButton(button);
		//entry.setVisibility(cb.getActive());
		entry.setVisibility(button.getActive());
	}
	
//	/**
//	 * This will be executed when the any of the buttons is pressed
//	 */
//	void buttonClickedCallback(Button button, char [] action)
//	{
//		switch ( action )
//		{
//			case "EntryEditable":
//				CheckButton cb = new CheckButton(button);
//				entry.setEditable(cb.getActive());
//			break;
//			case "EntryVisible":
//				CheckButton cb = new CheckButton(button);
//				if ( cb !is  null )
//				{
//					entry.setVisibility(cb.getActive());
//				}
//				else
//				{
//					printf("CB IS NULL !!!!!!!!!!!!!!!!!!!");
//				}
//			break;
//			case "ShowEntry1":
//			break;
//			default:
//				printf("TestEntries.action %.*s received\n",action);
//			break;
//			
//		}
//	}

}
