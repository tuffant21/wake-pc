# Wake PC

A tiny utility script to pulse a Raspberry Pi GPIO line using gpiod. Useful for momentarily toggling a relay or sending a power pulse to attached hardware.

**Summary:** `power_pulse.sh` sends a timed pulse on a configured GPIO line using `gpioset`.

**Requirements:**
- Linux running on the target device (e.g., Raspberry Pi)
- gpiod installed (provides `gpioset`, `gpioinfo`)
- Permission to access GPIO

**Files:**
- `power_pulse.sh` — the pulse script located in the repository root.

**Configuration:**
Open `power_pulse.sh` and edit the following variables near the top if needed:
- `GPIO_CHIP` — the GPIO chip index (default: `0`).
- `GPIO_LINE` — the GPIO line number to toggle (default: `4`).
- `PULSE_ON_VALUE` — the value to set the line when pulsed (usually `1`).

**Usage:**
Run the script with a single argument specifying the pulse duration in milliseconds.

Example:

```bash
sudo ./power_pulse.sh 300
```

This pulses the configured GPIO line for 300 milliseconds.

**Notes & Troubleshooting:**
- If `gpioset` is not found, install the libgpiod tools (package names vary by distro; look for `libgpiod`, `gpiod`, or `gpiod-tools`).
- If you get permission errors, run the script with `sudo` or configure appropriate udev rules.
- Use `gpioinfo` to list available chips and lines to find the correct `GPIO_CHIP` and `GPIO_LINE` values.
