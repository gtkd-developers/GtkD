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

module installer.Setup;

private import dool.System;
private import dool.Process;
private import dool.ProcessException;
private import dool.String;
private import dool.io.Path;

int main(char[][] args)
{
	// todo process args to receive the path
	
	String currDir = Path.getcwd();
	
	String path = new String("path=");
	
	foreach(int i, char[] arg; args)
	{
		if ( i> 0 )
		{
			path ~= arg.dup~";";
		}
	}
	
	
	path ~= currDir~";";
	
	path ~= currDir~"\\usr\\bin;";
	//path ~= currDir~"\\usr\\lib;";

	//path ~= currDir~"\\usr\\lib\\gtk-2.0\\2.4.0\\immodules;";
	//path ~= currDir~"\\usr\\lib\\gtk-2.0\\2.4.0\\loaders;";
	//path ~= currDir~"\\usr\\lib\\pango\\1.4.0\\modules;";

	path ~= ";" ~ System.getEnv("Path").toString();

	printf("path.length = %d\n", path.length);
	printf("path = %s\n", path.toStringz());


	String[] env;
	env ~= path;
	// for sure there must be a way to pass on the current environment
	// I just don't know what it is...
	env ~= new String("SystemRoot=")~System.getEnv("SystemRoot");
	env ~= new String("CommonProgramFiles=")~System.getEnv("CommonProgramFiles");
	env ~= new String("ProgramFiles=")~System.getEnv("ProgramFiles");
	env ~= new String("HOMEDRIVE=")~System.getEnv("HOMEDRIVE");
	env ~= new String("HOMEPATH=")~System.getEnv("HOMEPATH");
	env ~= new String("APPDATA=")~System.getEnv("APPDATA");

	String[] execArgs;

	String fileName = new String("Installer.exe");

	try
	{
		Process.execVE(fileName, execArgs, env);
	}
	catch ( ProcessException pe )
	{
		printf("Error firing installer\n");
	}
	
	




	return 0;	
}
