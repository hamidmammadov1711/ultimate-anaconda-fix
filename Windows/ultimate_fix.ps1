<#
.SYNOPSIS
    Ultimate Anaconda Repair Tool
    Version: 4.0 (Robust Edition)
    Developer: Hamid Mammadov
#>

# --- 1. Admin Verification ---
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    Exit
}

$LogFile = "$env:USERPROFILE\Desktop\Anaconda_Repair_Log.txt"
$ErrorActionPreference = "Continue"

Function Write-Log($Message, $Color = "White") {
    $Stamp = Get-Date -Format "HH:mm:ss"
    Write-Host "[$Stamp] $Message" -ForegroundColor $Color
    "[$Stamp] $Message" | Out-File -FilePath $LogFile -Append
}

# Function to find Conda from different locations
Function Get-CondaPath {
    $paths = @(
        "$env:USERPROFILE\anaconda3\Scripts\conda.exe",
        "$env:ProgramData\anaconda3\Scripts\conda.exe",
        "C:\anaconda3\Scripts\conda.exe",
        (Get-Command conda -ErrorAction SilentlyContinue).Source
    )
    foreach ($p in $paths) { if ($p -and (Test-Path $p)) { return $p } }
    return $null
}

Function Stop-Python {
    Write-Log "Closing Processes (Python, Conda, Navigator)..." -Color Yellow
    $processes = "python","conda","navigator","jupyter","spyder"
    foreach ($p in $processes){
        Get-Process $p -ErrorAction SilentlyContinue | Stop-Process -Force
    }
    Write-Log "Processes terminated." -Color Green
}

Function Clean-Temp {
    Write-Log "Clearing temp and lock files..." -Color Yellow
    $targets = @(".conda", ".anaconda", ".matplotlib", ".ipynb_checkpoints")
    foreach ($t in $targets) {
        $p = Join-Path $env:USERPROFILE $t
        if (Test-Path $p) { Remove-Item $p -Recurse -Force -ErrorAction SilentlyContinue }
    }
    Remove-Item $env:TEMP\* -Recurse -Force -ErrorAction SilentlyContinue
    Write-Log "Temporary files cleared." -Color Green
}

Function Repair-System {
    Write-Log "Starting System Repair (SFC & DISM)..." -Color Yellow
    sfc /scannow
    DISM /Online /Cleanup-Image /RestoreHealth
    Write-Log "System repair finished." -Color Green
}

Function Fix-Anaconda {
    $conda = Get-CondaPath
    if ($null -eq $conda) {
        Write-Log "CRITICAL: Conda executable not found! Skipping Conda commands." -Color Red
        return
    }
    Write-Log "Found Conda at: $conda" -Color Cyan
    Write-Log "Executing Conda clean and reset..." -Color Yellow
    & $conda clean --all -y
    & $conda update -n base -c defaults conda -y
    Write-Log "Conda update attempt finished." -Color Green
}

Function Fix-DLL-Permissions {
    Write-Log "Fixing DLLs and Folder Permissions..." -Color Yellow
    "atl.dll","urlmon.dll","mshtml.dll" | ForEach-Object { regsvr32 /s $_ }
    icacls "$env:USERPROFILE" /grant "$($env:USERNAME):(OI)(CI)F" /T /Q
    Write-Log "Permissions restored." -Color Green
}

# --- MENU ---
do {
    Clear-Host
    Write-Host "==============================================" -ForegroundColor Cyan
    Write-Host "   ANACONDA REPAIR PRO v4.0 (Hamid Mammadov)   " -ForegroundColor Cyan
    Write-Host "==============================================" -ForegroundColor Cyan
    Write-Host "1. FULL REPAIR (Everything)" -ForegroundColor Yellow
    Write-Host "2. Stop Processes & Clear Cache"
    Write-Host "3. Windows System Repair (SFC/DISM)"
    Write-Host "4. Conda Core Reset & Update"
    Write-Host "5. DLL & Permissions Fix"
    Write-Host "6. Open Log File"
    Write-Host "Q. EXIT" -ForegroundColor Red
    Write-Host "----------------------------------------------"
    $choice = Read-Host "Select (1-6 / Q)"

    switch ($choice) {
        '1' { Stop-Python; Clean-Temp; Repair-System; Fix-Anaconda; Fix-DLL-Permissions; Write-Log "--- ALL TASKS DONE ---" -Color Cyan }
        '2' { Stop-Python; Clean-Temp }
        '3' { Repair-System }
        '4' { Fix-Anaconda }
        '5' { Fix-DLL-Permissions }
        '6' { if (Test-Path $LogFile) { notepad $LogFile } else { Write-Host "No log yet." } }
        'Q' { break }
    }

    if ($choice -ne 'Q') {
        Write-Host "`nTask completed. Press Enter to return..." -ForegroundColor Gray
        Read-Host
    }
} while ($choice -ne 'Q')