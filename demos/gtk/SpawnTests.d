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

module gtk.SpawnTests;

private import glib.Spawn;
private import gtk.Main;

private import gtk.TextView;
private import gtk.TextBuffer;
private import gtk.TextIter;
private import gtk.Box;
private import gtk.VBox;
private import gtk.ScrolledWindow;

private import gtk.MainWindow;

private import gtk.Button;
private import gtk.Image;

version(Tango){
    import tango.text.Util;
    import tango.io.Stdout;
	import tango.core.Vararg;

    void writefln( string frm, ... ){
        string frm2 = substitute( frm, "%s", "{}" );
        Stdout( Stdout.layout.convert( _arguments, _argptr, frm2 )).newline;
    }
}
else{
    import std.string;
    import std.stdio;
}
class SpawnWindow : MainWindow
{

	TextView viewInput;
	TextView viewOutput;
	TextView viewError;
	TextIter iterOut;
	TextIter iterError;

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
		version(Tango)
			string[] args = split( viewInput.getBuffer().getText(), " " );
        else
			string[] args = std.string.split(viewInput.getBuffer().getText());

		exec(args);
	}

	private bool exec(string[] args)
	{
		foreach ( int i, string arg ; args)
		{
			writefln("[%s] >%s<", i, arg);
		}
		Spawn spawn = new Spawn(args[0]);

		if (args.length > 1 )
		{
			for( int i=1 ; i<args.length ; i++ )
			{
				writefln("SpawnTests.exec adding parameter [%s] %s",i,args[i]);
				spawn.addParm(args[i]);
			}
		}
		return exec(spawn);
	}

	bool childEnded(Spawn spawn)
	{
		writefln("process %s ended with status %s", viewInput.getBuffer().getText(),spawn.getExitStatus());
		return true; //gotta check this.
	}

	private bool exec(Spawn spawn)
	{
		//TODO: These functions should accept a string.
		viewOutput.getBuffer().setText("");
		viewError.getBuffer().setText("");

		TextBuffer bufferError = viewError.getBuffer();
		TextIter iterError = new TextIter();

        int result = spawn.commandLineSync(&childEnded, &syncOutput, &syncError);

		bufferError.getEndIter(iterError);
		viewError.getBuffer().insert(iterError, spawn.getLastError()~"\n");

		writefln("exit loop");

		spawn.close();
		return true;
	}

	public bool syncOutput(string line)
	{
		TextIter iter = new TextIter();
		viewOutput.getBuffer().getEndIter(iter);
		viewOutput.getBuffer().insert(iter, line~"\n");
		return true;
	}

	public bool syncError(string line)
	{
		TextIter iter = new TextIter();
		viewError.getBuffer().getEndIter(iter);
		viewError.getBuffer().insert(iter, line~"\n");
		return true;
	}

	public void setInput(string[] args)
	{
		TextBuffer inBuffer = viewInput.getBuffer();
		string t;
		foreach ( int count, string arg; args)
		{
			if ( count > 0 ) t ~= " ";
			t ~= arg;
		}
		inBuffer.setText(t);
	}

	public void setInput(string arg)
	{
		viewInput.getBuffer().setText(arg);
	}
}

void main(string[] args)
{
	Main.init(args);

	SpawnWindow sw = new SpawnWindow();
	if ( args.length > 1 )
	{
		sw.setInput(args[1..args.length]);
	}
	else
	{
		sw.setInput("/bin/ls");
	}

	Main.run();
}
