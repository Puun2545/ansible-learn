# ใช้ image ที่ติดตั้งพื้นฐานอยู่แล้ว
FROM ubuntu:latest

# (ตัวอย่างเท่านั้น) ติดตั้งเครื่องมือที่ต้องการทดลอง
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    && rm -rf /var/lib/apt/lists/*

# ถ้าต้องการเพิ่มเครื่องมือเพิ่มเติมสามารถเพิ่มคำสั่ง RUN เพิ่มเติมได้

# สร้างเป็น container เมื่อรัน Docker image
CMD ["bash"]
