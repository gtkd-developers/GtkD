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

/*
 * Conversion parameters:
 * inFile  = GMountOperation.html
 * outPack = gio
 * outFile = MountOperation
 * strct   = GMountOperation
 * realStrct=
 * ctorStrct=
 * clss    = MountOperation
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- g_mount_operation_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ArrayG
 * structWrap:
 * 	- GArray* -> ArrayG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.MountOperation;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ArrayG;



private import gobject.ObjectG;

/**
 * GMountOperation provides a mechanism for interacting with the user.
 * It can be used for authenticating mountable operations, such as loop
 * mounting files, hard drive partitions or server locations. It can
 * also be used to ask the user questions or show a list of applications
 * preventing unmount or eject operations from completing.
 *
 * Note that GMountOperation is used for more than just GMount
 * objects – for example it is also used in g_drive_start() and
 * g_drive_stop().
 *
 * Users should instantiate a subclass of this that implements all the
 * various callbacks to show the required dialogs, such as
 * GtkMountOperation. If no user interaction is desired (for example
 * when automounting filesystems at login time), usually NULL can be
 * passed, see each method taking a GMountOperation for details.
 */
public class MountOperation : ObjectG
{
	
	/** the main Gtk struct */
	protected GMountOperation* gMountOperation;
	
	
	public GMountOperation* getMountOperationStruct()
	{
		return gMountOperation;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gMountOperation;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMountOperation* gMountOperation)
	{
		super(cast(GObject*)gMountOperation);
		this.gMountOperation = gMountOperation;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gMountOperation = cast(GMountOperation*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(MountOperation)[] onAbortedListeners;
	/**
	 * Emitted by the backend when e.g. a device becomes unavailable
	 * while a mount operation is in progress.
	 * Implementations of GMountOperation should handle this signal
	 * by dismissing open password dialogs.
	 * Since 2.20
	 */
	void addOnAborted(void delegate(MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("aborted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"aborted",
			cast(GCallback)&callBackAborted,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["aborted"] = 1;
		}
		onAbortedListeners ~= dlg;
	}
	extern(C) static void callBackAborted(GMountOperation* arg0Struct, MountOperation _mountOperation)
	{
		foreach ( void delegate(MountOperation) dlg ; _mountOperation.onAbortedListeners )
		{
			dlg(_mountOperation);
		}
	}
	
	void delegate(string, string, string, GAskPasswordFlags, MountOperation)[] onAskPasswordListeners;
	/**
	 * Emitted when a mount operation asks the user for a password.
	 * If the message contains a line break, the first line should be
	 * presented as a heading. For example, it may be used as the
	 * primary text in a GtkMessageDialog.
	 */
	void addOnAskPassword(void delegate(string, string, string, GAskPasswordFlags, MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("ask-password" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"ask-password",
			cast(GCallback)&callBackAskPassword,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["ask-password"] = 1;
		}
		onAskPasswordListeners ~= dlg;
	}
	extern(C) static void callBackAskPassword(GMountOperation* opStruct, gchar* message, gchar* defaultUser, gchar* defaultDomain, GAskPasswordFlags flags, MountOperation _mountOperation)
	{
		foreach ( void delegate(string, string, string, GAskPasswordFlags, MountOperation) dlg ; _mountOperation.onAskPasswordListeners )
		{
			dlg(Str.toString(message), Str.toString(defaultUser), Str.toString(defaultDomain), flags, _mountOperation);
		}
	}
	
	void delegate(string, GStrv, MountOperation)[] onAskQuestionListeners;
	/**
	 * Emitted when asking the user a question and gives a list of
	 * choices for the user to choose from.
	 * If the message contains a line break, the first line should be
	 * presented as a heading. For example, it may be used as the
	 * primary text in a GtkMessageDialog.
	 */
	void addOnAskQuestion(void delegate(string, GStrv, MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("ask-question" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"ask-question",
			cast(GCallback)&callBackAskQuestion,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["ask-question"] = 1;
		}
		onAskQuestionListeners ~= dlg;
	}
	extern(C) static void callBackAskQuestion(GMountOperation* opStruct, gchar* message, GStrv choices, MountOperation _mountOperation)
	{
		foreach ( void delegate(string, GStrv, MountOperation) dlg ; _mountOperation.onAskQuestionListeners )
		{
			dlg(Str.toString(message), choices, _mountOperation);
		}
	}
	
	void delegate(GMountOperationResult, MountOperation)[] onReplyListeners;
	/**
	 * Emitted when the user has replied to the mount operation.
	 */
	void addOnReply(void delegate(GMountOperationResult, MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("reply" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"reply",
			cast(GCallback)&callBackReply,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["reply"] = 1;
		}
		onReplyListeners ~= dlg;
	}
	extern(C) static void callBackReply(GMountOperation* opStruct, GMountOperationResult result, MountOperation _mountOperation)
	{
		foreach ( void delegate(GMountOperationResult, MountOperation) dlg ; _mountOperation.onReplyListeners )
		{
			dlg(result, _mountOperation);
		}
	}
	
	void delegate(string, ArrayG, GStrv, MountOperation)[] onShowProcessesListeners;
	/**
	 * Emitted when one or more processes are blocking an operation
	 * e.g. unmounting/ejecting a GMount or stopping a GDrive.
	 * Note that this signal may be emitted several times to update the
	 * list of blocking processes as processes close files. The
	 * application should only respond with g_mount_operation_reply() to
	 * the latest signal (setting "choice" to the choice
	 * the user made).
	 * If the message contains a line break, the first line should be
	 * presented as a heading. For example, it may be used as the
	 * primary text in a GtkMessageDialog.
	 * Since 2.22
	 */
	void addOnShowProcesses(void delegate(string, ArrayG, GStrv, MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("show-processes" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"show-processes",
			cast(GCallback)&callBackShowProcesses,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["show-processes"] = 1;
		}
		onShowProcessesListeners ~= dlg;
	}
	extern(C) static void callBackShowProcesses(GMountOperation* opStruct, gchar* message, GArray* processes, GStrv choices, MountOperation _mountOperation)
	{
		foreach ( void delegate(string, ArrayG, GStrv, MountOperation) dlg ; _mountOperation.onShowProcessesListeners )
		{
			dlg(Str.toString(message), ObjectG.getDObject!(ArrayG)(processes), choices, _mountOperation);
		}
	}
	
	void delegate(string, gint64, gint64, MountOperation)[] onShowUnmountProgressListeners;
	/**
	 * Emitted when an unmount operation has been busy for more than some time
	 * (typically 1.5 seconds).
	 * When unmounting or ejecting a volume, the kernel might need to flush
	 * pending data in its buffers to the volume stable storage, and this operation
	 * can take a considerable amount of time. This signal may be emitted several
	 * times as long as the unmount operation is outstanding, and then one
	 * last time when the operation is completed, with bytes_left set to zero.
	 * Implementations of GMountOperation should handle this signal by
	 * showing an UI notification, and then dismiss it, or show another notification
	 * of completion, when bytes_left reaches zero.
	 * If the message contains a line break, the first line should be
	 * presented as a heading. For example, it may be used as the
	 * primary text in a GtkMessageDialog.
	 * Since 2.34
	 */
	void addOnShowUnmountProgress(void delegate(string, gint64, gint64, MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("show-unmount-progress" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"show-unmount-progress",
			cast(GCallback)&callBackShowUnmountProgress,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["show-unmount-progress"] = 1;
		}
		onShowUnmountProgressListeners ~= dlg;
	}
	extern(C) static void callBackShowUnmountProgress(GMountOperation* opStruct, gchar* message, gint64 timeLeft, gint64 bytesLeft, MountOperation _mountOperation)
	{
		foreach ( void delegate(string, gint64, gint64, MountOperation) dlg ; _mountOperation.onShowUnmountProgressListeners )
		{
			dlg(Str.toString(message), timeLeft, bytesLeft, _mountOperation);
		}
	}
	
	
	/**
	 * Creates a new mount operation.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GMountOperation * g_mount_operation_new (void);
		auto p = g_mount_operation_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_mount_operation_new()");
		}
		this(cast(GMountOperation*) p);
	}
	
	/**
	 * Get the user name from the mount operation.
	 * Returns: a string containing the user name.
	 */
	public string getUsername()
	{
		// const char * g_mount_operation_get_username (GMountOperation *op);
		return Str.toString(g_mount_operation_get_username(gMountOperation));
	}
	
	/**
	 * Sets the user name within op to username.
	 * Params:
	 * username = input username.
	 */
	public void setUsername(string username)
	{
		// void g_mount_operation_set_username (GMountOperation *op,  const char *username);
		g_mount_operation_set_username(gMountOperation, Str.toStringz(username));
	}
	
	/**
	 * Gets a password from the mount operation.
	 * Returns: a string containing the password within op.
	 */
	public string getPassword()
	{
		// const char * g_mount_operation_get_password (GMountOperation *op);
		return Str.toString(g_mount_operation_get_password(gMountOperation));
	}
	
	/**
	 * Sets the mount operation's password to password.
	 * Params:
	 * password = password to set.
	 */
	public void setPassword(string password)
	{
		// void g_mount_operation_set_password (GMountOperation *op,  const char *password);
		g_mount_operation_set_password(gMountOperation, Str.toStringz(password));
	}
	
	/**
	 * Check to see whether the mount operation is being used
	 * for an anonymous user.
	 * Returns: TRUE if mount operation is anonymous.
	 */
	public int getAnonymous()
	{
		// gboolean g_mount_operation_get_anonymous (GMountOperation *op);
		return g_mount_operation_get_anonymous(gMountOperation);
	}
	
	/**
	 * Sets the mount operation to use an anonymous user if anonymous is TRUE.
	 * Params:
	 * anonymous = boolean value.
	 */
	public void setAnonymous(int anonymous)
	{
		// void g_mount_operation_set_anonymous (GMountOperation *op,  gboolean anonymous);
		g_mount_operation_set_anonymous(gMountOperation, anonymous);
	}
	
	/**
	 * Gets the domain of the mount operation.
	 * Returns: a string set to the domain.
	 */
	public string getDomain()
	{
		// const char * g_mount_operation_get_domain (GMountOperation *op);
		return Str.toString(g_mount_operation_get_domain(gMountOperation));
	}
	
	/**
	 * Sets the mount operation's domain.
	 * Params:
	 * domain = the domain to set.
	 */
	public void setDomain(string domain)
	{
		// void g_mount_operation_set_domain (GMountOperation *op,  const char *domain);
		g_mount_operation_set_domain(gMountOperation, Str.toStringz(domain));
	}
	
	/**
	 * Gets the state of saving passwords for the mount operation.
	 * Returns: a GPasswordSave flag.
	 */
	public GPasswordSave getPasswordSave()
	{
		// GPasswordSave g_mount_operation_get_password_save (GMountOperation *op);
		return g_mount_operation_get_password_save(gMountOperation);
	}
	
	/**
	 * Sets the state of saving passwords for the mount operation.
	 * Params:
	 * save = a set of GPasswordSave flags.
	 */
	public void setPasswordSave(GPasswordSave save)
	{
		// void g_mount_operation_set_password_save (GMountOperation *op,  GPasswordSave save);
		g_mount_operation_set_password_save(gMountOperation, save);
	}
	
	/**
	 * Gets a choice from the mount operation.
	 * Returns: an integer containing an index of the user's choice from the choice's list, or 0.
	 */
	public int getChoice()
	{
		// int g_mount_operation_get_choice (GMountOperation *op);
		return g_mount_operation_get_choice(gMountOperation);
	}
	
	/**
	 * Sets a default choice for the mount operation.
	 * Params:
	 * choice = an integer.
	 */
	public void setChoice(int choice)
	{
		// void g_mount_operation_set_choice (GMountOperation *op,  int choice);
		g_mount_operation_set_choice(gMountOperation, choice);
	}
	
	/**
	 * Emits the "reply" signal.
	 * Params:
	 * result = a GMountOperationResult
	 */
	public void reply(GMountOperationResult result)
	{
		// void g_mount_operation_reply (GMountOperation *op,  GMountOperationResult result);
		g_mount_operation_reply(gMountOperation, result);
	}
}
