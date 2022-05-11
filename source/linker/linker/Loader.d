/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
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
module linker.Loader;

import std.algorithm : canFind;
import std.stdio;
import std.string;

import linker.Exception;

public class Linker {
    /** Contain lib handler by name */
    private static void * [string] loadedLibs;
    /** Contain failed symbols loads by lib */
    private static string[][string] failedLoads;

    /** 
     * Function for catching unsopported symbols
     */
    extern(C) static void unsupportedSymbol() {
        throw new LinkException("The function you are calling is not pressent in your version of lib");
    }

    /** 
     * Link the provided symbol
     * Params:
     *   func = The function we are linking
     *   symbol = Symbol for linking
     *   libs = Libraries for symbol searching
     */
    public static void link(T)(ref T func, string symbol, const string [] libs ...) {
        func = cast(T)getSymbol(symbol, libs);
    }

    /** 
     * Get the symbol from the lib
     * Params:
     *   symbol = Symbol for import
     *   libs = Libraries for symbol searching
     * Returns: Handle for the symbol
     */
    public static void * getSymbol(string symbol, const string [] libs ...) {
        void * handle = null;

        foreach (lib; libs) {
            if (lib !in loadedLibs) loadLibrary(lib);

            handle = getSymbolOS(loadedLibs[lib], symbol);

            if (handle !is null) break;
        }

        if (handle is null) {
            foreach (lib; libs) {
                failedLoads[lib] ~= symbol;
            }
            handle = &unsupportedSymbol;
        }

        return handle;
    }

    /** 
     * Load a dynamic lib
     * Params:
     *   library = Library for loading
     */
    public static void loadLibrary(string library) {
        import std.algorithm.searching : canFind;
        import std.string : split;

        void * handle = null;

        if (library.canFind(';')) {
            foreach (lib; library.split(';')) {
                handle = loadLibraryOS(lib);
                if (handle !is null) break;
            }
        }
        else handle = loadLibraryOS(library);

        if (handle is null) throw new LinkException("Library load failed ("~ library ~"): "~ getLastErrorMessageOS());
    
        loadedLibs[library] = handle;
    }

    /** 
     * Unload a library
     * Params:
     *   library = Library for unloading
     */
    public static void unloadLibrary(string library) {
        unloadLibraryOS(loadedLibs[library]);
        loadedLibs.remove(library);
    }

    /** 
     * Check load state
     * Returns: True if was load fails
     */
    public static bool isFails() {
        return failedLoads.length != 0;
    }

    /** 
     * Getter for loaded libs
     * Returns: Loaded libs list
     */
    public static string [] getLoaded() {
        return loadedLibs.keys;
    }

    /** 
     * Check for lib loading
     * Params:
     *   lib = Lib for checking
     * Returns: true if the lib was loaded
     */
    public static bool isLoaded(string lib) {
        if(lib in loadedLibs) return true;
        return false;
    }

    /** 
     * Check failed library loads
     * Params:
     *   lib = Lib for checking
     * Returns: Failed loads for the library
     */
    public static string [] getFails(string lib) {
        if (lib in failedLoads) return failedLoads[lib];
        return null;
    }

    /**
     * Unload all loaded libs at exit
     */
    static ~this() {
        foreach(lib; loadedLibs.keys) {
            unloadLibrary(lib);
        }
    }

    /** Functions for platform specific library load */
    version (Windows) {
        /** Specific imports */
        import core.sys.windows.winnt : IMAGE_FILE_MACHINE_AMD64, IMAGE_FILE_MACHINE_I386;
        import core.sys.windows.winbase : LoadLibraryA, GetProcAddress, FreeLibrary;

        /** 
         * Load library by using OS-specific functions
         * Params:
         *   library = Library's for loading name
         * Returns: Loaded library if everything ok or null in other cases
         */
        private static void * loadLibraryOS(string library) {
            setDLLPath();
            return LoadLibraryA(cast(char *)toStringz(library));
        }

        /** 
         * Get symbol from library by using OS-specific functions
         * Params:
         *   handle = A handle to the DLL module that contains the function or variable
         *   symbol = The function or variable name, or the function's ordinal value
         * Returns: Address of symbol or null
         */
        private static void * getSymbolOS(void * handle, string symbol) {
            return GetProcAddress(handle, cast(char *)toStringz(symbol));
        }

        /** 
         * Unload library by using OS-specific functions
         * Params:
         *   lib = Library for unloading
         * Returns: True if everything is ok
         */
        private static bool unloadLibraryOS(void * lib) {
            return cast(bool)FreeLibrary(lib);
        }

        /** 
         * Get the last error message by using OS-specific functions
         * Returns: String with error message or nothing
         */
        private static string getLastErrorMessageOS() {
            import core.sys.windows.winbase : GetLastError, FormatMessageA, FORMAT_MESSAGE_FROM_SYSTEM, FORMAT_MESSAGE_ARGUMENT_ARRAY;
            import core.sys.windows.winnt : LANG_NEUTRAL;
            import core.stdc.string : memset;

            char [] buffer = new char[2048];
            memset(buffer.ptr, '\0', 2048);
        
            FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_ARGUMENT_ARRAY,
                null, GetLastError(), LANG_NEUTRAL, buffer.ptr, 2048, cast(char **)["\0".ptr].ptr);

            return fromStringz(buffer.ptr).idup;
        }

        /** 
         * Say Windows where it should search dll
         */
        private static void setDLLPath() {
            static bool is_set = false;

            if (is_set) return;

            string gtk_path = findGtkLibs();

            if (gtk_path !is null) {
                SetDllDirectoryA((gtk_path ~ '\0').ptr);
            }

            is_set = true;
        }

        /** 
         * Find Gtk libs on the computer
         * Returns: Path to the Gtk libs or null
         */
        private static string findGtkLibs() {
            import std.algorithm.iteration : splitter;
            import std.process : environment;
            import std.path : buildNormalizedPath;
            import std.file : exists;

            foreach (lib; [`libgtk-3-0.dll`, `libgtk-4-1.dll`, `gtk-3.dll`, `gtk-4.dll`]) {
                foreach (path; splitter(environment.get("PATH"), ';')) {
                    string dll_path = buildNormalizedPath(path, lib);   
                
                    if (exists(dll_path) == false) continue;
                    if (checkDLLArch(dll_path)) return path;
                }
            }

            return null;
        }

        /** 
         * Check a DLL for compatible with the machine
         * Params:
         *   dll_path = Path to the dll for check
         * Returns: true if the dll is compatible with the machine
         */
        private static bool checkDLLArch(string dll_path) {
            import std.stdio : File;

            File dll = File(dll_path);

            dll.seek(0xc3);
            dll.seek(cast(int)dll.rawRead(new int[1])[0]);

            if (cast(uint)dll.rawRead(new uint[1])[0] != 0x00004550) return false;

            ushort win_type = cast(ushort)dll.rawRead(new ushort[1])[0];

            version(Win32) {
                return win_type == IMAGE_FILE_MACHINE_I386;
            }
            version(Win64) {
                return win_type == IMAGE_FILE_MACHINE_AMD64;
            }
        }
    } 
    else {
        /** Import OS-specific libs */
        import core.sys.posix.dlfcn : dlopen, dlerror, dlsym, dlclose;
        import core.sys.posix.dlfcn : RTLD_NOW, RTLD_GLOBAL;
	    
        import std.path : buildPath;

        /** String for containing last error message */
        private static string last_error = null;

        version(OSX) {
            /** 
             * Find the path to the libs on MacOS
             * Returns: Path to the libs in the MacOS
             */
            private static string getBasePath() {
                import std.process : environment;
                import std.path : buildPath;

                static string path = null;

                if (path !is null) return path;

                path = environment.get("GTK_BASEPATH");
                if (path is null) {
                    path = environment.get("HOMEBREW_ROOT");
                    if (path !is null) path = buildPath(path, "lib");
                }
                
                return path;
            }

            private static string base_path = getBasePath();
        }
        else {
            private static string base_path = "";
        }

        /** 
         * Load library by using OS-specific functions
         * Params:
         *   library = Library's for loading name
         * Returns: Loaded library if everything ok or null in other cases
         */
        private static void * loadLibraryOS(string library) {
            import std.path : buildPath;

            void * handle = dlopen(cast(char *)toStringz(buildPath(base_path, library)), RTLD_GLOBAL | RTLD_NOW);
        
            if (!handle) last_error = fromStringz(dlerror()).idup;

            return handle;
        }

        /** 
         * Get symbol from library by using OS-specific functions
         * Params:
         *   handle = A handle to the DLL module that contains the function or variable
         *   symbol = The function or variable name, or the function's ordinal value
         * Returns: Address of symbol or null
         */
        private static void * getSymbolOS(void * handle, string symbol) {
            void * symbol_handle = dlsym(handle, cast(char *)toStringz(symbol));
            
            if (!symbol_handle) last_error = fromStringz(dlerror()).idup;

            return symbol_handle;
        }

        /** 
         * Unload library by using OS-specific functions
         * Params:
         *   lib = Library for unloading
         * Returns: True if everything is ok
         */
        private static bool unloadLibraryOS(void * lib) {
            int res = dlclose(lib);
            if (res != 0) last_error = fromStringz(dlerror()).idup;
            return res == 0;
        }

        /** 
         * Get the last error message by using OS-specific functions
         * Returns: String with error message or nothing
         */
        private static string getLastErrorMessageOS() {
            scope(exit) last_error = null;
            return last_error;
        }
    }
}