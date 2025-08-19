# 🐧 Introducción a Linux

Linux es un **sistema operativo** basado en el modelo de **software libre**. Se originó como un proyecto personal de **Linus Torvalds** en 1991 y, junto al proyecto **GNU** iniciado en 1983 por **Richard Stallman**, dio origen a lo que hoy conocemos como **GNU/Linux**.

En agosto de 1991, Linus escribió en el foro comp.os.minix:

```text
Hello everybody out there using minix -
I’m doing a (free) operating system (just a hobby, won’t be big and professional like gnu) for 386(486) AT clones.
```

---

# 🔑 Conceptos fundamentales

## Kernel

El **kernel** es el núcleo del sistema operativo. Se encarga de:

* 🧠 **Gestión de procesos** (multitarea)
* 📂 **Sistema de archivos** (lectura y escritura de datos)
* 💽 **Acceso al hardware** (CPU, memoria, dispositivos)
* 🔌 **Drivers** y comunicación con periféricos

Todas las distribuciones Linux comparten el **Kernel Linux**, aunque pueden personalizarlo o configurarlo.

## GNU

El proyecto **GNU** desarrolló herramientas fundamentales (compiladores, shells, utilidades de usuario). Junto con el **kernel Linux**, conforman un sistema operativo completo: **GNU/Linux**.

---

# 👥 Creadores clave

## 👨‍💻 Linus Torvalds

Escribió el núcleo del sistema operativo Linux. Hoy en día, miles de desarrolladores y compañías como **Intel**, **IBM** y **Google** contribuyen al desarrollo del kernel.

## 🧑‍🦱 Richard Stallman

Fundador del movimiento de **software libre** y creador del sistema **GNU**. Proveyó las **utilidades GNU**, necesarias para que Linux fuera funcional.

> ⚙️ **Dato adicional:** El nombre correcto del sistema es **GNU/Linux**, aunque comúnmente se le llama solo Linux.

---

# 📦 Distribuciones Linux

Existen muchas distribuciones (distros), todas basadas en el mismo kernel:

* 🟦 **Debian**
* 🟩 **Ubuntu** (basada en Debian)
* 🟥 **Fedora**
* 🟧 **CentOS** / **Red Hat**
* 🟪 **Arch Linux**
* 🟨 **openSUSE**
* 🌱 **Linux Mint**
* 🔧 **Gentoo**

Cada una se diferencia por sus herramientas de instalación, gestión de paquetes, filosofía y soporte.

---

# 🏗️ Capas del sistema operativo Linux

```plaintext
+----------------------------+
|       Utilities           |  ← Herramientas y comandos
+----------------------------+
|         Shell             |  ← Intérprete de comandos
+----------------------------+
|         Kernel            |  ← Núcleo del sistema operativo
+----------------------------+
|        Hardware           |  ← Dispositivos físicos
+----------------------------+
```

### 🔧 Hardware

La parte física del sistema: CPU, memoria, disco, periféricos.

### 🧩 Kernel

Controla multitarea, acceso a dispositivos y sistema de archivos.

### 💬 Shell

Intérprete de comandos. Ejemplos:

| Comando | Descripción                               |
| ------- | ----------------------------------------- |
| `sh`    | Shell básica (Bourne shell)               |
| `bash`  | La más común en Linux, potente y flexible |
| `zsh`   | Moderna y configurable                    |
| `tcsh`  | Autocompletado y sintaxis mejorada        |

### 🛠️ Utilities (GNU Tools)

Herramientas esenciales para interactuar con el sistema:

| Comando | Descripción                          |
| ------- | ------------------------------------ |
| `cat`   | Muestra el contenido de archivos     |
| `sort`  | Ordena texto                         |
| `wc`    | Cuenta líneas, palabras y caracteres |
| `gcc`   | Compilador de C/C++                  |
| `emacs` | Editor de texto avanzado             |
| `grep`  | Busca patrones en texto              |
| `awk`   | Procesa datos y texto                |

---

# 🌍 ¿Dónde se usa Linux?

* 🌐 **Servidores web:** 67% usan Linux (dato 2016)
* 💻 **Supercomputadoras:** 100% del TOP500 usa Linux
* 📱 **Dispositivos inteligentes:** Android, Kindle, Smart TVs, IoT
* 🚀 **Infraestructura tecnológica:** Google, Amazon, NASA

---

# 🖥️ Terminal y Shell

La **terminal** es la interfaz de línea de comandos. Permite interactuar con el sistema a través del **shell**, que interpreta y ejecuta las órdenes.

Ejemplo de prompt:

```text
usuario@equipo:/ruta/actual$
```

| Elemento  | Descripción                          |
| --------- | ------------------------------------ |
| `usuario` | Usuario actual                       |
| `equipo`  | Nombre de la máquina                 |
| `/ruta/`  | Directorio actual                    |
| `$` o `#` | Permisos (\$ usuario normal, # root) |

Ejemplo de comando:

```bash
usuario@equipo:~$ pico -O /etc/ssh/sshd.conf
```

| Parte                | Descripción                |
| -------------------- | -------------------------- |
| `pico`               | Comando ejecutado          |
| `-O`                 | Opción del comando         |
| `/etc/ssh/sshd.conf` | Archivo sobre el que actúa |

---

# 📁 Jerarquía del sistema de archivos

Linux organiza todo en un árbol jerárquico que inicia en `/` (**directorio raíz**):

| Directorio | Descripción                         |
| ---------- | ----------------------------------- |
| `/bin/`    | Binarios esenciales de usuario      |
| `/boot/`   | Archivos del cargador de arranque   |
| `/dev/`    | Representación de dispositivos      |
| `/etc/`    | Archivos de configuración           |
| `/home/`   | Carpetas personales de usuarios     |
| `/lib/`    | Bibliotecas esenciales              |
| `/media/`  | Montaje de medios extraíbles        |
| `/mnt/`    | Montaje temporal                    |
| `/opt/`    | Software adicional                  |
| `/sbin/`   | Binarios del sistema (root)         |
| `/srv/`    | Datos de servicios                  |
| `/tmp/`    | Archivos temporales                 |
| `/usr/`    | Programas y utilidades de usuario   |
| `/var/`    | Datos variables (logs, colas, etc.) |
| `/root/`   | Carpeta personal del superusuario   |
| `/proc/`   | Info sobre procesos y el sistema    |

---

# 🧩 Implementación del sistema de archivos

El sistema de archivos en Linux tiene dos niveles:

## 1. Kernel

Gestiona dispositivos, memoria y sistemas de archivos.

## 2. Virtual File System (VFS)

Capa de abstracción que permite manejar distintos sistemas de archivos de manera uniforme.

### Tipos de sistemas soportados

| Sistema | Descripción                                   |
| ------- | --------------------------------------------- |
| EXT3    | Antiguo, con journaling                       |
| EXT4    | Moderno, eficiente                            |
| VFAT    | Compatible con Windows (USB, discos externos) |
| HPFS    | Usado en OS/2                                 |
| UFS     | Sistema nativo de FreeBSD                     |

> 🔁 **Resumen:** El VFS es el "traductor" entre el kernel y los distintos sistemas de archivos.

---

# 🧭 Comandos básicos

## Navegación

* `pwd` → Muestra el directorio actual
* `ls` → Lista archivos
* `cd` → Cambia de directorio

## Caracteres especiales

* `~` → Home del usuario
* `.` → Directorio actual
* `..` → Directorio padre
* `*` → Comodín de múltiples caracteres
* `?` → Comodín de un carácter
* `TAB` → Autocompleta

## Variantes de `ls`

* `ls -a` → Incluye archivos ocultos
* `ls -l` → Detalles en lista
* `ls -lh` → Tamaños legibles
* `ls -lS` → Ordenado por tamaño
* `ls -lt` → Ordenado por fecha
* `ls -lR` → Recursivo

## Comandos frecuentes

* `cp [f1] [f2]` → Copiar archivo
* `mv [f] [dest]` → Mover/renombrar
* `rm [f]` → Borrar (`-r` recursivo)
* `mkdir [dir]` → Crear carpeta
* `rmdir [dir]` → Eliminar carpeta vacía
* `file [f]` → Identificar tipo de archivo
* `less [f]` → Ver archivo paginado
* `head -n N [f]` → Primeras N líneas
* `tail -n N [f]` → Últimas N líneas
* `ln -s [f] [nuevo]` → Link simbólico
* `cat [f]` → Mostrar contenido
* `tac [f]` → Mostrar invertido
* `touch [f]` → Crear/actualizar archivo
* `od [f]` → Mostrar binario

---