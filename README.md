# CareSync 🩺

CareSync is a comprehensive health monitoring mobile application built with **Flutter**. It collects vital health data from body-attached sensors, processes the information on a server, and displays real-time stats and alerts on the mobile app. It also includes a logging system for medical records, personalized notifications, and an alarm mechanism to detect and alert abnormalities.

---

## 🚀 Features

- **Real-Time Vital Monitoring:**  View detailed insights on vitals such as heart rate, oxygen levels, temperature, and more.

- **Medical Logs:**  Keep track of your medical history, medications, and past vital records.

- **Smart Notifications & Alerts:**  Get notified when new logs are added, medications are due, or abnormal vitals are detected.

- **Abnormality Alarm System:**  Triggers alarms on critical deviations in vitals to alert the user and caretakers immediately.

---

## How It Works

1. **Sensor Data Collection**  

   Sensors attached to the body continuously collect health data (e.g., heart rate, SpO₂, temperature, etc.).

2. **Server Processing**  

   The collected data is sent to a backend server where it is analyzed and processed to check for abnormalities or trends.

3. **Mobile App Display**  

   The Flutter app fetches this processed data via APIs and displays it in an intuitive dashboard along with medical logs and alerts.

---

##  App Setup

> This repository contains the **Flutter mobile app** of CareSync.

### 🔧 Requirements

- Flutter SDK (>=3.3.4)
- Dart (>=2.18.0)
- Android Studio or Visual Studio Code
- Backend API server for fetching processed sensor data

### 🛠️ Installation Steps

1. **Clone the Repository**

```bash
git clone https://github.com/your-username/caresync.git
cd caresync
```
2. **Install dependencies**

```bash
flutter pub get
```

3. **Connect a Device or Emulator**  
   Ensure an Android/iOS emulator is running or a device is connected.

4. **Run the app**

```bash
flutter run
```
