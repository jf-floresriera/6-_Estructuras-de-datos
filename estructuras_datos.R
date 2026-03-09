# -*- coding: utf-8 -*-
# ---
# jupyter:
#   jupytext:
#     formats: R:percent
#     text_representation:
#       extension: .R
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.19.1
#   kernelspec:
#     display_name: R
#     language: R
#     name: ir
# ---

# %%
###############################
# Ejercicio 1: Rutas de monitoreo
###############################

# 1) Puntos como vectores numéricos (equivalente seguro)
punto_1 <- c(11.1198, -74.0321)
punto_2 <- c(11.1250, -74.0280)
punto_3 <- c(11.1302, -74.0215)

# 2) Lista mutable con la ruta
ruta_avistamiento <- list(punto_1, punto_2, punto_3)

# 3) Agregar cuarto punto al final
punto_4 <- c(11.1355, -74.0150)
ruta_avistamiento <- append(ruta_avistamiento, list(punto_4))

# 4) Extraer último punto (usando length)
ultimo_reporte <- ruta_avistamiento[[length(ruta_avistamiento)]]

# 5) Vector de elevaciones
elevaciones <- c(850.5, 920.0, 1050.2, 1180.8)

# 6) Elevación máxima y número de vértices
elev_maxima <- max(elevaciones)
num_vertices <- length(ruta_avistamiento)

print(ruta_avistamiento)
cat("Último reporte:", ultimo_reporte, "\n")
cat("Elevación máxima:", elev_maxima, "m\n")
cat("Número total de puntos:", num_vertices, "\n")

###############################
# Ejercicio 2: Metadatos y ecosistemas
###############################

# 1) Lista nombrada PNN Tayrona
pnn_tayrona <- list(
  nombre = "PNN Tayrona",
  area_hectareas = 15000,
  abierto_turismo = TRUE,
  ecosistemas = c("Manglar", "Bosque Seco", "Coral")
)

# 2) Acceso "seguro" a clave inexistente
if (is.null(pnn_tayrona$fecha_creacion)) {
  fecha_creacion <- "Dato no disponible"
} else {
  fecha_creacion <- pnn_tayrona$fecha_creacion
}
cat("\nFecha de creación:", fecha_creacion, "\n")

# 3) Añadir departamento
pnn_tayrona$departamento <- "Magdalena"

# 4) Observaciones crudas y únicas
observaciones_crudas <- c(
  "Manglar", "Coral", "Bosque Seco",
  "Manglar", "Coral", "Matorral"
)
observaciones_unicas <- unique(observaciones_crudas)
cat("Observaciones únicas:", observaciones_unicas, "\n")

# 5) Intersección entre ecosistemas oficiales y observados
ecosistemas_oficiales <- pnn_tayrona$ecosistemas
ecosistemas_observados_oficiales <- intersect(
  ecosistemas_oficiales,
  observaciones_unicas
)
cat("Ecosistemas oficiales avistados hoy:",
    ecosistemas_observados_oficiales, "\n")

# %%
