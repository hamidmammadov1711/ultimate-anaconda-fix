# 🛠️ Anaconda Ultimate Repair Pro (v4.0)

<p align="center">
<img src="https://img.shields.io/badge/Version-4.0%20Pro-green?style=for-the-badge&logo=anaconda" alt="Version" />
<img src="https://img.shields.io/badge/Platform-Windows-blue?style=for-the-badge&logo=windows" alt="Platform" />
<img src="https://img.shields.io/badge/Developer-Hamid%20Mammadov-orange?style=for-the-badge" alt="Developer" />
</p>

**Anaconda Ultimate Repair Pro**, Anaconda Navigator, Conda paket yöneticisi ve Python ortamlarında meydana gelen kritik
hataları (**DLL 1114 hataları, Navigator'ın açılmaması, yol (path) hataları ve izin çakışmaları**) otomatik olarak
tespit edip çözen profesyonel bir onarım aracıdır.

---

### 📥 Programı İndirin (Önerilir)

Teknik kodlarla uğraşmak istemiyorsanız, doğrudan `.exe` formatındaki hazır sürümü indirin. Bu sürüm kararlılık için
optimize edilmiştir ve otomatik yönetici (Admin) izniyle çalışır.

<p align="center">
<a href="https://github.com/hamidmammadov1711/ultimate-anaconda-fix/releases/latest">
<img src="https://img.shields.io/badge/DOWNLOAD-LATEST_EXE-orange?style=for-the-badge&logo=windows&logoColor=white" alt="Download EXE" />
</a>
</p>

---

### ✨ v4.0 Sürümünün Avantajları

* **Kalıcı Arayüz:** İşlemler bittikten sonra program hemen kapanmaz, sonuçları incelemenize olanak tanır.
* **Dinamik Yol Tespiti:** Conda'nın `C:`, `D:` veya sistem değişkenlerindeki konumunu otomatik olarak bulur.
* **Süreç İzolasyonu:** Arka planda takılı kalmış Python ve Anaconda süreçlerini zorla sonlandırır.
* **Sistem Bütünlüğü:** Windows'un kritik sistem dosyalarını onarmak için entegre `SFC` ve `DISM` araçları.
* **İzinlerin Onarımı:** Klasör erişim haklarını düzeltir ve kritik DLL kütüphanelerini yeniden kaydeder.

---

### 🚀 Kullanım Talimatları

#### 💻 Windows (.exe sürümü)

1. "Releases" bölümünden `Anaconda_Fixer_v4.exe` dosyasını indirin.
2. Dosyaya sağ tıklayın ve **"Yönetici olarak çalıştır"** (Run as Administrator) seçeneğini kullanın.
3. Menü aracılığıyla istediğiniz onarımı seçin (Tam onarım için `1` seçilmesi önerilir).

#### 📜 PowerShell (Script - .ps1)

Kaynak kodla çalışmayı tercih ediyorsanız:

1. PowerShell'i **Yönetici** olarak açın.
2. Komut dosyası çalıştırma iznini etkinleştirin:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

```

3. Betiği çalıştırın:
```powershell
.\Anaconda_Repair_Pro.ps1

```

### 🐧 Linux (Bash)

Linux'ta Anaconda'yı temizlemek ve düzeltmek için:

1. **Betik dosyasını indirin:** Depodan `Linux/anaconda_fix_linux.sh` dosyasını indirin.

2. **İzin verin:** Bir terminal açın ve dosyanın bulunduğu klasöre gidin ve çalıştırma izni verin:

```bash
chmod +x anaconda_fix_linux.sh  
./anaconda_fix_linux.sh

```

### 🛠️ Geliştiriciler İçin (Build)

Kendi `.exe` dosyanızı `ps2exe` modülü ile oluşturmak isterseniz:

1. Modülü yükleyin:

```powershell
Install-Module ps2exe -Force

```

2. Derleme komutunu çalıştırın:

```powershell
Invoke-PS2EXE -InputFile ".\Anaconda_Repair_Pro.ps1" -OutputFile ".\Anaconda_Fixer_v4.exe" -Title "Anaconda Repair Suite Pro" -Version "4.0.0"

```

---

### 📂 Proje Yapısı

`📂 Windows` PowerShell betikleri ve Windows onarım modülleri.

`📂 Linux` Bash betikleri ve ortam temizleme komutları.

`📂 Translate` Türkçe ve Azerbaycan dillerinde talimatlar.

### ⚖️ Lisans

Bu proje **MIT Lisansı** ile lisanslanmıştır. Daha fazla bilgi için *LICENSE* dosyasına bakınız.

### 🤝 Destek

Eğer bu araç sorununuzu çözmenize yardımcı olduysa, depoyu (repository) **Star** ⭐ etmeyi ve diğer geliştirici
arkadaşlarınızla paylaşmayı unutmayın!

Hazırlayan: Hamid Mammadov

```

---



```