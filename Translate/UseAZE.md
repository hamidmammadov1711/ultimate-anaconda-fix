# 🛠️ Anaconda Ultimate Repair Tool (Pro v3.5)

Bu alət Windows və Linux sistemlərində Anaconda Navigator, Conda paket meneceri və Python mühitlərində yaranan kritik xətaları (DLL 1114, Crash, Path və.s kimi problemləri) təmizləmək və bərpa etmək üçün nəzərdə tutulmuşdur. 

## ✨ Xüsusiyyətlər
- **Smart Discovery:** Conda qovluğunu avtomatik tapır.
- **Error Handling:** Hər bir addım üçün xəta idarəetməsi və Log sistemi.
- **Deep Clean:** Temp və Keş fayllarının tam təmizlənməsi.
- **Interactive Menu:** Tək-tək və ya bütöv təmir seçimi.

## 🚀 İstifadə Qaydası

### 💻 Windows (PowerShell)
1. `ultimate_fix.ps1` faylını yükləyin.
2. Fayla sağ klikləyib **"Run with PowerShell"** seçin (Və ya Administrator olaraq işə salın).
3. Menyu çıxdıqda `1` yazaraq tam təmiri başladın.

#### 🐧 Linux
1. `ultimate_fix.sh` faylını yükləyin.
2. Fayla sağ klikləyib **"Run as root"** seçin.
3. Menyu çıxdıqda `1` yazaraq tam təmiri başladın.
4. Terminal açın və aşağıdakı əmri daxil edin:
```bash
chmod +x anaconda_fix_linux.sh
./anaconda_fix_linux.sh
```

**Qeyd 1:** PowerShell-i admin olaraq açın:
```powershell
Set-ExecutionPolicy RemoteSigned
```

**Qeyd 2:** `.exe` versiyasını yaratmaq üçün:
```powershell
Invoke-PS2EXE -inputFile "ultimate_fix.ps1" -outputFile "AnacondaFixer.exe" -admin
```