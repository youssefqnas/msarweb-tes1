import pyautogui
import time

print("✅ بدأ التشغيل داخل بيئة Xvfb ...")
time.sleep(2)

# الحصول على دقة الشاشة الافتراضية (من Xvfb)
screen_width, screen_height = pyautogui.size()
print(f"🎯 حجم الشاشة الافتراضية: {screen_width}x{screen_height}")

# تحريك الماوس لمكان عشوائي
pyautogui.moveTo(screen_width // 2, screen_height // 2, duration=1)
print("🖱️ تم تحريك الماوس للمنتصف")

# الضغط كليك يسار
pyautogui.click()
print("✅ تم تنفيذ نقرة ماوس")

# كتابة نص للتجربة
pyautogui.typewrite("Xvfb + PyAutoGUI running successfully!", interval=0.05)
print("⌨️ تم كتابة النص التجريبي")

# التقاط لقطة شاشة للتأكد من كل شيء
screenshot_path = "/app/screenshot.png"
pyautogui.screenshot(screenshot_path)
print(f"📸 تم حفظ لقطة الشاشة في: {screenshot_path}")

print("🏁 التجربة اكتملت بنجاح!")
