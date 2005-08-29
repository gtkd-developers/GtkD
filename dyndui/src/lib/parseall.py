# Python script for parsing a DUI D file to build dynamically callable
# function list.  This script adds to the functionality of parse.py.
# In this case all files in the current directory are parsed and ouput
# to a single file
#
# To run type: python parseall.py
#
# 2005-02-21: John J. Reimer  -- updated
# 2005-05-18  JJR - updated instructions
# 
# In order to reduce code complexity, the following assumptions
# are made by this script:
#
#    1) Comments embedded in comments do not exist
#    2) All comments start on a line containing no non-comments
#    3) All comments end on a line containing no non-comments
#    4) Only extern(...) {} style externs are used in code
#    5) extern(...) braces start either at the end of a line or
#       on its own line
#    6) All symbols to be parsed reside within the first brace level
#       within extern(...).  Braces encompassing greater depth
#	    are ignored.

import sys, os, re

patCommentSlash = re.compile(r'\s*//')
patCommentStartAst = re.compile(r'/\*')
patCommentEndAst = re.compile(r"\*/")
patCommentStartPlus = re.compile(r'/\+')
patCommentEndPlus = re.compile(r'\+/')
patExternC = re.compile(r'[ \t]*extern[ \t]*\((C)\)')
patExternW = re.compile(r'[ \t]*extern[ \t]*\((Windows)\)')

patAlias = re.compile(r'[ \t]*alias[ \t]*')
patTypedef = re.compile(r'[ \t]*typedef[ \t]*')
patCast = re.compile(r'[ \t]*cast[ \t]*\(')
patReturnType = re.compile(r'[ \t]*([a-zA-Z_]+\w*)[ \t]*(\**)')
patFunctionName = re.compile(r'([a-zA-Z_]+\w*[ \t]*)\(')
patFunctionArg1 = re.compile(r'\((.*)\)')
patFunctionArg2 = re.compile(r'\(([ \t]*[a-zA-Z_]*\w*[ \t]*\**[ \t]*\,?)*\)')

sourceList = []

lines = 0
externC_state = False
externW_state = False
externC_state_final = False
externW_state_final = False
single_line_extern = False
brace_state = False
brace_depth = 0
fr_state = False    # function return type state
fn_state = False    # function name state
fa_state = False    # function arg state

# D source build characteristics

TAB = "\t"
TAB2 = "\t\t"
TAB3 = "\t\t\t"
TAB4 = "\t\t\t\t"
D_SYM_function = "function"
D_SYM_externC = "extern(C)"
D_SYM_externW = "extern(Windows)"
D_SYM_openbrace = "{"
D_SYM_closebrace = "}"
D_SYM_openbrak = "["
D_SYM_closebrak = "]"
D_SYM_castvoid = "cast(void**)&"

D_SYM_VAR_Symbol = "lib.loader.Symbol[]"

# for s in sys.argv:
#    print s

# in_file = file(sys.argv[1], "r")

for file_name in os.listdir("."):
    if not re.search("\.d", file_name):
        continue

    if file_name == "dir.d":
        continue

    in_file = file(file_name, "r")
    print file_name
    while 1:
        line = in_file.readline()
        lines += 1

        # End loop when no more lines
        if line == "":
            break

        # Skip lines with alias' or typedef's
        if patAlias.search(line) or patTypedef.search(line):
            continue

        # Skip lines with casts
        if patCast.search(line):
            continue

        # Pass over /+ +/ style comments
        if patCommentStartPlus.search(line):
            while 1:
                if patCommentEndPlus.search(line):
                    break
                lines += 1
                line = in_file.readline()
            continue

        # Pass over /* */ style comments   
        if patCommentStartAst.search(line):
            while 1:
                if patCommentEndAst.search(line):
                    break
                lines += 1
                line = in_file.readline()
            continue

        # Pass over // style comments
        # Assume the comments reside on a line by themselves (ie, no code)
        if patCommentSlash.match(line):
            continue

        # Check for an extern(C) or extern(Windows) block
        # Assume {} style
        if patExternC.search(line) or patExternW.search(line):
            if re.search("C",line):
                externC_state = externC_state_final = True
            else:
                externW_state = externW_state_final = True
            if re.search("\{",line):
                brace_depth += 1
            # No support for extern(C) followed by a colon
            if re.search(":", line):
                print "ERROR: Colons are not supported inline"
                break;
            # If a semi-colon exists, probably a single line extern statement
            if re.search(";", line):
                single_line_extern = True
            else:
                lines += 1
                line = in_file.readline()
                if re.search("\{",line):
                    brace_depth += 1
                else:
                    print "ERROR: Braces need to start on the same line as\n"
                    print "extern(C) or on a new line by themselves.\n"
                    break
            if not single_line_extern:
                continue
    
        # Process the extern(C) or extern(Windows) patterns
        if externC_state or externW_state:
            if re.search("\{",line):
                brace_depth += 1
            
            if re.search("\}",line):
                brace_depth -= 1

            if brace_depth == 0 and single_line_extern == False:
                # end it all
                break

            # ignore contents in greater brace depth
            if brace_depth > 1:
                continue

            # Remove "extern(C)" from lines with single line externs
            if single_line_extern:
                line = line.replace("extern", "")
                line = line.replace("(C)", "")
                
            # Capture the function return type
            result = patReturnType.search(line)
            if result:
                fr_state = True
                matchReturnType = result.group(1) + result.group(2)
            
            # Capture the function argument list
            result = patFunctionArg1.search(line)
            if result:
                fa_state = True
                matchFunctionArg = result.group(1)
            
            # Capture the function symbol name
            result = patFunctionName.search(line)
            if result:
                fn_state = True
                matchFunctionName = result.group(1)

            # Add to the match list if all parts matched
            if fr_state and fn_state and fa_state:
                tmpList = [matchReturnType,matchFunctionArg,matchFunctionName]
                sourceList.append(tmpList)
                tmpList = []
    
            # Clear out the current matches in preparation for the next parse
            matchFunctionName = matchFunctionArg = matchFunctionType = ""
            # and clear the match states as well
            fn_state = fa_state = fr_state = False
            single_line_extern = False
            continue

    # Finished processing file: clear all states in
    # preparation for next file
    
    result = ""
    brace_depth = lines = 0
    externC_state = externW_state = False
    fn_state = fa_state = fr_state = False
    single_line_extern = False
    in_file.close()
    
# Parsing complete... now build the D source file
# Save output to file named "dir.d"
# extension

# First build the extern(C) {} part

out_file = file("dir.d", "w+")

if externC_state_final:
    out_file.write(D_SYM_externC + "\n")
if externW_state_final:
    out_file.write(D_SYM_externW + "\n")

out_file.write(D_SYM_openbrace + "\n")

for group in sourceList:
    group[0] = group[0].replace(' ','');
    group[2] = group[2].replace(' ','');
    out_file.write(TAB + group[0] + TAB2)
    out_file.write(D_SYM_function + "(" + group[1] + ")\n")
    out_file.write(TAB3 + group[2] + ";\n")

out_file.write(D_SYM_closebrace + "\n")

out_file.write("\n\n")

# Now build the Link structure part

out_file.write(D_SYM_VAR_Symbol + " ooooLinks =\n")
out_file.write(D_SYM_openbrak + "\n")

for group in sourceList:
    out_file.write(TAB + D_SYM_openbrace + ' "' + group[2] + '", ')
    out_file.write(" " + D_SYM_castvoid + " " + group[2] + " ")
    if group == sourceList[len(sourceList)-1]:
        out_file.write(D_SYM_closebrace + "\n")
    else:
        out_file.write(D_SYM_closebrace + ",\n")

out_file.write(D_SYM_closebrak + ";")

out_file.close()

# Fini!

        
