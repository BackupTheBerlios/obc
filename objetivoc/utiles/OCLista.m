/*
 * OCLista.m
 *
 * Creado por Notxor en 01/03/08
 * Modificado por Notxor en 02/03/08 12:19:38
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

#import "OCLista.h"

@implementation OCLista

- init
{
	self = [super init];
	if (self != nil)
	{
		cabeza = nil;
		cola = nil;
		tamanio = 0;
	}
	return self;
}

- (BOOL) estaVacia
{
	//No está vacía si tiene al menos un elemento
	if (cabeza) return NO; else	return YES;
}

- (int) tamanio
{
	return tamanio;
}

- (OCLista*) ponerEnCabeza: (id) pDato
{
	OCNodo* item = [[OCNodo alloc] iniciarConDato: pDato];
	if (cabeza)
	{
		[cabeza ponAnterior: item];
		[item ponSiguiente: cabeza];
		cabeza = item;
	} else {
		cabeza = item;
		cola = item;
	}
	tamanio++;
	return self;
}

- (OCLista*) ponerEnCola: (id) pDato
{
	OCNodo* item = [[OCNodo alloc] iniciarConDato: pDato];
	if (cola)
	{
		[cola ponSiguiente: item];
		[item ponAnterior: cola];
		cola = item;
	} else {
		cola = item;
		cabeza = item;
	}
	tamanio++;
	return self;
}

- (OCLista*) quitarCabeza
{
	if (cabeza == nil) return;
	if (cabeza == cola)
	{
		[cabeza free];
		cabeza = nil;
		cola = nil;
	} else {
		OCNodo* item = cabeza;
		cabeza = [item siguiente];
		[cabeza ponAnterior: nil];
		[item free];
	}
	tamanio--;
	return self;
}

- (OCLista*) quitarCola
{
	if (cola == nil) return;
	if (cola == cabeza)
	{
		[cola free];
		cola = nil;
		cabeza = nil;
	} else {
		OCNodo* item = cola;
		cola = [item anterior];
		[cola ponSiguiente: nil];
		[item free];
	}
	tamanio--;
	return self;
}

- (OCLista*) borra: (OCNodo*) pOCNodo
{
	if (pOCNodo == nil) return;
	OCNodo* pre = [pOCNodo anterior];
	OCNodo* post = [pOCNodo siguiente];
	if (pre == nil) // es la cabeza de la lista
	{
		cabeza = post;
		if (cabeza == nil) cola = nil; // la lista está vacía, porque post == nil
		else [post ponAnterior: nil];	// lo hacemos cabeza de la lista
	} else if (post == nil) { // si ha llegado hasta aquí es porque (pre != nil)
		[pre ponSiguiente: nil];
		cola = pre;
	} else { // es un elemento del medio de la lista
		[pre ponSiguiente: post];
		[post ponAnterior: pre];
	}
	[pOCNodo free];
	tamanio--;
	return self;
}

- (OCLista*) quita: (id) pDato
{
	OCNodo* it;
	for (it=[self inicio]; it != nil; it = [it siguiente])
	{
		if ([it dato] == pDato)
		{
			[self borra: it];
			break;
		}
	}
	return self;
}

- (OCNodo*) inicio
{
	return cabeza;
}

- (OCNodo*) fin
{
	return cola;
}

- (id) cabeza
{
	if (cabeza != nil) return [cabeza dato];
	return nil;
}

- (id) cola
{
	if (cola != nil) return [cola dato];
	return nil;
}

@end
