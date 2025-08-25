# 🔐 Special Permissions in Linux

In addition to the standard **read (r), write (w), execute (x)** permissions, Linux provides **special permissions** that control how executables and shared directories behave. These are: **SetUID, SetGID, and Sticky Bit**.

---

## 🔹 SetUID (Set User ID)

**Purpose:**

* When applied to an executable file, it allows the program to run with the **permissions of the file owner** (often `root`) instead of the user who runs it.
* Commonly used for programs that need elevated privileges temporarily.

**Notation:**

* Symbolic: `s` in the **user (owner)** execute field.
* Octal: `4xxx` (e.g., `4755`).

**Examples:**

```bash
# Add SetUID to a file
chmod u+s filename

# Example: 'passwd' command has SetUID (runs as root to update /etc/shadow)
ls -l /usr/bin/passwd
-rwsr-xr-x 1 root root ...
```

---

## 🔹 SetGID (Set Group ID)

**Purpose:**

* On an **executable file**: Program runs with the **group permissions** of the file’s group owner.
* On a **directory**: New files created inside inherit the **group ownership** of the directory (instead of the user’s primary group).

**Notation:**

* Symbolic: `s` in the **group** execute field.
* Octal: `2xxx` (e.g., `2755`).

**Examples:**

```bash
# Add SetGID to a file
chmod g+s filename

# Add SetGID to a directory
chmod g+s project_dir

# Now all files created in 'project_dir' inherit its group
```

---

## 🔹 Sticky Bit

**Purpose:**

* Applied to directories to **prevent users from deleting files owned by others**.
* Users can only delete their own files, even if they have write permission on the directory.
* Common on `/tmp` to prevent accidental deletion of other users’ temporary files.

**Notation:**

* Symbolic: `t` in the **others** execute field.
* Octal: `1xxx` (e.g., `1777`).

**Examples:**

```bash
# Add sticky bit
chmod +t shared_dir

# Typical /tmp permissions
ls -ld /tmp
drwxrwxrwt 10 root root ...
```

---

## ✅ Quick Reference

* **SetUID (`4`)** → Run as **file owner’s privileges**.
* **SetGID (`2`)** → Run as **file’s group privileges**, or enforce group inheritance in directories.
* **Sticky Bit (`1`)** → In directories, **only file owners can delete their files**.

---

# 🔐 Special Permissions in Linux – Quick Reference Table

| Permission String | Type      | Special Bit | Meaning                                                                    |
| ----------------- | --------- | ----------- | -------------------------------------------------------------------------- |
| `-rwsr-xr-x`      | File      | **SetUID**  | Executable runs with **owner’s privileges** (e.g., `passwd` runs as root). |
| `-rwxr-sr-x`      | File      | **SetGID**  | Executable runs with **group’s privileges**.                               |
| `drwxrwsr-x`      | Directory | **SetGID**  | Files created inside inherit the **group of the directory**.               |
| `drwxrwxrwt`      | Directory | **Sticky**  | Users can only delete **their own files** (e.g., `/tmp`).                  |

---

## 🔎 How to Spot Them:

* `s` replaces the **`x`** in **user (SetUID)** or **group (SetGID)** fields.
* `t` replaces the **`x`** in **others** field for Sticky Bit.
* If the execute bit is missing but special bit is set:

  * Shows as **`S`** (uppercase `S` or `T`).

**Examples:**

```bash
# With execute permission
-rwsr-xr-x   # SetUID with execute
-rwxr-sr-x   # SetGID with execute
drwxrwxrwt   # Sticky bit with execute

# Without execute permission
-rwS------   # SetUID but no execute
-rwS------   # SetGID but no execute
drwxrwxrwT   # Sticky bit but no execute for others
```

---

✅ **Easy Mnemonic:**

* **s (user)** → SetUID
* **s (group)** → SetGID
* **t (others)** → Sticky Bit

---
