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

module dui.InputStringDialog;

private import dui.Window;

/**
 * A window enter the line number to go to .
 */
public:
class InputStringDialog : Window
{

	private import dui.Entry;
	private import dui.Label;
	private import dui.Button;
	private import dui.VBox;
	private import dui.Table;

	private import def.Constants;
	
	private import dool.String;

	Window parentWindow;
	
	/* position. -1 marks not yet set */
	int left = -1;
	int top = -1;

	Entry entry;
	String userString;
	
	String label;
	
	void delegate(String userString) inputStringDelegate;
	
	public:
	/**
	 */
	this(Window parentWindow, char[] title, char[] label)
	{
		this(parentWindow, new String(title), new String(label));
	}
	this(Window parentWindow, String title, String label)
	{
		super(title);
		setModal(true);
		this.parentWindow = parentWindow;
		this.label = label.dup;
		setBorderWidth(7);
		setup();
		setTransientFor(parentWindow);
	}
	
	/**
	 * Shows this GotoLineDialog with a maximum line number.
	 * @param maxLines the last line number the user can enter
	 */
	void show(char[] initialText, void delegate(String userString) dlg)
	{
		show(new String(initialText), dlg);
	}
	/**
	 * Shows this GotoLineDialog with a maximum line number.
	 * @param maxLines the last line number the user can enter
	 */
	void show(String initialText, void delegate(String userString) dlg)
	{
		userString = new String();
		inputStringDelegate = dlg;
		entry.setText(initialText);
		show();
	}
	
	/**
	 * Show on the same position as before
	 */
	private void show()
	{
		if (left>=0 )
		{
			move(left, top);
		}
		super.show();
	}
	
	/**
	 * remembers the position and hides the dialog
	 */
	void hide()
	{
		getPosition(&left, &top);
		super.hide();
	}
	
	/**
	 * creates the layout of the dialog
	 */
	private void setup()
	{
		VBox vbox = new VBox(false,4);
		
		entry = new Entry();
		Label label= new Label(this.label);
		
		vbox.packStart(label,false,false,0);
		vbox.packStart(entry,false,false,0);

		Table table = new Table(1,2,true);
		
		Button button = new Button("_OK", &inputTextOK);
		table.attach(button,0,1,0,1,AttachOptions.EXPAND,AttachOptions.EXPAND,2,2);

		button = new Button("_Cancel",&inputTextCancel);
		table.attach(button,1,2,0,1,AttachOptions.EXPAND,AttachOptions.EXPAND,2,2);

		vbox.packStart(table,false,false,0);
		
		add(vbox);
	}

	void inputTextCancel(Button button)
	{
		userString = new String();
		hide();
		if ( inputStringDelegate !== null )
		{
			inputStringDelegate(new String());
		}
	}
	
	void inputTextOK(Button button)
	{
		userString = entry.getText();
		hide();
		if ( inputStringDelegate !== null )
		{
			inputStringDelegate(userString);
		}
	}

	String getUserString()
	{
		return userString.dup;
	}
}
