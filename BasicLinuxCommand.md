## Memory Info 

```shell
$ free -m
```

## OS Info

```shell
$ uname -a
```

## CPU Info

```shell
$ cat /proc/cpuinfo | grep 'name' | uniq
```

## Hard Disk Info

```shell
$ fdisk -l | grep 'Disk /dev/'
```

## List of All Users Info

* User name
* Encrypted password (`x` means that the password is stored in the `/etc/shadow` file)
* User ID number (UID)
* User’s group ID number (GID)
* Full name of the user (GECOS)
* User home directory
* Login shell (defaults to `/bin/bash`)

```shell
$ cat /etc/passwd
```

## Part of Users Info

```shell
$ awk -F: '{ print $1, $2, $3, $4, $5, $6}' /etc/passwd
```

or

```shell
$ cat /etc/passwd | grep -i 'root' | awk -F: '{ print $1,  }'
```

or

```shell
$ awk -F: '{ for (x=1; x<=6; x++) printf("%s ", $x);printf("\n") }' /etc/passwd
```

or

```shell
$ cat /etc/passwd | grep -i 'root' | awk -F: '{ for (x=1; x<=6; x++) printf("%s ", $x);printf("\n") }'
```

## Create a New Sudo User

User the `adduser` command to add a new user.

```shell
$ adduser {USERNAME}
```

Use the `usermod` command to add the user to the `sudo` group.

> I cannot get sudoer permission through using this way.
> Please consider using below way to add user to `sudo` group.

```shell
$ usermod -aG sudo {USERNAME}
```

or

Change `/etc/sudoers` file to add the user to the `sudo` group.

* Use `su` to switch to root user

* Open `/etc/sudoers` file. If you still don't have access permission after switching to root, use `chmod u+w /etc/sudoers` command to add read / write permission.

* Edit `/etc/sudoers` file, add `{USERNAME} ALL=(ALL) ALL` under the `root ALL=(ALL) ALL`, save and quit.

* Undo `/etc/sudoers` file if needed. Run `chmod u-w /etc/sudoers`

## Create a Shared folder on Windows10 and mount on the Ubuntu

1. Create a existed or emply folder on Window10

2. Set Read/Write permission to everyone

3. Use `sudo apt install cifs-utils` to install cifs on Unbuntu 

4. Create a share folder on Ubuntu

```shell
$ sudo mkdir /mnt/shared
```

5. Mount Windows shared folder onto Ubuntu

```shell
$ mount -t cifs -o username="yuk4",password="{Password}",domain="CORP",sec=ntlm,iocharset=utf8 //10.35.83.84/Users/yuk4/work/linux /mnt/shared
```

> If you want to have a specified settings for folder access right, you can try to append `dir_mode=777 file_mode=777` to the end of the command.

6. Mount Windows shared folder to the specified `uid/gid` onto Ubuntu

Get uid and gid

```shell
$ cat /etc/passwd | grep 'yuk4'

yuk4:x:1001:1001:,,,:/home/yuk4:/bin/bash
    
```

yuk4's uid is 1001, gid is 1001

Umount existing mountpoint

```shell
$ Umount /mnt/shared
```

Mount

```shell
$ mount -t cifs -o username="yuk4",password="{Password}",domain="CORP",sec=ntlm,iocharset=utf8,uid="1001",gid="1001" //10.35.83.84/Users/yuk4/work/linux /mnt/shared
```