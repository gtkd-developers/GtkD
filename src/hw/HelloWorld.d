//module hw.HelloWorld;
//
//private import dui.All;
//
//class HelloWorld : MainWindow
//{
//
//	this()
//	{
//		super("DUI Hello World");
//		setBorderWidth(10);
//		add(new Label("Hello World"));
//		show();
//	}	
//}
// 
//void main(char[][] args)
//{
//	DUI dui = DUI.dui(args);	// inits DUI
//	new HelloWorld();
//	dui.go();					// starts the event main loop
//}

private import dui.All;

class HelloWorld : MainWindow
{
	
	private import std.stdio;
	
	DrawingArea drawingArea;

	this()
	{
		super("DUI Hello World");
		setBorderWidth(10);
		//add(new Label("Hello World"));

		drawingArea = new DrawingArea(100, 100);
		add(drawingArea);
		drawingArea.show();
		addOnRealize(&onRealize);

		show();
	}
	
	bit onRealize(Widget widget, Event evetn)
	{
writefln("HelloWorld.onRealize 1");
		/* --- Create a new pixmap with new size --- */
		Pixmap pixmap;
writefln("HelloWorld.onRealize 2");
		pixmap = new Pixmap( drawingArea.getDrawable(),
			drawingArea.getWidth(),
			drawingArea.getHeight(),
			-1
			);
writefln("HelloWorld.onRealize 3");
		/* --- Clear pixmap (background image) --- */
		pixmap.drawRectangle
			(1,
			0, 0,
			drawingArea.getWidth(),
			drawingArea.getHeight());
writefln("HelloWorld.onRealize 4");
		printf("here is the bug!\n");

		return false;
	}
	
}

void main(char[][] args)
{
	DUI dui = DUI.dui(args);
	// inits DUI
	new HelloWorld();
	dui.go();
	// starts the event main loop
}
