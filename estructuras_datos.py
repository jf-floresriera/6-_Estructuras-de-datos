# ---
# jupyter:
#   jupytext:
#     formats: py:percent
#     text_representation:
#       extension: .py
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.19.1
#   kernelspec:
#     display_name: Python 3 (ipykernel)
#     language: python
#     name: python3
# ---

# %%
# ============================
# Ejercicio 1: Rutas de monitoreo
# ============================

# 1) Puntos como tuplas inmutables
punto_1 = (11.1198, -74.0321)
punto_2 = (11.1250, -74.0280)
punto_3 = (11.1302, -74.0215)

# 2) Lista mutable con la ruta
ruta_avistamiento = [punto_1, punto_2, punto_3]

# 3) Agregar cuarto punto al final
punto_4 = (11.1355, -74.0150)
ruta_avistamiento.append(punto_4)

# 4) Extraer último punto (indexación negativa)
ultimo_reporte = ruta_avistamiento[-1]

# 5) Lista paralela de elevaciones
elevaciones = [850.5, 920.0, 1050.2, 1180.8]

# 6) Elevación máxima y número de vértices
elev_maxima = max(elevaciones)
num_vertices = len(ruta_avistamiento)

print("Ruta de avistamiento:", ruta_avistamiento)
print("Último reporte:", ultimo_reporte)
print(f"Elevación máxima: {elev_maxima} m")
print(f"Número total de puntos: {num_vertices}")

# ============================
# Ejercicio 2: Metadatos y ecosistemas
# ============================

# 1) Diccionario PNN Tayrona
pnn_tayrona = {
    "nombre": "PNN Tayrona",
    "area_hectareas": 15000,
    "abierto_turismo": True,
    "ecosistemas": ["Manglar", "Bosque Seco", "Coral"],
}

# 2) Acceso seguro a clave inexistente
fecha_creacion = pnn_tayrona.get("fecha_creacion", "Dato no disponible")
print("\nFecha de creación:", fecha_creacion)

# 3) Añadir departamento
pnn_tayrona["departamento"] = "Magdalena"

# 4) Observaciones crudas y conjunto sin duplicados
observaciones_crudas = [
    "Manglar", "Coral", "Bosque Seco",
    "Manglar", "Coral", "Matorral"
]
observaciones_unicas = set(observaciones_crudas)

print("Observaciones únicas:", observaciones_unicas)

# 5) Intersección entre ecosistemas oficiales y observados
ecosistemas_oficiales = set(pnn_tayrona["ecosistemas"])
ecosistemas_observados_oficiales = ecosistemas_oficiales.intersection(
    observaciones_unicas
)

print("Ecosistemas oficiales avistados hoy:",
      ecosistemas_observados_oficiales)

# %%
