FROM python:3.11-slim

# تثبيت Xvfb ومكتبات النظام المطلوبة
RUN apt-get update && apt-get install -y \
    xvfb \
    x11-utils \
    x11-apps \
    python3-tk \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# تثبيت مكتبات Python المطلوبة
RUN pip install pyautogui pillow

# إنشاء مجلد العمل
WORKDIR /app
COPY . .

# تشغيل Xvfb وتشغيل السكربت داخلها
CMD xvfb-run -a python main.py
