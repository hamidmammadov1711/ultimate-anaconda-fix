# 🛠️ Anaconda Ultimate Repair Tool (Pro v3.5)

<p align="center">
<img src="https://img.shields.io/badge/Version-3.5%20Pro-blue?style=for-the-badge&logo=anaconda" alt="Version" />
<img src="https://img.shields.io/badge/Platform-Windows%20%7C%20Linux-lightgrey?style=for-the-badge&logo=windows" alt="Platform" />
<img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License" />
</p>

**Anaconda Ultimate Repair Tool**, Windows'ta kritik hataları (**DLL 1114, Çökme, Yol hataları**) otomatik olarak çözmek için tasarlanmış profesyonel bir onarım aracıdır. Anaconda Navigator, Conda paket yöneticisi ve Python ortamları.

(Bu metinde "Anaconda Navigator" ifadesi ve "Conda paket yöneticisi" ifadesi yer almaktadır.) ---

### 📥 Hazır Programı İndirin (Windows)
Teknik kodlarla ve terminal komutlarıyla uğraşmak istemiyorsanız, aşağıdaki düğmeden doğrudan hazırlanmış `.exe` sürümünü indirin:

<p align="center">
<a href="https://github.com/hamidmammadov1711/ultimate-anaconda-fix/releases/tag/v3.5">
<img src="https://img.shields.io/badge/DOWNLOAD-LATEST_RELEASE-orange?style=for-the-badge&logo=windows&logoColor=white" alt="EXE İndir" />
</a>
</p>

---

### ✨ Başlıca Avantajlar

* **🔍 Akıllı Yol Algılama:** Conda klasörünü otomatik olarak algılar (PATH'te olmasa bile).

* **🛡️ Gelişmiş Hata Yönetimi:** Her adım için `Try-Catch` mekanizması ve hata raporlaması.

* **📋 Etkileşimli Menü:** Kullanıcının tüm işlemi veya yalnızca belirli modülleri (örneğin DLL onarımı) seçmesine olanak tanır.

* **🧹 Derin Sistem Temizliği:** Çakışan geçici dosyaları (Temp), Conda önbelleklerini ve kullanıcı klasörlerini temizler.

* **📝 Ayrıntılı Günlük Kaydı:** Tüm işlemler masaüstündeki `Anaconda_Repair_Log.txt` dosyasına kaydedilir.

* **⚙️ Modüler Tasarım:** Her onarım modülü (DLL, PATH, Çökme) birbirinden bağımsız olarak çalışır.

---

## 🚀 Kurulum ve Kullanım

### 💻 Windows (Komut Dosyası aracılığıyla)
1. `Windows/ultimate_anaconda_fix.ps1` dosyasını indirin.
2. PowerShell'i **Yönetici** olarak açın ve aşağıdaki komutla izinleri verin:
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```
3. Komut dosyasını çalıştırın:
```powershell
.\ultimate_anaconda_fix.ps1
```
4. Menüden `1`'i seçerek tamir işlemini başlatın.

### 🐧 Linux (Bash)
1. `Linux/anaconda_fix_linux.sh` dosyasını indirin.

2. Terminalde, izinleri verin ve aşağıdaki komutla betiği çalıştırın:
```bash
chmod +x anaconda_fix_linux.sh
./anaconda_fix_linux.sh
```
-----------------------------
### 🛠️ Geliştiriciler İçin (Derleme)
Betik dosyasını `.exe` formatına dönüştürmek için:
1. `ps2exe` modülünü yükleyin:
```powershell
Install-Module ps2exe -Force
```
2. Çalıştırın:
```powershell
Invoke-PS2EXE -inputFile "ultimate_anaconda_fix.ps1" -outputFile "AnacondaFixer.exe" -requireAdmin
```
-----------------------------
### 📂 Proje Yapısı
* `/Windows`: PowerShell betikleri ve Windows'a özgü onarım modülleri.

* `/Linux`: Bash betikleri ve ortam temizleme komutları.

* `/Translate`: Çok dilli destek dosyaları (İngilizce, Türkçe, Azerbaycan dili).

-----------------------------
### ⚖️ Lisans
Bu proje **MIT Lisansı** altında lisanslanmıştır. Daha fazla bilgi için *LICENSE* dosyasına bakın.