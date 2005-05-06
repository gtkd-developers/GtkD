/**
 * This file is part of DUI
 * DUI is LGPL
 */

module installer.Manager;

private import std.stdio;
private import dool.String;
private import dool.System;
private import dool.io.Path;
private import dool.io.FileBuffer;
private import dool.io.OutBuffer;
private import std.stdio;
	
/**
 * Manages the DUI installation.
 * This is usefull only when DUI is installed and
 * maintained with the DUI installer and Manager
 */
public class Manager
{
	String fileName;
	public String getFileName(){ return fileName;}
	String[String] installMap;
	
		
	
	this()
	{
		//writefln("Manager.appdata %s",System.getEnv("APPDATA"));
		this(Path.join(System.getEnv("APPDATA"),"dantfw"));
	}
	
	this(String installDir)
	{
		//writefln("Manager.appinstallDirdata %s",installDir);
		fileName = Path.join(installDir,"InstallConfig.txt");
		readMap(fileName);
		showMap();
	}
	
	void readMap(String mapFile)
	{
		fileName = mapFile.dup;
		String t;
		try
		{
			t = new String(FileBuffer.read(mapFile));
		}
		catch ( FileException fe )
		{
			t = new String();
		}
		foreach ( String line ; t.splitLines() ) 
		{
			line = line.strip();
			if ( !line.startsWith('#') )
			{
				int pos = line.find(':');
				if ( pos > 0 )
				{
					String key = line[0..pos].dup.strip();
					String value = line[pos+1..line.length].dup.strip();
					installMap[key] = value;
				}
			}
		}
	}
	
	String getDirName()
	{
		return Path.getDirName(fileName);
	}
	
	bit writeMap()
	{
		bit ok = true;
		
		printf("DUI.installer.Manager write map to %s\n",fileName.toStringz());
		
		String dirName = getDirName();
		if ( !Path.exists(dirName)) Path.mkdirs(dirName);
		OutBuffer buf = new OutBuffer();
		buf.write("#\r\n# DUI install configuration\r\n#\r\n\r\n");
		foreach ( String key ; installMap.keys.sort )
		{
			buf.write(key~":"~installMap[key]~"\r\n");
		}
		buf.write("\r\n");
		try
		{
			FileBuffer.write(fileName, buf);
		}
		catch (FileException fe)
		{
			ok = false;
		}
		return ok;
	}
	
	void set(char[] key, char[] value)
	{
		set(new String(key), new String(value));
	}
	void set(char[] key, String value)
	{
		set(new String(key), value);
	}
	void set(String key, char[] value)
	{
		set(key, new String(value));
	}
	void set(String key, String value)
	{
		installMap[key] = value;
	}
	
	String get(char[] key)
	{
		return get(new String(key));
	}
	
	/**
	 * Gets the value for one key or an empty string if not found.
	 */
	String get(String key)
	{
		if ( key in installMap )
		{
			return installMap[key];
		}
		return new String();
	}
	
	void showMap()
	{
		writefln("DUI install configuration:");
		foreach ( String key ; installMap.keys.sort )
		{
			writefln("\t%s %s\n", key, installMap[key]);
		}
	}
	
	
	MUI mui;
	/**
	 * Show the install map on the GUI
	 */
	void showUI(char[][] args)
	{
		if ( mui===null )
		{
			DUI dui;
			dui = DUI.dui(args);
	
			mui = new MUI(this);
			mui.show();
			
			dui.go();
		}
		// todo
	}
}

private import dui.All;
private import dool.util.Comd;

class DMDCompiler : Comd
{	
	Entry name;
	RadioButton scopePhobos;
	RadioButton scopeDool;
	RadioButton scopeDUI;
	RadioButton scopeOpenGL;
	RadioButton typeExe;
	RadioButton typeLib;
	Entry compiler;
	Entry outName;
	Entry wrkDir;
	Entry srcDirs;
	Entry objDir;
	Entry extraImports;
	Entry extraLibs;
	CheckButton flagC;
	CheckButton flagD;
	CheckButton flagG;
	CheckButton flagGT;
	CheckButton flagV;
	CheckButton flagDebug;
	CheckButton flagInline;
	CheckButton flagRelease;
	CheckButton flagUnittest;
	Entry versionLevel;
	Entry versionIdent;
	Entry debugLevel;
	Entry debugIdent;
	CheckButton flagOP;
	Entry otherComp;
	Entry otherLink;
	
	Manager manager;
	MUI mui;
	VBox mainBox;
	
	this(Manager manager, MUI mui, String targetName=null)
	{
		super();
		this.manager = manager;
		this.mui = mui;
		setupBox();
		if ( targetName !== null )
		{
			readInstance(targetName);
		}
	}

	/**
	 * prevent the super class from trying to find locations
	 * of the tools on the file system
	 */
	void init()
	{
		// nothing here
	}

	private void setupBox()
	{
		mainBox = new VBox(false, 0);
		
		name = new Entry();
		scopePhobos = new RadioButton(cast(SListG)null, "phobos");
		scopeDool = new RadioButton(scopePhobos, "dool");
		scopeDUI = new RadioButton(scopeDool, "DUI");
		scopeOpenGL = new RadioButton(scopeDUI, "OpenGL");
		typeExe = new RadioButton(cast(SListG)null, "exe");
		typeLib = new RadioButton(typeExe, "lib");
		compiler = new Entry();
		outName = new Entry();
		wrkDir = new Entry();
		srcDirs = new Entry();
		objDir = new Entry();
		extraImports = new Entry();
		extraLibs = new Entry();
		flagC = new CheckButton();
		flagD = new CheckButton();
		flagG = new CheckButton();
		flagGT = new CheckButton();
		flagV = new CheckButton();
		flagDebug = new CheckButton();
		flagInline = new CheckButton();
		flagRelease = new CheckButton();
		flagUnittest = new CheckButton();
		versionLevel = new Entry();
		versionIdent = new Entry();
		debugLevel = new Entry();
		debugIdent = new Entry();
		flagOP = new CheckButton();
		otherComp = new Entry();
		otherLink = new Entry();
		
		Table table = new Table(5,20,false);
		int row = 0;
		int col = 0;

		void fAttach(Table aTable, char[] label, Widget widget, int col, int row)
		{
			if ( label !==null && label.length>0 )
			{
				Alignment alig = new Alignment(0.5, 0.5, 0, 0);
				alig.add(new Label(label));
				Alignment alig1 = new Alignment(0.5, 0.5, 0, 0);
				alig1.add(widget);
				aTable.attach(alig, col,col+1,row,row+1, AttachOptions.FILL | AttachOptions.SHRINK,AttachOptions.FILL, 0,0);
				aTable.attach(alig1, col,col+1,row+1,row+2, AttachOptions.FILL | AttachOptions.SHRINK,AttachOptions.FILL, 0,0);
			}
			else
			{
				aTable.attach(widget, col,col+1,row,row+1, AttachOptions.FILL | AttachOptions.SHRINK,AttachOptions.FILL, 0,0);
			}
		}
		
		void attach(char[] label, Widget widget, int width=2)
		{
			Alignment a = new Alignment(0, 0.5, 0, 0);
			if ( label !==null && label.length>0 )
			{
				a.add(new Label(label));
				table.attach(a, col,++col,row,row+1 ,AttachOptions.FILL,AttachOptions.SHRINK, 4,2);
			}
			table.attach(widget, col,col+width,row,row+1 ,AttachOptions.FILL | AttachOptions.EXPAND,AttachOptions.FILL, 4,2);
			if ( (col+width) >= 6 )
			{
				++row;
				col = 0;
			}
			else
			{
				col += width;
			}
			
		}
		
		attach("name", name, 1);
		attach("outName", outName);
		Button button = new Button("compile", &actionGo);
		Button run = new Button("run", &actionRun);
		//attach(null, button,1);
		HBox hbox = new HBox(0,false);
		hbox.packStart(button, false, false, 2);
		hbox.packStart(run, false, false, 2);
		table.attach(hbox, 5,6,row,++row ,AttachOptions.FILL | AttachOptions.SHRINK,AttachOptions.FILL, 4,2);
		col=0;


		Table scopeTable = new Table(1, 1,false);
		fAttach(scopeTable, "", scopePhobos, 0, 0);
		fAttach(scopeTable, "", scopeDool, 0, 1);
		fAttach(scopeTable, "", scopeDUI, 0, 2);
		fAttach(scopeTable, "", scopeOpenGL, 0, 3);
		
		attach("Libs", scopeTable);

		Table typeTable = new Table(1, 1,false);
		fAttach(typeTable, "", typeExe, 0, 0);
		fAttach(typeTable, "", typeLib, 0, 1);
		attach("Type", typeTable);

		attach("compiler", compiler);
		attach("wrkDir", wrkDir);
		attach("srcDirs", srcDirs);
		attach("objDir", objDir);
		attach("extraImports", extraImports);
		attach("extraLibs", extraLibs);
		
		Table fTable = new Table(1,1, true);
		fAttach(fTable, "-c", flagC, 0, 0);
		fAttach(fTable, "-d", flagD, 1, 0);
		fAttach(fTable, "-g", flagG, 2, 0);
		fAttach(fTable, "-gt", flagGT, 3, 0);
		fAttach(fTable, "-v", flagV, 4, 0);
		//fAttach(fTable, "-c\ndo not link", flagC, 0, 0);
		//fAttach(fTable, "-d\nallow deprecated", flagD, 1, 0);
		//fAttach(fTable, "-g\nsymbolic debug", flagG, 2, 0);
		//fAttach(fTable, "-gt\ntrace profiling", flagGT, 3, 0);
		//fAttach(fTable, "-v\nverbose", flagV, 4, 0);

		fAttach(fTable, "inline", flagInline, 0, 2);
		fAttach(fTable, "debug", flagDebug, 1, 2);
		fAttach(fTable, "release", flagRelease, 2, 2);
		fAttach(fTable, "unittest", flagUnittest, 3, 2);
		fAttach(fTable, "op", flagOP, 4, 2);

		attach("Flags", fTable,4);
		col = 0;
		++row;
		
		attach("versionLevel", versionLevel);
		attach("versionIdent", versionIdent);
		attach("debugLevel", debugLevel);
		attach("debugIdent", debugIdent);
		attach("otherComp", otherComp);
		attach("otherLink", otherLink);
		
		//ScrolledWindow sc = new ScrolledWindow();
		//sc.add(table);
		//mainBox.packStart(sc, true, true, 0);
		mainBox.packStart(table, true, true, 0);

		VBox vbox = new VBox(0,false);
		HButtonBox bb = HButtonBox.createActionBox();
		
		button = new Button("Delete", &actionDelete);
		bb.packStart(button, false, false, 7);
		button = new Button("New", &actionNew);
		bb.packStart(button, false, false, 7);
		button = new Button("Copy", &actionCopy);
		bb.packStart(button, false, false, 7);
		button = new Button("Save", &actionSave);
		bb.packStart(button, false, false, 7);
		
		mainBox.packStart(bb, false, false, 0);
	}

	/**
	 * Runs the current target if it is and exe
	 */
	private void actionRun()
	{
		if ( typeExe.getActive() )
		{
			String comm = Path.join(wrkDir.getText(), outName.getText());
			if ( Path.isFile(comm) )
			{
				std.process.system(comm.toString());
			}
			else if ( Path.isFile(comm~".exe") )
			{
				std.process.system( (comm~".exe").toString());
			}
			else
			{
				writefln("cannot run %s: file not found",comm);
			}
		}
	}

	/**
	 * builds the arguments to pass to the parse ad compile
	 */
	private void actionGo()
	{
		String name = outName.getText();
		String[] sourceBases = srcDirs.getText().split(Path.pathsep);
		String objBase = objDir.getText();
		String[] compilerParms;
		String[] linkerParms;
		
		String currDir = Path.getcwd();
		Path.chdir(wrkDir.getText());
		
		ComdError error;
		if ( typeExe.getActive() )
		{
			error = compileExe(name, sourceBases, objBase, compilerParms, linkerParms);
		}		
		if ( typeLib.getActive() )
		{
			error = compileLib(name, sourceBases, objBase, compilerParms, linkerParms);
		}
		
		Path.chdir(currDir);
	}
	
	String getCompilerExe()
	{
		return manager.get("dmd.exe");
	}
	
	String getLinkExe()
	{
		return manager.get("link.exe");
	}
	
	String getLibExe()
	{
		return manager.get("lib.exe");
	}
	
	String getSourceDirs()
	{
		String sourceDirs = new String();
		
		if ( scopePhobos.getActive() )
		{
			sourceDirs = mui.importPhobos.getText();
		}
		else if ( scopeDool.getActive() )
		{
			sourceDirs = mui.importDool.getText();
		}
		else if ( scopeDUI.getActive() )
		{
			sourceDirs = mui.importDUI.getText();
		}
		else if ( scopeOpenGL.getActive() )
		{
			sourceDirs = mui.importOpenGL.getText();
		}

		
		return sourceDirs;
	}
	
	String getAllLibs()
	{
		String allLibs = new String();
		
		if ( scopePhobos.getActive() )
		{
			allLibs = String.join(mui.libsPhobos.getText().split(Path.pathsep),"+");
			allLibs ~= "+";
			allLibs ~= String.join(mui.locPhobos.getText().split(Path.pathsep),"\\+") ~"\\";
		}
		else if ( scopeDool.getActive() )
		{
			allLibs = String.join(mui.libsDool.getText().split(Path.pathsep),"+");
			allLibs ~= "+";
			allLibs ~= String.join(mui.locDool.getText().split(Path.pathsep),"\\+") ~"\\";
		}
		else if ( scopeDUI.getActive() )
		{
			allLibs = String.join(mui.libsDUI.getText().split(Path.pathsep),"+");
			allLibs ~= "+";
			allLibs ~= String.join(mui.locDUI.getText().split(Path.pathsep),"\\+") ~"\\";
		}
		else if ( scopeOpenGL.getActive() )
		{
			allLibs = String.join(mui.libsOpenGL.getText().split(Path.pathsep),"+");
			allLibs ~= "+";
			allLibs ~= String.join(mui.locOpenGL.getText().split(Path.pathsep),"\\+") ~"\\";
		}


		writefln("############################################# getAllLibs : \n", allLibs);

		return allLibs;
	}
	
	String getLinkOptions()
	{
		return manager.get("linkOptions");
	}

	private void actionDelete()
	{
		if ( name.getText().length == 0 )
		{
		}
		else
		{

			MessageDialog d = new MessageDialog(
				mui, 0,
				DialogType.QUESTION,DialogButtons.YES_NO,
				"Are you sure you want' to delete "~name.getText.toString()~"?");
				
			int responce = d.run();
			if ( responce == Response.YES )
			{
				deleteInstance(name.getText());
			}
			d.destroy();

		}
	}

	private void actionNew()
	{
		name.setEditable(true);
		name.setSensitive(true);
		clearAll();
	}
	
	private void actionCopy()
	{
		name.setText("");
		outName.setText("");
		name.setEditable(true);
		name.setSensitive(true);
	}
	
	private void actionSave()
	{
		if ( name.getText().length == 0 )
		{
			popupMessage("please enter the name");
			name.grabFocus();
		}
		else
		{
			bit newTarget = name.getEditable();
			if ( writeInstance(name.getText()) && newTarget )
			{
				mui.addTarget(name.getText());
			}
		}
	}
	
	
	void popupMessage(char[] message)
	{
		popupMessage(new String(message));
	}
	void popupMessage(String message)
	{
		MessageDialog d = new MessageDialog(
				mui, 0,
				DialogType.INFO,DialogButtons.OK,
				message
				);
		d.setTitle("DUI Compiler");
		d.run();
		d.destroy();

	}
		

	
	Widget getMainWidget()
	{
		return mainBox;
	}
	
	private void clearAll()
	{
		name.setText("");
		scopeDUI.setActive(true);
		typeExe.setActive(true);
		compiler.setText("");
		outName.setText("");
		wrkDir.setText("");
		srcDirs.setText("");
		objDir.setText("");
		extraImports.setText("");
		extraLibs.setText("");
		flagC.setActive(false);
		flagD.setActive(false);
		flagG.setActive(false);
		flagGT.setActive(false);
		flagV.setActive(false);
		flagDebug.setActive(false);
		flagInline.setActive(false);
		flagRelease.setActive(false);
		flagUnittest.setActive(false);
		versionLevel.setText("");
		versionIdent.setText("");
		debugLevel.setText("");
		debugIdent.setText("");
		flagOP.setActive(false);
		otherComp.setText("");
		otherLink.setText("");
	}
	
	private String projectsLocation;
	
	/**
	 * \todo what if projectsLocation is a file
	 */
	public String getProjectsLocation()
	{
		if ( projectsLocation === null )
		{
			projectsLocation = Path.join(Path.getDirName(manager.getFileName()),"Targets");
			if ( !Path.exists(projectsLocation) )
			{
				Path.mkdirs(projectsLocation);
			}
		}
		return projectsLocation;
	}
	
	public String getProjectFileName(String targetName)
	{
		return Path.join(getProjectsLocation(), targetName);
	}
	
	public bit readInstance(String targetName)
	{
		bit ok = true;
		String fileName = getProjectFileName(targetName);
		try
		{
			String t = new String(FileBuffer.read(fileName));
			String key = new String();
			String value;
			clearAll();
			foreach( String parm ; t.splitLines() ) 
			{
				if ( !parm.startsWith('#') )
				{
					int pos = parm.find(':');
					if ( pos > 0 )
					{
						key = new String(parm[0..pos]);
						value = new String(parm[pos+1..parm.length]);
					}
					else
					{
						if ( pos == 0 )
						{
							value = new String(parm[1..parm.length]);
						}
						else
						{
							value = parm.dup;
						}
					}
					switch ( key.toString() )
					{
						case "name": name.setText(value); break;
						case "scopePhobos": scopePhobos.setActive(value=="YES"); break;
						case "scopeDool": scopeDool.setActive(value=="YES"); break;
						case "scopeDUI": scopeDUI.setActive(value=="YES"); break;
						case "scopeOpenGL": scopeOpenGL.setActive(value=="YES"); break;
						case "typeExe": typeExe.setActive(value=="YES"); break;
						case "typeLib": typeLib.setActive(value=="YES"); break;
						case "compiler": compiler.setText(value); break;
						case "outName": outName.setText(value); break;
						case "wrkDir": wrkDir.setText(value); break;
						case "srcDirs": srcDirs.setText(value); break;
						case "objDir": objDir.setText(value); break;
						case "extraImports": extraImports.setText(value); break;
						case "extraLibs": extraLibs.setText(value); break;
						case "flagC": flagC.setActive(value=="YES"); break;
						case "flagD": flagD.setActive(value=="YES"); break;
						case "flagG": flagG.setActive(value=="YES"); break;
						case "flagGT": flagGT.setActive(value=="YES"); break;
						case "flagV": flagV.setActive(value=="YES"); break;
						case "flagDebug": flagDebug.setActive(value=="YES"); break;
						case "flagInline": flagInline.setActive(value=="YES"); break;
						case "flagRelease": flagRelease.setActive(value=="YES"); break;
						case "flagUnittest": flagUnittest.setActive(value=="YES"); break;
						case "versionLevel": versionLevel.setText(value); break;
						case "versionIdent": versionIdent.setText(value); break;
						case "debugLevel": debugLevel.setText(value); break;
						case "debugIdent": debugIdent.setText(value); break;
						case "flagOP": flagOP.setActive(value=="ON"); break;
						case "otherComp": otherComp.setText(value); break;
						case "otherLink": otherLink.setText(value); break;
						default:
							writefln("Invalid parameter ",parm);
							break;
					}
				}
			}
			name.setEditable(false);
			name.setSensitive(false);
		}
		catch ( FileException fe )
		{
			popupMessage(targetName.dup.prepend(
				fileName.dup.prepend("Couldn't read target\n")~"\n"~targetName));
			ok = false;
		}
		return ok;
	}

	public bit deleteInstance(String targetName)
	{
		try
		{
			Path.remove(getProjectFileName(targetName));
			mui.removeTarget(targetName);
		}
		catch ( PathException pe )
		{
			return false;
		}
		return true;
	}
	

	
	public bit writeInstance(String targetName)
	{
		
		bit ok = true;
		if ( name.getEditable() && Path.exists(getProjectFileName(targetName)) )
		{
			popupMessage(targetName~" already exists");
			ok = false;
		}
		else
		{
			OutBuffer buf = new OutBuffer();
			buf.write("#\r\n# DUI compile configuration\r\n#\r\n\r\n");
			
			buf.write("name:"~ name.getText().toString()~"\r\n");
			buf.write("scopePhobos:"~ (scopePhobos.getActive() ? "YES":"NO")~"\r\n");
			buf.write("scopeDool:"~ (scopeDool.getActive() ? "YES":"NO")~"\r\n");
			buf.write("scopeDUI:"~ (scopeDUI.getActive() ? "YES":"NO")~"\r\n");
			buf.write("scopeOpenGL:"~ (scopeOpenGL.getActive() ? "YES":"NO")~"\r\n");
			buf.write("typeExe:"~ (typeExe.getActive() ? "YES":"NO")~"\r\n");
			buf.write("typeLib:"~ (typeLib.getActive() ? "YES":"NO")~"\r\n");
			buf.write("compiler:"~ compiler.getText().toString()~"\r\n");
			buf.write("outName:"~ outName.getText().toString()~"\r\n");
			buf.write("wrkDir:"~ wrkDir.getText().toString()~"\r\n");
			buf.write("srcDirs:"~ srcDirs.getText().toString()~"\r\n");
			buf.write("objDir:"~ objDir.getText().toString()~"\r\n");
			buf.write("extraImports:"~ extraImports.getText().toString()~"\r\n");
			buf.write("extraLibs:"~ extraLibs.getText().toString()~"\r\n");
			buf.write("flagC:"~ (flagC.getActive() ? "YES":"NO")~"\r\n");
			buf.write("flagD:"~ (flagD.getActive() ? "YES":"NO")~"\r\n");
			buf.write("flagG:"~ (flagG.getActive() ? "YES":"NO")~"\r\n");
			buf.write("flagGT:"~ (flagGT.getActive() ? "YES":"NO")~"\r\n");
			buf.write("flagV:"~ (flagV.getActive() ? "YES":"NO")~"\r\n");
			buf.write("flagDebug:"~ (flagDebug.getActive() ? "YES":"NO")~"\r\n");
			buf.write("flagInline:"~ (flagInline.getActive() ? "YES":"NO")~"\r\n");
			buf.write("flagRelease:"~ (flagRelease.getActive() ? "YES":"NO")~"\r\n");
			buf.write("flagUnittest:"~ (flagUnittest.getActive() ? "YES":"NO")~"\r\n");
			buf.write("versionLevel:"~ versionLevel.getText().toString()~"\r\n");
			buf.write("versionIdent:"~ versionIdent.getText().toString()~"\r\n");
			buf.write("debugLevel:"~ debugLevel.getText().toString()~"\r\n");
			buf.write("debugIdent:"~ debugIdent.getText().toString()~"\r\n");
			buf.write("flagOP:"~ (flagOP.getActive() ? "YES":"NO")~"\r\n");
			buf.write("otherComp:"~ otherComp.getText().toString()~"\r\n");
			buf.write("otherLink:"~ otherLink.getText().toString()~"\r\n");
	
			buf.write("\r\n");
			try
			{
				FileBuffer.write(getProjectFileName(targetName), buf);
				name.setEditable(false);
			}
			catch (FileException fe)
			{
				ok = false;
			}
			if ( !ok )
			{
				popupMessage(targetName.dup.prepend("Failed to save "));
			}
		}
		return ok;
	}

}

/**
 * UI to copile DUI programs.
 * - Compiles on a directory basis
 * - Store compilation config by name
 * - Passes options to DMD
 */
class MUI : MainWindow
{
	class ImportEntry : Entry
	{
		this(char[] str)
		{
			this(new String(str));
		}
		this(String str)		
		{
			super();
			setText(str);
			setEditable(false);
		}
	}
	
	class LibsEntry : TextView
	{
		this(char[] str)
		{
			this(new String(str));
		}
		this(String str)		
		{
			super();
			setText(str);
			setEditable(false);
		}
		void setText(char[] str)
		{
			setText(new String(str));
		}
		void setText(String str)
		{
			getBuffer().setText(String.join(str.split(Path.pathsep),"\n") );
		}
		String getText()
		{
			return String.join(getBuffer().getText().splitLines(), Path.pathsep);
		}
		
	}
	
	
	Notebook notebook;
	VBox mainBox;
	ImportEntry importPhobos;
	ImportEntry importDool;
	ImportEntry importDUI;
	ImportEntry importOpenGL;
	LibsEntry libsPhobos;
	LibsEntry libsDool;
	LibsEntry libsDUI;
	LibsEntry libsOpenGL;
	ImportEntry locPhobos;
	ImportEntry locDool;
	ImportEntry locDUI;
	ImportEntry locOpenGL;
	
	Manager manager;
	
	ComboBoxTextEntry targetsCombo;
	DMDCompiler dmdCompiler;
	
	this(Manager manager)
	{
		super("DUI Manager");
		this.manager = manager;
		setup();
	}
	
	
	private ComboBoxText getTargetsCombo()
	{
		if ( targetsCombo === null )
		{
			targetsCombo = new ComboBoxTextEntry();
			targetsCombo.getEntry().setEditable(false);
			targetsCombo.getEntry().setSensitive(false);
			targetsCombo.addOnChanged(&targetChanged);
		}
		return targetsCombo;
	}
	
	private void fillTargetsCombo()
	{

		getTargetsCombo();		
		String targetsDir = Path.join(Path.getDirName(manager.getFileName()),"Targets");
		foreach(String dir ; Path.listDirFiles(targetsDir)) 
		{
			targetsCombo.appendText(dir);
		}
	}
	
	void targetChanged()
	{
		if ( dmdCompiler !== null )
		{
			dmdCompiler.readInstance(targetsCombo.getText());
		}
	}
	
	public void addTarget(String targetName)
	{
		getTargetsCombo().appendText(targetName);
		
	}
	
	public void removeTarget(String targetName)
	{
		int index = getTargetsCombo().getActive();
		getTargetsCombo().removeText(index);
	}
	
	private void setup()
	{
		mainBox = new VBox(0,false);
		notebook = new Notebook();
		
		
		fillTargetsCombo();
		
		importPhobos = new ImportEntry(manager.get("importPhobos"));
		libsPhobos = new LibsEntry(manager.get("libsPhobos"));
		locPhobos = new ImportEntry(manager.get("locPhobos"));
		importPhobos.setTooltip("Phobos library source path","");
		libsPhobos.setTooltip("Phobos library","");
		locPhobos.setTooltip("Phobos library location","");

		importDool = new ImportEntry(manager.get("importDool"));
		libsDool = new LibsEntry(manager.get("libsDool"));
		locDool = new ImportEntry(manager.get("locDool"));
		importDool.setTooltip("dool libraries source path","");
		libsDool.setTooltip("dool libraries","");
		locDool.setTooltip("dool libraries locations","");

		importDUI = new ImportEntry(manager.get("importDUI"));
		libsDUI = new LibsEntry(manager.get("libsDUI"));
		locDUI = new ImportEntry(manager.get("locDUI"));
		importDUI.setTooltip("DUI libraries source path","");
		libsDUI.setTooltip("DUI libraries","");
		locDUI.setTooltip("DUI libraries locations","");

		importOpenGL = new ImportEntry(manager.get("importOpenGL"));
		libsOpenGL = new LibsEntry(manager.get("libsOpenGL"));
		locOpenGL = new ImportEntry(manager.get("locOpenGL"));
		importOpenGL.setTooltip("OpenGL libraries source path","");
		libsOpenGL.setTooltip("OpenGL libraries","");
		locOpenGL.setTooltip("OpenGL libraries locations","");

		Notebook libsBook = new Notebook();
		libsBook.setTabPos(PositionType.LEFT);
		
		VBox libsBox = new VBox(0, false);
		libsBox.packStart(importPhobos, false, false, 2);
		libsBox.packStart(libsPhobos, true, true, 2);
		libsBox.packStart(locPhobos, false, false, 2);
		libsBook.appendPage(libsBox, "Phobos");
		
		libsBox = new VBox(0, false);
		libsBox.packStart(importDool, false, false, 2);
		libsBox.packStart(libsDool, true, true, 2);
		libsBox.packStart(locDool, false, false, 2);
		libsBook.appendPage(libsBox, "dool");
		
		libsBox = new VBox(0, false);
		libsBox.packStart(importDUI, false, false, 2);
		libsBox.packStart(libsDUI, true, true, 2);
		libsBox.packStart(locDUI, false, false, 2);
		libsBook.appendPage(libsBox, "DUI");

		libsBox = new VBox(0, false);
		libsBox.packStart(importOpenGL, false, false, 2);
		libsBox.packStart(libsOpenGL, true, true, 2);
		libsBox.packStart(locOpenGL, false, false, 2);
		libsBook.appendPage(libsBox, "OpenGL");
		


		// targets		
		VBox compBox = new VBox(0, false);
		dmdCompiler = new DMDCompiler(manager, this);
		
		HBox hbox = new HBox(0, false);
		
		hbox.packStart(new Label("Select project"), false, false, 2);
		hbox.packStart(targetsCombo, false, true, 2);
		Alignment a = new Alignment(0.5, 0.5, 0, 0);
		a.add(hbox);
		compBox.packStart(a, false, true, 0);
		
		compBox.packStart(new HSeparator(), false, true, 0);

		compBox.packStart(dmdCompiler.getMainWidget(), true, true, 0);
		notebook.appendPage(compBox, "Projects");

		// libs
		VBox vbox = new VBox(0,false);
		vbox.packStart(new Label("common libs for the DMD command line") , false, false,0 );
		vbox.packStart(libsBook, true, true, 0);
		notebook.appendPage(vbox, "Common libs");


		mainBox.packStart(notebook,true, true, 0);

		HButtonBox bb = HButtonBox.createActionBox();
		Button cancel = new Button("Cancel", &cancelAction);
		bb.packStart(cancel, false, false, 7);
		mainBox.packStart(bb, false, false, 0);
		
		add(mainBox);
	}

	private void cancelAction()
	{
		DUI.dui.stop();
	}


}

version(StandAlone)
{
	int main(char[][] args)
	{
		Manager manager = new Manager();
		manager.showUI(args);
		return 0;
	}
}