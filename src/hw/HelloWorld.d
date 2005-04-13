module hw.HelloWorld;
private import dui.All;

class HelloWorld : MainWindow
{

	this()
	{
		super("DUI Hello World");
		setBorderWidth(10);
		add(new Label("Hello World"));
		show();
	}	
}
 
void main(char[][] args)
{
	DUI dui = DUI.dui(args);	// inits DUI
	new HelloWorld();
	dui.go();					// starts the event main loop
}

