/*
 * OCNodo.h
 *
 * Creado por Notxor en 01/03/08
 * Modificado por Notxor en 02/03/08 12:21:46
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

#ifndef __ocnodo_OBJETIVO_C
#define __ocnodo_OBJETIVO_C

#import <objc/Object.h>

/*! \interface OCNodo
 * 	\brief La clase OCNodo contiene un puntero a un dato y otro par de punteros
 * a los nodos siguiente y anterior. Es por tanto, un mero almacén de datos muy
 * especializado.
 *	\author Fernando Arroba Rubio.
 *
 *	La ventaja de Objective-C sobre otros lenguajes pasa por contemplar el tipo
 * de datos id, que puede considerarse como un (void*). Esto hace que el objeto
 * de tipo OCNodo pueda almacenar pácticamente cualquier tipo de dato.
 *
 *	Además de almacén, el OCNodo sirve para enlazar los datos apuntando al nodo
 * anterior y posterior.
 */

@interface OCNodo : Object
{
	id dato;	//!< Dato que se guarda en el nodo.
	OCNodo* nodoAnterior;	//!< Puntero al nodo anterior.
	OCNodo* nodoSiguiente; //!< Puntero al nodo siguiente.
}

/*!
 *	Constructor que proporciona un dato para iniciar el valor del nodo.
 *	@param pDato apunta a un dato.
 *	@return Un puntero al nodo creado.
 */
- (OCNodo*) iniciarConDato: (id) pDato;

/*!
 *	Devuelve el dato que almacena el nodo.
 *	@return Devuelve un id con el dato contenido en el OCNodo.
 */
- (id) dato;

/*!
 *	Establece un valor para el dato del nodo.
 *	@param pDato es un puntero (id) a un dato que queremos cargar en el nodo.
 *	@return Devuelve un puntero a sí mismo con el dato ya cambiado.
 */
- (OCNodo*) pon: (id) pDato;

/*!
 *	Devuelve un puntero al nodo siguiente.
 *	@return Un puntero al siguiente nodo.
 */
- (OCNodo*) siguiente;

/*!
 *	Devuelve un puntero al nodo anterior.
 *	@return Un puntero al nodo anterior.
 */
- (OCNodo*) anterior;

/*!
 *	Este método enlaza con el nodo siguiente.
 *	@param pSiguiente es un puntero al nodo que queremos poner a continuación
 *	del actual.
 *	@return Devuelve self, un puntero a sí mismo con el nodo siguiente cargado.
 */
- (OCNodo*) ponSiguiente: (OCNodo*) pSiguiente;

/*!
 *	Este método enlaza con el nodo anterior.
 *	@param pAnterior es un puntero al nodo que queremos establecer como anterior
 *	del nodo actual.
 *	@return Devuelve self, un puntero a sí mismo con el nodo anterior cargado.
 */
- (OCNodo*) ponAnterior: (OCNodo*) pAnterior;
@end

#endif
