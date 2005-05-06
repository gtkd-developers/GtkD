#
# DUI D (graphic) User Interface
# an implementation through GTK+
# by Antonio Monteiro.
# DUI is released is under the GPL license
# This file is part of DUI.
# Send comments and suggestions to duitoolkit@yahoo.ca
# or go to the yahoo group
# http://groups.yahoo.com/group/duitoolkit
# (Group email: duitoolkit@yahoogroups.com)
# See detailed information at DUI home page
# http://ca.geocities.com/duitoolkit
#

#
# if you don't have dmd on your path change the DMD definition to the full path
#
DMD = dmd -release
# -version=GTK240
# -release -debug=status

#
# change the phobos location 
#
PHOBOS = ~/dmd/src/phobos
# something is wrong with PHOBOS_LIB 
PHOBOS_LIB = -L~/dmd/lib -lphobos

#
# you might need to change the location of these libraries
# probably you want to change just the line "-L/usr/local/lib"
#
#GTK_LIBS = -Wl,--export-dynamic \
#	-L/usr/local/lib \
#	-lgtk-x11-2.0 \
#	-lgdk-x11-2.0 \
#	-latk-1.0 \
#	-lgdk_pixbuf-2.0 \
#	-lm \
#	-lpangoxft-1.0 \
#	-lpangox-1.0 \
#	-lpango-1.0 \
#	-lgobject-2.0 \
#	-lgmodule-2.0 \
#	-lgthread-2.0 \
#	-ldl \
#	-lglib-2.0

#GTK_LIBS = -Wl,--export-dynamic \
#	-L/usr/local/lib \
#	-L/usr/X11R6/lib \
#	-lgtk-x11-2.0 \
#	-lgdk-x11-2.0 \
#	-lXrandr \
#	-lXinerama \
#	-lXext \
#	-latk-1.0 \
#	-lgdk_pixbuf-2.0 \
#	-lm \
#	-lpangoxft-1.0 \
#	-lXft \
#	-lfreetype \
#	-lXrender \
#	-lfontconfig \
#	-lpangox-1.0 \
#	-lX11 \
#	-lpango-1.0 \
#	-lgobject-2.0 \
#	-lgmodule-2.0 \
#	-ldl \
#	-lglib-2.0 

GTK_LIBS = `pkg-config --libs gtk+-2.0 gthread-2.0`

##############
# no changes should be required beyond this line
##############

SRCDIR = 
OBJDIR = ../obj/
INCLUDES = -I$(PHOBOS):src


DFLAGS = $(INCLUDES)

testSRC = \
	$(SRCDIR)test/TestWindow \
	$(SRCDIR)test/TestEntries \
	$(SRCDIR)test/TestStock \
	$(SRCDIR)test/TestDrawing \
	$(SRCDIR)test/TestScales \
	$(SRCDIR)test/TestTree \
	$(SRCDIR)test/TestTreeView \
	$(SRCDIR)test/TestText \
	$(SRCDIR)test/TestImage \
	$(SRCDIR)test/DUITreeOld \
	$(SRCDIR)test/DUITree \
	$(SRCDIR)test/TestAspectFrame \
	$(SRCDIR)test/TTextView \
	$(SRCDIR)test/TEditableCells \
	$(SRCDIR)test/TestTimeout

	
hwSRC = \
	$(SRCDIR)hw/HelloWorld.d
	
	
dlibSRC = \
	$(SRCDIR)dglib/AQueue \
	$(SRCDIR)dglib/Plugin \
	$(SRCDIR)dglib/ErrorG \
	$(SRCDIR)dglib/IOChannel \
	$(SRCDIR)dglib/Spawn \
	$(SRCDIR)dglib/StringG \
	$(SRCDIR)dglib/ThreadG


ddiSRC = \
	$(SRCDIR)ddi/Value \
	$(SRCDIR)ddi/Color \
	$(SRCDIR)ddi/GC \
	$(SRCDIR)ddi/Screen \
	$(SRCDIR)ddi/Visual \
	$(SRCDIR)ddi/Drawable \
	$(SRCDIR)ddi/Cursor	\
	$(SRCDIR)ddi/Display \
	$(SRCDIR)ddi/Pixbuf \
	$(SRCDIR)ddi/Bitmap \
	$(SRCDIR)ddi/Pixmap \
	$(SRCDIR)ddi/WindowG
	
dangoSRC = \
	$(SRCDIR)dango/Font \
	$(SRCDIR)dango/Context \
	$(SRCDIR)dango/Layout \
	$(SRCDIR)dango/TabArray
	

eventSRC = \
	$(SRCDIR)event/Event \
	$(SRCDIR)event/EventHandler \
	$(SRCDIR)event/Listener \
	$(SRCDIR)event/Dispatcher \
	$(SRCDIR)event/DUIObjectListener \
	$(SRCDIR)event/WidgetListener \
	$(SRCDIR)event/ButtonListener \
	$(SRCDIR)event/MenuItemListener \
	$(SRCDIR)event/WindowListener \
	$(SRCDIR)event/ContainerListener \
	$(SRCDIR)event/NotebookListener \
	$(SRCDIR)event/CalendarListener \
	$(SRCDIR)event/EditableListener \
	$(SRCDIR)event/EntryListener \
	$(SRCDIR)event/TextListener \
	$(SRCDIR)event/MenuShellListener \
	$(SRCDIR)event/ToolbarListener \
	$(SRCDIR)event/ColorSelectionListener \
	$(SRCDIR)event/ItemListener \
	$(SRCDIR)event/HandleBoxListener \
	$(SRCDIR)event/ToggleButtonListener \
	$(SRCDIR)event/CheckMenuItemListener \
	$(SRCDIR)event/StatusbarListener \
	$(SRCDIR)event/AdjustmentListener \
	$(SRCDIR)event/TreeModelListener \
	$(SRCDIR)event/IdleListener \
	$(SRCDIR)event/TimeoutListener \
	$(SRCDIR)event/TreeViewListener \
	$(SRCDIR)event/CellListener \
	$(SRCDIR)event/SelectionListener
	 

dui = \
	$(SRCDIR)dui/Utils \
	$(SRCDIR)dui/DUI                    \
	$(SRCDIR)dui/Widget \
	$(SRCDIR)dui/Container              \
	$(SRCDIR)dui/Bin                    \
	$(SRCDIR)dui/Window \
	$(SRCDIR)dui/AccelGroup             \
	$(SRCDIR)dui/AccelLabel             \
	$(SRCDIR)dui/Adjustment             \
	$(SRCDIR)dui/Alignment              \
	$(SRCDIR)dui/Arrow                  \
	$(SRCDIR)dui/AspectFrame            \
	$(SRCDIR)dui/Box                    \
	$(SRCDIR)dui/Button                 \
	$(SRCDIR)dui/ButtonBox              \
	$(SRCDIR)dui/Calendar               \
	$(SRCDIR)dui/CellRenderer           \
	$(SRCDIR)dui/CellRendererPixbuf     \
	$(SRCDIR)dui/CellRendererText       \
	$(SRCDIR)dui/CellRendererToggle     \
	$(SRCDIR)dui/CheckButton            \
	$(SRCDIR)dui/CheckMenuItem          \
	$(SRCDIR)dui/ColorSelection         \
	$(SRCDIR)dui/ColorSelectionDialog   \
	$(SRCDIR)dui/Combo                  \
	$(SRCDIR)dui/ComboBox               \
	$(SRCDIR)dui/ComboBoxText           \
	$(SRCDIR)dui/ComboBoxTextEntry      \
	$(SRCDIR)dui/Curve                  \
	$(SRCDIR)dui/DUIObject              \
	$(SRCDIR)dui/Dialog                 \
	$(SRCDIR)dui/DrawingArea	       \
	$(SRCDIR)dui/Editable	       \
	$(SRCDIR)dui/Entry		       \
	$(SRCDIR)dui/EventBox	       \
	$(SRCDIR)dui/FileSelection	       \
	$(SRCDIR)dui/FileChooserDialog	       \
	$(SRCDIR)dui/Fixed \
	$(SRCDIR)dui/FontSelection \
	$(SRCDIR)dui/FontSelectionDialog \
	$(SRCDIR)dui/Frame		       \
	$(SRCDIR)dui/GammaCurve	       \
	$(SRCDIR)dui/HBox		       \
	$(SRCDIR)dui/HButtonBox	       \
	$(SRCDIR)dui/HPaned  	       \
	$(SRCDIR)dui/HRuler  	       \
	$(SRCDIR)dui/HScale  	       \
	$(SRCDIR)dui/HScrollbar	       \
	$(SRCDIR)dui/HSeparator	       \
	$(SRCDIR)dui/HandleBox	       \
	$(SRCDIR)dui/Image		       \
	$(SRCDIR)dui/ImageMenuItem	       \
	$(SRCDIR)dui/InputDialog	       \
	$(SRCDIR)dui/Invisible	       \
	$(SRCDIR)dui/Item		       \
	$(SRCDIR)dui/ItemFactory	      \
	$(SRCDIR)dui/Label		       \
	$(SRCDIR)dui/Layout  	       \
	$(SRCDIR)dui/ListG		      \
	$(SRCDIR)dui/ListStore	   \
	$(SRCDIR)dui/MainWindow	   \
	$(SRCDIR)dui/Menu		   \
	$(SRCDIR)dui/MenuBar 	   \
	$(SRCDIR)dui/MenuItem	   \
	$(SRCDIR)dui/MenuShell	   \
	$(SRCDIR)dui/MessageDialog	   \
	$(SRCDIR)dui/Misc		   \
	$(SRCDIR)dui/Notebook	   \
	$(SRCDIR)dui/ObjectG 	   \
	$(SRCDIR)dui/OptionMenu	   \
	$(SRCDIR)dui/Paned		   \
	$(SRCDIR)dui/Plug		   \
	$(SRCDIR)dui/Preview 	   \
	$(SRCDIR)dui/ProgressBar	   \
	$(SRCDIR)dui/RadioButton	   \
	$(SRCDIR)dui/RadioMenuItem	   \
	$(SRCDIR)dui/Range		   \
	$(SRCDIR)dui/Ruler		   \
	$(SRCDIR)dui/SListG  	   \
	$(SRCDIR)dui/Scale		   \
	$(SRCDIR)dui/Scrollbar	   \
	$(SRCDIR)dui/ScrolledWindow     \
	$(SRCDIR)dui/Separator   \
	$(SRCDIR)dui/SeparatorMenuItem  \
	$(SRCDIR)dui/Socket  	   \
	$(SRCDIR)dui/SpinButton \
	$(SRCDIR)dui/Statusbar \
	$(SRCDIR)dui/Table \
	$(SRCDIR)dui/TearoffMenuItem \
	$(SRCDIR)dui/TextChildAnchor \
	$(SRCDIR)dui/TextTag \
	$(SRCDIR)dui/TextTagTable \
	$(SRCDIR)dui/TextIter \
	$(SRCDIR)dui/TextMark \
	$(SRCDIR)dui/TextBuffer \
	$(SRCDIR)dui/TextView \
	$(SRCDIR)dui/ToggleButton \
	$(SRCDIR)dui/Toolbar \
	$(SRCDIR)dui/Tooltips \
	$(SRCDIR)dui/Tree \
	$(SRCDIR)dui/TreeItem \
	$(SRCDIR)dui/TreeIter \
	$(SRCDIR)dui/TreeModel \
	$(SRCDIR)dui/TreePath \
	$(SRCDIR)dui/TreeRowReference \
	$(SRCDIR)dui/TreeStore \
	$(SRCDIR)dui/TreeView \
	$(SRCDIR)dui/TreeViewColumn \
	$(SRCDIR)dui/TreeSelection \
	$(SRCDIR)dui/VBox \
	$(SRCDIR)dui/VButtonBox \
	$(SRCDIR)dui/VPaned \
	$(SRCDIR)dui/VRuler \
	$(SRCDIR)dui/VScale \
	$(SRCDIR)dui/VScrollbar \
	$(SRCDIR)dui/VSeparator \
	$(SRCDIR)dui/Viewport \
	$(SRCDIR)dui/List             \
	$(SRCDIR)dui/ListItem \
	$(SRCDIR)dui/Clipboard \
	$(SRCDIR)dui/Selection \
	$(SRCDIR)dui/DND \
	$(SRCDIR)dui/OGTK \
	$(SRCDIR)dui/WindowGroup \
	$(SRCDIR)dui/SizeGroup
	



	
gglSRC = \
	$(SRCDIR)ggl/GL \
	$(SRCDIR)ggl/GLConfig \
	$(SRCDIR)ggl/GLContext \
	$(SRCDIR)ggl/GLDraw \
	$(SRCDIR)ggl/GLDrawable \
	$(SRCDIR)ggl/GLFont \
	$(SRCDIR)ggl/GLPixmap \
	$(SRCDIR)ggl/GLWidget \
	$(SRCDIR)ggl/GLWindow \
	$(SRCDIR)ggl/GLX11

dconfSRC = \
	$(SRCDIR)ext/dconf/DConf

duiSRC = $(dui)

all: DUI TEST

ot = $(testSRC:.d=.o)

DUI:
	cd src ; $(DMD) $(dlibSRC) $(ddiSRC) $(dangoSRC) $(duiSRC) $(eventSRC) -c $(DFLAGS) -od$(OBJDIR) -op
	ar rcs libdui.a obj/dlib/*.o obj/ddi/*.o obj/dango/*.o obj/dui/*.o obj/event/*.o 

GL:
	cd src ; $(DMD) $(gglSRC) -c $(DFLAGS) -od$(OBJDIR) -op
	ar rcs libduigl.a obj/ggl/*.o
	
EXT:	
	cd src ; $(DMD) $(dconfSRC) -c $(DFLAGS) -od$(OBJDIR) -op
	ar rcs libduiext.a obj/ext/dconf/*.o


TEST:
	cd src ; $(DMD) $(testSRC) -c $(DFLAGS) -od$(OBJDIR) -op 
	gcc \
	obj/test/*.o \
	-o DUITests  \
	-lm \
	$(PHOBOS_LIB) \
	-lpthread \
	$(GTK_LIBS) \
	-L. -ldui

GL_LIBS =  -lGLU -lGL  -L/usr/X11R6/lib -lXmu -lXt  -lSM -lICE	
GTK_GL_LIBS =  -L/usr/local/lib -lgdkglext-x11-1.0 -lgtkglext-x11-1.0


TESTGL:
	cd src ; $(DMD) testGL/TestGL -c $(DFLAGS) -od$(OBJDIR) -op 
	gcc \
	obj/testGL/TestGL.o \
	-o DUITestGL  \
	-lpthread -lm \
	$(PHOBOS_LIB) \
	$(GTK_LIBS) \
	$(GTK_GL_LIBS) \
	$(GL_LIBS) \
	-L. -ldui -lduigl

SHAPEGL:
	cd src ; $(DMD) testGL/ShapesGL testGL/TrackBall -c $(DFLAGS) -od$(OBJDIR) -op 
	gcc \
	obj/testGL/ShapesGL.o obj/testGL/TrackBall.o \
	-o DUIShapesGL  \
	-lpthread -lm \
	$(PHOBOS_LIB) \
	$(GTK_LIBS) \
	$(GTK_GL_LIBS) \
	$(GL_LIBS) \
	-L. -ldui -lduigl


#	obj/ddi/*.o \
#	obj/dui/*.o \
#	obj/event/*.o \

	
HelloWorld: DUI HW

HW:
	cd src ; $(DMD) $(hwSRC) -c $(DFLAGS) -od$(OBJDIR) -op
	gcc \
	obj/hw/HelloWorld.o \
	-o HelloWorld  \
	-lpthread -lm \
	$(PHOBOS_LIB) \
	$(GTK_LIBS) \
	-L. -ldui


#	gcc \
#	obj/hw/*.o \
#	-o HelloWorld  \
#	-lphobos -lpthread -lm \
#	$(GTK_LIBS) \
#	-L. -ldui

clean:
	rm obj/*/*.o
	rm DUITests
	rm HelloWorld
	rm libdui.a
	rm libduigl.a
	
