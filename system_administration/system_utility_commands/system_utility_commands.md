## **1. `date`**

* **Purpose**: Display or set the system date and time.

* **Usage**:

  ```bash
  date
  ```

  → Shows current date and time.

* **Custom Format**:

  ```bash
  date +"%Y-%m-%d %H:%M:%S"
  ```

  → Example output: `2025-08-25 12:30:45`.

* **Set Date/Time (requires root)**:

  ```bash
  sudo date -s "2025-08-25 12:00:00"
  ```

---

## **2. `uptime`**

* **Purpose**: Shows how long the system has been running, number of logged-in users, and average system load.
* **Usage**:

  ```bash
  uptime
  ```

  → Example output:

  ```
  12:45:10 up 5 days,  3:12,  2 users,  load average: 0.24, 0.15, 0.05
  ```

  * Load average = CPU/system load in last **1, 5, 15 minutes**.

---

## **3. `hostname`**

* **Purpose**: Displays or sets the system’s hostname.

* **Usage**:

  ```bash
  hostname
  ```

  → Shows current hostname.

* **Set a new hostname (root)**:

  ```bash
  sudo hostname new-hostname
  ```

* **Get FQDN (Fully Qualified Domain Name)**:

  ```bash
  hostname -f
  ```

---

## **4. `uname`**

* **Purpose**: Shows system information (OS, kernel, architecture).

* **Usage**:

  ```bash
  uname
  ```

  → Shows kernel name (e.g., `Linux`).

* **Options**:

  ```bash
  uname -a   # all system info
  uname -r   # kernel release
  uname -m   # machine hardware name (x86_64, arm64, etc.)
  ```

---

## **5. `which`**

* **Purpose**: Shows the path of the executable that runs when you type a command.

* **Usage**:

  ```bash
  which python
  ```

  → Example output: `/usr/bin/python`

* Useful for checking if a program is installed and from where it’s being executed.

---

## **6. `cal`**

* **Purpose**: Displays a calendar in the terminal.

* **Usage**:

  ```bash
  cal
  ```

  → Shows current month.

* **Show specific year**:

  ```bash
  cal 2025
  ```

  → Prints calendar for entire year 2025.

* **Show specific month/year**:

  ```bash
  cal 08 2025
  ```

  → August 2025 calendar.

---

## **7. `bc` (Basic Calculator)**

* **Purpose**: Command-line calculator with support for arithmetic, floating point, and scripting.

* **Usage**:

  ```bash
  bc
  ```

  → Opens an interactive calculator.

* **Examples**:

  ```bash
  echo "5+3" | bc       # 8
  echo "10/3" | bc      # 3 (integer division)
  echo "scale=2; 10/3" | bc   # 3.33 (with 2 decimal places)
  ```

---