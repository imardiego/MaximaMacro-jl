include("../src/maximaMacro.jl")
using .MaximaMacro

@maxima integrate(x^2, x)

@maxima_cell begin
    expand((x + 1)^3);
    diff(sin(x)^2, x);
    integrate(exp(-x^2), x);
    H : 1/sqrt(2) * matrix([1, 1], [1, -1]); 
    I : ident(2);
end

println("=== 1. maxima_eval (resultado simbólico) ===")
res = maxima_eval("integrate(x^2, x)")
println("∫ x² dx = ", res)

println("\n=== 2. maxima_eval_float (resultado numérico) ===")
num = maxima_eval_float("float(22/7)")
println("22/7 ≈ ", num)

println("\n=== 3. maxima_eval con asignación ===")
val = maxima_eval("x:4; x^2 + 1;")
println("x² + 1 con x=4 → ", val)

println("\n=== 4. maxima_eval_float con expresión no numérica ===")
sym = maxima_eval_float("sqrt(2)")
println("sqrt(2) sin float() → ", sym)

println("\n=== 5. @maxima_session (sesión con estado) ===")
@maxima_session begin
    a = 2
    b = a^3
    b
end