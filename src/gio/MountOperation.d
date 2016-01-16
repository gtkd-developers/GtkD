/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module gio.MountOperation;

private import glib.ArrayG;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
public  import gtkc.gdktypes;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * #GMountOperation provides a mechanism for interacting with the user.
 * It can be used for authenticating mountable operations, such as loop
 * mounting files, hard drive partitions or server locations. It can
 * also be used to ask the user questions or show a list of applications
 * preventing unmount or eject operations from completing.
 * 
 * Note that #GMountOperation is used for more than just #GMount
 * objects – for example it is also used in g_drive_start() and
 * g_drive_stop().
 * 
 * Users should instantiate a subclass of this that implements all the
 * various callbacks to show the required dialogs, such as
 * #GtkMountOperation. If no user interaction is desired (for example
 * when automounting filesystems at login time), usually %NULL can be
 * passed, see each method taking a #GMountOperation for details.
 */
public class MountOperation : ObjectG
{
	/** the main Gtk struct */
	protected GMountOperation* gMountOperation;

	/** Get the main Gtk struct */
	public GMountOperation* getMountOperationStruct()
	{
		return gMountOperation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gMountOperation;
	}

	protected override void setStruct(GObject* obj)
	{
		gMountOperation = cast(GMountOperation*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMountOperation* gMountOperation, bool ownedRef = false)
	{
		this.gMountOperation = gMountOperation;
		super(cast(GObject*)gMountOperation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_mount_operation_get_type();
	}

	/**
	 * Creates a new mount operation.
	 *
	 * Return: a #GMountOperation.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = g_mount_operation_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GMountOperation*) p, true);
	}

	/**
	 * Check to see whether the mount operation is being used
	 * for an anonymous user.
	 *
	 * Return: %TRUE if mount operation is anonymous.
	 */
	public bool getAnonymous()
	{
		return g_mount_operation_get_anonymous(gMountOperation) != 0;
	}

	/**
	 * Gets a choice from the mount operation.
	 *
	 * Return: an integer containing an index of the user's choice from
	 *     the choice's list, or %0.
	 */
	public int getChoice()
	{
		return g_mount_operation_get_choice(gMountOperation);
	}

	/**
	 * Gets the domain of the mount operation.
	 *
	 * Return: a string set to the domain.
	 */
	public string getDomain()
	{
		return Str.toString(g_mount_operation_get_domain(gMountOperation));
	}

	/**
	 * Gets a password from the mount operation.
	 *
	 * Return: a string containing the password within @op.
	 */
	public string getPassword()
	{
		return Str.toString(g_mount_operation_get_password(gMountOperation));
	}

	/**
	 * Gets the state of saving passwords for the mount operation.
	 *
	 * Return: a #GPasswordSave flag.
	 */
	public GPasswordSave getPasswordSave()
	{
		return g_mount_operation_get_password_save(gMountOperation);
	}

	/**
	 * Get the user name from the mount operation.
	 *
	 * Return: a string containing the user name.
	 */
	public string getUsername()
	{
		return Str.toString(g_mount_operation_get_username(gMountOperation));
	}

	/**
	 * Emits the #GMountOperation::reply signal.
	 *
	 * Params:
	 *     result = a #GMountOperationResult
	 */
	public void reply(GMountOperationResult result)
	{
		g_mount_operation_reply(gMountOperation, result);
	}

	/**
	 * Sets the mount operation to use an anonymous user if @anonymous is %TRUE.
	 *
	 * Params:
	 *     anonymous = boolean value.
	 */
	public void setAnonymous(bool anonymous)
	{
		g_mount_operation_set_anonymous(gMountOperation, anonymous);
	}

	/**
	 * Sets a default choice for the mount operation.
	 *
	 * Params:
	 *     choice = an integer.
	 */
	public void setChoice(int choice)
	{
		g_mount_operation_set_choice(gMountOperation, choice);
	}

	/**
	 * Sets the mount operation's domain.
	 *
	 * Params:
	 *     domain = the domain to set.
	 */
	public void setDomain(string domain)
	{
		g_mount_operation_set_domain(gMountOperation, Str.toStringz(domain));
	}

	/**
	 * Sets the mount operation's password to @password.
	 *
	 * Params:
	 *     password = password to set.
	 */
	public void setPassword(string password)
	{
		g_mount_operation_set_password(gMountOperation, Str.toStringz(password));
	}

	/**
	 * Sets the state of saving passwords for the mount operation.
	 *
	 * Params:
	 *     save = a set of #GPasswordSave flags.
	 */
	public void setPasswordSave(GPasswordSave save)
	{
		g_mount_operation_set_password_save(gMountOperation, save);
	}

	/**
	 * Sets the user name within @op to @username.
	 *
	 * Params:
	 *     username = input username.
	 */
	public void setUsername(string username)
	{
		g_mount_operation_set_username(gMountOperation, Str.toStringz(username));
	}

	int[string] connectedSignals;

	void delegate(MountOperation)[] onAbortedListeners;
	/**
	 * Emitted by the backend when e.g. a device becomes unavailable
	 * while a mount operation is in progress.
	 *
	 * Implementations of GMountOperation should handle this signal
	 * by dismissing open password dialogs.
	 *
	 * Since: 2.20
	 */
	void addOnAborted(void delegate(MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "aborted" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"aborted",
				cast(GCallback)&callBackAborted,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["aborted"] = 1;
		}
		onAbortedListeners ~= dlg;
	}
	extern(C) static void callBackAborted(GMountOperation* mountoperationStruct, MountOperation _mountoperation)
	{
		foreach ( void delegate(MountOperation) dlg; _mountoperation.onAbortedListeners )
		{
			dlg(_mountoperation);
		}
	}

	void delegate(string, string, string, GAskPasswordFlags, MountOperation)[] onAskPasswordListeners;
	/**
	 * Emitted when a mount operation asks the user for a password.
	 *
	 * If the message contains a line break, the first line should be
	 * presented as a heading. For example, it may be used as the
	 * primary text in a #GtkMessageDialog.
	 *
	 * Params:
	 *     message = string containing a message to display to the user.
	 *     defaultUser = string containing the default user name.
	 *     defaultDomain = string containing the default domain.
	 *     flags = a set of #GAskPasswordFlags.
	 */
	void addOnAskPassword(void delegate(string, string, string, GAskPasswordFlags, MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "ask-password" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"ask-password",
				cast(GCallback)&callBackAskPassword,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["ask-password"] = 1;
		}
		onAskPasswordListeners ~= dlg;
	}
	extern(C) static void callBackAskPassword(GMountOperation* mountoperationStruct, char* message, char* defaultUser, char* defaultDomain, GAskPasswordFlags flags, MountOperation _mountoperation)
	{
		foreach ( void delegate(string, string, string, GAskPasswordFlags, MountOperation) dlg; _mountoperation.onAskPasswordListeners )
		{
			dlg(Str.toString(message), Str.toString(defaultUser), Str.toString(defaultDomain), flags, _mountoperation);
		}
	}

	void delegate(string, string[], MountOperation)[] onAskQuestionListeners;
	/**
	 * Emitted when asking the user a question and gives a list of
	 * choices for the user to choose from.
	 *
	 * If the message contains a line break, the first line should be
	 * presented as a heading. For example, it may be used as the
	 * primary text in a #GtkMessageDialog.
	 *
	 * Params:
	 *     message = string containing a message to display to the user.
	 *     choices = an array of strings for each possible choice.
	 */
	void addOnAskQuestion(void delegate(string, string[], MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "ask-question" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"ask-question",
				cast(GCallback)&callBackAskQuestion,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["ask-question"] = 1;
		}
		onAskQuestionListeners ~= dlg;
	}
	extern(C) static void callBackAskQuestion(GMountOperation* mountoperationStruct, char* message, char** choices, MountOperation _mountoperation)
	{
		foreach ( void delegate(string, string[], MountOperation) dlg; _mountoperation.onAskQuestionListeners )
		{
			dlg(Str.toString(message), Str.toStringArray(choices), _mountoperation);
		}
	}

	void delegate(GMountOperationResult, MountOperation)[] onReplyListeners;
	/**
	 * Emitted when the user has replied to the mount operation.
	 *
	 * Params:
	 *     result = a #GMountOperationResult indicating how the request was handled
	 */
	void addOnReply(void delegate(GMountOperationResult, MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "reply" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"reply",
				cast(GCallback)&callBackReply,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["reply"] = 1;
		}
		onReplyListeners ~= dlg;
	}
	extern(C) static void callBackReply(GMountOperation* mountoperationStruct, GMountOperationResult result, MountOperation _mountoperation)
	{
		foreach ( void delegate(GMountOperationResult, MountOperation) dlg; _mountoperation.onReplyListeners )
		{
			dlg(result, _mountoperation);
		}
	}

	void delegate(string, ArrayG, string[], MountOperation)[] onShowProcessesListeners;
	/**
	 * Emitted when one or more processes are blocking an operation
	 * e.g. unmounting/ejecting a #GMount or stopping a #GDrive.
	 *
	 * Note that this signal may be emitted several times to update the
	 * list of blocking processes as processes close files. The
	 * application should only respond with g_mount_operation_reply() to
	 * the latest signal (setting #GMountOperation:choice to the choice
	 * the user made).
	 *
	 * If the message contains a line break, the first line should be
	 * presented as a heading. For example, it may be used as the
	 * primary text in a #GtkMessageDialog.
	 *
	 * Params:
	 *     message = string containing a message to display to the user.
	 *     processes = an array of #GPid for processes
	 *         blocking the operation.
	 *     choices = an array of strings for each possible choice.
	 *
	 * Since: 2.22
	 */
	void addOnShowProcesses(void delegate(string, ArrayG, string[], MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "show-processes" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"show-processes",
				cast(GCallback)&callBackShowProcesses,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["show-processes"] = 1;
		}
		onShowProcessesListeners ~= dlg;
	}
	extern(C) static void callBackShowProcesses(GMountOperation* mountoperationStruct, char* message, GArray* processes, char** choices, MountOperation _mountoperation)
	{
		foreach ( void delegate(string, ArrayG, string[], MountOperation) dlg; _mountoperation.onShowProcessesListeners )
		{
			dlg(Str.toString(message), new ArrayG(processes), Str.toStringArray(choices), _mountoperation);
		}
	}

	void delegate(string, long, long, MountOperation)[] onShowUnmountProgressListeners;
	/**
	 * Emitted when an unmount operation has been busy for more than some time
	 * (typically 1.5 seconds).
	 *
	 * When unmounting or ejecting a volume, the kernel might need to flush
	 * pending data in its buffers to the volume stable storage, and this operation
	 * can take a considerable amount of time. This signal may be emitted several
	 * times as long as the unmount operation is outstanding, and then one
	 * last time when the operation is completed, with @bytes_left set to zero.
	 *
	 * Implementations of GMountOperation should handle this signal by
	 * showing an UI notification, and then dismiss it, or show another notification
	 * of completion, when @bytes_left reaches zero.
	 *
	 * If the message contains a line break, the first line should be
	 * presented as a heading. For example, it may be used as the
	 * primary text in a #GtkMessageDialog.
	 *
	 * Params:
	 *     message = string containing a mesage to display to the user
	 *     timeLeft = the estimated time left before the operation completes,
	 *         in microseconds, or -1
	 *     bytesLeft = the amount of bytes to be written before the operation
	 *         completes (or -1 if such amount is not known), or zero if the operation
	 *         is completed
	 *
	 * Since: 2.34
	 */
	void addOnShowUnmountProgress(void delegate(string, long, long, MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "show-unmount-progress" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"show-unmount-progress",
				cast(GCallback)&callBackShowUnmountProgress,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["show-unmount-progress"] = 1;
		}
		onShowUnmountProgressListeners ~= dlg;
	}
	extern(C) static void callBackShowUnmountProgress(GMountOperation* mountoperationStruct, char* message, long timeLeft, long bytesLeft, MountOperation _mountoperation)
	{
		foreach ( void delegate(string, long, long, MountOperation) dlg; _mountoperation.onShowUnmountProgressListeners )
		{
			dlg(Str.toString(message), timeLeft, bytesLeft, _mountoperation);
		}
	}
}
