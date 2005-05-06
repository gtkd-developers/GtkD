/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL or what ever the orginal license was.
 *
 */

module dool.Process;

//private extern (C) int* _errno();

public
class Process
{
	
	private import std.c.process;
	private import std.c.stdlib;
	private import std.process;
	private import dool.String;
	
	private import dool.ProcessException;
	
	static int system(char[] command)
	{
		return system(new String(command));
	}
	
	static int system(String command)
	{
		return std.process.system(command.toString());
	}
	

	private static char** cstrings(String[] strings)
	{
		char** argv = new char*[strings.length+1];
		int i = 0;
		//printf("\n");
		foreach (String string; strings)
		{
			//printf("adding argv %s\n", string.toStringz());
			argv[i++] = string.toStringz();
		}
		//printf("\n");
		argv[i] = null;
		return argv;
	}

	
	static int execV(String path, String[] args)
	{
		
		//printf("execV path = %s\n", path.toStringz());
		char** argv = cstrings(args);
		
		char* arg = argv[0];
		//printf("execV args:\n");
		int i=0;
		while ( arg !== null )
		{
			//printf("\t[%d] = %s\n", i, arg);
			arg = argv[++i];
		}
		
		int result = std.c.process.execv(path.toStringz(), cstrings(args));
		
		//int* e = _errno();
		//printf("Process.execV result = %d %d\n", result, *e);
		
		if ( result == -1 )
		{
			throw new ProcessException();
		}
		
		return result;
	}
	
	static int execVE(String path, String[] args, String[] env)
	{
		
		//printf("execVE path = %s\n", path.toStringz());
		char** argv = cstrings(args);
		
		char* arg = argv[0];
		//printf("execVE args:\n");
		int i=0;
		while ( arg !== null )
		{
			//printf("\t[%d] = %s\n", i, arg);
			arg = argv[++i];
		}
		
		int result = std.c.process.execve(path.toStringz(), cstrings(args), cstrings(env));
		
		//int* e = _errno();
		//printf("Process.execVE result = %d %d\n", result, *e);
		
		if ( result == -1 )
		{
			throw new ProcessException();
		}
		
		return result;
	}
	
}

/+
from "Unknown W. Brackets" <unknown@simplemachines.org>
need to check license.
need to grab stdout and stderr.
need to check about stdin.
I was poking around a bit with a program that essentially used diff to 
find and parse changes in a file, and use them to generate output.  I 
looked through phobos for some sort of "ProcessStream" class... but 
there wasn't one - nor was there a popen.

Having experience with Linux and PHP... I like this function, when I 
need it (although obviously system calls aren't the best, and if I were 
serious I might write my own diffing routine instead of this obviously 
slower method.)  However, I also understand that the Windows 
implementation of it either does not work or does not work well.

So I wrote my own implementation, and while I was at it created a 
ProcessStream class as well.  I figured I'd post it here to see if I got 
any comments at all, and just in case it might help someone.  Note that 
it's not perfect, or anything.

To test it, simply use this and do a -unittest:

	import popen;

	int main()
	{
		return 0;
	}

(thought it's probably better form to use a more descriptive module name.)

I'm pretty sure it works on Windows 9x, but I didn't do any testing.

Thanks,
######################################
module popen;

private import std.c.stdio;
private import std.stream;

unittest
{
	// Just some old command; testing the stderr piping.
	ProcessStream test = new ProcessStream("diff 2>&1");

	std.stream.stdout.writeLine(test.readLine());
	std.stream.stdout.writeLine(test.readLine());
	std.stream.stdout.flush();

	// Talk about a useless waste :P!
	test = new ProcessStream("cat", FileMode.Out);

	test.writeLine("There's no place like stdout.");
}

// ProcessStream class - used to read or write (can't do both) from/to a process.
class ProcessStream: Stream
{
	// The FILE* handle to the process's output.
	private FILE* handle = null;
	// Seems this is private, so I had to override it; whether the file is open.
	private override bool isopen = false;

	// Create a new ProcessStream without any actual command/arguments.
	this()
	{
		super();

		// Clean up, this sets all the same variables anyway.
		this.close();
	}

	// A quick way to create the class and open it at the same time...
	this(char[] command, FileMode mode = FileMode.In)
	{
		super();

		this.open(command, mode);
	}

	~this()
	{
		this.close();
	}

	void open(char[] command, FileMode mode = FileMode.In)
	{
		// Make sure we're all closed off ;).
		this.close();

		// These are pretty simple and come nearly straight from the File class.
		this.readable = cast(bit) (mode & FileMode.In);
		this.writeable = cast(bit) (mode & FileMode.Out);
		this.seekable = false;

		// TODO: Binary flag?
		this.handle = popen(command, mode == FileMode.In ? "r" : "w");

		// Throw an OpenException if anything goes arye.
		if (this.handle == null)
		{
			this.isopen = false;
			throw new OpenException("couldn't pipe " ~ command);
		}
	}

	// Close the stream, or make sure everything is clean if the stream isn't open.
	override void close()
	{
		if (this.isopen && this.handle != null)
			pclose(this.handle);

		this.handle = null;
		this.isopen = false;
		this.readable = false;
		this.writeable = false;
		this.seekable = false;
	}

	override uint readBlock(void* buffer, uint size)
	in
	{
		// Not only must it be readable, but the handle must not be null (isopen might be equivalent.)
		assert(this.readable);
		assert(this.handle != null);
	}
	body
	{
		// Map straight to fread.
		return fread(buffer, 1, size, this.handle);
	}

	override uint writeBlock(void* buffer, uint size)
	in
	{
		// Check to make sure we're not writing to an unwritable stream.
		assert(this.writeable);
		assert(this.handle != null);
	}
	body
	{
		// Again, fwrite works perfectly for FILEs.
		return fwrite(buffer, 1, size, this.handle);
	}

	override ulong seek(long offset, SeekPos whence)
	{
		// If I throw an error here, nothing works, so zero will have to do.
		return 0;
	}
}

version (linux)
{
	// Blissfully easy.
	extern (C)
	{
		FILE* popen(char* command, char* type);
		int pclose(FILE* stream);
	}
}
else version (Windows)
{
	private import std.c.windows.windows;

	// For memset.
	private import std.string;

	// Some of this come from winbase.h.
	extern (Windows)
	{
		struct PROCESS_INFORMATION
		{
			HANDLE hProcess;
			HANDLE hThread;
			DWORD dwProcessId;
			DWORD dwThreadId;
		}
		struct STARTUPINFO
		{
			DWORD cb;
			LPTSTR lpReserved;
			LPTSTR lpDesktop;
			LPTSTR lpTitle;
			DWORD dwX;
			DWORD dwY;
			DWORD dwXSize;
			DWORD dwYSize;
			DWORD dwXCountChars;
			DWORD dwYCountChars;
			DWORD dwFillAttribute;
			DWORD dwFlags;
			WORD wShowWindow;
			WORD cbReserved2;
			LPBYTE lpReserved2;
			HANDLE hStdInput;
			HANDLE hStdOutput;
			HANDLE hStdError;
		}

		alias HANDLE* PHANDLE, LPHANDLE;
		alias STARTUPINFO* LPSTARTUPINFO;
		alias PROCESS_INFORMATION* LPPROCESS_INFORMATION;
		alias int intptr_t;

		const int O_BINARY = 0x8000, O_TEXT = 0x4000;
		const int O_RDONLY = 0, O_WRONLY = 1;
		const uint STD_INPUT_HANDLE = cast(uint) -10;
		const uint STD_OUTPUT_HANDLE = cast(uint) -11;
		const int STARTF_USESTDHANDLES = 0x00000100;
		const int DUPLICATE_CLOSE_SOURCE = 0x00000001;
		const int DUPLICATE_SAME_ACCESS = 0x00000002;
		const int NORMAL_PRIORITY_CLASS = 0x00000020;
		const int INFINITE = 0x0FFFFFFF;

		BOOL CloseHandle(HANDLE hObject);
		BOOL CreatePipe(PHANDLE hReadPipe, PHANDLE hWritePipe, LPSECURITY_ATTRIBUTES lpPipeAttributes, DWORD nSize);
		BOOL CreateProcessA(LPCTSTR lpApplicationName, LPTSTR lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes, LPSECURITY_ATTRIBUTES lpThreadAttributes, BOOL bInheritHandles, DWORD dwCreationFlags, LPVOID lpEnvironment, LPCTSTR lpCurrentDirectory, LPSTARTUPINFO lpStartupInfo, LPPROCESS_INFORMATION lpProcessInformation);
		BOOL CreateProcessW(LPCTSTR lpApplicationName, LPTSTR lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes, LPSECURITY_ATTRIBUTES lpThreadAttributes, BOOL bInheritHandles, DWORD dwCreationFlags, LPVOID lpEnvironment, LPCTSTR lpCurrentDirectory, LPSTARTUPINFO lpStartupInfo, LPPROCESS_INFORMATION lpProcessInformation);
		BOOL DuplicateHandle(HANDLE hSourceProcessHandle, HANDLE hSourceHandle, HANDLE hTargetProcessHandle, LPHANDLE lpTargetHandle, DWORD dwDesiredAccess, BOOL bInheritHandle, DWORD dwOptions);
		BOOL GetExitCodeProcess(HANDLE hProcess, LPDWORD lpExitCode);
		HANDLE GetStdHandle(DWORD nStdHandle);
		DWORD WaitForSingleObject(HANDLE hHandle, DWORD dwMilliseconds);
	}

	// Grab some useful C functions too.
	extern (C)
	{
		int _open_osfhandle(intptr_t osfhandle, int flags);
		FILE* fdopen(int fd, char *mode);
	}

	/* Okay, this is essentially a map from FILE pointer to HANDLE.
	   It's needed so the HANDLE can be freed at the same time the FILE
	   is, without changing the syntax of popen().  Alternatively, it
	   could be encapsulated within a class; but I like popen ^_^. */
	private HANDLE[FILE*] popenBuffer;

	/* This is the actual implementation of popen.  I put this together
	   from various examples on Google. */
	FILE* popen(char* command, char* type)
	{
		STARTUPINFO startup;
		PROCESS_INFORMATION process;
		SECURITY_ATTRIBUTES security;
		HANDLE inH, outH;

		// The handle needs to be inherited...
		security.nLength = SECURITY_ATTRIBUTES.sizeof;
		security.bInheritHandle = true;
		security.lpSecurityDescriptor = null;

		// Attempt to create the pipe between our two handles.
		if (!CreatePipe(&inH, &outH, &security, 2048L))
			return null;

		memset(&startup, 0, STARTUPINFO.sizeof);
		memset(&process, 0, PROCESS_INFORMATION.sizeof);

		startup.cb = STARTUPINFO.sizeof;
		startup.dwFlags = STARTF_USESTDHANDLES;
		// TODO: Check consistency on Linux (no stderr.)
		startup.hStdError = find(toString(command), "2>&1") != -1 ? outH : INVALID_HANDLE_VALUE;

		// A quick nested function to simplify the calls...
		void duplicateHandle(HANDLE fix)
		{
			HANDLE copy, self = GetCurrentProcess();

			if (!DuplicateHandle(self, fix, self, &copy, 0, FALSE, DUPLICATE_SAME_ACCESS | DUPLICATE_CLOSE_SOURCE))
				fix = null;
			else
				fix = copy;
		}

		// We're going to use our handles - so, if we're reading we want to capture its stdout.
		if (type[0] == 'r')
		{
			duplicateHandle(inH);
			startup.hStdInput = GetStdHandle(STD_INPUT_HANDLE);
			startup.hStdOutput = outH;
		}
		// Otherwise, we're writing, so we want to capture stdin.
		else
		{
			duplicateHandle(outH);
			startup.hStdInput = inH;
			startup.hStdOutput = GetStdHandle(STD_OUTPUT_HANDLE);
		}

		// TODO: Why won't CreateProcessW work here at all?
		if (!CreateProcessA(null, command, &security, &security, security.bInheritHandle, NORMAL_PRIORITY_CLASS, null, null, &startup, &process))
			return null;
		CloseHandle(process.hThread);

		// Now, we want to actually get the FILE (to emulate popen) so...
		int fno, mode = strlen(type) == 2 && type[1] == 'b' ? O_BINARY : O_TEXT;
		if (type[0] == 'r')
		{
			fno = _open_osfhandle(cast(long) inH, O_RDONLY | mode);
			CloseHandle(outH);
		}
		else
		{
			fno = _open_osfhandle(cast(long) outH, O_WRONLY | mode);
			CloseHandle(inH);
		}

		// Now it's child's play.  Open 'er up and stick the process handle in the lookup.
		// TODO: Why won't using plain type work?
		FILE* stream = fdopen(fno, "r+");
		popenBuffer[stream] = process.hProcess;

		return stream;
	}

	int pclose(FILE* stream)
	{
		DWORD termstat = 0;
		HANDLE process = popenBuffer[stream];

		// Flush any buffer(s) and say sianara.
		fflush(stream);
		fclose(stream);

		// Wait for it to quit and get its exit code... I hope INFINITE is okay here.
		WaitForSingleObject(process, INFINITE);
		GetExitCodeProcess(process, &termstat);
		CloseHandle(process);

		// Get rid of useless clutter explicitly.
		delete popenBuffer[stream];

		return termstat;
	}
}
else
{
	// This probably isn't needed; I'm sure most UNIX based operating systems have popen, no?  Does Mac OS X?
	static assert(0);
}

+/