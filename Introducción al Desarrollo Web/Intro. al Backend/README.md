# Introduccion al Backend

# 🔍 ¿Qué es el Backend?

El **Back end (o backend)**, también llamado **desarrollo del lado del servidor 🖥️**,  
es la parte de un sitio web o aplicación web que **no es visible** para los usuarios 👀.  

Se encarga de:  
- ⚙️ La lógica de la aplicación.  
- 💾 El almacenamiento y recuperación de datos.  
- 🔄 La comunicación con el servidor.  

---

## 🛠️ Tareas principales del Backend

- 🧠 **Implementar la lógica de la aplicación**  
  (cómo funciona el sistema detrás de lo que el usuario ve).  

- 🗄️ **Almacenar y recuperar datos** de una base de datos  
  (ejemplo: guardar un nuevo usuario o consultar información).  

- 📤 **Procesar solicitudes y enviar respuestas** al usuario  
  (cuando pides ver tu perfil, el servidor busca tus datos y los devuelve).  

- 🔒 **Asegurar la seguridad del sitio web**  
  (gestión de contraseñas, cifrado de datos, control de accesos).  

---

## ✨ Ejemplo sencillo

👉 Cuando entras en una tienda online:  
- El **Frontend** te muestra los productos 🛍️.  
- El **Backend** se encarga de buscar esos productos en la base de datos 📦,  
  comprobar el stock 📊 y devolverte la información para que la veas en pantalla.  

---

## 📌 Recordá:
El **Backend es el “cerebro” 🧠 de la aplicación**, trabaja en la sombra para que el usuario tenga una experiencia fluida y segura 🚀.


Se necesita que un backend sea robusto. El hecho de que un backend sea robusto implica:
- 
- 
- 

Muchas aplicaciones se pierden en hacer un frontend increíble pero luego el backend es super pobre, tiene mala seguridad, etc.

# 🛠️ Frameworks de Back End

Existen muchas herramientas para armar el **Backend** de una aplicación o sitio web,  
dependiendo de la tecnología y el lenguaje de programación que se esté utilizando.  

Aquí algunos de los más populares 👇

---

## 🔴 Ruby on Rails
- Lenguaje: **Ruby**  
- Ideal para crear aplicaciones rápidamente gracias a su filosofía **“Convención sobre Configuración”**.  
- Muy usado en startups y proyectos que necesitan prototipar velozmente 🚀.  
- Ejemplo de uso: Shopify, GitHub (inicialmente).  

---

## 🌱 Spring
- Lenguaje: **Java**  
- Muy potente para aplicaciones empresariales grandes y seguras 🔒.  
- Incluye soporte para bases de datos, seguridad y microservicios.  
- Ejemplo de uso: Netflix.  

---

## 🐍 Django
- Lenguaje: **Python**  
- Framework de alto nivel que incluye muchas funciones listas para usar (autenticación, panel admin, ORM).  
- Excelente para proyectos que necesitan desarrollarse rápido con calidad 📦.  
- Ejemplo de uso: Instagram, Spotify.  

---

## 🐍 Flask
- Lenguaje: **Python**  
- Más ligero que Django → ideal para proyectos pequeños o microservicios.  
- Muy flexible y extensible, permite al desarrollador elegir qué librerías usar 🔧.  
- Ejemplo de uso: Aplicaciones con APIs REST.  

---

## ⚡ FastAPI
- Lenguaje: **Python**  
- Diseñado para crear **APIs rápidas** y eficientes.  
- Aprovecha **tipado moderno** de Python, lo que hace el código más claro y seguro.  
- Muy utilizado para proyectos de **IA y ciencia de datos 🤖**.  

---

## 🟢 Node.js (con Express u otros)
- Lenguaje: **JavaScript (o TypeScript)**  
- Permite usar el mismo lenguaje en **Frontend y Backend** ✨.  
- Muy eficiente para aplicaciones en tiempo real (chat, streaming).  
- Ejemplo de uso: LinkedIn, Trello.  

---

## 🍸 Gin (Go)
- Lenguaje: **Go (Golang)**  
- Framework muy rápido y minimalista ⚡.  
- Excelente para sistemas que necesitan **altísimo rendimiento** y concurrencia.  
- Ejemplo de uso: APIs de alto tráfico.  

---

# 📌 Resumen visual

| Framework | Lenguaje | Mejor para | Ejemplo de uso |
|-----------|----------|------------|----------------|
| 🔴 Rails  | Ruby     | Startups, prototipos rápidos 🚀 | Shopify |
| 🌱 Spring | Java     | Empresas grandes, microservicios 🏢 | Netflix |
| 🐍 Django | Python   | Apps completas, seguras 📦 | Instagram |
| 🐍 Flask  | Python   | Proyectos pequeños, APIs 🔧 | REST APIs |
| ⚡ FastAPI| Python   | APIs rápidas, IA 🤖 | Data Science apps |
| 🟢 Node.js| JS/TS    | Tiempo real, webs interactivas ⏱️ | Trello |
| 🍸 Gin    | Go       | Alto rendimiento, concurrencia ⚡ | APIs de tráfico alto |

---
✨ En conclusión:  
La elección del framework depende del **lenguaje**, el **tamaño del proyecto** y las **necesidades de escalabilidad**.

En esta materia usaremos Flask (Python).

# 🌐 WSGI (Web Server Gateway Interface)

**WSGI** es un **estándar de comunicación** entre servidores web 🖥️ y aplicaciones web desarrolladas en **Python 🐍**.  

👉 Su objetivo es permitir que **cualquier aplicación Python** pueda ejecutarse en **cualquier servidor web** que soporte WSGI, funcionando como un **puente** entre ambos.  

---

## 🔗 WSGI y la Web
- Los **usuarios** hacen solicitudes (requests) a través de un navegador 🌍.  
- El **servidor web** (como Nginx, Apache o Gunicorn) recibe esas solicitudes.  
- Gracias a **WSGI**, el servidor puede **comunicarse con la aplicación Python**, enviarle la petición y devolver la respuesta adecuada.  

---