# Usar una imagen base oficial de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios
COPY . /app

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto en el que Flask estará corriendo
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]
