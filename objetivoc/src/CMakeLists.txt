#definimos un executable con el fitxero
add_executable(ObjetivoC obc.m)

#cremos otra libreria
add_library(OC OCEscena.m OCParser.m OCVector.m OCColor.m)

#Le decimos que el ejecutable Pruebas requiere las librerias OCPruebas, Utiles i -lobjc
target_link_libraries(Pruebas OC Utiles -lobjc)
