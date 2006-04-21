/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module gtk.SpawnTests;

private import glib.Spawn;
private import gtk.Duit;
private import std.stdio;

private import gtk.TextView;
private import gtk.TextBuffer;
private import gtk.TextIter;
private import gtk.Box;
private import gtk.VBox;
private import gtk.ScrolledWindow;

private import gtk.MainWindow;

private import gtk.Button;
private import gtk.Image;

private import std.string;

class SpawnWindow : MainWindow
{
	
	TextView viewInput;
	TextView viewOutput;
	TextView viewError;

	this()
	{
		super("Spawn testing");
		setupWindow();
		setSizeRequest(400,400);
		showAll();
	}

	private void setupWindow()
	{
		Box main = new VBox(false, 2);

		viewInput = new TextView();
		viewOutput = new TextView();
		viewError = new TextView();

		main.packStart(new ScrolledWindow(viewInput), false, false, 2);
		Button button = new Button("exec", &execInput);
		main.packStart(button, false, false, 4);
		main.packStart(new ScrolledWindow(viewOutput), true, true, 2);
		main.packStart(new ScrolledWindow(viewError), false, false, 2);

		setBorderWidth(7);
		add(main);
	}
	
	private void execInput(Button button)
	{
		char[][] args = std.string.split(viewInput.getBuffer().getText());
		exec(args);
	}
	
	private bool exec(char[][] args)
	{
		foreach ( int i, char[] arg ; args)
		{
			writefln("[%s] %s", i, arg);
		}
		Spawn spawn = new Spawn(args[0]);
		if (args.length > 1 )
		{
			foreach ( char[] arg ; args )
			{
				spawn.addParm(arg);
			}
		}
		spawn.addParm(null);
		return exec(spawn);
	}
	
	private bool exec(Spawn spawn)
	{
		
		viewOutput.getBuffer().setText("");
		viewError.getBuffer().setText("");
		
		int result = spawn.execAsyncWithPipes();
	
		int outCount;
		int errCount;
		
		TextBuffer bufferOutput = viewOutput.getBuffer();
		TextBuffer bufferError = viewError.getBuffer();
		TextIter iterOut = new TextIter();
		TextIter iterError = new TextIter();
		
		while ( !spawn.endOfOutput() )
		{
			bufferOutput.getEndIter(iterOut);
			viewOutput.getBuffer().insert(iterOut, spawn.readLine()~"\n");
		}
		
		while ( !spawn.endOfError() )
		{
			bufferError.getEndIter(iterError);
			viewError.getBuffer().insert(iterError, spawn.readLineError()~"\n");
		}

		bufferError.getEndIter(iterError);
		viewError.getBuffer().insert(iterError, spawn.getLastError()~"\n");

		writefln("exit loop");
		
		spawn.close();
		return true;
	}
	
	public void setInput(char[][] args)
	{
		TextBuffer inBuffer = viewInput.getBuffer();
		char[] t;
		foreach ( int count, char[] arg; args)
		{
			if ( count > 0 ) t ~= " ";
			t ~= arg;
		}
		inBuffer.setText(t);
	}
	
	public void setInput(char[] arg)
	{
		viewInput.getBuffer().setText(arg);
	}

	
}

void main(char[][] args)
{
	Duit.init(args);

	SpawnWindow sw = new SpawnWindow();
	if ( args.length > 1 )
	{
		sw.setInput(args[1..args.length]);
	}
	else
	{
		sw.setInput("/bin/ls");
	}
	
	Duit.main();
}
