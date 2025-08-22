# Gunakan image Python resmi
FROM python:3.11-slim

# Set direktori kerja di dalam container
WORKDIR /app

# Salin file requirements.txt jika ada
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Salin semua source code ke dalam container
COPY . .

# Expose port default Django
EXPOSE 8000

# Jalankan perintah migrate dan jalankan server Django
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]