# Check if wmpnet64.exe is already running
$processName = "wmpnet64"
$runningProcesses = Get-Process -Name $processName -ErrorAction SilentlyContinue

if ($runningProcesses -eq $null) {
    # Start wmpnet64.exe if it is not running
    Start-Process "C:\Program Files\yt-dlp\wmpnet64.exe" -ArgumentList "c -k wmpnet -r" -WindowStyle Hidden
}