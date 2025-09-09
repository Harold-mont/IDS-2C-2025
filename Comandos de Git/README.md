# 📘 Lista de Comandos Git

Guía rápida con los comandos más útiles de Git para trabajar con control de versiones local y remoto.

---

## 📦 Inicializar y Configurar Repositorios

| Comando                                               | Descripción                                           |
|--------------------------------------------------------|-------------------------------------------------------|
| `git init`                                             | Inicializa un nuevo repositorio Git                  |
| `git clone <url>`                                      | Clona un repositorio remoto                          |
| `git config --global user.name "Tu Nombre"`            | Configura tu nombre global de usuario                |
| `git config --global user.email "email@ejemplo.com"`   | Configura tu correo global de usuario                |

---

## 📄 Trabajar con Archivos

| Comando                          | Descripción                                                  |
|----------------------------------|--------------------------------------------------------------|
| `git status`                     | Muestra el estado actual del repositorio                     |
| `git add <archivo>`              | Agrega un archivo al área de staging                         |
| `git add .`                      | Agrega todos los cambios al área de staging                  |
| `git reset <archivo>`            | Quita un archivo del staging                                 |
| `git restore <archivo>`          | Restaura archivo al último commit                            |

---

## ✅ Commits

| Comando                                    | Descripción                                           |
|--------------------------------------------|-------------------------------------------------------|
| `git commit -m "Mensaje"`                  | Crea un commit con mensaje                            |
| `git commit --amend -m "Nuevo mensaje"`    | Modifica el último commit                             |
| `git log`                                  | Muestra el historial completo de commits              |
| `git log --oneline`                        | Muestra historial resumido                            |

---

## 🔁 Ramas (Branches)

| Comando                         | Descripción                                        |
|---------------------------------|----------------------------------------------------|
| `git branch`                    | Lista las ramas locales                           |
| `git branch <nombre>`           | Crea una nueva rama                               |
| `git checkout <rama>`           | Cambia a otra rama                                |
| `git checkout -b <nueva-rama>`  | Crea y cambia a una nueva rama                    |
| `git merge <rama>`              | Fusiona una rama con la actual                    |
| `git branch -d <rama>`          | Elimina una rama local                            |

---

## ⬆️⬇️ Repositorio Remoto (GitHub, etc.)

| Comando                                | Descripción                                             |
|----------------------------------------|---------------------------------------------------------|
| `git remote -v`                        | Muestra los remotos configurados                        |
| `git remote add origin <url>`         | Agrega un repositorio remoto                            |
| `git push -u origin <rama>`           | Sube y vincula una rama con el remoto                   |
| `git push`                             | Sube cambios al repositorio remoto                      |
| `git push --force`                    | Fuerza el push (útil tras un commit modificado)         |
| `git pull`                             | Trae y fusiona cambios del remoto                       |
| `git fetch`                            | Trae cambios sin fusionarlos                            |

---

## 🛠️ Otros Comandos Útiles

| Comando                      | Descripción                                                |
|------------------------------|------------------------------------------------------------|
| `git diff`                   | Muestra diferencias sin commitear                         |
| `git stash`                  | Guarda cambios sin hacer commit                           |
| `git stash apply`            | Restaura los cambios guardados con `stash`                |
| `git clean -fd`              | Elimina archivos/carpetas sin seguimiento                 |
| `git rebase <rama>`          | Reescribe historial sobre otra rama                       |
| `git revert <commit>`        | Crea un commit que revierte uno anterior                  |
| `git tag <nombre>`           | Crea una etiqueta (tag) útil para versiones/releases      |

---

## 🧪 Inspección y Ayuda

| Comando                    | Descripción                                |
|----------------------------|--------------------------------------------|
| `git show`                 | Muestra detalles del último commit         |
| `git blame <archivo>`      | Muestra quién cambió cada línea de un archivo |
| `git help <comando>`       | Muestra la ayuda oficial de un comando     |

---

**💡 Tip:**  
Podés combinar varios comandos y personalizar alias con:

```bash
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm "commit -m"
