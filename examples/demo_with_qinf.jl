using .MaximaMacro

# Ejemplo con sesión qinf, si está instalado
@maxima_cell_session(
    "H: hadamard(1)",
    "X: pauli_x()",
    "CX: cnot()",
    "H"
)