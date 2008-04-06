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

#ifndef __occamara_OBJETIVO_C
#define __occamara_OBJETIVO_C

#import <objc/Object.h>

#import "OCVector.h"

/*!
 *	Esta clase guarda los datos relativos a la posición del punto de vista desde
 * el que se realiza el render. Tanto la posición, como hacia dónde mira y el
 * ángulo de la "pirámide" de visión.
 *	\author Fernando Arroba
 */
@interface OCCamara : Object
{
	OCVector* posicion; //!< Situación del punto de vista.
	OCVector* miraA;		//!< Dirección en que mira.
	OCVector* arriba;		//!< Vector de dirección de la cámara.
	float			angulo;		//!< Ángulo del campo de visión.
}
/*!
 *	Constructor de la cámara. Inicia los valores posición y miraA como (0,0,0)
 * mientras que "arriba" lo coloca en (0,0,1) y el ángulo en 60º.
 *	\return El objeto OCCamara creado.
 */
- init;
/*!
 *	Devuelve la posición de la cámara.
 *	\return Devuelve la posición de la cámara.
 */
- (OCVector*) posicion;
/*!
 *	Devuelve la dirección en la que mira el centro de la cámara.
 *	\return Devuelve la dirección en la que mira el centro de la cámara.
 */
- (OCVector*) miraA;
/*!
 *	Devuelve la dirección de la parte superior de la cámara.
 *	\return Devuelve la dirección de la parte superior de la cámara.
 */
- (OCVector*) arriba;
/*!
 *	Devuelve el ángulo del campo de visión empleado.
 *	\return Devuelve el ángulo del campo de visión empleado.
 */
- (float) angulo;
/*!
 *	Establece una nueva posición para la cámara.
 *	\param El nuevo punto donde se situará la cámara.
 *	\return Devuelve el objeto cámara una vez modificada su posición.
 */
- (OCCamara*) ponPosicion: (OCVector*) pos;
/*!
 *	Establece un nuevo objetivo al que apuntar la cámara.
 *	\param El nuevo punto donde apuntará la cámara.
 *	\return Devuelve el objeto cámara una vez modificado su objetivo.
 */
- (OCCamara*) ponMiraA: (OCVector*) punto;
/*!
 *	Establece un nuevo ángulo para el zenit de la cámara.
 *	\param El vector hacia el que apuntará lo alto de la cámara.
 *	\return Devuelve el objeto cámara una vez modificado su zenit.
 */
- (OCCamara*) ponArriba: (OCVector*) direccion;
/*!
 *	Establece el ángulo del campo de visión de la cámara.
 *	\param El nuevo ángulo del campo de visión.
 *	\return Devuelve el objeto cámara una vez modificada su ángulo.
 */
- (OCCamara*) ponAngulo: (float) grados;
@end

#endif
