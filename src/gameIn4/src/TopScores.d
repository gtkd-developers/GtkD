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

module mTopScores;

private import event.All;
private import std.conv;
private import std.outbuffer;
private import std.file;
private import std.path;
private import std.c.stdlib;

public:
class TopScores : ButtonClickedListener
{
	
	
	
	private import dui.All;
	
	private char[] homeDir;
	private char[] scoresFile;
	bit hasHome = false;
	Score[] scores;
	
	Window window;
	TreeView treeView;
	TreeStore treeStore;
	TreeIter iterTop;
	
	class Score
	{
		char[] name;
		int fired;
		int bombs;
		int rows;
		int cols;
		int seconds;
		this(char[] name, int fired, int bombs, int rows, int cols, int seconds)
		{
			this.name = name;
			this.fired = fired;
			this.bombs = bombs;
			this.rows = rows;
			this.cols = cols;
			this.seconds = seconds;
		}

		this(char[] line)
		{
			char[][] tokens = std.string.split(line, ":");
			if ( tokens.length==6 )
			{
				name = tokens[0];
				try
				{
					fired = std.conv.toInt(tokens[1]);
					bombs = std.conv.toInt(tokens[2]);
					rows = std.conv.toInt(tokens[3]);
					cols = std.conv.toInt(tokens[4]);
					seconds = std.conv.toInt(tokens[5]);
				}
				catch ( Error e)
				{
					name = "";
				}
			}
			else
			{
				name = "";
			}
		}

		override
		int opCmp(Object o)
		{
			if ( cast(Score) o )
			{
				return opCmp(cast(Score)o);
			}
			return 0;
		}
		
		int opCmp(Score s)
		{
			if ( fired == s.fired )
			{
				return seconds - s.seconds;
			}
			else
			{
				return fired - s.fired;
			}
		}
	}
	
	this()
	{
		homeDir = std.path.join(std.string.toString(getenv("HOME\0")),".dmines");
		scoresFile = std.path.join(homeDir,"topScores");
		loadScores();
	}
	
	void loadScores()
	{
		try
		{
			hasHome = std.file.isdir(homeDir)!=0;
		}
		catch ( FileException fe)
		{
			try
			{
				std.file.mkdir(homeDir);
				hasHome = true;
			}
			catch ( FileException fe1 )
			{
				hasHome = false;
			}
		}
		if ( hasHome )
		{
			try
			{
				char[] input = cast(char[])std.file.read(scoresFile);
				char[][] lines = std.string.split(input);
				foreach(char[] line ; lines)
				{
					Score score = new Score(line);
					if ( score.name.length > 0 && score.seconds>0)
					{
						scores ~= score;
					}
				}
			}
			catch ( FileException fe2 )
			{
				// don't care again - just let's play
			}
		}
	}
	
	void addScore(int fired, int bombs, int rows, int cols, int seconds)
	{
		Score score = new Score(std.string.toString(getenv("USER\0")),
								fired,
								bombs,
								rows,
								cols,
								seconds);
		if ( score.seconds > 0 ) // patch
		{
			scores ~= score;
			saveScores();
		}
	}
	
	void saveScores()
	{
		OutBuffer buf = new OutBuffer();

		buf.write("#\n#D Mines Top Scores\n#\n\n");

		int count = 0;
		foreach( Score score ; scores.sort)
		{
			if ( count < 15 )
			{
				buf.write(score.name);
				buf.write(":");
				buf.write(std.string.toString(score.fired));
				buf.write(":");
				buf.write(std.string.toString(score.bombs));
				buf.write(":");
				buf.write(std.string.toString(score.rows));
				buf.write(":");
				buf.write(std.string.toString(score.cols));
				buf.write(":");
				buf.write(std.string.toString(score.seconds));
				buf.write("\n");
				count ++;
			}
		}
		
		try
		{
			std.file.write(scoresFile,cast(byte[])buf.toBytes());
		}
		catch ( FileException fe )
		{
			// invalid just ignore
		}
	}
	
	void show()
	{
		window = getWindow();
		populateScores();
		window.show();
	}
	
	void populateScores()
	{
		TreeIter oldIter = iterTop;
		iterTop = treeStore.createIter();

		TreeIter iterChild;
		static int [6] cols = [0,1,2,3,4,5];
		char [][] subVals;
		subVals.length = 6;
		foreach(Score score ; scores.sort)
		{
			subVals[0] = std.string.toString(score.fired);
			subVals[1] = std.string.toString(score.bombs);
			subVals[2] = std.string.toString(score.rows);
			subVals[3] = std.string.toString(score.cols);
			subVals[4] = score.name;
			subVals[5] = std.string.toString(score.seconds);
			iterChild = treeStore.append(iterTop);
			treeStore.set(iterChild,cols,subVals);
		}
		
		if ( oldIter !== null )
		{
			treeStore.remove(oldIter);
		}
		
		treeView.expandAll();
	}
	
	Window getWindow()
	{
		if ( window === null )
		{
			window = new Window("D Mines Top Scores");
			VBox box = new VBox(false, 0);
			box.packStart(new Label("D Mines Top Scores"), false, false, 0);
			
			treeView = getTreeView();
			
			ScrolledWindow sw = new ScrolledWindow();
			sw.add(treeView);
			sw.setSizeRequest(200,350);
			box.packStart(sw, true, true, 0);
			
			HButtonBox bb = HButtonBox.createOkBox(this);
			box.packStart(bb, false, false, 0);
			window.add(box);
		}
		return window;
	}

	static GType [6] columns = [DUIType.STRING, DUIType.STRING, DUIType.STRING,
								DUIType.STRING, DUIType.STRING, DUIType.STRING]; 
	
	TreeView getTreeView()
	{
		if ( treeView === null )
		{
			treeStore = new TreeStore(columns);
			treeView = new TreeView(treeStore);
			//treeView.setHeadersVisible(false);
			TreeViewColumn column = new TreeViewColumn("Fired",new CellRendererText(),"text", 0);
			treeView.appendColumn(column);
			
			column = new TreeViewColumn("Bombs",new CellRendererText(),"text", 1);
			treeView.appendColumn(column);

			column = new TreeViewColumn("row size",new CellRendererText(),"text", 2);
			treeView.appendColumn(column);

			column = new TreeViewColumn("col size",new CellRendererText(),"text", 3);
			treeView.appendColumn(column);

			column = new TreeViewColumn("Player",new CellRendererText(),"text", 4);
			treeView.appendColumn(column);

			column = new TreeViewColumn("Time",new CellRendererText(),"text", 5);
			treeView.appendColumn(column);
		}
		return treeView;
	}
	
	void buttonClickedCallback(Button button, char[] action)
	{
		window.hide();
	}
	
}
