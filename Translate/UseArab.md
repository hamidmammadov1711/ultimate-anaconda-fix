# 🛠️ Anaconda Ultimate Repair Pro (v4.0)

<p align="center">
<img src="https://img.shields.io/badge/Version-4.0%20Pro-green?style=for-the-badge&logo=anaconda" alt="Version" />
<img src="https://img.shields.io/badge/Platform-Windows-blue?style=for-the-badge&logo=windows" alt="Platform" />
<img src="https://img.shields.io/badge/Developer-Hamid%20Mammadov-orange?style=for-the-badge" alt="Developer" />
</p>

**Anaconda Ultimate Repair Pro** هي أداة إصلاح احترافية مصممة لاكتشاف وإصلاح الأخطاء الحرجة تلقائيًا في **Anaconda
Navigator** و **Conda** وبيئات **Python**، مثل (أخطاء DLL 1114، تعطل Navigator، أخطاء المسارات، ومشكلات الأذونات).

---

### 📥 تحميل الأداة (موصى به)

إذا كنت لا ترغب في التعامل مع الأكواد البرمجية، قم بتحميل النسخة الجاهزة بصيغة `.exe`. تم تحسين هذه النسخة لضمان
الاستقرار وتعمل تلقائيًا بامتيازات المسؤول.

<p align="center">
<a href="https://github.com/hamidmammadov1711/ultimate-anaconda-fix/releases/latest">
<img src="https://img.shields.io/badge/DOWNLOAD-LATEST_EXE-orange?style=for-the-badge&logo=windows&logoColor=white" alt="Download EXE" />
</a>
</p>

---

### ✨ مميزات الإصدار 4.0

* **واجهة مستمرة:** لا يتم إغلاق البرنامج فور انتهاء المهام، مما يتيح لك مراجعة النتائج.
* **البحث الديناميكي عن المسارات:** يعثر تلقائيًا على موقع Conda في `C:` أو `D:` أو متغيرات النظام.
* **عزل العمليات:** إنهاء عمليات Python و Anaconda العالقة بالقوة.
* **سلامة النظام:** أدوات مدمجة (`SFC` و `DISM`) لإصلاح ملفات نظام Windows الضرورية.
* **إصلاح الأذونات:** تصحيح صلاحيات الوصول للمجلدات وإعادة تسجيل مكتبات DLL الهامة.

---

### 🚀 تعليمات الاستخدام

#### 💻 Windows (نسخة .exe)

1. قم بتحميل `Anaconda_Fixer_v4.exe` من قسم "Releases".
2. انقر بزر الماوس الأيمن واختر **"تشغيل كمسؤول"** (Run as Administrator).
3. اختر نوع الإصلاح المطلوب من القائمة (يُنصح بالخيار `1` للإصلاح الكامل).

#### 📜 PowerShell (نص برمجي - .ps1)

إذا كنت تفضل التعامل مع الكود المصدري:

1. افتح PowerShell كـ **مسؤول**.
2. اسمح بتشغيل النصوص البرمجية:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

```

3. قم بتشغيل البرنامج:
```powershell
.\Anaconda_Repair_Pro.ps1

```

#### 🐧 لينكس (باش)

لتنظيف وإصلاح أناكوندا في لينكس:

1. **تنزيل البرنامج النصي:** قم بتنزيل الملف `Linux/anaconda_fix_linux.sh` من المستودع.
2. **منح الصلاحيات:** افتح نافذة طرفية وانتقل إلى المجلد الذي يوجد به الملف، ثم امنحه صلاحية التنفيذ:

```bash
chmod +x anaconda_fix_linux.sh

```

3. **تشغيل البرنامج النصي:** شغّل البرنامج النصي باستخدام `sudo` للتأكد من حصوله على الصلاحيات اللازمة:

```bash
sudo ./anaconda_fix_linux.sh

```

---

### 🛠️ للمطورين (Build)

إذا كنت ترغب في إنشاء ملف `.exe` خاص بك باستخدام موديول `ps2exe`:

1. قم بتثبيت الموديول:

```powershell
Install-Module ps2exe -Force

```

2. قم بتنفيذ أمر التجميع:

```powershell
Invoke-PS2EXE -InputFile ".\Anaconda_Repair_Pro.ps1" -OutputFile ".\Anaconda_Fixer_v4.exe" -Title "Anaconda Repair Suite Pro" -Version "4.0.0"

```

---

### 📂 هيكل المشروع

* `📂 Windows`: نصوص PowerShell ووحدات الإصلاح الخاصة بـ Windows.
* `📂 Linux`: نصوص Bash وأوامر تنظيف البيئة.
* `📂 Translate`: تعليمات بلغات مختلفة.

### ⚖️ الترخيص

هذا المشروع مرخص بموجب **رخصة MIT**. راجع ملف *LICENSE* لمزيد من التفاصيل.

### 🤝 الدعم

إذا ساعدتك هذه الأداة في حل مشكلتك، لا تنسَ وضع **Star** ⭐ للمستودع ومشاركته مع زملائك المطورين!

*تطوير: Hamid Mammadov*

