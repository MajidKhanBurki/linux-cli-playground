# 🔹 `sort`

**Purpose:**
Used to arrange lines of text in a file or output in a specific order (alphabetical, numerical, reverse, etc.).

**Common Options:**

* `-n` → Numeric sort (instead of default alphabetical).
* `-r` → Reverse order.
* `-k` → Sort by a specific column.
* `-u` → Unique sort (removes duplicates during sorting).

**Examples:**

```bash
# Sort a file alphabetically
sort file.txt

# Sort numbers in ascending order
sort -n numbers.txt

# Sort in reverse order
sort -r file.txt

# Sort by the 2nd column (space-separated file)
sort -k2 file.txt

# Sort uniquely (removes duplicates)
sort -u file.txt
```

---

# 🔹 `uniq`

**Purpose:**
Filters out repeated lines in **consecutive order** (works best on already sorted data).

**Common Options:**

* `-c` → Prefix each line with count of occurrences.
* `-d` → Print only duplicate lines.
* `-u` → Print only unique lines.

**Examples:**

```bash
# Remove consecutive duplicates
uniq file.txt

# Count occurrences of each line
uniq -c file.txt

# Show only duplicates
uniq -d file.txt

# Show only unique lines
uniq -u file.txt

# Best practice: sort first, then uniq
sort file.txt | uniq
```

---

✅ **Pro tip:** `uniq` alone only removes *consecutive* duplicates. For full deduplication, use it with `sort`.
