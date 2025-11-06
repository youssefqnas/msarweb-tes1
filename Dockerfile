FROM python:3.11-slim

# تثبيت الأدوات المطلوبة
RUN apt-get update && apt-get install -y \
    xvfb \
    x11-utils \
    x11-apps \
    python3-tk \
    python3-dev \
    gnome-screenshot \
    && rm -rf /var/lib/apt/lists/*

# تثبيت المكتبات
RUN pip install --upgrade pip && pip install "pillow>=9.2.0" pyautogui

# مجلد العمل
WORKDIR /app
COPY . .

# تشغيل Xvfb وتشغيل السكربت داخلها
CMD xvfb-run -a python main.py
