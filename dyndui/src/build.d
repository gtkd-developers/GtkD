version(build) 
{
	version(Windows)
		pragma(target, "dui.lib");
	version(linux)
		pragma(target, "libdui.a");
}

import dui.All;
