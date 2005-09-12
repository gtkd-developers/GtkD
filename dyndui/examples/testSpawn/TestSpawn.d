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

module testSpawn.TestSpawn;

private import dglib.Spawn;
private import dglib.ErrorG;

private import dool.String;


void testCommandLineSync()
{
	String grabOutput = new String();
	String grabError = new String();
	
	int exitStatus;
	
	ErrorG error = new ErrorG();
	
	String command = new String("/D/devel/Leds/src/leds");
	
	printf("Test commandLineSync\n");
	
	Spawn.commandLineSync(
		command,
		grabOutput,
		grabError,
		exitStatus
		/*error*/);
	
	printf("exitStatus = %d for command >>>%.*s<<<\n", exitStatus, command.toString());
	
	printf("got ouput  = %.*s\n", grabOutput.toString());
	printf("got error  = %.*s\n", grabError.toString());
	
	printf("End test commandLineSync");
	
	
}

int main(char[][] args)
{
	
	testCommandLineSync();
	
	return 0;
}
