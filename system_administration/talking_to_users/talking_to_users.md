# 🖥️ Talking to Users in Linux

Linux provides several commands to **view logged-in users** and **communicate with them directly** on a multi-user system.

---

## 🔹 `users`

**Purpose:**
Displays a list of usernames currently logged in to the system.

**Notes:**

* Output shows **usernames only**, separated by spaces.
* Useful for quickly checking who is logged in.

**Examples:**

```bash
# Show logged-in users
users

# Sample output
john mary root
```

---

## 🔹 `write`

**Purpose:**
Sends a **direct message** to another logged-in user’s terminal.

**Notes:**

* You must know the username (and sometimes the terminal, if the user is logged in multiple times).
* Ends message with `Ctrl+D`.
* User must not have messaging disabled (using `mesg n`).

**Examples:**

```bash
# Send a message to user 'john'
write john

# With terminal specified
write john pts/1

# Then type your message:
Hi John,  
Please check the logs.  
<Ctrl+D> to send
```

---

## 🔹 `wall` (Write All)

**Purpose:**
Broadcasts a message to **all logged-in users**.

**Notes:**

* Commonly used by system administrators to send announcements (e.g., system shutdowns).
* By default, it writes the message to all terminals.
* If no message is provided, it reads from **stdin** until `Ctrl+D`.

**Examples:**

```bash
# Broadcast a message
sudo wall "System will reboot in 10 minutes. Save your work."

# Multi-line message (end with Ctrl+D)
wall
This is a maintenance notice.
Please save your work and log out.
<Ctrl+D>
```

---

## ✅ Summary

* `users` → See who’s logged in.
* `write <user>` → Send private message to one user.
* `wall` → Broadcast a message to everyone.

---