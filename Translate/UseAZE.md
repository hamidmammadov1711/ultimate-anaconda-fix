# 🛠️ Anaconda Ultimate Repair Tool (Pro v3.5)

<p align="center">
  <img src="https://img.shields.io/badge/Version-3.5%20Pro-blue?style=for-the-badge&logo=anaconda" alt="Version" />
  <img src="https://img.shields.io/badge/Platform-Windows%20%7C%20Linux-lightgrey?style=for-the-badge&logo=windows" alt="Platform" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License" />
</p>

**Anaconda Ultimate Repair Tool**, Anaconda Navigator, Conda paket meneceri və Python mühitlərində yaranan kritik
xətaları (**DLL 1114, Crash, Path xətaları**) avtomatik həll etmək üçün nəzərdə tutulmuş professional təmir alətidir.

---

### 📥 Hazır Proqramı Yüklə (Windows)

Texniki kodlarla və terminal əmrləri ilə məşğul olmaq istəmirsinizsə, birbaşa hazırlanmış `.exe` versiyasını aşağıdakı
düymədən yükləyin:

<p align="center">
  <a href="https://github.com/hamidmammadov1711/ultimate-anaconda-fix/releases/tag/v3.5">
    <img src="https://img.shields.io/badge/DOWNLOAD-LATEST_RELEASE-orange?style=for-the-badge&logo=windows&logoColor=white" alt="Download EXE" />
  </a>
</p>

---

### ✨ Əsas Üstünlüklər

* **🔍 Ağıllı Yol Tapma:** Conda qovluğunu (PATH-da olmasa belə) avtomatik aşkar edir.
* **🛡️ Təkmil Xəta İdarəetməsi:** Hər bir addım üçün `Try-Catch` mexanizmi və səhv hesabatı.
* **📋 İnteraktiv Menyu:** İstifadəçiyə bütün prosesi və ya yalnız müəyyən modulları (məsələn, DLL təmiri) seçmək imkanı
  verir.
* **🧹 Dərin Sistem Təmizliyi:** Münaqişə yaradan müvəqqəti faylları (Temp), Conda keşlərini və istifadəçi qovluqlarını
  təmizləyir.
* **📝 Ətraflı Loglama:** Bütün əməliyyatlar masaüstündəki `Anaconda_Repair_Log.txt` faylında qeyd olunur.
* **⚙️ Modulyar Dizayn:** Hər bir təmir modulu (DLL, PATH, Crash) bir-birindən asılı olmayaraq işləyir.

---

## 🚀 Quraşdırma və İstifadə

### 💻 Windows (Skript vasitəsilə)

1. `Windows/ultimate_anaconda_fix.ps1` faylını yükləyin.
2. PowerShell-i **Administrator** olaraq açın və aşağıdakı əmrlə icazə verin:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```
3. Skripti işə salın:
   ```powershell
   .\ultimate_anaconda_fix.ps1

  ```
4. Menyudan `1` seçərək tam təmir prosesinə başlayın.
### 🐧 Linux (Bash)
1. `Linux/anaconda_fix_linux.sh` faylını yükləyin.
2. Terminaldə aşağıdakı əmrlə icazə verin və skripti işə salın:
   ```bash
   chmod +x anaconda_fix_linux.sh
   ./anaconda_fix_linux.sh
   ```

------------------------------

### 🛠️ Tərtibatçılar üçün (Build)

Skripti `.exe` formatına çevirmək üçün:

1. `ps2exe` modulunu quraşdırın:
   ```powershell
   Install-Module ps2exe -Force
   ```
2. İcra edin:
   ```powershell
   Invoke-PS2EXE -inputFile "ultimate_anaconda_fix.ps1" -outputFile "AnacondaFixer.exe" -requireAdmin
   ```  

------------------------------

### 📂 Layihə Strukturu

`📂 Windows	PowerShell` skriptləri və Windows təmir modulları.

`📂 Linux	Bash` skriptləri və mühit təmizləmə əmrləri.

`📂 Translate`    Azərbaycan və Türk dillərində təlimatlar.

### ⚖️ Lisenziya

Bu layihə **[MIT Lisenziyası](/..LICENSE)** altında lisenziyalaşdırılmışdır. Ətraflı məlumat üçün LICENSE
faylına baxın.