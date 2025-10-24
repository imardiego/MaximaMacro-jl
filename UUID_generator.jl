using Pkg
Pkg.generate("TempPkg")
# Copia el uuid del archivo Project.toml generado
rm("TempPkg", recursive=true)