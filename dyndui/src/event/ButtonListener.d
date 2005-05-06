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

// already moved to delegates

module event.ButtonListener;

//private import def.Types;
private import dui.Button;

private import dool.String;

//alias void* Button;

public:

/**
 * Simple button clicked interface.
 * Many objects will be interested only on the click.
 */
interface ButtonClickedListener
{
	void buttonClickedCallback (Button button, String action);
};

/**
 * Button events
 */
interface ButtonListener : ButtonClickedListener
{
	void buttonPressedCallback (Button button, String action);
	void buttonReleasedCallback (Button button, String action);
	void buttonEnterCallback (Button button, String action);
	void buttonLeaveCallback (Button button, String action);
	void buttonActivateCallback (Button button, String action);
};
