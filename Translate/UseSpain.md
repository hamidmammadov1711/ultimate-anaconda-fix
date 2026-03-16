# 🛠️ Anaconda Ultimate Repair Pro (v4.0)

<p align="center">
<img src="https://img.shields.io/badge/Version-4.0%20Pro-green?style=for-the-badge&logo=anaconda" alt="Version" />
<img src="https://img.shields.io/badge/Platform-Windows-blue?style=for-the-badge&logo=windows" alt="Platform" />
<img src="https://img.shields.io/badge/Developer-Hamid%20Mammadov-orange?style=for-the-badge" alt="Developer" />
</p>

**Anaconda Ultimate Repair Pro** es una herramienta de reparación profesional diseñada para detectar y solucionar
automáticamente errores críticos (**errores DLL 1114, fallos del Navigator, problemas de rutas (path) y conflictos de
permisos**) en Anaconda Navigator, el gestor de paquetes Conda y entornos de Python.

---

### 📥 Descargue la herramienta (Recomendado)

Si prefiere no lidiar con códigos técnicos, descargue la versión `.exe` preparada. Esta versión está optimizada para la
estabilidad y se ejecuta automáticamente con privilegios de administrador.

<p align="center">
<a href="https://github.com/hamidmammadov1711/ultimate-anaconda-fix/releases/latest">
<img src="https://img.shields.io/badge/DOWNLOAD-LATEST_EXE-orange?style=for-the-badge&logo=windows&logoColor=white" alt="Download EXE" />
</a>
</p>

---

### ✨ Ventajas de la versión v4.0

* **Interfaz persistente:** El programa no se cierra inmediatamente después de terminar las tareas, permitiéndole
  revisar los resultados.
* **Detección dinámica de rutas:** Localiza automáticamente la ubicación de Conda en `C:`, `D:` o en las variables del
  sistema.
* **Aislamiento de procesos:** Finaliza a la fuerza los procesos de Python y Anaconda que hayan quedado bloqueados.
* **Integridad del sistema:** Herramientas integradas `SFC` y `DISM` para reparar dependencias críticas de Windows.
* **Reparación de permisos:** Corrige los derechos de acceso a las carpetas y vuelve a registrar las bibliotecas DLL
  críticas.

---

### 🚀 Instrucciones de uso

#### 💻 Windows (Versión .exe)

1. Descargue `Anaconda_Fixer_v4.exe` desde la sección de "Releases".
2. Haga clic derecho sobre el archivo y seleccione **"Ejecutar como administrador"** (Run as Administrator).
3. Seleccione la reparación deseada a través del menú (Se recomienda la opción `1` para una reparación completa).

#### 📜 PowerShell (Script - .ps1)

Si prefiere trabajar con el código fuente:

1. Abra PowerShell como **Administrador**.
2. Habilite los permisos de ejecución de scripts:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

```

3. Ejecute el script:
```powershell
.\Anaconda_Repair_Pro.ps1

```

---

### 🛠️ Para desarrolladores (Build)

Si desea crear su propio archivo `.exe` utilizando el módulo `ps2exe`:

1. Instale el módulo:

```powershell
Install-Module ps2exe -Force

```

2. Ejecute el comando de compilación:

```powershell
Invoke-PS2EXE -InputFile ".\Anaconda_Repair_Pro.ps1" -OutputFile ".\Anaconda_Fixer_v4.exe" -Title "Anaconda Repair Suite Pro" -Version "4.0.0"

```

---

### 📂 Estructura del proyecto

* `📂 Windows`: Scripts de PowerShell y módulos de reparación específicos para Windows.
* `📂 Linux`: Scripts de Bash y comandos de limpieza de entornos.
* `📂 Translate`: Instrucciones en varios idiomas.

### ⚖️ Licencia

Este proyecto está bajo la **Licencia MIT**. Consulte el archivo *LICENSE* para más detalles.

### 🤝 Soporte

Si esta herramienta le ha ayudado a resolver su problema, ¡no olvide marcar el repositorio con **Star** ⭐ y compartirlo
con otros desarrolladores!

*Desarrollado por: Hamid Mammadov*


