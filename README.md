# ✅ To-Do List — Dart CLI App

[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux-blue?style=for-the-badge)](https://dart.dev/get-dart)

تطبيق قائمة مهام تفاعلي مبني بلغة **Dart**، يعمل عبر واجهة التيرمينال (CLI). صُمم هذا المشروع لتطبيق مفاهيم البرمجة كائنية التوجه (OOP) وإدارة القوائم والتحكم في تدفق البرنامج.

---

## 📑 جدول المحتويات

1. [متطلبات التثبيت](#-متطلبات-التثبيت)
2. [تحميل المشروع](#-تحميل-المشروع)
3. [كيفية التشغيل](#-كيفية-التشغيل)
4. [مميزات التطبيق](#-مميزات-التطبيق)
5. [بنية المشروع](#-بنية-المشروع)
6. [خطة التطوير](#-خطة-التطوير)

---

## 🛠️ متطلبات التثبيت

### Windows
- توجه إلى [موقع Dart الرسمي](https://dart.dev/get-dart) وحمل الـ SDK
- اتبع خطوات معالج التثبيت
- تحقق من التثبيت عبر PowerShell:
```
dart --version
```

### Linux (Arch / Debian)
```bash
# Arch
sudo pacman -S dart

# Debian / Ubuntu
sudo apt-get install dart
```

---

## 📥 تحميل المشروع

```bash
git clone https://github.com/Imad015/To-Do-list.git
cd To-Do-list
```

---

## 🚀 كيفية التشغيل

```bash
dart mian.dart
```

---

## 🎮 مميزات التطبيق

| الخيار | الوصف |
|--------|-------|
| `1` | إضافة مهمة جديدة |
| `2` | عرض جميع المهام مع حالتها |
| `3` | حذف مهمة |
| `4` | الخروج من التطبيق |

**نظام عرض المهام:**
```
Task 0: Buy groceries [ ]
Task 1: Study Dart    [✓]
Task 2: Exercise      [ ]

Enter the task number to mark as completed, or enter (n) to skip:
```

---

## 📁 بنية المشروع

```
To-Do-list/
├── List.dart   # Model — يحتوي على كلاس Task وخصائصه
└── mian.dart   # Controller — منطق البرنامج وواجهة المستخدم
```

**`List.dart` — طبقة البيانات:**
```dart
class Task {
  String description;
  bool isCompleted = false;

  Task({required this.description});

  void markAsCompleted() {
    isCompleted = true;
  }
}
```

**`mian.dart` — طبقة المنطق:**
يحتوي على حلقة `while(true)` الرئيسية التي تستقبل أوامر المستخدم، ودالة `_displayAndManageTasks()` المسؤولة عن عرض المهام وتحديث حالتها.

---

## 📈 خطة التطوير

- [x] إضافة خاصية حذف المهام
- [ ] حفظ المهام في ملف خارجي (JSON)
- [ ] إضافة تاريخ الإنشاء لكل مهمة
- [ ] تطوير واجهة رسومية باستخدام **Flutter**

---

Developed with ❤️ by [Imad015](https://github.com/Imad015) 🧑‍💻

Computer Science Student | Mobile Development Enthusiast
