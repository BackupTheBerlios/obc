/*
 * obc.m
 *
 * Creado por Notxor en 18/03/08
 */

/*
 *      This program is free software; you can redistribute it and/or modify
 *      it under the terms of the GNU General Public License as published by
 *      the Free Software Foundation; either version 2 of the License, or
 *      (at your option) any later version.
 *
 *      This program is distributed in the hope that it will be useful,
 *      but WITHOUT ANY WARRANTY; without even the implied warranty of
 *      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *      GNU General Public License for more details.
 *
 *      You should have received a copy of the GNU General Public License
 *      along with this program; if not, write to the Free Software
 *      Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 *      MA 02110-1301, USA.
 */

#ifndef __objetivoc_OBJETIVO_C
#define __objetivoc_OBJETIVO_C

#import <objc/Object.h>
#import <stdio.h>

#import "OCParser.h"
#import "OCEscena.h"

int main(int argv, char **argc)
{
	/*!
	 * \brief Crear escena desde un fichero
	 *
	 *	El primer paso es leer el fichero. Para ello se necesita un "parser" que
	 * convierta las instrucciones del fichero en un objeto OCEscena. Los elementos
	 * fundamentales de una escena son las luces y los objetos. Para que sean
	 * representados correctamente la escena debe contener una cámara o se usará
	 * una con valores por defecto.
	 *
	 *	También, los objetos y las luces deben contener otra serie de datos.
	 * Principalmente información sobre materiales (color, textura, rugosidad...).
	 */

	OCEscena* escena = [[OCEscena alloc] init];
	OCParser* parser = [[OCParser alloc] init];

	escena = [parser delFichero: "OCParser*"];

	//Una vez creada la escena no necesitamos el parser
	[parser free];

	// Limpiar los objetos de la escena
	[escena free];

	return 0;
}

 #endif
