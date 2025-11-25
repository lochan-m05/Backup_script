Incremental Rsync Backup Script

A robust Bash script designed to perform incremental backups using `rsync`. It maintains a mirror of your source directory while preserving older versions of modified or deleted files in dated folders.

This solution is lightweight and ideal for Linux servers, desktops, or running inside Kubernetes pods (e.g., as a CronJob sidecar).

 Features

 Incremental Backups: Only copies changed files to save time and bandwidth.
 Version History: Modified or deleted files are not lost; they are moved to a dated timestamp folder (e.g., `2025-11-25`).
 Mirroring: The `current` folder is always an exact mirror of the source.
 Logging: automatically logs operations to `backup_YYYY-MM-DD.log`.
 Dependency Check: Automatically checks if `rsync` is installed before running.

  Prerequisites

 Linux/Unix environment (or WSL on Windows)
 `bash` shell
 `rsync` installed

 Installation

1.  Clone the repository:
    ```bash
    git clone [https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git](https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git)
    cd YOUR_REPO_NAME
    ```

2.  Make the script executable:
    ```bash
    chmod +x Backup.sh
    ```

  Usage

Run the script by providing the Source Directory and the Target Directory.

```bash
./Backup.sh <SOURCE_DIR> <TARGET_DIR>
