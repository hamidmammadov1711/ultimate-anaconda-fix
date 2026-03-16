# 🛠️ Anaconda Ultimate Repair Pro (v4.0)

<p align="center">
<img src="https://img.shields.io/badge/Version-4.0%20Pro-green?style=for-the-badge&logo=anaconda" alt="Version" />
<img src="https://img.shields.io/badge/Platform-Windows-blue?style=for-the-badge&logo=windows" alt="Platform" />
<img src="https://img.shields.io/badge/Developer-Hamid%20Mammadov-orange?style=for-the-badge" alt="Developer" />
</p>

**Anaconda Ultimate Repair Pro** — это профессиональный инструмент для автоматического обнаружения и устранения
критических ошибок в Anaconda Navigator, менеджере пакетов Conda и средах Python (**ошибки DLL 1114, сбои Navigator,
ошибки путей (path) и конфликты прав доступа**).

---

### 📥 Скачать готовый инструмент (Рекомендуется)

Если вы не хотите возиться с техническим кодом, скачайте готовую версию в формате `.exe`. Эта версия оптимизирована для
стабильной работы и автоматически запрашивает права администратора.

<p align="center">
<a href="https://github.com/hamidmammadov1711/ultimate-anaconda-fix/releases/latest">
<img src="https://img.shields.io/badge/DOWNLOAD-LATEST_EXE-orange?style=for-the-badge&logo=windows&logoColor=white" alt="Download EXE" />
</a>
</p>

---

### ✨ Преимущества версии v4.0

* **Постоянный интерфейс:** Программа не закрывается сразу после выполнения задач, позволяя вам просмотреть результаты.
* **Динамический поиск путей:** Автоматически находит Conda в `C:`, `D:` или системных переменных.
* **Изоляция процессов:** Принудительно завершает зависшие процессы Python и Anaconda.
* **Целостность системы:** Интегрированные инструменты `SFC` и `DISM` для восстановления критических зависимостей
  Windows.
* **Восстановление прав доступа:** Исправляет права доступа к папкам и перерегистрирует критические библиотеки DLL.

---

### 🚀 Инструкции по использованию

#### 💻 Windows (Версия .exe)

1. Скачайте `Anaconda_Fixer_v4.exe` из раздела "Releases".
2. Нажмите правой кнопкой мыши и выберите **"Запуск от имени администратора"** (Run as Administrator).
3. Выберите нужный тип ремонта в меню (рекомендуется опция `1` для полной очистки и восстановления).

#### 📜 PowerShell (Скрипт - .ps1)

Если вы предпочитаете работать с исходным кодом:

1. Запустите PowerShell от имени **Администратора**.
2. Разрешите выполнение скриптов:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    ```

### 🐧 Linux (Bash)
Чтобы очистить и исправить Anaconda в Linux:

1. **Скачайте скрипт:** Скачайте файл `Linux/anaconda_fix_linux.sh` из репозитория.

2. **Предоставьте права доступа:** Откройте терминал, перейдите в папку, где находится файл, и предоставьте ему права на выполнение:
```bash
chmod +x anaconda_fix_linux.sh
3. Запустите скрипт:

```powershell
.\Anaconda_Repair_Pro.ps1

```

### 🛠️ Для разработчиков (Build)

Если вы хотите создать собственный `.exe` с помощью модуля `ps2exe`:

1. Установите модуль:

```powershell
Install-Module ps2exe -Force

```

2. Запустите команду компиляции:

```powershell
Invoke-PS2EXE -InputFile ".\Anaconda_Repair_Pro.ps1" -OutputFile ".\Anaconda_Fixer_v4.exe" -Title "Anaconda Repair Suite Pro" -Version "4.0.0"

```

---

### 📂 Структура проекта

* `📂 Windows`: Скрипты PowerShell и модули восстановления для Windows.
* `📂 Linux`: Bash-скрипты и команды для очистки среды.
* `📂 Translate`: Инструкции на разных языках.

### ⚖️ Лицензия

Этот проект лицензирован по **лицензии MIT**. Подробности см. в файле *LICENSE*.

### 🤝 Поддержка

Если этот инструмент помог вам решить проблему, не забудьте поставить **Star** ⭐ репозиторию и поделиться им с
друзьями-разработчиками!

*Разработчик: Hamid Mammadov*

