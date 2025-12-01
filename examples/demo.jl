using .MaximaMacro

# Resultado simbólico (cadena)
comando="integrate(x^2, x)"
expr = maxima_eval(comando)
println(comando ,"  -->  ", expr,"\n")  # → "x^3/3"

# Resultado numérico (cadena)
num_str = maxima_eval("float(sqrt(2))")
println(num_str,"\n")  # → "1.414213562373095"

# Convertir a número en Julia
num = parse(Float64, num_str)
println(num + 1,"\n")  # → 2.414213562373095

# Con qinf (si está instalado)
ket_result = maxima_eval("ket(0) + ket(1)")
println(ket_result,"\n")  # → "matrix([1],[1])"  (ejemplo)

# Usar el macro @maxima para evaluar expresiones
@maxima "integrate(x^2, x)"
@maxima "f(x) := x^3 - 3*x + 2"

# Evaluar varias expresiones en una sesión
@maxima_cell_session(
    "integrate(x^2, x)",
    "pi:float(%pi)",
    "pi+1",
    "a:5",
    "b:10",
    "c:a + b"
)

# Ejemplo con sesión y créditos
@maxima_cell_session(
    "a: 5",
    "b: 7",
    "c: a + b",
    creditos=true
)

# Ejemplo con estado y gráfico
@maxima_cell_session(
    "a: 5",
    "b: 7",
    "c: a + b",
    "plot2d(sin(x), [x, 0, %pi])",
    "plot2d(sin(x), [x, -%pi, %pi])"
)