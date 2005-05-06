/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 */
 
/*
 * written or adapted by Antonio Monteiro
 */

module dool.Stack;

class StackError : Exception
{
	this(char[] message)
	{
		super("Stack error : "~message);
	}
}

interface StackInterface(T)
{
	bit isEmpty();
	
	int count();
	
	void push(T element);
	
	T pop();
	
	T peek();
}

/**
 * The dool stack template
 */
struct Stack(T) //: StackInterface!(T)
{
	protected T[] stack;
	
	public:
	
	bit isEmpty()
	{
		return stack.length == 0;
	}
	
	int count()
	{
		return stack.length;
	}
	
	void push(T element)
	{
		stack ~= element;
	}
	
	T pop()
	{
		T element = peek();
		stack.length = stack.length - 1;
		return element;
	}
	
	T peek()
	{
		if ( stack.length == 0 )
		{
			throw new StackError("pop on empty stack.");
		}
		T element = stack[stack.length-1];
		return element;
	}
}

