from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    lista=["Elemento 1", "Elemento 2", "Elemento 3"]
    mensaje = "¡Hola, mundo con flask!"
    nombre = "Florian Lucchini"
    diccionario = {
        1: "Valor 1",
        2: "Valor 2",
        3: "Valor 3",
        4: "Valor 4"
    }
    es_admin = True
    return render_template('index.html', username=nombre, message=mensaje, list=lista, dict=diccionario, is_admin=es_admin)

if __name__ == '__main__':
    app.run('localhost', 8080, debug=True)