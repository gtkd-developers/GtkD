module demo.d;

version(build)
{
	pragma(nolink);
	pragma(target, "TestWindow" );

	private import gtkD.TestAspectFrame,
				   gtkD.TestDrawingArea,
				   gtkD.TestEntries,
				   gtkD.TestIdle,
				   gtkD.TestImage,
				   gtkD.TestScales,
				   gtkD.TestStock,
				   gtkD.TestText,
				   gtkD.TestWindow;
}