include("../src/MaximaMacro.jl")
using .MaximaMacro

println("=== Cargar qinf y usar puertas cuánticas ===")
@maxima_session begin
    load(qinf)
    H = hadamard(1)
    X = pauli_x()
    CX = cnot()
    H
end