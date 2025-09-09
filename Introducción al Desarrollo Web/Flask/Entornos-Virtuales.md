## 🆚 2. Diferencia entre `venv` y `pipenv`

Tanto `venv` como `pipenv` se usan para gestionar entornos virtuales y dependencias, pero tienen enfoques distintos:

| Característica         | `venv`                                  | `pipenv`                                             |
|------------------------|------------------------------------------|------------------------------------------------------|
| Gestión de entornos    | Solo crea el entorno virtual             | Crea y gestiona el entorno + las dependencias        |
| Archivos generados     | Manual (`requirements.txt`)              | Automático: `Pipfile` y `Pipfile.lock`               |
| Instalación            | Incluido en Python (desde 3.3)           | Requiere instalar `pipenv` (`pip install pipenv`)    |
| Comando de activación  | `source venv/bin/activate`               | `pipenv shell`                                       |
| Gestión de paquetes    | `pip install ...`                        | `pipenv install ...`                                 |
| Compatibilidad         | Muy compatible y universal               | Puede tener conflictos con algunos entornos/sistemas |
| Filosofía              | Más manual y control total               | Automatiza más, más parecido a herramientas como `npm` |
