# VS CODE (instalación y extensiones)

## 🧩 1. Instalar Visual Studio Code

---

### Paso 1. Descargar VS Code

- Vamos a la página oficial: [https://code.visualstudio.com/](https://code.visualstudio.com/)

- Elegimos la versión para Windows y la descargamos.

### Paso 2. Instalar

- Ejecutamos el instalador: `VSCodeUserSetup-x64-*.exe` (puede llamarse de otra forma).

- Durante la instalación, **marcamos** las opciones:

  - "Agregar a PATH"

  - "Registrar código como editor de soporte para archivos"

  - "Agregar acción de contexto: Abrir con Code"

- Finalizamos la instalación.

## 🧩 2. Instalar extensiones para Markdown

---

Abrimos VS Code y seguimos estos pasos:

### Opción 1: Desde la interfaz gráfica

1. Hacemos clic en el ícono de **Extensiones** (barra lateral izquierda).

2. Buscamos e instalamos las siguientes extensiones:

    - **Markdown All in One**\ → Soporte completo para listas, atajos, tablas de contenido, etc.

    - **Markdown Preview Enhanced**\ → Permite vista previa avanzada y exportación a PDF/HTML.

    - **Markdownlint**\ → Analiza errores y mejora la calidad del Markdown.

    - **Path Intellisense**\ → Autocompletado para rutas de imágenes o archivos.

    - **Prettier - Code Formatter**\ → Formato automático del Markdown.

### Opción 2: Desde la terminal de VS Code

Abrimos la terminal (`Ctrl + ñ` o `Terminal > Nueva terminal`) y ejecutamos:

```powershell
code --install-extension yzhang.markdown-all-in-one
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension christian-kohler.path-intellisense
code --install-extension esbenp.prettier-vscode

```

## 🧩 3. Previsualizar Markdown

---

### Opción 1: Vista previa nativa

- Abrimos un archivo `.md`.

- Pulsamos `Ctrl + Shift + V` → Se abre la vista previa a la derecha.

- También podemos usar el menú `Ver > Vista previa Markdown`.

### Opción 2: Markdown Preview Enhanced

- Con el archivo `.md` abierto, pulsamos `Ctrl + Shift + P`.

- Escribimos: `Markdown Preview Enhanced: Open Preview to the Side`

- Esta extensión ofrece soporte para fórmulas, diagramas, exportación, etc.

## 🧩 4. Exportar las extensiones instaladas

---

### Paso 1. Exportar la lista

```powershell
code --list-extensions > extensions.txt

```

**🔧 Nota:** Si el comando `code` no funciona en nuestra terminal, abrimos VS Code, pulsamos `Ctrl + Shift + P` y ejecutamos:

```vscode
Shell Command: Install 'code' command in PATH.

```

Luego cerramos y volvemos a abrir la terminal.

Esto genera un archivo de texto con todos los identificadores de las extensiones instaladas.

### Paso 2. Importar en otro equipo

En el otro equipo, nos aseguramos de tener VS Code instalado. Luego abrimos una terminal y ejecutamos:

> ⚠️ En CMD, usamos:

```cmd
for /f %i in (extensions.txt) do code --install-extension %i

```

> ⚠️ En PowerShell, usamos:

```powershell
Get-Content extensions.txt | ForEach-Object { code --install-extension $_ }

```

✅ Con esta configuración, ya podemos redactar, previsualizar y compartir documentación profesional en Markdown utilizando Visual Studio Code.

---
