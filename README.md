# Flutter Theme Switcher App

A Flutter project that demonstrates **theme switching (Light / Dark / System)** using **Cubit (Bloc)** and persisting the selected theme with **SharedPreferences**.  
The theme selection is shown inside a **BottomSheet** with a modern design and drag handle.

---

## ✨ Features
- Switch between **Light Mode**, **Dark Mode**, and **System Default**.
- **Cubit (Bloc)** for state management.
- **SharedPreferences** for saving theme selection across app restarts.
- **BottomSheet UI** with a drag handle for an elegant user experience.
- Customizable **AppThemes** with well-coordinated colors.


---

## 📸 Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/90590b2f-1424-4129-ad22-8ec42bbb98cc" width="250" />
  <img src="https://github.com/user-attachments/assets/2d566cbe-e4ca-49db-b73a-28b14930ca5b" width="250" />
  <img src="https://github.com/user-attachments/assets/5ecd7812-5460-4b20-801e-ad637130d3dd" width="250" />
</p>



---

## 🛠️ Tech Stack
- [Flutter](https://flutter.dev/)
- [Bloc / Cubit](https://pub.dev/packages/flutter_bloc)
- [SharedPreferences](https://pub.dev/packages/shared_preferences)

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed ([Install Guide](https://docs.flutter.dev/get-started/install))
- Any IDE (VS Code / Android Studio)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/A7medMaged/Themes.git
   ```
2. Navigate to the project directory:
   ```bash
   cd change-theme
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```
---

## 🎨 Theme Selection Flow
1. User opens **Settings Page**.
2. Taps **Change Theme** ListTile.
3. A **BottomSheet** appears with three options:
   - Light Mode ☀️
   - Dark Mode 🌙
   - System Default 📱
4. On selection → Theme changes instantly + saved in SharedPreferences.

---

## 🤝 Contributing
Contributions are welcome!  
Feel free to fork this repo and submit a pull request.

