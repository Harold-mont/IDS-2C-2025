
# 🐍 Flask

**Flask** es un **framework web** para **Python**.  
Se caracteriza por ser **minimalista** y enfocarse en proporcionar las **herramientas básicas** para construir aplicaciones web.  

A diferencia de otros frameworks más grandes (como **Django**), Flask **no incluye tantas funcionalidades predefinidas** (por ejemplo: manejo de base de datos o validación de formularios).  

👉 En cambio, le da al desarrollador la libertad de **elegir librerías y herramientas adicionales** según las necesidades del proyecto.  

---

## 🔧 Características principales
- ✨ **Ligero y flexible**: solo trae lo esencial.  
- 🧩 **Extensible**: podés agregar librerías para autenticación, bases de datos, validación, etc.  
- 📦 **Ideal para microservicios y APIs**.  
- 🚀 Muy usado en proyectos de **ciencia de datos e inteligencia artificial**.  

---

## 📌 Ejemplo básico en Flask

```python
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "¡Hola, Flask! 🚀"

if __name__ == "__main__":
    app.run(debug=True)
```


## 🐍 WSGI y Flask
- Flask está diseñado siguiendo la **especificación WSGI**.  
- Cuando creás una app en Flask, en el fondo es un **objeto WSGI**.  
- Esto significa que Flask no se comunica directamente con el navegador, sino que **necesita un servidor WSGI** (como **Gunicorn** o **uWSGI**) que haga de intermediario.  

👉 En pocas palabras:  
**Usuario → Servidor Web → WSGI → Aplicación Flask → Respuesta al usuario** ✅.

# Templates y Jinja 🧩✨

Flask nos permite **utilizar y renderizar templates**  
(básicamente archivos HTML que sirven de base a lo que se quiera mostrar).  

📂 Para esto es necesario:  
1. Cargar los archivos HTML dentro de la carpeta `templates` del proyecto.  
2. Importar la función **`render_template`**.  
3. A partir de esta función también es posible **pasar datos dinámicamente** para que se rendericen.

---

## 🌀 Jinja: la magia detrás de los templates
Jinja es el motor de plantillas que permite:  
✅ Agregar lógica y funcionalidad a los templates.  
✅ Integrar **datos dinámicos** enviados desde Flask.  
✅ Usar sentencias como **condicionales (`if`)** y **bucles (`for`)** directamente dentro del HTML.  

---

### 🌟 Ejemplo simple:

```python
from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html", nombre="Juan")
```

# 🌐 Flask - Routing

Con **Flask** es muy sencillo definir el **enrutamiento** de distintas páginas por medio de **decoradores de Python** que definen la ruta 🛣️.  

Esto permite que, al ingresar a una URL específica, se ejecute una función de Python que devuelve una respuesta ✨.

---

## 📌 Ejemplo 1: Ruta principal (`/`)

```python
@app.route('/')
def index():
    return "Hola mundo"
```