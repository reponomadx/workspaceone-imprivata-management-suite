#!/bin/bash

# ----------- Menu -----------
clear
echo "========= OrganizationName $(tput blink)WS1$(tput sgr0) ========="
echo "1. Restart device(s)"
echo "2. Restart Failed TNG Devices"
echo "3. Update Launchpad List"
echo "4. Device Details/Information"
echo "5. Add/Remove Tag"
echo "6. DEP Assign/Unassign"
echo "7. Clear Passcode"
echo "8. Device Wipe"
echo "9. Imprivata Check Out Status"
echo "10. Apps (Query, Install, Uninstall)"
echo "0. Exit"
echo "====================================="
read -rp "Select an option [0-10]: " choice

# ----------- Script Execution -----------
case "$choice" in
    1)
        echo " "
        echo " "
        bash "/Users/USERNAME/scripts/Restart Device/Restart.sh"
        echo " "
        echo " "
        ;;
    2)
        echo " "
        echo " "
        bash "/Users/USERNAME/scripts/Restart Failed Devices/Restart Failed Devices.sh"
        echo " "
        echo " "
        ;;
    3)
        echo " "
        echo " "
        bash "/Users/USERNAME/scripts/LPMonitor_Restart/Update LP List.sh"
        echo " "
        echo " "
        ;;
    4)
        echo " "
        echo " "
        bash "/Users/USERNAME/scripts/Device Details/Device Details.sh"
        echo " "
        echo " "
        ;;
    5)
        echo " "
        echo " "
        bash "/Users/USERNAME/scripts/AddRemove Tag/AddRemove Tag.sh"
        echo " "
        echo " "
        ;;
    6)
        echo " "
        echo " "
        bash "/Users/USERNAME/scripts/DEP/Assign or Unassign DEP.sh"
        echo " "
        echo " "
        ;;
    7)
        echo " "
        echo " "
        bash "/Users/USERNAME/scripts/ClearPasscode/ClearPasscode.sh"
        echo " "
        echo " "
        ;;
    8)
        echo " "
        echo " "
        bash "/Users/USERNAME/scripts/DeviceWipe/DeviceWipe.sh"
        echo " "
        echo " "
        ;;
    9)
        echo " "
        echo " "
        cat "$(ls -t ~/scripts/LPMonitor_Restart/logs/* 2>/dev/null | head -n 1)"
        echo " "
        echo " "
        ;;
    10)
        echo " "
        echo " "
        bash "/Users/USERNAME/scripts/Apps/Apps.sh"
        echo " "
        echo " "
        ;;
    0)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "❌ Invalid option. Please try again."
        ;;
esac
```