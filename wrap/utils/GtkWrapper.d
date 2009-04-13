/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module utils.GtkWrapper;

//debug=copyFile;
//debug=wrapFile;
//debug=wrapParameter;
//debug=createPackage;
//debug=aliases;
//debug=lookup;
//debug=file;
//debug=writeFile;

struct WError
{
    private import std.stdio;

    int lineNumber;
    int code;
    char[] message;


    static WError* create(int lineNumber, int code, char[] message)
    {
        WError* error = new WError;
        error.lineNumber = lineNumber;
        error.code = code;
        error.message = message;
        return error;
    }

    void print ()
    {
        writefln("(line %s, code %s: %s)", lineNumber, code, message);
    }
}


private import utils.WrapperIF;
private import utils.HTODConvert;


/*
Paths:
  outputRoot: Where all the wrapper files go.
  srcDir: Wrapper files subdir (src vs srcgl)
  inputRoot: Where the html files are
  apiRoot: Where the API files are

  buildDir: Where the build files go.
  bindingsDir: Where the C Bindings files go.

*/

char[] joinRootDirFile(char[] root,char[] dir, char[]file)
{
  return std.path.join(std.path.join(root,dir),file);
}

//Moved here because of dsss:
private import utils.DefReader;
private import utils.GtkDClass;
private import utils.convparms;

/**
 * converts and wrap the GTK libs
 */
public class GtkWrapper : WrapperIF
{
    private import std.file;
    private import std.path;
    private import std.stdio;
	private import std.string;

    private char[] buildText;   /// to build the build.d
    private char[] buildTextLibs;   /// to build the build.d libs

    char[] srcOut = "src";      /// the src output directory
    char[] srcDir;
    char[] apiRoot;
    char[] inputRoot;
    char[] outputRoot;
    char[] buildDir = "build";
    char[] buildPath;
    char[] buildFile =  "gtkD.d";
    char[] bindingsDir;

    public static char[] license =
"/*"
"\n * This file is part of gtkD."
"\n * "
"\n * gtkD is free software; you can redistribute it and/or modify"
"\n * it under the terms of the GNU Lesser General Public License as published by"
"\n * the Free Software Foundation; either version 2.1 of the License, or"
"\n * (at your option) any later version."
"\n * "
"\n * gtkD is distributed in the hope that it will be useful,"
"\n * but WITHOUT ANY WARRANTY; without even the implied warranty of"
"\n * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the"
"\n * GNU Lesser General Public License for more details."
"\n * "
"\n * You should have received a copy of the GNU Lesser General Public License"
"\n * along with gtkD; if not, write to the Free Software"
"\n * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA"
"\n */"
"\n"
"\n// generated automatically - do not change"
"\n"
"\n"
;

    private bool currIncludeComments;

    enum {

        ERR_NONE = 1000,
        ERR_UNKNOWNE,
        ERR_NO_LICENSE,
        ERR_INVALID_ALIAS,
        ERR_NO_IN_ROOT,
        ERR_NO_OUT_ROOT,
        ERR_COPY_FILE,
        ERR_FILE_DEFINITION,
        ERR_CREATE_PACKAGE,
    }

    char[][char[]] aliases;

    char[][char[]] enumTypes;

    DefReader defReader;


    char[][char[]] packages;

    WError*[] errors;

    private char[][] externalDeclarations;  /// the information to build the loader tables

    private char[][] collectedAliases;  /// public, module level type aliases
    private char[][] collectedEnums;    /// public, module level definitions of enums
    private char[][] stockEnums;        /// special enums for StockID
    private char[][] stockChars;        /// the char[] values for StockIDs
    private char[][] gTypes;            /// special enums for G_TYPE_*
    private char[][] collectedStructs;  /// public, module level definitions of structs
    private char[][] collectedTypes;    /// public, module level definitions of other types
    private char[][] collectedFuncts;   /// public, module level definitions of functions
    private char[][] collectedUnions;   /// public, module level definitions of unions
    private char[][] collectedConstants;/// public, module level type contants

    private char[][] lookupTypedefs;    /// lookup file definitions to be included on the typedefs.d
    private char[][] lookupAliases;     /// lookup file aliases definitions
    private char[][] lookupEnums;       /// lookup file enum definitions
    private char[][] lookupStructs;     /// lookup file struct definitions
    private char[][] lookupTypes;       /// lookup file type definitions
    private char[][] lookupFuncts;      /// lookup file functs definitions
    private char[][] lookupUnions;      /// lookup file unions definitions
    private char[][] lookupConstants;   /// lookup file constants definitions

    DefReader[] defReaders;

    this(char[] apiRoot)
    {
        this.apiRoot = apiRoot;
        //srcOut = "src";
        //if (!std.file.exists(std.path.join(outputRoot,srcOut)))
        //{
        //  std.file.mkdir(std.path.join(outputRoot,srcOut));
        //}
        
    }


    private void startBuildText()
    {
        buildText =
              "/*"
            "\n * Automatically generated build imports from"
            "\n * the initial version generouselly given by:"
            "\n * John Reimer"
            "\n */"
            "\n"
            "\nmodule build;"
            "\n"
            "\nversion( build )"
            "\n{"
            "\n pragma (nolink);"
            "\n"
            "\n version (Windows)     pragma (target, \"GtkD.lib\"  );"
            "\n version (linux)   pragma (target, \"libgtkd.a\" );"
            "\n}"
            "\n"
            ;

        buildTextLibs.length = 0;

    }

    public void writeBuildText()
    {
	    char[] outfile;

        buildPath = std.path.join(std.path.join(outputRoot,srcDir),buildDir);
        if (!std.file.exists(buildPath))
        {
            std.file.mkdir(buildPath);

    	}
        outfile = std.path.join(buildPath,buildFile);
        writefln("writeBuildText: %s",outfile);

        std.file.write(outfile, buildText~"\n\n"~buildTextLibs);
    }

    int process(char[] apiLookupDefinition)
    {

        startBuildText();

        int status = ERR_NONE;
        defReader = new DefReader(std.path.join(apiRoot,apiLookupDefinition));

        if ( status==ERR_NONE && "license" == defReader.next() )
        {
            loadLicense();
        }
        else
        {
            status = ERR_NO_LICENSE;
            errors ~= WError.create(defReader.getLineNumber(), status, "Missing license as the first definition");
        }

        if ( "includeComments" == defReader.next() )
        {
            currIncludeComments = defReader.getValueBit();
            defReader.next();
        }

        debug(aliases) writefln("key before alias = ",defReader.getKey());
        while ( "alias" == defReader.getKey() )
        {
            status = loadAA(aliases, defReader, errors);
            defReader.next();
        }

        while ( "enumType" == defReader.getKey() )
        {
            status = loadAA(enumTypes, defReader, errors);
            defReader.next();
        }

        debug(aliases) writefln("key after alias = ",defReader.getKey());

        debug(aliases) foreach(char[] key ; aliases.keys.sort)
                        {
                            writefln("alias %s = %s",key, aliases[key]);
                        }
        if ( status==ERR_NONE && "inputRoot" == defReader.getKey() )
        {
            inputRoot = defReader.getValue();
        }
        else
        {
            status = ERR_NO_IN_ROOT;
            errors ~= WError.create(defReader.getLineNumber(), status, "Cannot determine input root");
        }

        if ( status==ERR_NONE && "outputRoot" == defReader.next() )
        {
            outputRoot = defReader.getValue();
        }
        else
        {
            status = ERR_NO_OUT_ROOT;
            errors ~= WError.create(defReader.getLineNumber(), status, "Cannot determine output root");
        }

        char[] key = defReader.next();

        while ( status==ERR_NONE && ( "srcdir" ==  key ))
        {
            srcDir = defReader.getValue();
            char[] chkdir = std.path.join(outputRoot,srcDir);
            if (!std.file.exists(chkdir))
            {
              std.file.mkdir(chkdir);
            }
            key = defReader.next();
            while ( status==ERR_NONE && ( "package" ==  key || "bind" == key ))
            {

                status = createPackage(outputRoot, defReader.getValue());
                key = defReader.next();
            }
        }



        if ( status==ERR_NONE )
        {
            char[] pack;
            char[] outPack;
            char[] prevPack;
            while ( status==ERR_NONE && defReader !is null
                    //&& ("wrap" == defReader.getKey() || "lookup" == defReader.getKey())
                  )
            {
                debug(lookup)writefln("(%s) %s=%s", defReader.getFileName(), defReader.getKey(), defReader.getValue() );
                switch ( defReader.getKey() )
                {
                    case "addTypedefs": lookupTypedefs ~= loadTextMultiLine("addTypedefs"); defReader.next();break;
                    case "addAliases": lookupAliases ~= loadTextMultiLine("addAliases"); defReader.next();break;
                    case "addEnums": lookupEnums ~= loadTextMultiLine("addEnums"); defReader.next();break;
                    case "addStructs": lookupStructs ~= loadTextMultiLine("addStructs"); defReader.next();break;
                    case "addTypes": lookupTypes ~= loadTextMultiLine("addTypes"); defReader.next();break;
                    case "addFuncts": lookupFuncts ~= loadTextMultiLine("addFuncts"); defReader.next();break;
                    case "addUnions": lookupUnions ~= loadTextMultiLine("addUnions"); defReader.next();break;
                    case "addConstants": lookupConstants ~= loadTextMultiLine("addConstants"); defReader.next();break;
                    case "srcout": srcOut =
			    defReader.getValue();defReader.next(); break;
		    case "srcdir": srcDir = defReader.getValue();
		    defReader.next();
                    case "bindDir": bindingsDir = defReader.getValue();
		    defReader.next();break;
                    case "wrap":
                            //package = key packagename
                            //        = pack outpack
                        pack = defReader.getValue();
                    	
                        outPack = packages[pack];
                        debug(lookup)writefln("wrap %s", outPack);
                        if ( outPack !is null )
                        {
                            buildText ~= "\n";
                            if ( outPack != "lib" )
                            {
                                buildTextLibs ~= "private import "~bindingsDir~"."~outPack~";\n";
                            }
                            status = wrapFile(pack, outPack);
                        }
                        if ( prevPack.length>0 && outPack!=prevPack )
                        {
                            buildTypedefs(outPack);
                            buildLoaderTable(outPack, externalDeclarations);
                            externalDeclarations.length = 0;
                        }
                        prevPack = outPack.dup;
                        break;

                    case "lookup":
                        defReaders ~= defReader;
                        defReader = new DefReader(std.path.join(apiRoot,defReader.getValue()));
                        defReader.next();
                        debug(lookup)writefln("lookup on file %s (%s=%s)", defReader.getFileName(), defReader.getKey(), defReader.getValue() );
                        break;

                    case "htod":
                        // not as clean as lookup...
                        // WARNING!!! writefln's are needed to avoid hang.
                        writefln("start htod");
                        new
				HTODConvert(defReader.getValue(),outputRoot,apiRoot);
                        writefln("end htod");
                        defReader.next();
                        break;

                    default:
                        if ( defReader.getKey().length == 0 )
                        {
                            if ( defReaders.length > 0 )
                            {
                                defReader = defReaders[defReaders.length-1];
                                defReaders.length = defReaders.length -1;
                                debug(lookup)writefln("lookup back to %s (%s=%s)", defReader.getFileName(), defReader.getKey(), defReader.getValue() );
                                defReader.next();
                                debug(lookup)writefln("lookup next == %s (%s=%s)", defReader.getFileName(), defReader.getKey(), defReader.getValue() );
                            }
                            else
                            {
                                defReader = null;
                            }
                        }
                        break;
                }
                debug(lookup)if(defReader!is null)writefln("loop (%s) %s=%s", defReader.getFileName(), defReader.getKey(), defReader.getValue() );
            }
        }
        else
        {
            //writefln("status = %s",status);
        }

        return status;
    }

    /**
     * Creates an entry on a char[][char[]] associative array
     * Params:
     *      aa =
     *      defReader =
     * Returns:
     */
    private static int loadAA(inout char[][char[]] aa, DefReader defReader, inout WError*[] errors = null)
    {
        int status = ERR_NONE;
        char[][] vals = std.string.split(defReader.getValue());
        if ( vals.length == 1 )
        {
            vals ~= "";
        }
        if ( vals.length == 2 )
        {
            aa[vals[0]] = vals[1];
            debug(aa) writefln("added alias %s = %s", vals[0], vals[1]);
        }
        else
        {
            status = ERR_INVALID_ALIAS;
            if ( errors !is null )
            {
                errors ~= WError.create(defReader.getLineNumber(), status, "Invalid alias");
            }
        }
        return status;
    }

    /**
     * Creates an entry on a char[][][char[]] associative array
     * Params:
     *      aa =
     *      defReader =
     * Returns:
     */
    private static int loadAA(inout char[][][char[]] aa, DefReader defReader, inout WError*[] errors = null)
    {
        int status = ERR_NONE;
        char[][] vals = std.string.split(defReader.getValue());
        if ( vals.length == 1 )
        {
            vals ~= "";
        }
        if ( vals.length == 2 )
        {
            aa[vals[0]] ~= vals[1];
            debug(aa) writefln("added alias %s = %s", vals[0], vals[1]);
        }
        else
        {
            status = ERR_INVALID_ALIAS;
            if ( errors !is null )
            {
                errors ~= WError.create(defReader.getLineNumber(), status, "Invalid alias");
            }
        }
		return status;
    }

/**
     * Creates an entry on a char[][][char[]] associative array
     * Params:
     *      aa =
     *      defReader =
     * Returns:
     */
    private static int loadAAA(inout char[][char[]][char[]] aa, DefReader defReader, inout WError*[] errors = null)
    {
        int status = ERR_NONE;
        char[][] vals = std.string.split(defReader.getValue());
        if ( vals.length == 1 )
        {
            vals ~= "";
        }
		if ( vals.length == 2 )
		{
			vals ~= "";
		}
        if ( vals.length == 3 )
        {
            aa[vals[0]][vals[1]] ~= vals[2];
            debug(aa) writefln("added alias [%s][%s] = %s", vals[0], vals[1], vals[2]);
        }
        else
        {
            status = ERR_INVALID_ALIAS;
            if ( errors !is null )
            {
                errors ~= WError.create(defReader.getLineNumber(), status, "Invalid alias");
            }
        }
		return status;
    }

    private char[] loadLicense()
    {
        license = loadText("license");
        return license;
    }

    private char[] loadText(char[] key)
    {
        char[] text;

        while ( key!=defReader.next(false) && "end"!=defReader.getValue() )
        {
            if ( text.length > 0 )
            {
                text ~= "\n" ~ defReader.getFullLine();
            }
            else
            {
                text ~= defReader.getFullLine();
            }
        }

        return text;
    }

    private char[][] loadTextMultiLine(char[] key)
    {
        char[][] text;

        while ( key!=defReader.next(false) && "end"!=defReader.getValue() )
        {
            text ~= defReader.getFullLine();
        }

        return text;
    }

    private int copyFile(char[] fromDir, char[] toDir, char[] fileName)
    {
        debug(writeFile)writefln("GtkWrapper.copyFile %s", fileName);
        int status = ERR_NONE;
        debug(file)writefln("(1)GtkWrapper.copyFile %s %s", fromDir, fileName);
        void[] text = std.file.read(std.path.join(fromDir, fileName));
        try
        {
            //debug(copyFile)
            writefln("copying file [%s] to [%s]", std.path.join(fromDir, fileName), std.path.join(toDir, fileName));
            if (!std.file.exists(toDir))
        {
            std.file.mkdir(toDir);
        }
            std.file.write(std.path.join(toDir, fileName), text);
        }
        catch ( Exception e)
        {
            status = ERR_COPY_FILE;
            errors ~= WError.create(defReader.getLineNumber(), status, "Cannot copy  file "~fileName);
        }

        writefln("Wrappde %s", fileName);

        return status;
    }

    private int wrapFile(char[] pack, char[] outPack)
    {
        debug(file)writefln("GtkWrapper.wrapFile pack=%s outPack=%s", pack, outPack);
        int status = ERR_NONE;

        GtkDClass gtkDClass;

        ConvParms* convParms = new ConvParms;

        char[] text;

        char[] key = defReader.next();

        char[] keys = " file text struct realStruct ctorStruct class template interface extend implements prefix strictPrefix"
                      " openFile mergeFile closeFile outFile"
                      " copy import import(tango) structWrap alias moduleAlias override"
                      " noprefix nostruct nocode nosignal"
                      " code interfaceCode"
                      " srcout out inout array"
                      ;
        if (outPack == "lib") {char[] tmp = pack.dup; pack = outPack.dup; outPack = tmp;} //undo Bind hack...oupPack now holds bind dir.
        convParms.outPack = outPack;
        convParms.bindDir = bindingsDir;

        while ( std.string.find(keys, key) > 0 )
        {
            debug(wrapParameter)writefln("wrapFile [%s] = %s", key, defReader.getValue());
            switch ( key )
            {
                case "copy": status = copyFile(apiRoot,std.path.join(srcOut,outPack),defReader.getValue());
                    buildTextLibs ~= "private import " ~outPack~ "." ~defReader.getValue()~ ";\n";
                    break;
                case "srcout": srcOut = defReader.getValue(); break;
                case "struct": convParms.strct = defReader.getValue(); break;
                case "realStruct": convParms.realStrct = defReader.getValue(); break;
                case "ctorStruct": convParms.ctorStrct = defReader.getValue(); break;
                case "class": convParms.clss = defReader.getValue(); break;
                case "extend": convParms.extend = defReader.getValue(); break;
                case "implements": convParms.impl ~= defReader.getValue(); break;
                case "template": convParms.templ ~= defReader.getValue(); break;
                case "prefix": convParms.prefixes ~= defReader.getValue(); break;
                case "strictPrefix": convParms.strictPrefix = defReader.getValueBit(); break;
                case "noprefix": convParms.noPrefixes ~= defReader.getValue(); break;
                case "nocode": convParms.noCode ~= defReader.getValue(); break;
                case "nosignal": convParms.noSignals ~= defReader.getValue(); break;
                case "nostruct": convParms.noStructs ~= defReader.getValue(); break;
                case "import": convParms.imprts ~= defReader.getValue(); break;
                case "import(tango)": /*ignore for now*/defReader.getValue(); break;
                case "structWrap": loadAA(convParms.structWrap, defReader, errors); break;
                case "alias": loadAA(convParms.aliases, defReader, errors); break;
                case "moduleAlias": loadAA(convParms.mAliases, defReader, errors); break;
                case "override": convParms.overrides ~= defReader.getValue(); break;
				case "out": loadAA(convParms.outParms, defReader, errors); break;
				case "inout": loadAA(convParms.inoutParms, defReader, errors); break;
				case "array": loadAAA(convParms.array, defReader, errors); break;
                case "text":
                    convParms.text ~= loadTextMultiLine("text");
                    break;
                case "code":
                    convParms.classCode ~= loadText("code");
                    break;
                case "interfaceCode":
                    convParms.interfaceCode ~= loadText("interfaceCode");
                    break;

                case "openFile":
                    gtkDClass = openFile(outPack, text, convParms);
                    text.length = 0;
                    break;
                case "mergeFile":
                    gtkDClass.mergeGtkDClass(text, convParms);
                    text.length = 0;
                    break;
                case "closeFile":
                    closeFile(text, gtkDClass, convParms);
                    text.length = 0;
                    break;
                case "interface":
                    convParms.interf = defReader.getValue();
                    char[] saveClass = convParms.clss.dup;
                    char[][] saveTempl = convParms.templ.dup;
                    convParms.templ.length = 0;
                    convParms.outFile = convParms.interf;
                    convParms.isInterface = true;
                    buildText ~= "\nprivate import "
                            ~convParms.outPack~"."
                            ~defReader.getValue()~";";
                    outFile(outPack, text, convParms);
                    convParms.clss = saveClass;
                    convParms.templ = saveTempl;
                    // mark not interface (anymore)
                    convParms.isInterface = false;
                    // as outFile is always the last definition
                    // there is no need to restore it
                    break;
                case "outFile":
                    buildText ~= "\nprivate import "
                            ~convParms.outPack~"."
                            ~defReader.getValue()~";";
                    outFile(outPack, text, convParms);
                    break;
                case "file":
                    convParms.inFile = std.string.strip(defReader.getValue());
                    if ( convParms.inFile.length > 0 )
                    {
                        if ( GtkDClass.startsWith(convParms.inFile,"/") )
                        {
                            debug(file)writefln("GtkWrapper.wrapFile convParms:\n%s", convParms.toString());
                            debug(file)writefln("GtkWrapper.wrapFile convParms:\n%s", defReader.toString());
                            debug(file)writefln("(2)GtkWrapper.wrapFile %s", convParms.inFile);
                            text = cast(char[]) std.file.read(convParms.inFile);
                        }
                        else
                        {
                            debug(file)writefln("(3)GtkWrapper.wrapFile %s", convParms.inFile);
                            text = cast(char[]) std.file.read(std.path.join(std.path.join(inputRoot,pack),convParms.inFile));
                        }
                    }
                    else
                    {
                        text.length = 0;
                    }
                    break;
                default:
                    status = ERR_FILE_DEFINITION;
                    errors ~= WError.create(defReader.getLineNumber(), status, "Invalid file definition");
                    break;
            }
            key = defReader.next();
        }

        return status;
    }

    /**
     * Opens, reads and closes a file
     * Params:
     *      outPack =
     *      text =
     *      convParms =
     */
    private void outFile(char[] outPack, char[] text, ConvParms* convParms)
    {
        GtkDClass gtkDClass = openFile(outPack, text, convParms);
        closeFile("", gtkDClass, convParms);
    }

    /**
     * Opens and reads a file
     * Params:
     *      outPack =
     *      text =
     *      convParms =
     * Returns:
     */
    private GtkDClass openFile(char[] outPack, char[] text, ConvParms* convParms)
    {
        convParms.outFile = defReader.getValue();
        debug(wrapFile)writefln("######### gtkDClass for %s.%s (%s)
			bound at %s", outPack, convParms.clss,
			convParms.outFile,convParms.bindDir);
        GtkDClass gtkDClass = new GtkDClass(this);
		convParms.bindDir = bindingsDir;
        gtkDClass.openGtkDClass(text, convParms);

        return gtkDClass;
    }

    private void closeFile(char[] text, GtkDClass gtkDClass, ConvParms* convParms)
    {
        debug(writeFile)writefln("GtkWrapper.closeFile %s",
			gtkDClass.getOutFile(outputRoot, srcDir));
        char[] gtkDText = gtkDClass.closeGtkDClass(text, convParms);
        char[] writeDir = std.path.join(outputRoot, srcDir);
        if ( gtkDClass.getError() == 0 )
        {
            if (!std.file.exists(writeDir))
            {
              std.file.mkdir(writeDir);
            }
            std.file.write(gtkDClass.getOutFile(outputRoot,srcDir),gtkDText);
        }
		writefln("gtk Wrapped %s", gtkDClass.getOutFile(outputRoot, srcDir));
        if ( !convParms.isInterface )
        {
            convParms.clearAll();
        }

        externalDeclarations ~= gtkDClass.getExternalDeclarations();
        collectedAliases ~= gtkDClass.getAliases();
        collectedEnums ~=   gtkDClass.getEnums();
        collectedFuncts ~=  gtkDClass.getFuncts();
        collectedStructs ~= gtkDClass.getStructs();
        collectedTypes ~=   gtkDClass.getTypes();
        collectedUnions ~=  gtkDClass.getUnions();
        collectedConstants ~=   gtkDClass.getConstants();
        stockEnums ~= gtkDClass.getStockEnums();
        stockChars ~= gtkDClass.getStockChars();
        gTypes ~= gtkDClass.getGTypes();
    }

    /**
     * Assumes input and output packages contains no spaces and are separated by a space
     * Params:
     *      outputRoot =
     *      pack =
     * Returns:
     */
    private int createPackage(char[] outputRoot, char[] packagevalue)
    {
        int status = ERR_NONE;

        char[][] packages = std.string.split(packagevalue, " ");
	char[] packageDir;

        if ( packages.length == 1 && "bind" == defReader.getKey() )
        {
            packages ~="lib";
	    packageDir = packages[0];
        }
        else if ( packages.length == 2 && "package" == defReader.getKey() )
        {
	    packageDir = packages[1];
            // nothing here
        }
        else
        {
            status = ERR_CREATE_PACKAGE;
        }

        if ( status==ERR_NONE )
        {
            debug(createPackage)writefln("adding (%s) %s %s", defReader.getKey(), packages[0], packages[1]);
            this.packages[packages[0]] = packages[1];
            try
            {
                std.file.mkdir(joinRootDirFile(outputRoot,srcDir,packageDir));
            }
            catch ( Exception e)
            {
                //status = 4;
                //errors ~= WError.create(defReader.getLineNumber(), status, "Cannot create src package: "~pack);
            }
            try
            {
                std.file.mkdir(joinRootDirFile(outputRoot,"obj",
					packageDir));
            }
            catch ( Exception e)
            {
                //status = 5;
                //errors ~= WError.create(defReader.getLineNumber(), status, "Cannot create obj package: "~pack);
            }
        }

        if ( status != ERR_NONE )
        {
            errors ~= WError.create(defReader.getLineNumber(), status,
                        "Invalid package/src definition (need in and out packages or lib name): "~packagevalue);
        }

        return status;
    }

    public void printErrors()
    {
        writefln("printing %s errors", errors.length);
        foreach ( WError* error ; errors)
        {
            error.print();
        }
    }

    public char[] getLicense()
    {
        return license;
    }

    public char[][char[]] getAliases()
    {
        return aliases;
    }

    public char[][char[]] getEnumTypes()
    {
        return enumTypes;
    }

    public bool includeComments()
    {
        return currIncludeComments;
    }

	void buildLoaderTable(char[] loaderTableName, char[][] declarations)
	{
		char[] externalText = license;

		externalText ~= "\nmodule "~bindingsDir~"."~loaderTableName~";\n"
		                "\nversion(Tango)"
		                "\n	private import tango.stdc.stdio;"
		                "\nelse"
		                "\n	private import std.stdio;\n"
		                "\nprivate import "~bindingsDir~"." ~loaderTableName~"types;";

		if ( loaderTableName == "glib" )
		{
			externalText ~= "\nprivate import "~bindingsDir~".gthreadtypes;";
		}
		if ( loaderTableName == "gdk" || loaderTableName == "pango" )
		{
			externalText ~= "\nprivate import "~bindingsDir~".cairotypes;";
		}

		if ( loaderTableName != "gl" &&
		     loaderTableName != "glu" &&
		     loaderTableName != "glx"
		    )
		{
			externalText ~= "\nprivate import gtkc.Loader;"
			                "\nprivate import gtkc.paths;\n"
			                "\nstatic this()"
			                "\n{";

			char[] library = "LIBRARY."~ loaderTableName.toupper();

			//Returns an array of libraries to try and link with.
			char[] getLibrary(char[] funct)
			{
				if ( GtkDClass.startsWith(funct, "gdk") )
					return library ~ ", LIBRARY.GDKPIXBUF";
				else if	( GtkDClass.startsWith(funct, "pango_cairo") )
					return library ~ ", LIBRARY.PANGOCAIRO";
				else if	( GtkDClass.startsWith(funct, "g_module") )
					return library ~ ", LIBRARY.GMODULE";
				else
					return library;
			}

			//Generate the static this, where the linking takes place
			foreach ( char[] declaration; declarations )
			{
				char[] dec = std.string.strip(declaration);
				int pos = std.string.rfind(dec,')');

				if ( GtkDClass.startsWith(dec, "//") )
					externalText ~= "\n\t"~ dec ~"\n\n";

				if ( pos > 0 )
				{
					externalText ~= '\t';

					if ( dec[0]=='#' )
					{
						externalText ~= "// ";
					}
					else
					{
						char[] functName = std.string.strip(dec[pos+1..$]);
						if ( functName.length > 0 )
						{
							externalText ~= "Linker.link("~ functName ~", \""~ functName ~"\", "~ getLibrary(functName) ~");";
						}
					}
					externalText ~= '\n';
				}
			}

			externalText ~= "}\n\n"
			                "extern(C)\n"
			                "{\n";

			//Generate the functions.
			foreach(char[] declaration ; declarations)
			{
				char[] dec = std.string.strip(declaration);

				int pos = std.string.rfind(dec,')') + 1;
				externalText ~= '\t';

				if ( dec.length > 0 && dec[0]=='#' )
					externalText ~= "// ";

				if ( dec.length > 0 && !GtkDClass.startsWith(dec, "//") && dec[0]!='#' )
					externalText ~= dec[0..pos] ~" c_"~ dec[pos..$] ~';';
				else
					externalText ~= dec;

				externalText ~= '\n';
			}

			externalText ~= "}\n";

			//Generate the aliases.
			foreach ( char[] declaration; declarations )
			{
				char[] dec = std.string.strip(declaration);
				int pos = std.string.rfind(dec,')');

				if ( GtkDClass.startsWith(dec, "//") )
					externalText ~= '\n'~ dec ~"\n\n";

				if ( pos > 0 )
				{
					if ( dec[0]=='#' )
					{
						externalText ~= "// ";
					}
					else
					{
						char[] functName = std.string.strip(dec[pos+1..$]);
						if ( functName.length > 0 )
						{
							externalText ~= "alias c_"~ functName ~"  "~ functName ~";";
						}
					}
					externalText ~= '\n';
				}
			}
		}

		char[] pathname = joinRootDirFile(std.path.join(outputRoot,srcDir),bindingsDir,loaderTableName~".d");
		std.file.write(pathname,externalText);
	}

    void buildTypedefs(char[] outPack)
    {

        char[] def = license;
        def ~= "module "~bindingsDir~"."~outPack~"types;\n\n";

        char[] tabs = "";

        GtkDClass.append(def, lookupTypedefs, tabs);



        if ( gTypes.length > 0 )
        {
            def ~= "\n\n// G_TYPE_*";
            def ~= "\nenum GType";
            def ~= "\n{\n";
            tabs ~= "\t";
            GtkDClass.append(def, gTypes, tabs);
            tabs = "";
            def ~= "\n}\n\n";
        }
        tabs = "";

        GtkDClass.append(def, lookupConstants, tabs);

        GtkDClass.append(def, lookupAliases, tabs);
        GtkDClass.append(def, collectedAliases, tabs);
        tabs = "";

        GtkDClass.append(def, lookupEnums, tabs);
        GtkDClass.append(def, collectedEnums, tabs);
        tabs = "";

        GtkDClass.append(def, lookupStructs, tabs);
        GtkDClass.append(def, collectedStructs, tabs);
        tabs = "";

        GtkDClass.append(def, lookupTypes, tabs);
        GtkDClass.append(def, collectedTypes, tabs);
        tabs = "";

        GtkDClass.append(def, lookupFuncts, tabs);
        GtkDClass.append(def, collectedFuncts, tabs);
        tabs = "";

        GtkDClass.append(def, lookupUnions, tabs);
        GtkDClass.append(def, collectedUnions, tabs);
        tabs = "";

        if ( stockEnums.length > 0 )
        {
            def ~= "\n\n// StockIDs";
            def ~= "\nenum StockID";
            def ~= "\n{\n";
            tabs ~= "\t";
            GtkDClass.append(def, stockEnums, tabs);
            tabs = "";
            def ~= "\n}";
            def ~= "\n\n// Stock strings";
            def ~= "\nstring[] StockDesc = ";
            def ~= "\n[";
            tabs ~= "\t";
            GtkDClass.append(def, stockChars, tabs);
            tabs = "";
            def ~= "\n];";
        }
        GtkDClass.append(def, collectedConstants, tabs);
        tabs = "";

        char[] pathname =
		joinRootDirFile(std.path.join(outputRoot,srcDir), bindingsDir, outPack~"types.d");
        std.file.write(pathname,def);

        lookupTypedefs.length = 0;
        lookupAliases.length = 0;
        lookupEnums.length = 0;
        lookupStructs.length = 0;
        lookupTypes.length = 0;
        lookupFuncts.length = 0;
        lookupUnions.length = 0;
        lookupConstants.length = 0;

        collectedAliases.length = 0;
        collectedEnums.length = 0;
        collectedStructs.length = 0;
        collectedTypes.length = 0;
        collectedFuncts.length = 0;
        collectedUnions.length = 0;
        collectedConstants.length = 0;

        stockEnums.length = 0;
        stockChars.length = 0;
        gTypes.length = 0;

    }

}

int main()
{
    GtkWrapper wrapper = new GtkWrapper("./"); //Run gtkwrapper from the project directory... Make this a config option later.
    int status = wrapper.process("APILookup.txt");
    wrapper.printErrors();
    if ( wrapper.errors.length == 0 )
    {
        wrapper.writeBuildText();
    }
    return status;
}
