# 🛠️ Anaconda Ultimate Onarım Aracı (Pro v3.5)
<p align="center">

<img src="https://img.shields.io" />
<img src="https://img.shields.io" />
<img src="https://img.shields.io" />

</p>

Bu araç, Anaconda Navigator, Conda paket yöneticisi ve Python ortamlarında meydana gelen kritik hataları (DLL 1114, Çökme, Yol hataları) otomatik olarak çözmek için tasarlanmış **profesyonel bir onarım aracıdır**. ---
### 📥 Hazır Programı İndirin (Windows)
Teknik kodlarla uğraşmak istemiyorsanız, hazırlanmış `.exe` sürümünü doğrudan buradan indirin:
<p align="center">
<a href="https://github.com">
<img src="https://img.shields.io" />
</a>
</p>

---
## ✨ Ana Avantajlar

* **🔍 Akıllı Yol Keşfi:** Conda klasörünü otomatik olarak algılar (PATH'te olmasa bile).

* **🛡️ Gelişmiş Hata Yönetimi:** Her adım için `Try-Catch` mekanizması ve hata yönetimi.* **📋 Etkileşimli Menü:** Kullanıcının tüm işlemi veya yalnızca belirli modülleri (örneğin DLL onarımı) seçmesine olanak tanır.

* **🧹 Derin Sistem Temizliği:** Çakışmalara neden olan geçici dosyaları (Temp), Conda önbelleklerini ve kullanıcı klasörlerini temizler.

* **📝 Ayrıntılı Kayıt:** Tüm işlemler masaüstündeki `Anaconda_Repair_Log.txt` dosyasına kaydedilir.

* **⚙️ Modüler Tasarım:** Her onarım modülü (DLL, PATH, Çökme) ayrı ayrı çalışır ve her zaman güncellenebilir.

---
## 🚀 Kurulum ve Kullanım
### 💻 Windows (Komut Dosyası Aracılığıyla)

1. `Windows/ultimate_anaconda_fix.ps1` dosyasını indirin.

2. PowerShell'i **Yönetici** olarak açın ve komut dosyasını çalıştırma izni verin:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

3. Komut dosyasını çalıştırın:
```powershell
.\ultimate_anaconda_fix.ps1
```
4. Menüden `1`'i seçerek tam onarım işlemine başlayın.

🐧 Linux (Bash)

1. Linux/anaconda_fix_linux.sh dosyasını indirin.

2. Terminalde çalıştırma izni verin ve çalıştırın:

```bash
chmod +x anaconda_fix_linux.sh
./anaconda_fix_linux.sh
```

-----------------------------
# 🛠️ Geliştiriciler İçin (Derleme)
### Komut dosyasını kendiniz .exe formatına dönüştürmek istiyorsanız:

1. ps2exe modülünü yükleyin:

Install-Module ps2exe -Force

2. Derleyin:

Invoke-PS2EXE -inputFile "ultimate_anaconda_fix.ps1" -outputFile "AnacondaFixer.exe" -requireAdmin

-----------------------------
📂 Proje Yapısı

* /Windows: PowerShell komut dosyaları ve Windows'a özgü onarım modülleri.

* /Linux: Bash komut dosyaları ve ortam temizleme komutları.

* /Çeviri: (İngilizce, Türkçe) Çok dilli destek dosyaları.

-----------------------------
⚖️ Lisans
Bu proje MIT Lisansı altında lisanslanmıştır. Ayrıntılar için LICENSE dosyasına bakın.

----------------------------

Onarıma başlamak için yukarıdaki yeşil düğmeden EXE dosyasını indirin! 🚀
---