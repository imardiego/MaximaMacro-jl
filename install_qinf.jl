
---

### 📄 5. `install_qinf.jl`


# install_qinf.jl
using Downloads

# Directorio de Maxima
maxima_dir = joinpath(homedir(), ".maxima")
mkpath(maxima_dir)

url = "https://raw.githubusercontent.com/hpcalc/qinf/master/qinf.mac"
dest = joinpath(maxima_dir, "qinf.mac")

println("📥 Descargando qinf.mac desde GitHub...")
try
    Downloads.download(url, dest)  
    println("✅ qinf.mac instalado en: ", dest)
    println("\n📌 Ahora puedes usarlo en Maxima con: load(\"qinf\");")
catch e
    println("❌ Error al descargar: ", e)
end

"""
julia install_qinf.jl

# Esto descargará e instalará el archivo qinf.mac en el directorio .maxima de tu usuario.
"""