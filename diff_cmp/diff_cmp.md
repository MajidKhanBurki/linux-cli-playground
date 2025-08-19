# 🔹 `diff`

**Purpose:**
Compares two text files **line by line** and shows the differences. Often used by developers to see code changes.

**Common Options:**

* `-u` → Unified format (common in patches).
* `-c` → Context format (with surrounding lines).
* `-i` → Ignore case differences.
* `-w` → Ignore all whitespace.

**Examples:**

```bash
echo "Compare two text files"
echo " "

diff sample-data.txt sample-data2.txt

echo "Unified format (used in git, patch)"
echo " "
diff -u sample-data.txt sample-data2.txt

echo "Show differences ignoring case"
echo " "

diff -i sample-data.txt sample-data2.txt

echo "Ignore whitespace differences"
echo " "
diff -w sample-data.txt sample-data2.txt
```

---

# 🔹 `cmp`

**Purpose:**
Compares two files **byte by byte**. Best for checking if two files are exactly the same (not just text).

**Common Options:**

* (no options) → Shows first difference (byte and line number).
* `-s` → Silent mode (just returns exit status).
* `-l` → Show all differing bytes (in octal).

**Examples:**

```bash
echo "Compare two files byte by byte"
echo " "
cmp sample-data.txt sample-data2.txt

echo "Only report if files differ (no output if same)"
echo " "
cmp -s sample-data.txt sample-data2.txt
echo $?   # 0 = same, 1 = different

echo " "
echo "Show all differences in bytes"
echo " "
cmp -l sample-data.txt sample-data2.txt
```

---

✅ **Key Difference:**

* `diff` → For **text files**, shows *line differences*.
* `cmp` → For **any files**, checks *byte-level differences*.

---