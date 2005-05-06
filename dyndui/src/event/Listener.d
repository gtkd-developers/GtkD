/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
/*
 * This and, all the delegate event processing,
 * was copied/adapted with permission from
 * dfbth by Andy Friesen.
 * http://www.ikagames.com/andy/d/
 */

module event.Listener;

/**
 * Template for listener that don't require arguments
 */
template Listener()
{
    struct Listener
    {
        alias void delegate() Func;

        Func[Func] _listeners;       // set of delegates

        void add(Func func)
        {
            _listeners[func] = func;
        }

        void opAdd(Func func)
        {
            add(func);
        }

        void erase(Func func)
        {
            if (func in _listeners)
                delete _listeners[func];
        }

        Listener* opAddAssign(Func func)
        {
            add(func);
            return this;
        }

        Listener* opSubAssign(Func func)
        {
            erase(func);
            return this;
        }

        void opCall()
        {
            Func[] f = _listeners.keys;
            for (int i = 0; i < f.length; i++)
                f[i]();
        }

        int count()
        {
            return _listeners.length;
        }
    }
}

/**
 * Template for listener with 1 argument
 */
template Listener(T1)
{
    struct Listener
    {
        alias void delegate(T1 t1) Func;

        Func[Func] _listeners;       // set of delegates

        void add(Func func)
        {
            _listeners[func] = func;
        }

        void erase(Func func)
        {
            if (func in _listeners)
                delete _listeners[func];
        }

        Listener* opAddAssign(Func func)
        {
            add(func);
            return this;
        }

        Listener* opSubAssign(Func func)
        {
            erase(func);
            return this;
        }

        void opCall(T1 t1)
        {
            Func[] f = _listeners.keys;
            for (int i = 0; i < f.length; i++)
                f[i](t1);
        }

        int count()
        {
            return _listeners.length;
        }
    }
}

/**
 * Template for listener with 2 arguments
 */
template Listener(T1, T2)
{
    struct Listener
    {
        alias void delegate(T1 t1, T2 t2) Func;

        Func[Func] _listeners;       // set of delegates

        void add(Func func)
        {
            _listeners[func] = func;
        }

        void erase(Func func)
        {
            if (func in _listeners)
                delete _listeners[func];
        }

        Listener* opAddAssign(Func func)
        {
            add(func);
            return this;
        }

        Listener* opSubAssign(Func func)
        {
            erase(func);
            return this;
        }

        void opCall(T1 t1, T2 t2)
        {
            Func[] f = _listeners.keys;
            for (int i = 0; i < f.length; i++)
                f[i](t1, t2);
        }
        int count()
        {
            return _listeners.length;
        }
    }
}

/**
 * Template for listener with 3 arguments
 */
template Listener(T1, T2, T3)
{
    struct Listener
    {
        alias void delegate(T1 t1, T2 t2, T3 t3) Func;

        Func[Func] _listeners;       // set of delegates

        void add(Func func)
        {
            _listeners[func] = func;
        }

        void erase(Func func)
        {
            if (func in _listeners)
                delete _listeners[func];
        }

        Listener* opAddAssign(Func func)
        {
            add(func);
            return this;
        }

        Listener* opSubAssign(Func func)
        {
            erase(func);
            return this;
        }

        void opCall(T1 t1, T2 t2, T3 t3)
        {
            Func[] f = _listeners.keys;
            for (int i = 0; i < f.length; i++)
                f[i](t1, t2, t3);
        }

        int count()
        {
            return _listeners.length;
        }
    }
}

alias Listener!() BasicListener;


