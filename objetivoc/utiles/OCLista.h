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
 *	\brief La clase OCLista es una estructura de datos básica. Funciona
 *	enlazando OCNodos linealmente.
 *	\author Fernando Arroba Rubio
 *
 *	Dentro de las estructuras de datos dinámicas la lista es una de las básicas
 * puesto que se puede emplear tanto para implementar colas como pilas. Para
 * ello necesita otra clase de datos, el OCNodo.
 *
 *	La clase OCLista es doblemente enlazada y, por tanto, se la puede recorrer
 * tanto hacia delante como hacia atrás. Se puede implementar una cola si
 * añadimos elementos por la cola y los quitamos por la cabeza. También se puede
 * implementar una pila si añadimos y quitamos elementos por el mismo extremo,
 * ya sea la cabeza o la cola.
 *
 *	@see OCNodo
 */

@interface OCLista : Object
{
	OCNodo* cabeza;	//!< Puntero al nodo de inicio de la lista.
	OCNodo* cola;		//!< Puntero al nodo final de la lista.
	int tamanio;		//!< Entero con el número de elementos que contiene la lista.
}

/*!
 *	Constructor de la Lista.
 *	@return Un puntero a la lista creada.
 */
- init;

/*!
 *	Comprueba si la lista está vacía.
 *	@return Un booleano con YES si está vacía y NO si no está vacía.
 */
- (BOOL) estaVacia;

/*!
 *	Nos dice el número de elementos del que consta la lista.
 *	@return Un entero con el número de elementos de la lista.
 */
- (int) tamanio;

/*!
 *	Añade un elemento al principio de la lista. Se le pasa un puntero id y se
 * crea un objeto nodo para ponerlo en la lista.
 * @param pDato es un tipo id.
 * @return Devuelve un puntero a la lista una vez añadido el nuevo nodo al
 * principio.
 */
- (OCLista*) ponerEnCabeza: (id) pDato;

/*!
 *	Añade un elemento al final de la lista. Se le pasa un puntero id y se crea
 * un objeto nodo para ponerlo en la lista.
 * @param pDato es un tipo id.
 * @return Devuelve un puntero a la lista una vez añadido el nuevo nodo al final.
 */
- (OCLista*) ponerEnCola: (id) pDato;

/*!
 *	Elimina el elemento nodo del principio de la lista.
 *	@return Devuelve un puntero a la lista después de quitar el elemento cabeza.
 */
- (OCLista*) quitarCabeza;

/*!
 *	Elimina el elemento nodo del final de la lista.
 *	@return Devuelve un puntero a la lista después de quitar el elemento final.
 */
- (OCLista*) quitarCola;

/*!
 *	Elimina un nodo de la lista.
 *	@param pOCNodo es un puntero al nodo que queremos eliminar de la lista.
 *	@return Devuelve un puntero a la lista después de quitar el nodo.
 *	@see quita
 */
- (OCLista*) borra: (OCNodo*) pOCNodo;

/*!
 *	Elimina el primer nodo de la lista que contenga el dato que se pasa como
 * parámetro.
 *	@param pDato es un id con el dato que queremos borrar de la lista.
 *	@return Devuelve un puntero a la lista después de quitar el nodo.
 *	@see borra
 */
- (OCLista*) quita: (id) pDato;

/*!
 *	Nos devuelve el nodo que hay colocado al principio de la lista. Este puntero
 * puede permitirnos iterar operaciones en la lista.
 *	@return Devuelve un puntero al nodo inicial.
 *	@see cabeza
 */
- (OCNodo*) inicio;

/*!
 *	Nos da el último nodo de la lista. Este puntero nos puede permitir el iterar
 * en la lista de modo inverso.
 *	@return Devuelve un puntero al último nodo de la lista.
 *	@see cola
 */
- (OCNodo*) fin;

/*!
 *	Nos devuelve un puntero id al dato que contiene el primer elemento de la
 * lista. El método inicio devolvía un puntero que se puede utilizar para iterar
 * en la lista.
 *	@return Un puntero id al dato que contiene el primer nodo.
 *	@see inicio
 */
- (id) cabeza;

/*!
 *	Nos devuelve un puntero id al dato que contiene el último elemento de la
 * lista. El método fin devolvía un puntero al objeto nodo y nos permitía poder
 * iterar operaciones en la lista en orden inverso.
 *	@return Un puntero id al dato que contien el último nodo.
 *	@see fin
 */
- (id) cola;

@end

#endif
