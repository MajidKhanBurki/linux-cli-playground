# 🔹 `sed`

**Purpose:**
`sed` (Stream Editor) is used to **search, find, replace, insert, or delete text** in a file or input stream. It processes text line by line without opening an editor.

---

### **Common Usage & Options**

* `s/pattern/replacement/` → Substitute pattern with replacement.
* `g` → Global (replace all occurrences on a line).
* `-i` → Edit file **in place**.
* `d` → Delete lines.
* `p` → Print lines (used with `-n` to suppress auto-printing).

---

### **Examples**

```bash
# Replace first occurrence of 'apple' with 'orange' in each line
sed 's/apple/orange/' file.txt

# Replace all occurrences of 'apple' with 'orange'
sed 's/apple/orange/g' file.txt

# Replace text directly inside the file
sed -i 's/apple/orange/g' file.txt

# Delete lines containing 'error'
sed '/error/d' file.txt

# Print only lines 1 to 3
sed -n '1,3p' file.txt

# Insert a line after line 2
sed '2a\This is a new line' file.txt

# Replace only on a specific line (line 5)
sed '5s/apple/orange/' file.txt
```

---

✅ **Pro tip:**

* Use `-E` (or `-r` on some systems) to enable extended regex for more powerful substitutions.
* Always test before using `-i`, since it modifies the file directly.

---

Want me to also make you a **mini cheat sheet of the most useful sed one-liners** (like “delete blank lines,” “replace multiple words,” etc.)?
