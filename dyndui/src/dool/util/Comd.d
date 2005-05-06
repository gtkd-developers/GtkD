/*
 * This file is part of dool.
 * 
 */

module dool.util.Comd;

public enum ComdError
{
	OK = 0,
	ILLIGAL_PARAMETER,
	UNKNOWN_STATE,	// not lib or exe
	NO_PARAMETER,
	NO_SOURCE_TREE,	// source directory tree not found
	NO_SOURCE_VALID,// error composing the sources and full dir tree
	COMPILE_ERROR,
	LINK_ERROR,
}

/**
 * Compiler packager for D
 * this will compile a program or library from a directory tree
 */
public class Comd
{
	private import std.stdio;
	private import dool.String;
	private import dool.System;
	private import dool.Process;
	private import dool.io.Path;
	//private import std.process;
	// importing dool.Process causes the compiler to issue error:
	// Module Process is in mutiply defined
	private import dool.util.CommandLineParser;

	int exitCode = 0;
	ComdError error = ComdError.OK;
	
	ComdError getError(){return error;}

	// we will need these dmd programs and dirs
	String dmdExe;
	String linkExe;
	String libExe;
	String phobosDir;
	
	String dantfwLoc;
	String dmdLoc;
	String phobosLoc;
	String gtkLoc;

	public String getDAntFWocation()	{return dantfwLoc;}
	public String getDMDLocation()	{return dmdLoc;}
	public String getPhobosLocation(){return phobosLoc;}
	public String getGtkLocation()	{return gtkLoc;}
	
	public void setDAntFWocation(String newValue)	{ dantfwLoc = newValue.dup;}
	public void setDMDLocation(String newValue)	{ dmdLoc = newValue.dup;}
	public void setPhobosLocation(String newValue){ phobosLoc = newValue.dup;}
	public void setGtkLocation(String newValue)	{ gtkLoc = newValue.dup;}
	
	public this()
	{
		init();
	}
	
	public this(String args)
	{
		this(args.split());
	}
	
	public this(char[][] args)
	{
		this(CommandLineParser.getDoolCommandLine(args));
	}
	
	public this(String[] args)
	{
		if ( args.length < 3 )	
		{
			printUsage();
		}
		else
		{
			parseAndCompile(args);
		}
	}

	public int parseAndCompile(char[] args)
	{
		return parseAndCompile(new String(args));
	}

	public int parseAndCompile(String args)
	{
		return parseAndCompile(args.split());
	}
	
	public int parseAndCompile(char[][] args)
	{
		return parseAndCompile(CommandLineParser.getDoolCommandLine(args));
	}
	
	public int parseAndCompile(String[] args)
	{
		if ( getCompilerExe() === null )
		{
			init();
		}
		int error = 0;
		int type = 0;
		int argPos = 0;
		
		String name = new String();
		String[] sourceBases;
		String objBase = new String();
		String[] compilerParms;
		String[] linkerParms;
		
		void initCompiler()
		{
			type = 0;
			name.length = 0;
			sourceBases.length = 0;
			objBase.length = 0;
			compilerParms.length = 0;
			linkerParms.length = 0;
		}
		
		initCompiler();
		int defaultState = 0; // 1=compiler, 2=linker
		while ( error ==0 && argPos < args.length )
		{
			
			String arg = args[argPos++];
			
			if ( argPos < args.length )
			{
				String argV = args[argPos++].dup;
				switch ( arg.toString() )
				{
					case "-exe", "-lib":
						switch ( type )
						{
							case 0:
								type = (arg=="-exe") ? 1 : 2;
								name = argV;
								break;
							
							case 1: // exe
								error = compileExe(name, sourceBases, objBase, compilerParms, linkerParms);
								initCompiler();
								type = (arg=="-exe") ? 1 : 2;
								name = argV;
								break;
								
							case 2: // lib
								error = compileLib(name, sourceBases, objBase, compilerParms, linkerParms);
								initCompiler();
								type = (arg=="-exe") ? 1 : 2;
								name = argV;
								break;
							
							default:
								error = ComdError.UNKNOWN_STATE;
								break;
						}
						break;
						
					case "-src":	sourceBases = argV.split(";");	break;
					case "-obj":	objBase = argV;		break;
					//case "-dantfw":	dantfwLoc = argV;	break;
					//case "-dmd":	dmdLoc = argV;		break;
					//case "-phobos":	phobosLoc = argV;	break;
					case "-comp": defaultState = 1;	break;
					case "-link": defaultState = 2;	break;
					default:
						// just pass whatever to the compiler or linker
						if ( defaultState == 0 )
						{
							printf("illigal parameter %s = %s\n", arg.toStringz(), argV.toStringz());
							error = ComdError.ILLIGAL_PARAMETER;
						}
						else if ( defaultState == 1)
						{
							compilerParms ~= arg;
							--argPos;
						}
						else if ( defaultState == 2)
						{
							linkerParms ~= arg;
							--argPos;
						}
						
						break;
	
				}
			}
			else
			{
				error = ComdError.NO_PARAMETER;
			}
			
		}

		if ( error == 0 )
		{
			switch ( type )
			{
				case 1: // exe
					error = compileExe(name, sourceBases, objBase, compilerParms, linkerParms);
					break;
					
				case 2: // lib
					error = compileLib(name, sourceBases, objBase, compilerParms, linkerParms);
					break;
				
				default:
					error = ComdError.UNKNOWN_STATE;
					break;
			}
		}
		return error;
	}

	protected void init()
	{
		dmdExe = new String();
		linkExe = new String();
		libExe = new String();
		phobosDir = new String();
	
		dantfwLoc = new String();
		dmdLoc = new String();
		phobosLoc = new String();
		gtkLoc = new String();
		
		findLocations();
		checkPaths();
		
	}

	void printVersion()
	{
		printf("\ncomd v1.0\n");
	}

	void printUsage()
	{
		printVersion();
		printf("\ta D package compiler caller\n");
		printf("-exe|-lib <name> [-src srcDirs] [-obj objDir] [-d options]\n\n");
		printf("   <name>    the name of the library or executable\n");
		version(Win32)
		{
		printf("   [srcDirs] the base source libraries separated by ';'\n");
		}
		else
		{
		printf("   [srcDirs] the base source libraries separated by ':'\n");
		}
		printf("             if not supplied the current directory will be used\n");
		printf("   [objDir]  the base object library\n");
		printf("   [options] d compiler options\n");
	}
	
	
	int exec(String command)
	{

		printf("\nexecuting (from %s) \n%s\n", Path.getcwd().toStringz(),command.toStringz());
		int exitStatus = Process.system(command.toString());
		return exitStatus;

	}


	/**
	 * Tries to find the dmd location
	 */
	private void findLocations()
	{
		String[] locations;
		locations ~= new String(Path.sep);
		locations ~= new String(".");
		locations ~= Path.listDirDirs(new String(""),false,new String("\\DD"));
		locations ~= Path.listDirDirs(Path.sep);
		//locations ~= System.getUserHome();
		//locations ~= new String("Program Files")~Path.sep~"Common Files";
		//locations ~= new String(Path.sep~"Program Files");
		
		int togo = 4;
		int locs = 0;
		String curr;
		String loc1;		
		while ( togo > 0 && locs < locations.length )
		{
			curr = locations[locs].dup;
			if ( !curr.startsWith(Path.sep) )
			{
				curr.prepend(Path.sep);
			}
			if ( dmdLoc.length == 0 )
			{
				if ( Path.exists(Path.join(curr,"dmd")) )
				{
					dmdLoc.set(Path.join(curr,"dmd"));
					--togo;
				}
			}
			if ( phobosLoc.length == 0 )
			{
				if ( Path.exists(Path.join(curr,"dmd\\src\\phobos")) )
				{
					phobosLoc.set(Path.join(curr,"dmd\\src\\phobos"));
					--togo;
				}
			}
			if ( gtkLoc.length == 0 )
			{
				
				loc1 = Path.join(curr,"GTK");
				
				if ( Path.exists(Path.join(loc1,"lib\\libgtk-win32-2.lib")) )
				{
					gtkLoc.set(Path.join(loc1, "lib"));
					--togo;
				}
			}
			if ( dantfwLoc.length == 0 )
			{
				if ( Path.exists(Path.join(curr,Path.join("dantfw","dool.lib"))) )
				{
					dantfwLoc.set(Path.join(curr, "dantfw"));
					--togo;
				}
			}
			locs++;
		}
		
	}

	private String[] pathsErrors;

	public String[] getPathsErrors()
	{
		return pathsErrors;
	}

	/**
	 * Checks if the paths are correct
	 */
	bit checkPaths()
	{
		pathsErrors.length = 0;
		
		if ( !Path.isDir(phobosLoc) )
		{
			pathsErrors ~= new String("Please select phobos source location.\n");
		}
		phobosDir = Path.join(dmdLoc, "lib");
		if ( !Path.isFile(Path.join(phobosDir,"phobos.lib")) )
		{
			pathsErrors ~= new String("Please select 'phobos.lib' location.\n'phobos.lib' location must be on the dmd home 'lib' directory\n");
		}
		String dmdBin = Path.join(dmdLoc, "bin");
		dmdExe = Path.join(dmdBin,"dmd.exe");
		if ( !Path.isFile(dmdExe) )
		{
			pathsErrors ~= new String("Please select dmd home directory with 'dmd.exe' on the 'bin' folder.\n");
		}
		String dmBin = Path.join(Path.join(Path.getDirName(dmdLoc), "dm"),"bin");
		libExe = Path.join(dmBin,"lib.exe");
		if ( !Path.isFile(libExe) )
		{
			pathsErrors ~= libExe~" Please select dm home directory with 'lib.exe'\ndm home must be on the same directory as dmd.\n";
		}
		linkExe = Path.join(dmBin,"link.exe");
		if ( !Path.isFile(linkExe) )
		{
			pathsErrors ~= new String("Please select dm home directory with 'link.exe'\ndm home must be on the same directory as dmd.\n");
		}

		foreach ( String msg ; pathsErrors )
		{
			writefln("Invalid Path : ",msg);
		}
		
		return pathsErrors.length == 0;
	}

		

	bit checkDirTree(String[] sourceBases)
	{
		bit foundDirTree = true;

		foreach ( String dir ; sourceBases)
		{
			if ( !Path.isDir(dir) )
			{
				foundDirTree = false;
			}
		}
		return foundDirTree;
	}

	bit setSourcesAndTree(	String[] sourceBases,
							inout String[] fullDirTree, 
							inout String[] sources)
	{
		String dExtension = new String(".d");
		String here = new String();

		foreach ( String dir ; sourceBases)
		{
			fullDirTree ~= dir;
			if ( Path.isDir(dir) )
			{
				sources ~= Path.listDirFiles(here, dExtension, dir);
				foreach (String pDir; Path.listDirDirs(dir, true))
				{
					String fullPath = Path.join(dir,pDir);
					if ( Path.isDir(fullPath) )
					{
						fullDirTree ~= fullPath;
						sources ~= Path.listDirFiles(here, dExtension, fullPath);
					}
					else
					{
						sources ~= fullPath;
					}
				}
			}
			else
			{
				sources ~= fullDirTree;
			}
		}
		return true;
		
	}
		
	/**
	 * Compiles sources into obj.
	 * Sets the global error.
	 * \TODO consider inserting test to bypass compiling if obj is more recent then source
	 * in that case receive a flag to force compiling
	 * @return the objs compiles. if the length of objs == 0 the compile faild (hack alert)
	 */
	String[] compile(String name, 
					String[] sourceBases,
					String objBase,
					String[] compilerParms
					)
	{
		
		
		String currDir = Path.getcwd();
		String[] objs;

		bit foundDirTree = checkDirTree(sourceBases);
		if ( !foundDirTree && Path.isDir("src") )
		{
			Path.chdir("src");
			foundDirTree = checkDirTree(sourceBases);
			objBase = Path.join("..",objBase);
		}

		if ( !foundDirTree )
		{
			Path.chdir(currDir);
			error = ComdError.NO_SOURCE_TREE;
			return objs;
		}
		
		// get full dir tree
		// and source files
		
		String[] fullDirTree;
		String[] sources;
		if ( !setSourcesAndTree(sourceBases, fullDirTree, sources) )
		{
			Path.chdir(currDir);
			error = ComdError.NO_SOURCE_VALID;
			return objs;
		}
		
		// make the obj dir tree
		if ( objBase !== null && objBase.length() > 0 )
		{
			foreach ( String dir ; fullDirTree )
			{
				printf("Making object dir %s\n" , Path.join(objBase,dir).toStringz());
				Path.mkdirs(Path.join(objBase,dir));
			}
		}
		

		String commCompile = new String(getCompilerExe()) ~" -c";
		if ( objBase!==null && objBase.length>0)
		{
			commCompile ~= " -od"~objBase.toString()~" -op"; 
		}
		commCompile ~= getSourceDirs().prepend(" -I");
		commCompile ~= String.join(compilerParms, " ").prepend(" ");
		commCompile ~= String.join(sources, " ").prepend(" ");

		int exitStatus = exec(commCompile);

		if ( exitStatus != 0 )
		{
			error = ComdError.COMPILE_ERROR;
		}

		// get obj files

		if ( objBase.length > 0 )
		{
			Path.chdir(objBase);
		}
		
		String here = new String();
		String objExtension = new String(".obj");
		foreach ( String dir; fullDirTree )
		{
			objs ~= Path.listDirFiles(here, objExtension, dir);
		}

		Path.chdir(currDir);

		return objs;
	}
	
	String getCompilerExe()
	{
		return dmdExe;
	}
	String getLinkExe()
	{
		return linkExe;
	}
	
	String getLibExe()
	{
		return libExe;
	}
	
	String getSourceDirs()
	{
		return new String(dantfwLoc)~"\\doolD\\src"
					~ ";"~dantfwLoc~"\\duiD\\src "
					;
	}
	
	String getLinkOptions()
	{
		return new String("/DELEXECUTABLE /NODET /NOI");
	}
	
	String getExtraCompileParms()
	{
		return new String();
	}
	
	String getExtraLinkParms()
	{
		return new String();
	}
	
	
	/**
	 * Makes an exe from existing objs
	 **/
	ComdError compileExe(	String name, 
					String[] sourceBases,
					String objBase,
					String[] compilerParms,
					String[] linkerParms
					)
	{
		ComdError cError = ComdError.OK;
		String currDir = Path.getcwd();
		
		String[] objs = compile(name, sourceBases, objBase, compilerParms);
		
		if ( objBase.length > 0 )
		{
			Path.chdir(objBase);
		}
		
		if ( objs === null || objs.length == 0 )
		{
			printf("Couldn't compile sources for "~name.toString()~"\n");
			return error;
		}

		String commLink = getLinkExe()~" "
							~String.join(objs," ")~" , "
							~Path.join(currDir,name~".exe") ~ ",, "
							~getAllLibs() 
							~" "~getLinkOptions();

		int exitStatus = exec(commLink);
		if ( exitStatus != 0 )
		{
			cError = ComdError.LINK_ERROR;
		}
		Path.chdir("..");

		debug(debugCompileExe) printf("%s done\n", name.toStringz());
		Path.chdir(currDir);

		return cError;
	}
	
	/**
	 * Makes a lib from existing objs
	 **/
	ComdError compileLib(	String name, 
					String[] sourceBases,
					String objBase,
					String[] compilerParms,
					String[] linkerParms
					)
	{
		ComdError lError = ComdError.OK;
		String currDir = Path.getcwd();
		
		String[] objs = compile(name, sourceBases, objBase, compilerParms);
		
		if ( objBase.length > 0 )
		{
			Path.chdir(objBase);
		}
		
		if ( objs === null || objs.length == 0 )
		{
			printf("Couldn't compile sources for "~name.toString()~"\n");
			return error;
		}

		String commLink = getLibExe() ~ " -p128 -c " 
						~Path.join(currDir,name~".lib")~" "
						~" "~String.join(linkerParms, " ")
						~ String.join(objs, " ");

		int exitStatus = exec(commLink);
		
		if ( exitStatus != 0 )
		{
			lError = ComdError.LINK_ERROR;
		}
		
		Path.chdir(currDir);

		debug(debugCompileExe) printf("%s done\n", name.toStringz());
		return lError;
	}
	
	String allLibs;
	String glLibs;
	
	String getAllLibs()
	{
		if ( allLibs === null )
		{
			allLibs = new String("dool+dui+duigl+phobos")
				~"+libatk-1+libgdk-win32-2+libglib-2"
				~"+libgmodule-2+libgobject-2+libgthread-2+libgtk-win32-2"
				~"+libpango-1+libgdk_pixbuf-2"
				~"+"~getGLLibs()
				~"+"~ phobosDir~"\\"
				~"+"~dantfwLoc~"\\+"~dmdLoc~"\\lib\\"~"+"~gtkLoc~"\\"
				~"+"~System.getEnv("SystemRoot").toString()~"\\system32\\"
				;

		}
		return allLibs;
	}
		
	
	String getGLLibs()
	{
		if ( glLibs === null )
		{
			String glBase = gtkLoc;
			glLibs = new String("libgdkglext-win32-1+libgtkglext-win32-1")
					~"+opengl32+glu32"
				;

		}
		return glLibs;
	}
	
}
