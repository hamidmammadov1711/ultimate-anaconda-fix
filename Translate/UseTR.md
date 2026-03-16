# 🛠️ Anaconda Ultimate Repair Tool (Pro v3.5)

Bu araç, Windows ve Linux sistemlerinde Anaconda Navigator, Conda paket yöneticisi ve Python ortamlarında meydana gelen kritik hataları (DLL 1114, Çökme, Yol sorunları) temizlemek ve onarmak için tasarlanmıştır.
## ✨ Özellikler
- **Smart Discovery:** Conda klasörünü otomatik olarak bulur.
- **Error Handling:** Hataların yönetimi ve her adım için Log sistemi.
- **Deep Clean:** Temp ve Cache dosyalarının tamamen temizlenmesi.
- **Interactive Menu:** Tek tek və ya tam temizleme seçimi.

## 🚀 Kullanım Şartları

### 💻 Windows (PowerShell)
1. Windows directory-den `ultimate_fix.ps1` dosyasını indirin.
2. Dosyaya sağ tıklayın ve **"Run with PowerShell"** seçeneğini seçin (Veya Yönetici olarak çalıştırın).
3. Menü göründüğünde `1` yazarak tam onarımı başlatın.
4. Terminal açın ve aşağıdaki komutu girin:
```powershell
Invoke-PS2EXE -inputFile "ultimate_fix.ps1" -outputFile "AnacondaFixer.exe" -admin
```
#### 🐧 Linux
1. Linux directory-den `ultimate_fix.sh` dosyasını indirin.
2. Dosyaya sağ tıklayın ve **"Run as root"** seçeneğini seçin.
3. Menü göründüğünde `1` yazarak tam onarımı başlatın.
4. Terminal açın ve aşağıdaki komutu girin:
```bash
chmod +x anaconda_fix_linux.sh
./anaconda_fix_linux.sh
```

*** Not 1:** PowerShell'i yönetici olarak açın:
```powershell
Set-ExecutionPolicy RemoteSigned
```

**Not 2:** `.exe` sürümünü yaratmak için:Invoke-PS2EXE -inputFile "ultimate_fix.ps1" -outputFile "AnacondaFixer.exe" -admin
```

