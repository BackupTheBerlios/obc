/*
 * OCPruebaEnteros.h
 *
 * Creado por Notxor en 02/03/08 19:13:46
 *
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

#ifndef __ocpruebaenteros_OBJETIVO_C
#define __ocpruebaenteros_OBJETIVO_C

#import "OCPrueba.h"
#import <objc/Object.h>

@interface OCPruebaEnteros : OCPrueba
{
	//const char* nombre;
}
- init;
- (char*)nombre;
	/* Esto es nuevo */
- (BOOL)laOperacion: (int)expresion1 esIgualA: (int)expresion2;
- (BOOL)laOperacion: (int)expresion1 noEsIgualA: (int)expresion2;
@end

#endif
