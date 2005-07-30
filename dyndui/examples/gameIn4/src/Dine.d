/*
 * This file is part of dines.
 * 
 * dines is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * dines is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with dines; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module Dine;

private import dui.All;

private import dool.String;

public class Dine : Button
{
	int row;
	int col;
	int count;
	
	static Pixbuf flagPixbuf;
	static Pixbuf badFlagPixbuf;
	static Pixbuf dontKnowPixbuf;
	
	enum
	{
		HIDE,
		FLAG,
		DONT_KNOW,
		SHOW,
		BAD_FLAG
	}
	
	bit bomb;
	
	int stat;
	
	this(int row, int col)
	{
		super();
		this.row = row;
		this.col = col;
		setSizeRequest(24,24);
		stat = HIDE;
		
		if ( flagPixbuf is null )
		{
			flagPixbuf = new Pixbuf(flag_xpm);
		}
		if ( badFlagPixbuf is null )
		{
			badFlagPixbuf = new Pixbuf(badFlags_xpm);
		}
		if ( dontKnowPixbuf is null )
		{
			dontKnowPixbuf = new Pixbuf(dontknow_xpm);
		}
	}
	
	int getRow(){return row;}
	int getCol(){return col;}
	
	void reset()
	{
		bomb = false;
		stat = HIDE;
		setRelief(ReliefStyle.NORMAL);
		showValue();
		
	}
	
	void mark()
	{
		if ( stat != SHOW )
		{
			++stat;
			if ( stat == SHOW )
			{
				stat = HIDE;
			}
			showValue();
		}
	}

	void setCount(int count)
	{
		this.count = count;
	}
	
	void setBomb(bit bomb)
	{
		this.bomb = bomb;
	}
	
	bit isBomb()
	{
		return bomb;
	}
	
	void setStat(int stat)
	{
		this.stat = stat;
	}
	
	int getStat()
	{
		return stat;
	}
	
	void showValue()
	{
		switch ( stat )
		{
			case HIDE:
				setLabel("");
				break;

			case FLAG:
				removeAll();
				add(new Image(flagPixbuf));
				//setLabel("F");
				break;

			case BAD_FLAG:
				removeAll();
				add(new Image(badFlagPixbuf));
				//setLabel("F");
				break;	
				
			case DONT_KNOW:
				removeAll();
				add(new Image(dontKnowPixbuf));
				//setLabel("?");
				break;
				
			case SHOW:
				if ( bomb )
				{
					removeAll();
					add(new Image(new Pixbuf(bomb_xpm)));
				}
				else
				{
					setRelief(ReliefStyle.NONE);
					if ( count == 0 )
					{
						// no label ?
						//setLabel(new String(count));
						setLabel("");
					}
					else
					{
						setLabel((new String(count)).toString);
					}
				}
				break;
				
			default:
				setLabel("");
				break;
		}
	}
	
	
}


/* XPM */
static char** flag_xpm = [
"17 19 5 1",
" 	c None",
".	c None",
"+	c None",
"@	c #FE0204",
"#	c #000000",
".................",
"+++++++++++++++++",
"+++++++++++++++++",
"+++++++++++++++++",
"+++++++++@#++++++",
"+++++++@@@#++++++",
"+++++@@@@@#++++++",
"+++@@@@@@@#++++++",
"+++++@@@@@#++++++",
"+++++++@@@#++++++",
"+++++++++##++++++",
"+++++++++##++++++",
"+++++++++##++++++",
"+++++++######++++",
"+++++##########++",
"+++++++++++++++++",
"+++++++++++++++++",
"+++++++++++++++++",
"+++++++++++++++++"];

/* XPM */
static char** dontknow_xpm = [
"16 17 9 1",
" 	c None",
".	c #None",
"+	c #FC0509",
"@	c #000000",
"#	c #FD7376",
"$	c #FFFFFF",
"%	c #717171",
"&	c #AAAAAA",
"*	c #1C1C1C",
"................",
"................",
"................",
".........+@.....",
".......#$$$.....",
".....+$$$$$$$...",
"...+++$$++%$$...",
".....+++++&$$...",
".......+$$$.....",
"........$$$.....",
".........*@.....",
"........$$$.....",
".......*$$$@@...",
".....@@@@@@@@@@.",
"................",
"................",
"................"];

/* XPM */
static char** bomb_xpm = [
"17 19 5 1",
" 	c None",
".	c None",
"+	c None",
"@	c #000000",
"#	c #FFFFFF",
".................",
"+++++++++++++++++",
"+++++++++++++++++",
"+++++++++++++++++",
"++++++++@@+++++++",
"++++++++@@+++++++",
"++++++@@@@@@+++++",
"+++++@@@###@@++++",
"+++++@@@@###@++++",
"+++@@@@@@@@@@@@++",
"+++@@@@@@@@@@@@++",
"+++++@@@@@@@@++++",
"+++++@@@@@@@@++++",
"++++++@@@@@@+++++",
"++++++++@@+++++++",
"++++++++@@+++++++",
"+++++++++++++++++",
"+++++++++++++++++",
"+++++++++++++++++"];

/* XPM */
static char** badFlags_xpm = [
"18 18 6 1",
" 	c None",
".	c None",
"+	c None",
"@	c #BAB5AB",
"#	c #000000",
"$	c #FE0204",
"@#@@@@@@@@@@@@@@#@",
"#@#@@@@@@@@@@@@#@#",
"@#@#@@@@@@@@@@#@#@",
"@@#@#@@@@$#@@#@#@@",
"@@@#@#@$$$#@#@#@@@",
"@@@@#$#$$$##@#@@@@",
"@@@$$#$#$$#@#@@@@@",
"@@@@@$#$####@@@@@@",
"@@@@@@@####@@@@@@@",
"@@@@@@@####@@@@@@@",
"@@@@@@#@####@@@@@@",
"@@@@@#@#@##@#@@@@@",
"@@@@#@########@@@@",
"@@@#@##########@@@",
"@@#@#@@@@@@@@#@#@@",
"@#@#@@@@@@@@@@#@#@",
"#@#@@@@@@@@@@@@#@#",
"@#@@@@@@@@@@@@@@#@"];
