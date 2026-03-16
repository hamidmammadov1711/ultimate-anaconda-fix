# 🛠️ Anaconda Ultimate Repair Tool (Pro v3.5)

This tool is designed to clean and repair critical errors (DLL 1114, Crash, Path issues) that occur in Anaconda Navigator, Conda package manager, and Python environments on Windows and Linux systems.

## ✨ Key Features
- **Smart Discovery:** It automatically finds the Conda folder.
- **Error Handling:** Error management and Log system for each step.
- **Deep Clean:** Complete cleaning of Temp and Cache files.
- **Interactive Menu:** Individual or complete repair options.

## 🚀 Terms of Use

### 💻 Windows (PowerShell)
1. Download the Windows directory`ultimate_fix.ps1` file.
2. Right-click on the file and select **"Run with PowerShell"** (Or run as Administrator).
3. When the menu appears, start a full repair by typing `1`.


#### 🐧 Linux
1. Download the Linux directory `ultimate_fix.sh` file.
2. Right-click on the file and select **"Run as root"**.
3. When the menu appears, start a full repair by typing `1`.
4. Open terminal and type:
```bash
chmod +x anaconda_fix_linux.sh
./anaconda_fix_linux.sh
```

**Note 1:** Open PowerShell as admin:
```powershell
Set-ExecutionPolicy RemoteSigned
```

**Note 2:** To create the `.exe` version:
```powershell
Invoke-PS2EXE -inputFile "ultimate_fix.ps1" -outputFile "AnacondaFixer.exe" -admin
```
