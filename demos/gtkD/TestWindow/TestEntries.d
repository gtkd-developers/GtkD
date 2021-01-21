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

module TestEntries;

// private import gtk.Table;

private import gtk.Entry;
private import gtk.CheckButton;
private import gtk.Button;
private import gtk.Label;
private import gtk.Box;

private import glib.Str;

private import std.stdio;
/**
 * This tests the GtkD Entry widget
 */
class TestEntries : Box
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
		// super(3,2,false);
		super(GtkOrientation.VERTICAL, 3);

		// create the main test widget
		auto box1 = new Box(GtkOrientation.HORIZONTAL, 10);
		box1.setHomogeneous(true);
		entry = new Entry();
		entry.setPlaceholderText("Change me!");
		box1.append(entry);
		box1.append(new Label("Input text"));
		append(box1);
		// entry = new Entry("Change me!");
		// attach(new Label("Input text"),0,1,0,1,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
		// attach(entry,1,2,0,1,AttachOptions.EXPAND,AttachOptions.EXPAND,4,4);

		// create a button that will print the content of the entry to stdout
		Button testButton = new Button("Show entry");
		testButton.addOnClicked(&this.showEntry);
		// attach(testButton,2,3,0,1,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
		append(testButton);
		//testButton.setTooltip("This is just a test",null);

		// create a button that will change the entry display mode to invisible
		// i.e. like a password entry
		CheckButton entryVisible = new CheckButton("Visible");
		entryVisible.addOnToggled(&this.entryVisible);
		entryVisible.setActive(true);
		append(entryVisible);
		// attach(entryVisible,2,3,1,2,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);

		// create a button that will change the entry mode to not editable
		CheckButton entryEditable = new CheckButton("Editable");
		entryEditable.addOnToggled(&this.entryEditable);
		entryEditable.setActive(true);
		append(entryEditable);
		// attach(entryEditable,1,2,1,2,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
	}

	void showEntry(Button button)
	{
		writef("text field contains '%s'\n",entry.getText());
	}

	void entryEditable(CheckButton button)
	{
		entry.setEditable(button.getActive());
	}

	void entryVisible(CheckButton button)
	{
		writeln(entry);
		entry.setVisibility(button.getActive());
	}

}
