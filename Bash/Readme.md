# Comandos Bash

## Procesamiento de texto
⦁	awk - Pattern scanning and processing language\
⦁	cat - Display file(s)\
⦁	cut - Extract selected fields of each line of a file\
⦁	diff - Compare two files\
⦁	grep - Search text for a pattern\
⦁	head - Display the first part of files\
⦁	less - Display files on a page-by-page basis\
⦁	sed - Stream editor (esp. search and replace)\
⦁	sort - Sort text files\
⦁	split - Split files\
⦁	tail - Display the last part of a file\
⦁	tr - Translate/delete characters\
⦁	uniq - Filter out repeated lines in a file\
⦁	wc - Line, word and character count\
⦁	touch - Create a new empty file

## Editores dentro de Linux

- **Vim** → `sudo apt install vim`
- **Nano** → `sudo apt install nano`
- **ne – The Nice Editor** → `sudo apt install ne`  
- **GNU Emacs** → `sudo apt install emacs`  

entre otros...

# ¿Qué es una Variable?

Una variable es una herramienta que nos permite **almacenar información** de algún tipo, en particular puede ser:  
String, Integer, Array o Constantes.

Además, las variables pueden ser...
A partir de la información proporcionada, a continuación se presenta un resumen con el formato solicitado, con el objetivo de diferenciar entre variables locales y de ambiente en un entorno de shell.

-----

## Variables locales 🏠

Las **variables locales** son definidas por el usuario dentro de una sesión de shell o un script. ✍️ Su alcance está **restringido al shell actual** en el que fueron creadas, lo que significa que no se transmiten a los subprocesos o "subshells" que se ejecutan desde el shell principal.
Para definirlas, se usa el siguiente formato:

```bash
VARNAME="valor"
```

⚠️ **Importante:** Al definir una variable local, no se deben colocar espacios alrededor del signo de igual (`=`), ya que esto puede causar errores de sintaxis en el shell.

-----

## Variables de ambiente (o globales) 🌐

Las **variables de ambiente** (o globales) son accesibles para todos los procesos que se ejecutan en un sistema. 🚀 Se definen típicamente en archivos de configuración del usuario o del sistema (como `.bashrc`, `.profile` o `.bash_profile`) y se **heredan automáticamente** a los procesos hijos. Puedes verlas usando los comandos `env` o `printenv`.
Para que una variable local se convierta en una variable de ambiente y se transmita a los subshells, debe **exportarse** usando el comando `export`.

```bash
export VARNAME="valor"
```

✅ **Recomendación:** Siempre se recomienda usar `export` para asegurar que la variable esté disponible para todos los procesos subsiguientes.

# ¿Qué es un Script? 📝

Un **script** es una **secuencia de comandos** y operaciones que el shell puede interpretar y ejecutar de forma automática. ⚙️

Esta secuencia de comandos se guarda comúnmente en un archivo de texto con la extensión `.sh` (por ejemplo, `mi_script.sh`). Luego, puedes ejecutarlo usando comandos como `bash`, `./`, `sh`, u otros, dependiendo del shell que estés utilizando.

El principal propósito de los scripts es **automatizar tareas** repetitivas, permitiendo ejecutar múltiples comandos en un solo paso. ✨