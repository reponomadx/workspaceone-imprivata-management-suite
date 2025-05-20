# Workspace ONE & Imprivata MAM Automation Suite (macOS Bash)

This repository provides a unified bash menu for interacting with various Workspace ONE UEM scripts on macOS. All scripts are organized under the `~/Scripts` directory and allow IT admins to automate actions like tagging devices, syncing, wiping, and more. All functions can take input for a single devices or multiple devices that are comma-separated.

Included you will also find tools to monitor devices and LaunchPads for the Imprivata Mobile Access Management Check Out system previouly called GroundControl. Specifically in directories `~/Scripts/LPMonitor_Restart` and `~/Scripts/Restart Failed Devices`.

---

## 📁 Directory Structure

Scripts are grouped into the following folders:

```
~/Scripts/
├── AddRemove Tag/
├── Apps/
├── ClearPasscode/
├── DEP/
├── Device Details/
├── DeviceWipe/
├── LPMonitor_Restart/
├── menu/
├── Restart Device/
└── Restart Failed Devices/
```

---

## 📋 Menu Functionality

The `menu.sh` script provides an interactive terminal-based menu system to run these tools. Example prompt:

```
Select an option:
1. Restart device(s)
2. Restart Failed TNG Devices
3. Update Launchpad List
...
```

Each selection triggers a corresponding script in its designated folder.

---

## ⚙️ Usage Instructions

1. Open Terminal and navigate to the menu script:
   ```bash
   cd ~/Scripts/menu
   ./menu.sh
   ```

2. Choose a number corresponding to the task you wish to perform.

3. Follow on-screen prompts for input (e.g., serial numbers, confirmation, etc.).

---

## 🔐 Requirements

- macOS with Bash support
- Executable permissions: `chmod +x script.sh`
- Workspace ONE UEM API access with OAuth 2.0
- Token cache JSON file: `ws1_token_cache.json`
- Securely configured `client_id` and `client_secret` for API requests

---

## 🧰 Folder Descriptions

| Folder                   | Description                                      |
|--------------------------|--------------------------------------------------|
| `AddRemove Tag/`         | Add or remove tags from devices                  |
| `Apps/`                  | App status, deployments, and checks              |
| `ClearPasscode/`         | Clear passcodes remotely                         |
| `DEP/`                   | Device Enrollment Program operations             |
| `Device Details/`        | Pull detailed info (name, user, status, etc.)    |
| `DeviceWipe/`            | Send wipe commands                               |
| `LPMonitor_Restart/`     | Monitor Launchpads and restart if needed         |
| `menu/`                  | Main menu launcher                               |
| `Restart Device/`        | Manual device restart tools                      |
| `Restart Failed Devices/`| Retry failed restarts                            |

---

## ✅ Example Output

```
🔍 Looking up Device ID for serial: F59352CZ1Q...
✅ Device ID resolved: 1103072
📡 Requesting Device Information to be updated for serial 'F59352CZ1Q'...
✅ Command Sent Successfully
```

---

## ⚠️ Security Tips

- Do **not** commit secrets (client secrets, tokens) into GitHub.
- Use `.env` files or macOS Keychain for secure credential handling.
- Rotate API credentials regularly.

---

## 📄 License

Open and free. Have fun.
