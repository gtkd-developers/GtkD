module glib.Basic;

import std.stdio;
import glib.MainContext;
import glib.MainLoop;
import gobject.ObjectG;

int main(string[] args)
{
    auto mainContext = new MainContext();
    auto mainLoop = new MainLoop(mainContext, false);
    // Casting shouldn't be necessary, but seems MainLoop doesn't inherit from
    // ObjectG when it should.
    GType type = (cast(ObjectG)mainLoop).getType();

    writeln("A mainloop GType: ", type);
    writeln("Running main loop");
    mainLoop.run();

    return 0;
}
