# Python 3.8 tabanlı resmi imajı kullan
FROM python:3.8-slim

# Çalışma dizetini /app olarak ayarla
WORKDIR /app

# Şu anki dizindeki dosyaları /app dizinine kopyala
COPY . /app

# requirements.txt dosyasındaki bağımlılıkları yükle
RUN pip install --no-cache-dir -r requirements.txt

# gunicorn'u yükle
RUN pip install gunicorn

# 5000 portunu dışa aç
EXPOSE 5000

# Ortam değişkenini ayarla
ENV NAME World

# Uygulamayı başlat
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]

