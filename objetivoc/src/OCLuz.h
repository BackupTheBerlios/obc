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

#ifndef __ocluz_OBJETIVO_C
#define __ocluz_OBJETIVO_C

#import <objc/Object.h>

#import "OCVector.h"
#import "OCColor.h"

/*!
 *	Esta clase será la raíz de todas las luces. En principio está implementada
 * como una luz puntual, sólo tiene una posición desde la que irradia el mismo
 * color en todas direcciones.
 *	\author Fernando Arroba
 */
@interface OCLuz : Object
{
	OCVector* posicion;	//!< Vector que marca la posición del punto radiante.
	OCColor* color;		//!< Color de la luz, por defecto será blanco.
}
/*!
 *	Constructor de la clase OCList. Por defecto crea una luz en el punto (0,0,0)
 * de color blanco (1,1,1).
 *	\return Un puntero a un objeto OCLuz.
 */
- init;
/*!
 *	Establece la posición de la luz.
 *	\param Un vector de posición.
 *	\return Devuelve un self con la posición ya cambiada.
 */
- (OCLuz*) ponPosicion: (OCVector*) pos;
/*!
 *	Establece el color de la luz.
 *	\param El color por el que se cambiará el de la luz.
 *	\return Devuelve un self con el color ya cambiado.
 */
- (OCLuz*) ponColor: (OCColor*) col;
/*!
 *	Devuleve la posición en la que se encuentra la luz.
 *	\return Devuelve la posición de la luz.
 */
- (OCVector*) posicion;
/*!
 *	Devuleve el color de la luz.
 *	\return Devuelve el color de la luz.
 */
- (OCColor*) color;
@end

#endif
