# 🌐 Desarrollo Web

Antiguamente era común ver aplicaciones Desktop, pero hoy en día todo es Web Apps. Las apps web pueden pertenecer a Celular / Tablets, no solo a PC´s.

Responsive: Que la pagina se adapte a los distintos tamaños de pantalla.
Desktop Web App: Una aplicación de escritorio pero que sigue siendo web, en su codigo interno.

El **desarrollo web** es el **proceso de crear y mantener sitios y aplicaciones web**.  
Abarca una amplia gama de tareas, desde el **diseño 🎨** y la **planificación 🗂️** hasta la **codificación 💻** y la **implementación 🚀**.  

El desarrollo Web normalmente se divide en dos grandes áreas: **Frontend** y **Backend**.

---

## ⚡ Frontend (Client Side)

El **Frontend** es la parte visual de una página o aplicación web, con la que interactúa directamente el usuario.  
Se centra en la experiencia del usuario (**UX**) y en la interfaz (**UI**).

🔧 **Tecnologías principales:**
- 📝 **HTML** → estructura de la página.  
- 🎨 **CSS** → estilos y diseño.  
- ⚙️ **JavaScript** → interacción y dinamismo.  

🚀 **Frameworks y librerías populares:**
- ⚛️ React  
- 🅰️ Angular  
- 🌐 Vue  

👉 Ejemplo: Todo lo que ves en un sitio web (botones, menús, animaciones, formularios).

---

## 🖥️ Backend (Server Side)

El **Backend** es la parte que no ves directamente, pero que hace que todo funcione.  
Gestiona la **lógica del negocio**, la **seguridad 🔒**, el **almacenamiento de datos 📂** y la **comunicación entre cliente y servidor**.

🔧 **Lenguajes y entornos más usados:**
- 🐍 Python  
- ☕ Java  
- 🟢 Node.js  
- 🧱 PHP  

💾 **Bases de datos:**
- 🟦 SQL (MySQL, SQL Server, Oracle)  
- 🟪 NoSQL (MongoDB, Firebase, Cassandra)  

👉 Ejemplo: Cuando haces login en un sitio web, el **Backend** valida tus credenciales y accede a la base de datos para comprobar que son correctas.

---

## 🔄 Comunicación Frontend ↔ Backend

- 📤 El **Frontend** hace una **request** (solicitud) → por ejemplo: "Quiero ver mis mensajes".  
- 📥 El **Backend** responde con la **response** (respuesta) → por ejemplo: "Aquí están tus mensajes".  

Esto se hace a través de protocolos como **HTTP / HTTPS 🌍**.

Son aplicaciones distintas, pero se intercomunican entre sí, y son necesarias.

---

✨ En resumen:
- **Frontend** → lo que el usuario ve 👀.  
- **Backend** → lo que hace que funcione por detrás ⚙️.  

Un **Desarrollador Full Stack** es quien domina **ambos mundos** 🌟.

Tanto aplicaciones web, como de desktop, tienen sus diferencias; ventajas y desventajas que dependen de cada arquitectura, pero esto refleja distintas utilidades.

# 📚 Framework vs Librería

---

## 🛠️ ¿Qué es un Framework?
Un **framework** es una **estructura completa** para desarrollar aplicaciones.  
- Define un **esqueleto** y unas **reglas** que tu aplicación debe seguir.  
- Ya trae integrado muchas funcionalidades listas para usar (autenticación, conexión a BD, seguridad, etc.).  
- Vos escribís código dentro de su marco de trabajo → el framework **controla el flujo**.  

👉 Ejemplo: **Django**, **Spring**, **Ruby on Rails**.  

---

## 📦 ¿Qué es una Librería?
Una **librería** es un **conjunto de funciones, clases o utilidades** que podés usar cuando las necesites.  
- No impone reglas sobre cómo organizar tu aplicación.  
- Sos vos quien controla cuándo y cómo usarla.  
- Sirve para tareas específicas: manipular fechas, gráficos, peticiones HTTP, etc.  

👉 Ejemplo: **NumPy**, **Lodash**, **Pandas**, **Requests**.  

---

## ⚖️ Diferencias principales

| Aspecto | 📚 Librería | 🛠️ Framework |
|---------|-------------|--------------|
| **Control** | Vos decidís cuándo y cómo usarla | El framework decide el flujo, vos completás “los huecos” |
| **Alcance** | Funciones específicas (más chico) | Estructura completa para apps (más grande) |
| **Flexibilidad** | Alta, la usás cuando quieras | Menor, debés seguir sus reglas |
| **Ejemplo** | Pandas (manejo de datos) | Django (desarrollo web completo) |

---

## 🧩 ¿Por qué no son lo mismo?
- Una **librería** es como una **caja de herramientas 🧰**: vos elegís qué usar y cómo.  
- Un **framework** es como una **casa en construcción 🏠**: ya tiene la estructura armada y vos tenés que trabajar dentro de ese diseño.  

✨ En resumen:  
- **Librería** → Te ayuda en tareas concretas.  
- **Framework** → Te da una estructura para todo el proyecto.  

# 🛠️ Instalaciones necesarias

Antes de comenzar, debemos asegurarnos de que tenemos instalado **Python** 🐍 y de que nuestro gestor de paquetes **pip** 📦 está actualizado.

---

## ✅ Verificar instalación de Python
Ejecuta en la terminal:
```bash
python --version
```

# 🌐 Virtual Environment (Entorno Virtual)

Al comenzar un proyecto en **Python** 🐍, es muy recomendable trabajar dentro de un **entorno virtual**.  
Un entorno virtual permite:  
- 📦 Instalar y gestionar librerías sin afectar otras instalaciones globales.  
- 🧩 Usar versiones específicas de Python y librerías para cada proyecto.  
- 🔒 Mantener el proyecto **aislado** y más fácil de compartir.  

---

## ⚙️ Creación con `pipenv`
Nos ubicamos en la carpeta del proyecto y ejecutamos:

```bash
pip install pipenv   # Instalar pipenv si no lo tienes
pipenv install       # Crear el entorno virtual
```