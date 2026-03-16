<#
.SYNOPSIS
    ULTIMATE ANACONDA REPAIR SUITE PRO
    Version: 3.5 (Interaktiv & Təhlükəsiz)
	Author: Hamid Mammadov
#>

# --- 1. Admin Yoxlaması və Avtomatik Yüksəltmə ---
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Admin icazəsi alınır..." -ForegroundColor Cyan
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    Exit
}

$LogFile = "$env:USERPROFILE\Desktop\Anaconda_Repair_Log.txt"
$ErrorActionPreference = "Stop"

# --- 2. Professional Alətlər (Helper Functions) ---
Function Write-UI ($Message, $Color = "White") {
    $Stamp = Get-Date -Format "HH:mm:ss"
    Write-Host "[$Stamp] $Message" -ForegroundColor $Color
    "[$Stamp] $Message" | Out-File -FilePath $LogFile -Append
}

Function Test-Internet {
    try {
        $ping = Test-Connection -ComputerName 8.8.8.8 -Count 1 -ErrorAction SilentlyContinue
        return $null -ne $ping
    } catch { return $false }
}

Function Find-Conda {
    $Paths = @(
        "conda", # Əgər PATH-dadırsa
        "$env:USERPROFILE\anaconda3\Scripts\conda.exe",
        "$env:ProgramData\anaconda3\Scripts\conda.exe",
        "$env:USERPROFILE\AppData\Local\anaconda3\Scripts\conda.exe"
    )
    foreach ($p in $Paths) {
        if (Get-Command $p -ErrorAction SilentlyContinue) { return $p }
    }
    return $null
}

# --- 3. Xəta İdarəetmə Modulu (Wrapper) ---
Function Execute-Safe {
    param([string]$Desc, [scriptblock]$Action)
    Write-UI "İCRA OLUNUR: $Desc..." "Cyan"
    try {
        & $Action
        Write-UI "TAMAMLANDI: $Desc" "Green"
    } catch {
        Write-UI "XƏTA: $Desc zamanı problem yarandı: $($_.Exception.Message)" "Red"
    }
}

# --- 4. Əsas Əməliyyat Blokları ---
$KillProcs = {
    $list = "python", "conda", "navigator", "jupyter", "spyder", "anaconda"
    foreach ($i in $list) { Get-Process $i -ErrorAction SilentlyContinue | Stop-Process -Force }
}

$DeepClean = {
    Remove-Item $env:TEMP\* -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item C:\Windows\Temp\* -Recurse -Force -ErrorAction SilentlyContinue
    $userDirs = @(".conda", ".anaconda", ".matplotlib", ".ipynb_checkpoints")
    foreach ($d in $userDirs) {
        $p = Join-Path $env:USERPROFILE $d
        if (Test-Path $p) { Remove-Item $p -Recurse -Force -ErrorAction SilentlyContinue }
    }
}

$CondaFix = {
    $c = Find-Conda
    if ($c) {
        & $c clean --all -y
        if (Test-Internet) {
            & $c update -n base -c defaults conda -y
            & $c update anaconda -y
        }
        anaconda-navigator --reset
    } else {
        throw "Conda tapılmadı! Zəhmət olmasa Anaconda-nın quraşdırıldığını yoxlayın."
    }
}

# --- 5. Menyu Sistemi ---
do {
    Clear-Host
    Write-Host "==============================================" -ForegroundColor Cyan
    Write-Host "     ANACONDA PRO REPAIR SUITE v3.5           " -ForegroundColor Cyan
    Write-Host "==============================================" -ForegroundColor Cyan
    Write-Host "1. [FULL] Hər şeyi ardıcıl təmir et" -ForegroundColor Yellow
    Write-Host "2. Prosesləri dayandır və Temp-i təmizlə"
    Write-Host "3. Windows Sistem Təmiri (SFC & DISM)"
    Write-Host "4. Anaconda-nı tap və sıfırla/yenilə"
    Write-Host "5. DLL və İcazə xətalarını düzəlt"
    Write-Host "6. Log faylına bax"
    Write-Host "R. Kompüteri YENİDƏN BAŞLAT" -ForegroundColor Red
    Write-Host "Q. ÇIXIŞ"
    Write-Host "----------------------------------------------"
    $opt = Read-Host "Seçiminiz"

    switch ($opt) {
        '1' {
            Execute-Safe "Proseslərin sonlandırılması" $KillProcs
            Execute-Safe "Dərin təmizlik" $DeepClean
            Execute-Safe "Sistem Təmiri" { sfc /scannow; DISM /Online /Cleanup-Image /RestoreHealth }
            Execute-Safe "Anaconda Təmiri" $CondaFix
        }
        '2' { Execute-Safe "Stop & Clean" { & $KillProcs; & $DeepClean } }
        '3' { Execute-Safe "Windows SFC/DISM" { sfc /scannow; DISM /Online /Cleanup-Image /RestoreHealth } }
        '4' { Execute-Safe "Anaconda" $CondaFix }
        '5' { 
            Execute-Safe "DLL Fix" { "atl.dll","urlmon.dll","mshtml.dll" | ForEach-Object { regsvr32 /s $_ } }
            Execute-Safe "Permissions" { icacls "$env:USERPROFILE" /grant "$($env:USERNAME):(OI)(CI)F" /T /Q }
        }
        '6' { if (Test-Path $LogFile) { notepad $LogFile } }
        'R' {
            $confirm = Read-Host "Kompüter indi yenidən başlatılsın? (Y/N)"
            if ($confirm -eq "Y" -or $confirm -eq "y") { Restart-Computer -Force }
        }
    }
    if ($opt -notin @('Q', 'R')) { Read-Host "`nİşlem bitdi. Menyu üçün Enter sıxın..." }
} while ($opt -ne 'Q')
