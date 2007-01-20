module demo.d;

version(build)
{
	pragma(nolink);
	pragma(target, "TestWindow" );

	private import duit.TestAspectFrame,
				   duit.TestDrawingArea,
				   duit.TestEntries,
				   duit.TestIdle,
				   duit.TestImage,
				   duit.TestScales,
				   duit.TestStock,
				   duit.TestText,
				   duit.TestWindow;
}