<#
.SYNOPSIS
    ULTIMATE ANACONDA REPAIR SUITE PRO
    Version: 4.0 (Robust Edition)
    Developer: Hamid Mammadov
#>

# --- 1. Admin Privilege & Environment Setup ---
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    Exit
}

$LogFile = "$env:USERPROFILE\Desktop\Anaconda_Repair_Log.txt"
$ErrorActionPreference = "Continue" # Changed from Stop to prevent early exit

Function Write-Status ($Msg, $Color = "Cyan") {
    $Time = Get-Date -Format "HH:mm:ss"
    Write-Host "[$Time] $Msg" -ForegroundColor $Color
    "[$Time] $Msg" | Out-File -FilePath $LogFile -Append
}

# --- 2. Advanced Path Discovery ---
Function Find-CondaExecutable {
    $PossiblePaths = @(
        "$env:USERPROFILE\anaconda3\Scripts\conda.exe",
        "$env:ProgramData\anaconda3\Scripts\conda.exe",
        "C:\ProgramData\anaconda3\Scripts\conda.exe",
        "D:\anaconda3\Scripts\conda.exe",
        (Get-Command conda -ErrorAction SilentlyContinue).Source
    )
    foreach ($Path in $PossiblePaths) {
        if ($Path -and (Test-Path $Path)) { return $Path }
    }
    return $null
}

# --- 3. Core Repair Actions ---
$Actions = @{
    "KillTasks" = {
        Write-Status "Terminating Anaconda/Python processes..." "Yellow"
        Get-Process python, conda, navigator, jupyter, spyder -ErrorAction SilentlyContinue | Stop-Process -Force
    }
    "CleanCache" = {
        Write-Status "Clearing temporary files and locks..." "Yellow"
        $Targets = @(".conda", ".anaconda", ".matplotlib", ".ipynb_checkpoints")
        foreach ($T in $Targets) {
            $P = Join-Path $env:USERPROFILE $T
            if (Test-Path $P) { Remove-Item $P -Recurse -Force -ErrorAction SilentlyContinue }
        }
    }
    "RepairConda" = {
        $Conda = Find-CondaExecutable
        if ($Conda) {
            Write-Status "Found Conda at: $Conda" "Green"
            & $Conda clean --all -y
            & $Conda update -n base -c defaults conda -y
        } else {
            Write-Status "ERROR: Conda not found in standard paths." "Red"
        }
    }
}

# --- 4. Interactive Interface ---
do {
    Clear-Host
    Write-Host "===============================================" -ForegroundColor Cyan
    Write-Host " ANACONDA ULTIMATE REPAIR v4.0 (Hamid Mammadov)          " -ForegroundColor Cyan
    Write-Host "===============================================" -ForegroundColor Cyan
    Write-Host "1. FULL SYSTEM REPAIR (Includes SFC/DISM)" -ForegroundColor Green
    Write-Host "2. Clean Caches & Kill Locked Processes"
    Write-Host "3. Conda Core Reset & Update"
    Write-Host "4. Fix DLL & Folder Permissions"
    Write-Host "5. Open Log File"
    Write-Host "Q. EXIT" -ForegroundColor Red
    Write-Host "-----------------------------------------------"
    $choice = Read-Host "Select an option"

    switch ($choice) {
        '1' {
            & $Actions.KillTasks
            & $Actions.CleanCache
            Write-Status "Running Windows System File Check..."
            sfc /scannow; DISM /Online /Cleanup-Image /RestoreHealth
            & $Actions.RepairConda
        }
        '2' { & $Actions.KillTasks; & $Actions.CleanCache }
        '3' { & $Actions.RepairConda }
        '4' {
            "atl.dll","urlmon.dll" | ForEach-Object { regsvr32 /s $_ }
            icacls "$env:USERPROFILE" /grant "$($env:USERNAME):(OI)(CI)F" /T /Q
            Write-Status "Permissions and DLLs restored." "Green"
        }
        '5' { if (Test-Path $LogFile) { notepad $LogFile } }
    }

    if ($choice -ne 'Q') {
        Write-Host "`nOperation Finished. Press Enter to return to menu..." -ForegroundColor Gray
        Read-Host
    }

} while ($choice -ne 'Q')