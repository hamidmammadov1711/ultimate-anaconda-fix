# 🛠️ Anaconda Ultimate Repair Pro (v4.0)

<p align="center">
<img src="https://img.shields.io/badge/Version-4.0%20Pro-green?style=for-the-badge&logo=anaconda" alt="Version" />
<img src="https://img.shields.io/badge/Platform-Windows-blue?style=for-the-badge&logo=windows" alt="Platform" />
<img src="https://img.shields.io/badge/Developer-Hamid%20Mammadov-orange?style=for-the-badge" alt="Developer" />
</p>

**Anaconda Ultimate Repair Pro**, Anaconda Navigator, Conda paket meneceri və Python mühitlərində yaranan kritik xətaları (**DLL 1114 xətaları, Navigator-un açılmaması, yol (path) xətaları və icazə konfliktləri**) avtomatik aşkar edib aradan qaldıran peşəkar təmir alətidir.

---

### 📥 Proqramı Yükləyin (Tövsiyə olunur)
Texniki kodlarla məşğul olmaq istəmirsinizsə, birbaşa `.exe` formatında olan hazır versiyanı yükləyin. Bu versiya stabillik üçün optimallaşdırılıb və avtomatik Admin icazəsi ilə işləyir.

<p align="center">
<a href="https://github.com/hamidmammadov1711/ultimate-anaconda-fix/releases/latest">
<img src="https://img.shields.io/badge/DOWNLOAD-LATEST_EXE-orange?style=for-the-badge&logo=windows&logoColor=white" alt="Download EXE" />
</a>
</p>

---

### ✨ v4.0 Versiyasının Üstünlükləri
* **Davamlı İnterfeys:** Tapşırıqlar bitdikdən sonra proqram dərhal bağlanmır, nəticələri görməyinizə imkan verir.
* **Dinamik Yol Axtarışı:** Conda-nın `C:`, `D:` və ya sistem dəyişənlərindəki yerini avtomatik tapır.
* **Proses İzolyasiyası:** Arxa fonda ilişib qalmış Python və Anaconda proseslərini məcburi dayandırır.
* **Sistem Bütövlüyü:** Windows-un kritik sistem fayllarını düzəltmək üçün inteqrasiya olunmuş `SFC` və `DISM` alətləri.
* **İcazələrin Bərpası:** Qovluq giriş hüquqlarını bərpa edir və kritik DLL kitabxanalarını yenidən qeydiyyatdan keçirir.

---

### 🚀 İstifadə Təlimatı

#### 💻 Windows (.exe versiyası)
1. "Releases" bölməsindən `Anaconda_Fixer_v4.exe` faylını yükləyin.
2. Faylın üzərinə sağ klikləyin və **"Run as Administrator"** (İnzibatçı kimi işlət) seçimini edin.
3. Menyu vasitəsilə lazım olan təmiri seçin (Tam təmir üçün `1` seçilməsi tövsiyə olunur).

#### 📜 PowerShell (Script - .ps1)
Əgər mənbə kodu ilə işləməyə üstünlük verirsinizsə:
1. PowerShell-i **Administrator** olaraq açın.
2. Scriptin işləməsi üçün icazəni aktivləşdirin:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   
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
   Invoke-PS2EXE -InputFile ".\Anaconda_Repair_Pro.ps1" -OutputFile ".\Anaconda_Fixer_v4.exe" -Title "Anaconda Repair Suite Pro" -Version "4.0.0"
   ```  

------------------------------

### 📂 Layihə Strukturu

`📂 Windows	PowerShell` skriptləri və Windows təmir modulları.

`📂 Linux	Bash` skriptləri və mühit təmizləmə əmrləri.

`📂 Translate`    Azərbaycan və Türk dillərində təlimatlar.

### ⚖️ Lisenziya

Bu layihə **MIT Lisenziyası** altında lisenziyalaşdırılmışdır. Ətraflı məlumat üçün *LICENSE*
faylına baxın.

### 🤝 Dəstək
Əgər bu alət probleminizi həll etməyə kömək etdisə, repozitoriyanı Star ⭐ etməyi və digər yoldaşlarınızla paylaşmağı unutmayın!

Hazırladı: Hamid Mammadov