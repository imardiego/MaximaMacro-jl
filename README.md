# MaximaMacro.jl

Ejecuta comandos de **Maxima** (sistema de álgebra computacional) directamente desde **Julia** con soporte para sesiones persistentes, gráficos integrados en Jupyter y salida limpia al estilo de Maxima.
Los gráficos generados se guardan en el directorio plots. 

# Requerimientos

Instalar maxima: 
https://maxima.sourceforge.io/download.html?utm_source=chatgpt.com

Instalar qinf: <-- no es obligatorio, solo para algebra cuántica
https://github.com/jlapeyre/qinf

## 🔧 Características

- ✅ **Sesión persistente**: `a: 5; b: 7; c: a + b;` funciona correctamente.
- ✅ **Gráficos en Jupyter**: los gráficos aparecen **en su posición correcta** dentro de la secuencia de comandos.
- ✅ **Salida limpia**: formato `(%i1) comando;` → `(%o1) resultado`.
- ✅ **Opción de créditos reales** de Maxima (encabezado oficial).
- ✅ **Guardado opcional** de toda la salida en un fichero de texto.
- ✅ **Compatibilidad con `qinf`**: paquete de aritmética cualitativa (infinitos, etc.).

## 📥 Instalación

Requisitos: 
   
    - Maxima
    - Gnuplot

Descarga MaximaMacro.jl e inclúyelo en tu directorio local:

    - Desde Julia Jupiter Notebook: include ("MaximaMacro.jl")

O instalalo desde Julia: 
  
    - using Pkg
    - add path de MaximaMacro en github