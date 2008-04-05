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

#ifndef __occolor_OBJETIVO_C
#define __occolor_OBJETIVO_C

#import <objc/Object.h>

/*!
 *	\brief La clase OCColor almacena y opera con colores.
 *
 *	La clse OCColor almacena los valores RGB (rojo, verde y azul) de un color.
 * También permitirá operar con colores.
 *
 *	\author Fernando Arroba.
 *
 */

@interface OCColor: Object
{
	float r; //!< El parámetro de color rojo (Red).
	float g; //!< El parámetro de color verde (Green).
	float b; //!< El parámetro de color azul (Blue).
}

/*!
 *	El constructor de la clase crea un color con los valores RGB puestos a cero.
 * Es decir, en negro.
 */
- init;
/*!
 *	Establece el parámetro de color rojo.
 *	\param El valor que se establecerá en el rojo.
 *	\return Devuelve un self con el parámetro rojo cambiado.
 */
- (OCColor*) ponR: (float) vr;
/*!
 *	Establece el parámetro de color verde.
 *	\param El valor que se establecerá en el verde.
 *	\return Devuelve un self con el parámetro verde cambiado.
 */
- (OCColor*) ponG: (float) vg;
/*!
 *	Establece el parámetro de color azul.
 *	\param El valor que se establecerá en el azul.
 *	\return Devuelve un self con el parámetro azul. cambiado.
 */
- (OCColor*) ponB: (float) vb;
/*!
 *	Devuelve el valor del parámetro rojo.
 *	\return Devuelve el valor del parámetro rojo.
 */
- (float) r;
/*!
 *	Devuelve el valor del parámetro verde.
 *	\return Devuelve el valor del parámetro verde.
 */
- (float) g;
/*!
 *	Devuelve el valor del parámetro azul.
 *	\return Devuelve el valor del parámetro azul.
 */
- (float) b;
/*!
 *	Suma de dos colores.
 *	\return Devuelve un self con el resultado de la suma de colores.
 */
- (OCColor*) suma: (OCColor*) color;
@end

#endif
