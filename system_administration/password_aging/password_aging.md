# 🔹 Password Aging in Linux

**Purpose:**
Password aging controls how long a password remains valid, when the user must change it, and when warnings are issued before expiration. It enhances **security** by forcing regular password updates.

**Key Command:** `chage`

* `-l <user>` → List password aging info.
* `-M <days>` → Set maximum days before password must be changed.
* `-m <days>` → Set minimum days before password can be changed.
* `-W <days>` → Warn user `<days>` before expiration.
* `-E <date>` → Set account expiration date.

**Examples:**

```bash
# Show password aging details for a user
sudo chage -l john

# Force password change every 90 days
sudo chage -M 90 john

# Require at least 7 days before password can be changed
sudo chage -m 7 john

# Warn 10 days before password expires
sudo chage -W 10 john

# Expire account on Dec 31, 2025
sudo chage -E 2025-12-31 john
```

**Stored In:** `/etc/shadow` file (fields include last password change, min/max age, warning days, expiration date).

---

## 🔹 `/etc/login.defs`

**Purpose:**
Configuration file that defines **default settings for user accounts** created with `useradd`. It sets system-wide defaults for password aging, UID/GID ranges, and more.

**Common Fields Inside `/etc/login.defs`:**

* `PASS_MAX_DAYS` → Maximum number of days a password is valid (e.g., 99999).
* `PASS_MIN_DAYS` → Minimum number of days before password can be changed.
* `PASS_WARN_AGE` → Number of days before expiration to warn user.
* `UID_MIN` / `UID_MAX` → Range of user IDs for normal users.
* `GID_MIN` / `GID_MAX` → Range of group IDs for normal groups.
* `ENCRYPT_METHOD` → Password hashing algorithm (e.g., SHA512).
* `CREATE_HOME` → Whether to create home directories by default (`yes`/`no`).

**Example `/etc/login.defs`:**

```conf
PASS_MAX_DAYS   90
PASS_MIN_DAYS   7
PASS_WARN_AGE   14
UID_MIN         1000
UID_MAX         60000
GID_MIN         1000
GID_MAX         60000
ENCRYPT_METHOD  SHA512
CREATE_HOME     yes
```

---

✅ **Summary:**

* **Password aging** = managed via `chage`, stored in `/etc/shadow`.
* **`/etc/login.defs`** = system defaults for password policy, UID/GID ranges, and account creation.

---