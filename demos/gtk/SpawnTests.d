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

void main(char[][] args)
{
	//Duit.init(args);
	Spawn spawn;
	
	//Spawn spawn = new Spawn("/home/ruimt/devel/D1/Leds/leds");
	if ( args.length > 1 )
	{
		spawn = new Spawn(args[1..args.length]);
	}
	else
	{
		spawn = new Spawn("/bin/ls");
	}
	//spawn.addParm("--version");
	int result = spawn.execAsyncWithPipes();

	int outCount;
	int errCount;
	
	while ( !spawn.endOfOutput() )
	{
		writefln("[out %d] %s",outCount++, spawn.readLine());
	}
	
	while ( !spawn.endOfError() )
	{
		writefln("[err %d] %s",errCount++, spawn.readLineError());
	}
	
	writefln("exit loop");
	
	spawn.close();
	
//	Duit.main();
}
