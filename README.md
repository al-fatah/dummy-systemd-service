# Dummy systemd Service

A simple project to learn how to create and manage custom systemd services.

## Files
- `dummy.sh`: Script that logs "Dummy service is running..." every 10 seconds.
- `dummy.service`: systemd unit file to run the script as a background service.

## Setup

1. Copy the script:
    ```bash
   sudo cp dummy.sh /usr/local/bin/dummy.sh
   sudo chmod +x /usr/local/bin/dummy.sh
    ```

2. Copy the service file:
    ```bash
    sudo cp dummy.service /etc/systemd/system/dummy.service
    ```
3. Reload systemd and enable the service:
    ```bash
    sudo systemctl daemon-reload
    sudo systemctl enable dummy
    sudo systemctl start dummy
    ```
4. Check status and logs:
    ```bash
    sudo systemctl status dummy
    tail -f /var/log/dummy-service.log
    sudo journalctl -u dummy -f
    ```
5. Stop/disable if needed:
    ```bash
    sudo systemctl stop dummy
    sudo systemctl disable dummy
    ```

### Notes
- Logs are written to /var/log/dummy-service.log.
- Service auto-restarts if it fails.
- Runs automatically on boot once enabled.

https://roadmap.sh/projects/dummy-systemd-service 
