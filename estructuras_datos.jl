# -*- coding: utf-8 -*-
# ---
# jupyter:
#   jupytext:
#     formats: jl:percent
#     text_representation:
#       extension: .jl
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.19.1
#   kernelspec:
#     display_name: Julia 1.10
#     language: julia
#     name: julia-1.10
# ---

# %%
###############################
# Ejercicio 1: Rutas de monitoreo
###############################

# 1) Puntos como tuplas inmutables
punto_1 = (11.1198, -74.0321)
punto_2 = (11.1250, -74.0280)
punto_3 = (11.1302, -74.0215)

# 2) Vector mutable con la ruta
ruta_avistamiento = [punto_1, punto_2, punto_3]

# 3) Agregar cuarto punto al final
punto_4 = (11.1355, -74.0150)
push!(ruta_avistamiento, punto_4)

# 4) Extraer último punto (end)
ultimo_reporte = ruta_avistamiento[end]

# 5) Vector de elevaciones
elevaciones = [850.5, 920.0, 1050.2, 1180.8]

# 6) Elevación máxima y número de vértices
elev_maxima = maximum(elevaciones)
num_vertices = length(ruta_avistamiento)

println("Ruta de avistamiento: ", ruta_avistamiento)
println("Último reporte: ", ultimo_reporte)
println("Elevación máxima: ", elev_maxima, " m")
println("Número total de puntos: ", num_vertices)

###############################
# Ejercicio 2: Metadatos y ecosistemas
###############################

# 1) Diccionario PNN Tayrona
pnn_tayrona = Dict(
    "nombre" => "PNN Tayrona",
    "area_hectareas" => 15000,
    "abierto_turismo" => true,
    "ecosistemas" => ["Manglar", "Bosque Seco", "Coral"]
)

# 2) Acceso seguro a clave inexistente
fecha_creacion = get(pnn_tayrona, "fecha_creacion", "Dato no disponible")
println("\nFecha de creación: ", fecha_creacion)

# 3) Añadir departamento
pnn_tayrona["departamento"] = "Magdalena"

# 4) Observaciones crudas y únicas
observaciones_crudas = [
    "Manglar", "Coral", "Bosque Seco",
    "Manglar", "Coral", "Matorral"
]
observaciones_unicas = Set(observaciones_crudas)
println("Observaciones únicas: ", observaciones_unicas)

# 5) Intersección entre ecosistemas oficiales y observados
ecosistemas_oficiales = Set(pnn_tayrona["ecosistemas"])
ecosistemas_observados_oficiales = intersect(
    ecosistemas_oficiales,
    observaciones_unicas
)
println("Ecosistemas oficiales avistados hoy: ",
        ecosistemas_observados_oficiales)

