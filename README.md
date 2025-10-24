# MaximaMacro.jl
Integración robusta de **Maxima** en **Julia** con soporte para:

- ✅ Comandos únicos (`@maxima`)
- ✅ Bloques sin estado (`@maxima_cell`)
- ✅ Sesiones con estado persistente (`@maxima_session`)
- ✅ Función `maxima_eval()` → devuelve resultados como `String`
- ✅ Función `maxima_eval_float()` → devuelve resultados como `Float64` (si es numérico)

## 🔧 Optimizado para Maxima + GCL

Configura automáticamente las variables de entorno de GCL para:
- Usar solo el **30% de la RAM física**
- Activar recolección de basura más temprano
- Evitar que Maxima bloquee tu sistema

Basado en recomendaciones oficiales de [Camm Maguire (desarrollador de GCL)](https://lists.gnu.org/archive/html/gcl-devel/2017-09/msg00000.html).

Ejecuta comandos de **Maxima** directamente desde **Julia**.

**Importante:** Cada ejecución es independiente con sesión propia.
Ya sea para un comando o varios comandos juntos con su cabecera @maxima o integrados 
dentro de una @maxima_cell begin. 
Esto significa que el si se ejecuta: 

          @maxima a:7
          @maxima b:8
          @maxima c:a+b 

Los resultados de las  ejecuiones serán 7, 8 y c:a+b, ya que una segunda ejecución no 
guarda el valor de la primera. 

## Requisitos
- Julia ≥ 1.6
- Maxima instalado (`maxima` en el PATH)
- (Opcional) [`qinf`](https://github.com/hpcalc/qinf) para información cuántica

## Uso

include("src/maximaMacro.jl")
using .MaximaMacro

@maxima diff(x^2 + sin(x), x)

@maxima_cell begin
    expand((x + 1)^3)
    integrate(exp(-x^2), x)
end

📌 Ejemplos
# Resultado simbólico
maxima_eval("diff(x^3, x)")  # → "3*x^2"

# Resultado numérico
maxima_eval_float("float(sqrt(2))")  # → 1.4142135623730951

# Sesión con estado
@maxima_session begin
    x = 5
    x^2  # → 25
end