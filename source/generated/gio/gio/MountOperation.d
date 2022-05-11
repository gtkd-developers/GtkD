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

private import gio.c.functions;
public  import gio.c.types;
private import glib.ArrayG;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


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
 * 
 * The term ‘TCRYPT’ is used to mean ‘compatible with TrueCrypt and VeraCrypt’.
 * [TrueCrypt](https://en.wikipedia.org/wiki/TrueCrypt) is a discontinued system for
 * encrypting file containers, partitions or whole disks, typically used with Windows.
 * [VeraCrypt](https://www.veracrypt.fr/) is a maintained fork of TrueCrypt with various
 * improvements and auditing fixes.
 */
public class MountOperation : ObjectG
{
	/** the main Gtk struct */
	protected GMountOperation* gMountOperation;

	/** Get the main Gtk struct */
	public GMountOperation* getMountOperationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gMountOperation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gMountOperation;
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
	 * Returns: a #GMountOperation.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_mount_operation_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GMountOperation*) __p, true);
	}

	/**
	 * Check to see whether the mount operation is being used
	 * for an anonymous user.
	 *
	 * Returns: %TRUE if mount operation is anonymous.
	 */
	public bool getAnonymous()
	{
		return g_mount_operation_get_anonymous(gMountOperation) != 0;
	}

	/**
	 * Gets a choice from the mount operation.
	 *
	 * Returns: an integer containing an index of the user's choice from
	 *     the choice's list, or `0`.
	 */
	public int getChoice()
	{
		return g_mount_operation_get_choice(gMountOperation);
	}

	/**
	 * Gets the domain of the mount operation.
	 *
	 * Returns: a string set to the domain.
	 */
	public string getDomain()
	{
		return Str.toString(g_mount_operation_get_domain(gMountOperation));
	}

	/**
	 * Check to see whether the mount operation is being used
	 * for a TCRYPT hidden volume.
	 *
	 * Returns: %TRUE if mount operation is for hidden volume.
	 *
	 * Since: 2.58
	 */
	public bool getIsTcryptHiddenVolume()
	{
		return g_mount_operation_get_is_tcrypt_hidden_volume(gMountOperation) != 0;
	}

	/**
	 * Check to see whether the mount operation is being used
	 * for a TCRYPT system volume.
	 *
	 * Returns: %TRUE if mount operation is for system volume.
	 *
	 * Since: 2.58
	 */
	public bool getIsTcryptSystemVolume()
	{
		return g_mount_operation_get_is_tcrypt_system_volume(gMountOperation) != 0;
	}

	/**
	 * Gets a password from the mount operation.
	 *
	 * Returns: a string containing the password within @op.
	 */
	public string getPassword()
	{
		return Str.toString(g_mount_operation_get_password(gMountOperation));
	}

	/**
	 * Gets the state of saving passwords for the mount operation.
	 *
	 * Returns: a #GPasswordSave flag.
	 */
	public GPasswordSave getPasswordSave()
	{
		return g_mount_operation_get_password_save(gMountOperation);
	}

	/**
	 * Gets a PIM from the mount operation.
	 *
	 * Returns: The VeraCrypt PIM within @op.
	 *
	 * Since: 2.58
	 */
	public uint getPim()
	{
		return g_mount_operation_get_pim(gMountOperation);
	}

	/**
	 * Get the user name from the mount operation.
	 *
	 * Returns: a string containing the user name.
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
	 * Sets the mount operation to use a hidden volume if @hidden_volume is %TRUE.
	 *
	 * Params:
	 *     hiddenVolume = boolean value.
	 *
	 * Since: 2.58
	 */
	public void setIsTcryptHiddenVolume(bool hiddenVolume)
	{
		g_mount_operation_set_is_tcrypt_hidden_volume(gMountOperation, hiddenVolume);
	}

	/**
	 * Sets the mount operation to use a system volume if @system_volume is %TRUE.
	 *
	 * Params:
	 *     systemVolume = boolean value.
	 *
	 * Since: 2.58
	 */
	public void setIsTcryptSystemVolume(bool systemVolume)
	{
		g_mount_operation_set_is_tcrypt_system_volume(gMountOperation, systemVolume);
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
	 * Sets the mount operation's PIM to @pim.
	 *
	 * Params:
	 *     pim = an unsigned integer.
	 *
	 * Since: 2.58
	 */
	public void setPim(uint pim)
	{
		g_mount_operation_set_pim(gMountOperation, pim);
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

	/**
	 * Emitted by the backend when e.g. a device becomes unavailable
	 * while a mount operation is in progress.
	 *
	 * Implementations of GMountOperation should handle this signal
	 * by dismissing open password dialogs.
	 *
	 * Since: 2.20
	 */
	gulong addOnAborted(void delegate(MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "aborted", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

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
	gulong addOnAskPassword(void delegate(string, string, string, GAskPasswordFlags, MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "ask-password", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

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
	gulong addOnAskQuestion(void delegate(string, string[], MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "ask-question", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user has replied to the mount operation.
	 *
	 * Params:
	 *     result = a #GMountOperationResult indicating how the request was handled
	 */
	gulong addOnReply(void delegate(GMountOperationResult, MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "reply", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

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
	gulong addOnShowProcesses(void delegate(string, ArrayG, string[], MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "show-processes", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

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
	 *     message = string containing a message to display to the user
	 *     timeLeft = the estimated time left before the operation completes,
	 *         in microseconds, or -1
	 *     bytesLeft = the amount of bytes to be written before the operation
	 *         completes (or -1 if such amount is not known), or zero if the operation
	 *         is completed
	 *
	 * Since: 2.34
	 */
	gulong addOnShowUnmountProgress(void delegate(string, long, long, MountOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "show-unmount-progress", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
