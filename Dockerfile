FROM python:3.9-slim
WORKDIR /app
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

#Güvenlik amacıyla root olmayan bir kullanıcı oluşturma
RUN useradd -m myuser
USER myuser
EXPOSE 8000
CMD ["python", "app.py"]