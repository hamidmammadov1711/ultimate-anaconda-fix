# 🛠️ Anaconda Ultimate Repair Pro (v4.0)

<p align="center">
<img src="https://img.shields.io/badge/Version-4.0%20Pro-green?style=for-the-badge&logo=anaconda" alt="Version" />
<img src="https://img.shields.io/badge/Platform-Windows-blue?style=for-the-badge&logo=windows" alt="Platform" />
<img src="https://img.shields.io/badge/Developer-Hamid%20Mammadov-orange?style=for-the-badge" alt="Developer" />
</p>

**Anaconda Ultimate Repair Pro** is a professional-grade recovery tool designed to fix critical environment issues, including **DLL 1114 errors, Navigator crashes, permission conflicts**, and corrupted Conda paths.

---

### 📥 Download Ready-to-Use Tool (Recommended)
Avoid terminal commands by downloading the pre-compiled executable. This version is optimized for stability and will not close prematurely.

<p align="center">
<a href="https://github.com/hamidmammadov1711/ultimate-anaconda-fix/releases/latest">
<img src="https://img.shields.io/badge/DOWNLOAD-LATEST_EXE-orange?style=for-the-badge&logo=windows&logoColor=white" alt="Download EXE" />
</a>
</p>

---

### ✨ Key Improvements in v4.0
* **Persistent Interface:** The program remains open after tasks are completed to let you review results.
* **Dynamic Path Discovery:** Automatically searches `C:`, `D:`, and System Environment variables for Conda.
* **Enhanced Process Isolation:** Forcefully clears hidden Python and Anaconda lock-files.
* **System Integrity Integration:** Combines `SFC` and `DISM` repairs for Windows-related dependencies.
* **Automated Admin Elevation:** Automatically requests Administrator privileges on startup.

---

### 🚀 Usage Instructions

#### 💻 Windows (Execuable - .exe)
1. Download `Anaconda_Fixer_v4.exe` from the **Releases** section.
2. **Right-click** and select **Run as Administrator**.
3. Choose an option from the menu (Option `1` is recommended for full recovery).

#### 📜 PowerShell (Script - .ps1)
If you prefer running the raw code:
1. Open PowerShell as **Administrator**.
2. Enable script execution:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

3. Execute the script:
```powershell
   .\Anaconda_Repair_Pro.ps1
   ```
### 🐧 Linux (Bash)
To clean and fix Anaconda in Linux:

1. **Download the script:** Download the `Linux/anaconda_fix_linux.sh` file from the repository.
2. **Give permission:** Open a terminal and go to the folder where the file is located and give it execute permission:
```bash
chmod +x anaconda_fix_linux.sh
```
3. **Run the script:** Execute the script with sudo to ensure it has the necessary permissions:
```bash
sudo ./anaconda_fix_linux.sh
```   

### 🛠️ For Developers (How to Build)
If you want to compile your own *.exe* using the **ps2exe** module:
Install the module:
```powershell
Install-Module ps2exe -Force  
```
2. Run the compilation command:
```powershell
Invoke-PS2EXE -InputFile ".\Anaconda_Repair_Pro.ps1" `
              -OutputFile ".\Anaconda_Fixer_v4.exe" `
              -Title "Anaconda Repair Suite Pro" `
              -Description "Professional environment repair tool" `
              -Company "Hamid Mammadov" `
              -Version "4.0.0" `
              -IconFile ".\icon.ico"
```
### 📂 Project Structure
**/Windows:** Refined PowerShell scripts and the latest repair logic.

**/Linux:** Legacy Bash scripts for environment cleanup.

**/Assets:** (Optional) Icon files and design resources.

### 📝 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### 🤝 Support
If this tool helped you, feel free to Star ⭐ the repository and share it with other developers!