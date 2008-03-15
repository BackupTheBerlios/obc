/*
 * OCLista.h
 *
 * Creado por Notxor en 01/03/08
 * Modificado por Notxor en 02/03/08 12:23:08
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

#ifndef __oclista_OBJETIVO_C
#define __oclista_OBJETIVO_C

#import <objc/Object.h>
#import "OCNodo.h"

/*! \interface OCLista
 *
 */

@interface OCLista : Object
{
	OCNodo* cabeza;
	OCNodo* cola;
	int tamanio;
}

- (id) init;

- (BOOL)estaVacia;
- (int) tamanio;

- (OCLista*) ponerEnCabeza: (id) pDato;
- (OCLista*) ponerEnCola: (id) pDato;

- (OCLista*) quitarCabeza;
- (OCLista*) quitarCola;

- (OCLista*) borra: (OCNodo*) pOCNodo;
- (OCLista*) quita: (id) pDato;

- (OCNodo*) inicio;
- (OCNodo*) fin;

- (id) cabeza;
- (id) cola;

@end

#endif
