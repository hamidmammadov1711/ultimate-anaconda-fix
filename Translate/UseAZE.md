# 🛠️ Anaconda Ultimate Repair Tool (Pro v3.5)
<p align="center">

  <img src="https://img.shields.io" />
  <img src="https://img.shields.io" />
  <img src="https://img.shields.io" />
  
</p>

Bu alət Anaconda Navigator, Conda paket meneceri və Python mühitlərində yaranan kritik xətaları (DLL 1114, Crash, Path xətaları) avtomatlaşdırılmış şəkildə həll etmək üçün hazırlanmış **peşəkar təmir alətidir**.
--- 
### 📥 Hazır Proqramı Endir (Windows)
Texniki kodlarla uğraşmaq istəmirsinizsə, birbaşa hazırlanmış `.exe` versiyasını buradan endirin:
<p align="center">
  <a href="https://github.com">
    <img src="https://img.shields.io" />
  </a>
</p>

---
## ✨ Əsas Üstünlüklər

* **🔍 Smart Path Discovery:** Conda qovluğunu avtomatik təsbit edir (hətta PATH-da olmasa belə).

* **🛡️ Advanced Error Handling:** Hər bir addım üçün `Try-Catch` mexanizmi və xəta idarəetməsi.*   **📋 Interactive Menu:** İstifadəçiyə bütün prosesi və ya yalnız müəyyən modulları (məs: DLL təmiri) seçmək imkanı verir.
* **🧹 Deep System Clean:** Müvəqqəti faylların (Temp), Conda keşlərinin və konflikt yaradan istifadəçi qovluqlarının təmizlənməsi.
* **📝 Detailed Logging:** Bütün əməliyyatlar masaüstündəki `Anaconda_Repair_Log.txt` faylına qeyd olunur.
* **⚙️ Modular Design:** Hər bir təmir modulu (DLL, PATH, Crash) ayrıca işləyir və istənilən vaxt yenilənə bilər.
---
## 🚀 Quraşdırma və İstifadə
### 💻 Windows (Skript vasitəsilə)

1. `Windows/ultimate_anaconda_fix.ps1` faylını yükləyin.
2. PowerShell-i **Administrator** olaraq açın və skript icrası üçün icazə verin:
   
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser


3. Skripti işə salın:
   ```powershell
   .\ultimate_anaconda_fix.ps1
  ```
4. Menyudan `1` seçərək tam təmir prosesini başlayın.
   
   
🐧 Linux (Bash)

   1. Linux/anaconda_fix_linux.sh faylını yükləyin.
   2. Terminalda icra icazəsi verin və işə salın:
   
   ```bash
   chmod +x anaconda_fix_linux.sh
   ./anaconda_fix_linux.sh
   ```
   
------------------------------
# 🛠️ Developerlər üçün (Build)
### Skripti özünüz .exe formatına çevirmək istəyirsinizsə:

   1. ps2exe modulunu quraşdırın:
   
   Install-Module ps2exe -Force
   
   2. Kompilyasiya edin:
   
   Invoke-PS2EXE -inputFile "ultimate_anaconda_fix.ps1" -outputFile "AnacondaFixer.exe" -requireAdmin
   
   
------------------------------
📂 Layihə Strukturu

* /Windows: PowerShell skriptləri və Windows-a xas təmir modulları.
* /Linux: Bash skriptləri və mühit təmizləmə əmrləri.
* /Translate: (English, Turkish) Çoxdilli dəstək faylları.

------------------------------
⚖️ Lisenziya
Bu layihə MIT Lisenziyası altında qorunur. Detallar üçün LICENSE faylına baxın.
------------------------------

Təmirə başlamaq üçün yuxarıdakı yaşıl düymədən EXE faylını endirin! 🚀
---