# Cryptographer: A Caesar Cipher Text Encryptor & Decryptor (Flutter + Python) 🔐

A mobile application built using the **Flutter framework** and **Dart language**, integrated with a **Python FastAPI backend**, designed to Encrypt and Decrypt text messages using the **Caesar Cipher** algorithm based on ASCII values.
This app provides a clean, user-friendly UI and demonstrates full-stack mobile development with Python integration. It is ideal for Educational Purposes, Cryptography Practice, and Demonstrating Client-Server Communication.

---

## 🚀 Features

1. User Mode Selection: **Encrypt** or **Decrypt**.
2. Enter Plain or Cipher text input.
3. Set a **Custom Shift Key** value for the Caesar Cipher.
4. Real-time processing via **Python backend API**.
5. Output result displayed in a clean UI.
6. Copy, paste, and share buttons integrated.
7. Mobile-friendly layout that handles keyboard overflow gracefully.
8. FastAPI-based backend that runs on your PC for local testing.

---

## 🧠 How It Works

1. The app starts with a home screen where users choose between **Encryption** or **Decryption**.
2. The user is navigated to a second screen with:
   - Input box for the message
   - Output box for the result
   - Input for the shift key
   - A Convert button to trigger the process
3. On pressing "Convert", the Flutter app sends a **POST request** to a local FastAPI server.
4. The backend performs Caesar Cipher encryption/decryption using **ASCII-based shifting** and returns the result.

---

## 🧩 Project Structure

cryptographer/
├── lib/
│ ├── main.dart # Home screen (mode selection)
│ └── process_screen.dart # Encryption/Decryption screen
├── backend/
│ └── main.py # FastAPI backend (Python)
├── android/ # Native Android config
├── pubspec.yaml # Dart dependencies
└── README.md # You're here!

---

## 🛠 Setup & Installation

1. Install Flutter: https://flutter.dev/docs/get-started/install
2. Clone the repository:
   ```sh
   git clone https://github.com/PulkitGahlot/CODECRAFT_CS_01.git
   cd cryptographer
   ```
3. Install packages:
   ```sh
   flutter pub get
   ```
4. Connect your Android phone via USB or use an emulator.
5. Make sure your PC and phone are on the same Wi-Fi network
6. Install dependencies:
   ```sh
   pip install fastapi uvicorn pydantic
   ```
7. Run the server:
   ```sh
   uvicorn main:app --host 0.0.0.0 --port 8000 --reload
   ```
   or use
   ```sh
   python -m uvicorn main:app --host 0.0.0.0 --port 8000 --reload
   ```
8. Replace 10.0.2.2 in Dart code with your PC's local IP (e.g. 192.168.x.x) so the app can reach the server.
9. Run the Application:
   ```sh
   flutter run
   ```

---

## 📦 Dependencies
  **Dart (Flutter)**
  - http
  - flutter/services (clipboard)
  
  **Python**
  - fastapi
  - uvicorn
  - pydantic

---

## 📱 Screenshots

![Home Screen](https://github.com/user-attachments/assets/da2f8057-9531-45b1-afff-9e67f02a5b95)      ![Process Screen](https://github.com/user-attachments/assets/be2c49a1-bb57-435a-ae72-65bf7e7ba6a2)

---

## 👨‍💻 Author

Hi, I'm **Pulkit Gahlot**, a cyber security enthusiast and passionate to be an ethical hacker.

Feel free to connect!
- **Linkedin**: [Pulkit Gahlot](https://linkedin.com/in/pulkit-gahlot)
- **X**: [Pulkit_Gahlot_](https://x.com/Pulkit_Gahlot_)
- **GitHub**: [PulkitGahlot](https://github.com/PulkitGahlot)
- **E-Mail**: [pulkitgahlot85@gmail.com](pulkitgahlot85@gmail.com)

Thank you for visiting my GitHub page!
