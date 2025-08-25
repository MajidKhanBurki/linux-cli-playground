# 🔹 `useradd`

**Purpose:**
Creates a new user account.

**Common Options:**

* `-m` → Create home directory.
* `-d <dir>` → Specify home directory.
* `-s <shell>` → Set login shell.
* `-G <groups>` → Add user to supplementary groups.

**Examples:**

```bash
# Create a user with default settings
sudo useradd john

# Create user with home directory and shell
sudo useradd -m -s /bin/bash john

# Create user with custom home directory
sudo useradd -m -d /home/custom john
```

---

## 🔹 `groupadd`

**Purpose:**
Creates a new group.

**Common Options:**

* `-g <gid>` → Specify group ID.

**Examples:**

```bash
# Create a group
sudo groupadd developers

# Create group with custom GID
sudo groupadd -g 1050 testers
```

---

## 🔹 `userdel`

**Purpose:**
Deletes a user account.

**Common Options:**

* `-r` → Remove home directory and mail spool.

**Examples:**

```bash
# Delete a user (account only)
sudo userdel john

# Delete user and their home directory
sudo userdel -r john
```

---

## 🔹 `groupdel`

**Purpose:**
Deletes a group (cannot delete if it is the primary group of an active user).

**Example:**

```bash
# Delete a group
sudo groupdel developers
```

---

## 🔹 `usermod`

**Purpose:**
Modify an existing user account.

**Common Options:**

* `-l <newname>` → Change username.
* `-d <dir> -m` → Move home directory.
* `-s <shell>` → Change login shell.
* `-aG <groups>` → Add user to supplementary groups (important: use `-a` with `-G` to append, otherwise it overwrites groups).

**Examples:**

```bash
# Change username
sudo usermod -l newjohn john

# Change home directory
sudo usermod -d /home/newjohn -m john

# Change login shell
sudo usermod -s /bin/zsh john

# Add user to supplementary group (append)
sudo usermod -aG developers john
```

---

✅ **Summary Rule of Thumb:**

* `useradd` / `groupadd` → Create.
* `userdel` / `groupdel` → Delete.
* `usermod` → Modify existing users.

---
