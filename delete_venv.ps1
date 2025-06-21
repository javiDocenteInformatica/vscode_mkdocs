# 1. Comprobar si existe la carpeta 'venv'
if (Test-Path .\venv) {
    Write-Host "Se ha encontrado la carpeta 'venv'."

    # 2. Intentar desactivar el entorno virtual si estuviera activo
    try {
        deactivate
        Write-Host "Entorno virtual desactivado."
    } catch {
        Write-Host "No se pudo ejecutar 'deactivate'. Probablemente el entorno no estaba activo en esta sesi?n."
    }

    # 3. Eliminar la carpeta 'venv'
    try {
        Remove-Item -Recurse -Force .\venv
        Write-Host "Carpeta 'venv' eliminada correctamente."
    } catch {
        Write-Host "Error al eliminar la carpeta 'venv'."
    }

} else {
    Write-Host "No existe la carpeta 'venv'. No hay nada que eliminar."
}
