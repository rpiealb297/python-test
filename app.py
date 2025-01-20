import os
from dotenv import load_dotenv
from flask import Flask

load_dotenv()

app = Flask(__name__)

valueToUse = os.getenv('SECRET_KEY', 'valor_por_defecto_seguro')

@app.route('/')
def hello_world():
    return valueToUse + " y este es el fichero"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
