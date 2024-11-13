# Arch-Care
 Arch Care is a powerful, user-friendly maintenance tool that streamlines essential tasks for Arch Linux, keeping your system lean, optimized, and effortlessly up-to-date.

 **Description**

Arch Care is a powerful, all-in-one maintenance script that optimizes your Arch Linux system with just a few clicks, 
from updating packages to clearing caches and removing redundant files. Designed for simplicity and efficiency, 
it saves you time and hassle, keeping your system lean, clean, and running at peak performance. 
ArchCare makes Arch Linux accessible for newcomers by simplifying essential maintenance tasks, 
while providing the efficiency that power users crave, making system management effortless for all skill levels.

**Table of Contents**

- Installation
- Usage
- Features
- Tests

**Installation**

1. Download the Arch Care folder, which contains the arch_care.sh program.
2. Extract the folder to your desired directory.

**Usage**

To use this program, follow these steps:

1. Open your terminal (TTY).

2. Navigate to the directory containing the extracted "Arch Care" folder.

3. Enter the directory.

4. Ensure the script has executable permissions by running: chmod +x arch_care.sh

5. Run the script with: ./arch_care.sh

Note: Some commands in the script require sudo privileges, so you may be prompted to enter your password.

The script will execute various maintenance tasks, such as checking for systemd errors, updating packages, cleaning cached files, and providing the option to remove orphaned packages or clear journal logs. All tasks are designed to maintain and optimize your Arch Linux system efficiently.

**Features**

System Check:

Checks for any failed services in systemd to ensure all essential services are running correctly.

Journal Review:

Displays log entries from the last boot, allowing you to review recent system messages for troubleshooting.

Full System Upgrade:

Upgrades all system and AUR packages to the latest versions.

Cache Cleaning:

Clears cached packages from both pacman and yay to free up space.

Unused Packages Removal:

Removes unnecessary AUR packages and offers an option to remove orphaned packages, keeping the system lean.

Directory Size Display:

Displays the size of critical directories, such as .cache, .config, and system journal logs, to help monitor disk usage.

Optional Log Clearing:

Allows you to optionally clear journal logs older than two weeks.

**Tests**

All features have been tested by a professional QA Tester, to ensure smooth functionality. Each command has been validated for typical Arch Linux use cases, with careful attention to maintaining system integrity and security. This script is designed for Arch Linux users who prefer straightforward, minimalistic maintenance without unnecessary extras.

**Disclaimer:** 

This Arch Care tool is provided as-is, without any warranties or guarantees of any kind, including but not limited to functionality, security, or compatibility. Use this tool at your own risk. The developer is not responsible for any data loss, damage to files, or other consequences that may arise from the use or misuse of this tool. Ensure that you have backups of any critical data before using the tool, as data deleted with this tool is irrecoverable.
