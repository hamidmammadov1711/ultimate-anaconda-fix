<#
.SYNOPSIS
    Ultimate Anaconda Repair Tool
    Version: 2.0 (Pro Menu Edition)
	Author: Hamid Mammadov
#>

# Admin yoxlaması və avtomatik Admin olaraq başlatma
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    Exit
}

$LogFile = "$env:USERPROFILE\Desktop\Anaconda_Repair_Log.txt"
Function Write-Log($Message, $Color = "White") {
    $Stamp = Get-Date -Format "HH:mm:ss"
    Write-Host "[$Stamp] $Message" -ForegroundColor $Color
    "[$Stamp] $Message" | Out-File -FilePath $LogFile -Append
}

Function Stop-Python {
    Write-Log "Proseslər dayandırılır..." -Color Yellow
    $processes = "python","conda","navigator","jupyter"
    foreach ($p in $processes){ Get-Process $p -ErrorAction SilentlyContinue | Stop-Process -Force }
    Write-Log "Bütün əlaqəli proseslər sonlandırıldı." -Color Green
}

Function Clean-Temp {
    Write-Log "Müvəqqəti fayllar təmizlənir..." -Color Yellow
    Remove-Item $env:TEMP\* -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item C:\Windows\Temp\* -Recurse -Force -ErrorAction SilentlyContinue
    Write-Log "Temp qovluqları təmizləndi." -Color Green
}

Function Repair-System {
    Write-Log "Sistem bərpası başlayır (SFC & DISM)... Bu vaxt apara bilər." -Color Yellow
    sfc /scannow
    DISM /Online /Cleanup-Image /RestoreHealth
    Write-Log "Sistem faylları bərpa olundu." -Color Green
}

Function Fix-Anaconda {
    Write-Log "Anaconda/Conda bərpası və yenilənməsi..." -Color Yellow
    conda clean --all -y 2>$null
    anaconda-navigator --reset 2>$null
    conda update conda -y 2>$null
    conda update anaconda -y 2>$null
    conda install qt pyqt -y 2>$null
    pip cache purge 2>$null
    Write-Log "Anaconda tam bərpa olundu." -Color Green
}

Function Fix-DLL-Permissions {
    Write-Log "DLL-lər qeydiyyata alınır və icazələr düzəldilir..." -Color Yellow
    $dlls = "atl.dll","urlmon.dll","mshtml.dll","actxprxy.dll","oleaut32.dll","shell32.dll"
    foreach($dll in $dlls){ regsvr32 /s $dll }
    icacls "$env:USERPROFILE" /grant "$env:USERNAME:(OI)(CI)F" /T /Q
    powercfg -setactive SCHEME_BALANCED
    Write-Log "DLL və İcazə problemləri həll edildi." -Color Green
}

# --- MENYU ---
do {
    Clear-Host
    Write-Host "==============================================" -ForegroundColor Cyan
    Write-Host "   ULTIMATE Windows - ANACONDA REPAIR TOOL v2.0         " -ForegroundColor Cyan
    Write-Host "==============================================" -ForegroundColor Cyan
    Write-Host "1. TAM TƏMİR (Hər şeyi icra et)" -ForegroundColor Yellow
    Write-Host "2. Yalnız Prosesləri Dayandır və Temp Sil"
    Write-Host "3. Windows Sistem Fayllarını Təmir Et (SFC/DISM)"
    Write-Host "4. Anaconda/Conda-nı Yenilə və Sıfırla"
    Write-Host "5. DLL və Fayl İcazələrini Bərpa Et"
    Write-Host "6. Log Faylını Aç"
    Write-Host "Q. ÇIXIŞ"
    Write-Host "----------------------------------------------"
    $choice = Read-Host "Seçiminizi edin (1-6 / Q)"

    switch ($choice) {
        '1' { Stop-Python; Clean-Temp; Repair-System; Fix-Anaconda; Fix-DLL-Permissions; Write-Log "TAM TƏMİR BAŞA ÇATDI!" -Color Cyan }
        '2' { Stop-Python; Clean-Temp }
        '3' { Repair-System }
        '4' { Fix-Anaconda }
        '5' { Fix-DLL-Permissions }
        '6' { notepad $LogFile }
        'Q' { Exit }
    }
    if ($choice -ne 'Q') { Read-Host "`nƏməliyyat bitdi. Menyuya qayıtmaq üçün Enter sıxın..." }
} while ($choice -ne 'Q')
