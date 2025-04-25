markdown
# 🎯 Face & Finger Recognition with Python

This project combines **real-time face recognition** and **hand gesture detection** using a camera. It recognizes faces from a local `faces/` folder and tracks finger gestures using MediaPipe.

---

## 📦 Features

- ✅ Detect faces using your webcam  
- ✅ Recognize people based on stored images in `faces/`  
- ✅ Track and recognize finger positions with MediaPipe  
- ✅ Easy setup and Docker support  

---

## 📂 Folder Structure

```
project/
├── faces/              # Place known face images here
│   ├── alice.jpg
│   └── bob.jpg
├── main.py             # Main script (face + finger detection)
├── Dockerfile          # For Docker build
├── docker-compose.yml  # For running with Docker
└── README.md           # This file
```

---

## ▶️ How to Run (Locally)

### 1. Install Dependencies

```bash
pip install -r requirements.txt
```

If `mediapipe` gives issues, install it separately:

```bash
pip install mediapipe
```

### 2. Run the App

```bash
python main.py
```

---

## 🐳 Docker Instructions

### 1. Build and Run

```bash
docker-compose up --build
```

> Make sure Docker has access to your webcam. Works best on Linux.

### 2. Stop

```bash
docker-compose down
```

---

## 📌 Requirements

- Python 3.10+
- OpenCV
- face_recognition
- MediaPipe

Install all with:

```bash
pip install opencv-python face_recognition mediapipe
```

---

## 💡 Example

- You add `john.jpg` in the `faces/` folder.  
- When John appears on camera, his name is shown on screen.  
- If he raises fingers, finger count and tracking appear too.

---

## 🚀 This is Just the Beginning

> **"This is just the beginning of a massive upcoming project."**

Stay tuned. More AI and computer vision features are coming soon!

---

