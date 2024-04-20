# Usamos la imagen base de Python 3.12
FROM python:3.12

# Establecemos el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copiamos los archivos necesarios en el contenedor
COPY . .

# Instalamos las dependencias
RUN pip install -r requirements.txt

# Indicamos que el contenedor debe exponer el puerto 80
EXPOSE 80

# Comando para iniciar la aplicación
CMD ["python", "./app.py"]