# 🛠️ Anaconda Ultimate Repair Tool (Pro v3.5)

<p align="center">
<img src="https://img.shields.io/badge/Version-3.5%20Pro-blue?style=for-the-badge&logo=anaconda" alt="Version" />
<img src="https://img.shields.io/badge/Platform-Windows%20%7C%20Linux-lightgrey?style=for-the-badge&logo=windows" alt="Platform" />
<img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License" />
</p>

**Anaconda Ultimate Repair Tool** is a professional repair tool designed to automatically resolve critical errors (**DLL 1114, Crash, Path errors**) in Anaconda Navigator, Conda package manager and Python environments.

---

### 📥 Download Ready-made Program (Windows)
If you don't want to deal with technical codes and terminal commands, download the prepared `.exe` version directly from the button below:

<p align="center">
<a href="https://github.com/hamidmammadov1711/ultimate-anaconda-fix/releases/tag/v3.5">
<img src="https://img.shields.io/badge/DOWNLOAD-LATEST_RELEASE-orange?style=for-the-badge&logo=windows&logoColor=white" alt="Download EXE" />
</a>
</p>

---

### ✨ Main Advantages

* **🔍 Smart Path Detection:** Automatically detects the Conda folder (even if it is not in the PATH).
* **🛡️ Advanced Error Handling:** `Try-Catch` mechanism and error reporting for each step.
* **📋 Interactive Menu:** Allows the user to select the entire process or only specific modules (e.g. DLL repair).
* **🧹 Deep System Cleaning:** Cleans up conflicting temporary files (Temp), Conda caches and user folders.
* **📝 Detailed Logging:** All operations are recorded in the `Anaconda_Repair_Log.txt` file on the desktop.
* **⚙️ Modular Design:** Each repair module (DLL, PATH, Crash) works independently of each other.

---

## 🚀 Installation and Usage

### 💻 Windows (via Script)
1. Download the `Windows/ultimate_anaconda_fix.ps1` file.
2. Open PowerShell as **Administrator** and grant permissions with the following command:
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```
3. Run the script:
```powershell
.\ultimate_anaconda_fix.ps1
```
4. Start the full repair process by selecting `1` from the menu.
### 🐧 Linux (Bash)
1. Download the `Linux/anaconda_fix_linux.sh` file.
2. In the terminal, grant permissions and run the script with the following command:
```bash
chmod +x anaconda_fix_linux.sh
./anaconda_fix_linux.sh
```
-----------------------------
### 🛠️ For Developers (Build)
To convert the script to `.exe` format:
1. Install the `ps2exe` module:
```powershell
Install-Module ps2exe -Force
```
2. Execute:
```powershell
Invoke-PS2EXE -inputFile "ultimate_anaconda_fix.ps1" -outputFile "AnacondaFixer.exe" -requireAdmin
```
-----------------------------
### 📂 Project Structure
* `/Windows`: PowerShell scripts and Windows-specific repair modules.
* `/Linux`: Bash scripts and environment cleanup commands.
* `/Translate`: Multilingual support files (English, Turkish, Azerbaijani).
------------------------------
### ⚖️ License
This project is licensed under the MIT License. See the LICENSE file for more information.