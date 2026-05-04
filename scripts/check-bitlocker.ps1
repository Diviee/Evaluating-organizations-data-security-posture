# Check BitLocker Status Script

# This PowerShell script checks the BitLocker status of the drives on a Windows system.

# Get an array of all the drives
$drives = Get-BitLockerVolume

foreach ($drive in $drives) {
    if ($drive.ProtectionStatus -eq 'On') {
        Write-Output "Drive $($drive.MountPoint): BitLocker is enabled."
    } else {
        Write-Output "Drive $($drive.MountPoint): BitLocker is NOT enabled."
    }
}
