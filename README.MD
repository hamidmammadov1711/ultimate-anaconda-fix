# 🛠️ Anaconda Ultimate Repair Tool (Pro v3.5)
<p align="center">

<img src="https://img.shields.io" />
<img src="https://img.shields.io" />
<img src="https://img.shields.io" />

</p>

This tool is a **professional repair tool** designed to automatically resolve critical errors (DLL 1114, Crash, Path errors) that occur in Anaconda Navigator, Conda package manager, and Python environments.
---
### 📥 Download Ready-made Program (Windows)
If you don't want to deal with technical codes, download the prepared `.exe` version directly from here:
<p align="center">
<a href="https://github.com">
<img src="https://img.shields.io" />
</a>
</p>

---
## ✨ Main Advantages

* **🔍 Smart Path Discovery:** Automatically detects the Conda folder (even if it is not in the PATH).

* **🛡️ Advanced Error Handling:** `Try-Catch` mechanism and error handling for each step.* **📋 Interactive Menu:** Allows the user to select the entire process or only certain modules (e.g. DLL repair).
* **🧹 Deep System Clean:** Cleaning temporary files (Temp), Conda caches and user folders that cause conflicts.
* **📝 Detailed Logging:** All operations are recorded in the `Anaconda_Repair_Log.txt` file on the desktop.
* **⚙️ Modular Design:** Each repair module (DLL, PATH, Crash) works separately and can be updated at any time.
---
## 🚀 Installation and Usage
### 💻 Windows (Via Script)

1. Download the `Windows/ultimate_anaconda_fix.ps1` file.
2. Open PowerShell as **Administrator** and grant permission to execute the script:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

3. Run the script:
```powershell
.\ultimate_anaconda_fix.ps1
```
4. Start the full repair process by selecting `1` from the menu.

🐧 Linux (Bash)

1. Download the Linux/anaconda_fix_linux.sh file.
2. In the terminal, grant execute permission and run:

```bash
chmod +x anaconda_fix_linux.sh
./anaconda_fix_linux.sh
```

-----------------------------
# 🛠️ For Developers (Build)
### If you want to convert the script to .exe format yourself:

1. Install the ps2exe module:

Install-Module ps2exe -Force

2. Compile:

Invoke-PS2EXE -inputFile "ultimate_anaconda_fix.ps1" -outputFile "AnacondaFixer.exe" -requireAdmin

-----------------------------
📂 Project Structure

* /Windows: PowerShell scripts and Windows-specific repair modules.
* /Linux: Bash scripts and environment cleanup commands.
* /Translate: (English, Turkish) Multilingual support files.

------------------------------
⚖️ License
This project is licensed under the MIT License. See the LICENSE file for details.
------------------------------

Download the EXE file from the green button above to start the repair! 🚀

---