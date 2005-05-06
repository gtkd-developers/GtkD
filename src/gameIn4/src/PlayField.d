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

module PlayField;

private import dui.All;
private import dool.String;
private import dool.Integer;
private import dool.system.stdlib;
	
private import Dines;
private import Dine;

public class PlayField : Table , MouseButtonListener
{
	const int colSize = 30;
	const int rowSize = 16;
	int numberBombs = 99;
	
	int bombsFound = 0;
	int bombsFired = 0;
	
	Dines dines;
	
	Dine[rowSize][colSize] field;
	
	this(Dines dines)
	{
		super(rowSize, colSize, true);
		//this.rowSize = rowSize;
		//this.colSize = colSize;
		this.dines = dines;
		setup();
		setBombs();
	}
	
	void setup()
	{
		Dispatcher disp = Dispatcher.getDispatcher();
		for( int row = 0 ; row < rowSize ; row++ )
		{
			for ( int col = 0 ; col < colSize ; col++)
			{
				Dine dine = new Dine(row, col);
				attach(dine, col, col+1, row, row+1);
				if ( row == col )
				{
					dine.setBomb(true);
				}
				field[col][row] = dine;
				dine.setActionCommand(new String(row) ~ "." ~ new String(col));
				disp.addMouseButtonListener(this, dine);//, std.string.toString(row)~"."~std.string.toString(col));
			}
		}
	}
	
	int getRows()
	{
		return rowSize;
	}
	
	int getCols()
	{
		return colSize;
	}
	
	void setBombs()
	{
		clearField();
		//std.random.rand_seed(1,1);
		int i = 0;
		int row;
		int col;
		int max = col.max;
		Dine dine;
		bit repeated;
		while ( i < numberBombs )
		{
			repeated = true;
			row = rand() & (rowSize-1);
			col = rand() & (colSize-1);
			
			while ( repeated && (col < colSize) )
			{
				dine = field[col][row];
				if ( !dine.isBomb() )
				{
					dine.setBomb(true);
					i++;
					repeated = false;
				}
				++col;
			}
		}
		bombsFound = 0;
		bombsFired = 0;
	}
	
	void clearField()
	{
		for( int row = 0 ; row < rowSize ; row++ )
		{
			for ( int col = 0 ; col < colSize ; col++)
			{
				field[col][row].reset();
			}
		}
	}
	
	int getNumberOfBombs()
	{
		return numberBombs;
	}
	
	int getBombsFound()
	{
		return bombsFound;
	}
	
	int getBombsFired()
	{
		return bombsFired;
	}
	
	int getMissingBombs()
	{
		return numberBombs - bombsFound - bombsFired;
	}

	void showAllBombs()
	{
		Dine dine;
		for( int row = 0 ; row < rowSize ; row++ )
		{
			for ( int col = 0 ; col < colSize ; col++)
			{
				dine = field[col][row];
				if ( dine.isBomb() )
				{
					if ( dine.getStat() != dine.FLAG )
					{
						dine.setStat(dine.SHOW);
						dine.showValue();
					}
				}
				else
				{
					if ( dine.getStat() == dine.FLAG )
					{
						dine.setStat(dine.BAD_FLAG);
						dine.showValue();
					}
				}
				
			}
			
		}
	}
	
	int getBombCount(int row, int col, out int marked)
	{
		Dine oDine;
		int count = 0;
		marked = 0;
		for(int r=row-1 ; r<=row+1 ; r++)
		{
			for(int c=col-1 ; c<=col+1 ; c++)
			{
				if ( r>=0 && r<rowSize && c>=0 && c<colSize )
				{
					oDine = field[c][r];
					if ( oDine.isBomb() )
					{
						++count;
					}
					if ( oDine.getStat() == oDine.FLAG
						|| (oDine.isBomb() && oDine.getStat()==oDine.SHOW))
					{
						++marked;
					}
				}
			}
		}
		return count;
	}
	
	void uncover(int row, int col)
	{
		if ( row>=0 && col>=0 && row<rowSize && col<colSize)
		{
			Dine dine;
			int marked;
			int bombCount = getBombCount(row, col, marked);
			if ( bombCount == 0 || bombCount == marked)
			{
				for(int r=row-1 ; r<=row+1 ; r++)
				{
					for(int c=col-1 ; c<=col+1 ; c++)
					{
						if ( r>=0 && r<rowSize && c>=0 && c<colSize )
						{
							dine = field[c][r];
							if ( dine.getStat() == dine.HIDE )
							{
								dine.setCount(getBombCount(r,c,marked));
								dine.setStat(dine.SHOW);
								dine.showValue();
								updateFieldStat(dine);
								uncover(r,c);
							}
						}
					}
				}
			}
		}
	}
	
	bit mouseButtonPressCallback(Widget widget, EventButton eventButton)
	{
		dines.pressed();
		return true;
	}
	
	bit mouseButtonReleaseCallback(Widget widget, EventButton eventButton)
	{
		dines.released();
		String action = widget.getActionCommand();
		String[] rowCol = action.split(".");
		int row = Integer.toInt(rowCol[0]);
		int col = Integer.toInt(rowCol[1]);
		Dine dine = field[col][row];
		int unmarked;
		int count = getBombCount(row, col, unmarked);
		dine.setCount(count);

		switch(eventButton.button())
		{
			case 1:
				dine.setStat(dine.SHOW);
				uncover(row, col);
				break;
				
			case 2:
				uncover(row, col);
				break;

			case 3:
				dine.mark();
				break;
				
			default:
				break;
		}
		
		dine.showValue();
		updateFieldStat(dine);
		dines.hit(dine);
		return true;
	}

	void updateFieldStat(Dine dine)
	{
		switch (dine.stat)
		{
			case /*Dine.HIDE,*/ dine.DONT_KNOW:
				//if ( dine.isBomb() )
				{
					--bombsFound;
				}
				dines.decreaseCount();
				break;
				
			case dine.FLAG:
				++bombsFound;
				if ( bombsFound + bombsFired == numberBombs )
				{
					dines.wonGame();
				}
				else
				{
					dines.increaseCount();
				}
				break;

			case dine.SHOW:
				if ( dine.isBomb() )
				{
					++bombsFired;
				}
				break;
				
			default:
				break;
				
		}
		if ( getMissingBombs() == 0 )
		{
			dines.endGame();
		}
	}
	
}