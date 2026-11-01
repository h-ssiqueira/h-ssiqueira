# Windows
## Repair
```
DISM /Online /Cleanup-Image /RestoreHealth
sfc /scannow
chkdsh C: /r /f
```
___
## Disk / memory health
```
Get-PhysicalDisk | Select FriendlyName,HealthStatus,OperationalStatus
Get-Volume
mdsched.exe
```
* `mdsched.exe` runs the Windows RAM test and reboots the machine.
___
## Errors Events
* Disk, from the past 3 days:
```
powershell -NoProfile -Command "$events = Get-WinEvent -FilterHashtable @{LogName='System'; StartTime=(Get-Date).AddDays(-3)} -ErrorAction SilentlyContinue; $events | Where-Object {$_.ProviderName -match 'disk|stornvme|storport|Ntfs'} | Select-Object TimeCreated,ProviderName,Id,LevelDisplayName,Message | Format-List"
```
___
## Network reset
```
ipconfig /flushdns
netsh winsock reset
netsh int ip reset
```
___
# Linux
## Disks and filesystems
```
sudo fdisk -l
lsblk -f
df -h ; df -i
sudo fsck -fy /dev/sdb2
```
* Unmount the filesystem first, or boot from a live USB. Running `fsck` on a mounted filesystem can corrupt it.
* `df -i` shows inode usage; a filesystem can be "full" with free space left.
___
## SMART / hardware health
```
sudo smartctl -a /dev/sdX
sudo nvme smart-log /dev/nvme0
```
* `smartctl` is provided by the `smartmontools` package.
* Check SMART and make sure backups exist before running `chkdsk /r` or `fsck -fy`, since both can stress or modify a failing disk.
___
## Logs and services
```
sudo dmesg -T | grep -iE 'error|fail|i/o|ext4|nvme'
journalctl -p err -b
journalctl -b -1 -p err
systemctl --failed
free -h ; top
```
* `journalctl -b -1` reads the previous boot (requires persistent journal).
___
## System Requirement Commands
* Alt + SysRq (Print Screen)
* Sequence: REISUB

Key|Action
:---:|:---:
R|Keyboard back to XLATE mode
E|SIGTERM to all processes
I|SIGKILL to all processes
S|Sync pending disk writes
U|Remount filesystems read-only
O|Power off
B|Reboot