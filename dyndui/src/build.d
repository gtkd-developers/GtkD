version(build) 
{
	version(Windows)
		pragma(target, "dui.lib");
	version(linux)
		pragma(target, "libdui.a");
}

import dui.All;

import dglib.AQueue;
import dglib.ErrorG;
import dglib.File;
import dglib.IOChannel;
import dglib.Plugin;
import dglib.Spawn;
import dglib.SpawnException;
import dglib.StringG;
import dglib.ThreadG;
import dglib.TimerG;
