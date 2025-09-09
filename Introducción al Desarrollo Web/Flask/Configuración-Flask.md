# 🚀 Proyecto Flask en Linux

Este es un proyecto básico para correr una aplicación Flask en un entorno virtual en Linux.

## ⚙️ Requisitos

- Python 3.6 o superior
- pip (gestor de paquetes)
- Linux (Ubuntu, Debian, Arch, etc.)

## 🛠️ Configuración paso a paso

1. Crear carpeta del proyecto:  
`mkdir mi_proyecto_flask && cd mi_proyecto_flask`

2. Crear entorno virtual:  
`python3 -m venv venv`

3. Activar entorno virtual:  
`source venv/bin/activate`  *(o `. venv/bin/activate`)*

4. Instalar Flask:  
`pip install flask`

5. Crear archivo `app.py`:  
`nano app.py`

### Contenido de `app.py`:

```python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return '¡Hola, Flask en Linux!'

if __name__ == '__main__':
    app.run(debug=True)
```


## 🔥 Ejecutar Flask:

FLASK_APP="app.py" FLASK_DEBUG=1 flask run
