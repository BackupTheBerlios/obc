#definimos un executable con el fitxero pruebas.m
add_executable(Pruebas pruebas.m)

#cremos otra libreria
add_library(OCPruebas OCPrueba.m OCPruebaEnteros.m PruebaOCCadena.m PruebaOCTokenizer.m)

#Le decimos que el ejecutable Pruebas requiere las librerias OCPruebas, Utiles i -lobjc
target_link_libraries(Pruebas OCPruebas Utiles -lobjc)
