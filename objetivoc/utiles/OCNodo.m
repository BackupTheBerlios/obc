/*
 * OCNodo.m
 *
 * Creado por Notxor en 01/03/08
 * Modificado por Notxor en 02/03/08 12:20:45
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

#import "OCNodo.h"


@implementation OCNodo

- (OCNodo*) iniciarConDato: (id) pDato
{
	self = [super init];
	dato = pDato;
	nodoAnterior = nil;
	nodoSiguiente = nil;
	return self;
}

- (id) dato
{
	return dato;
}

- (OCNodo*) pon: (id) pDato;
{
	dato = pDato;
	return self;
}

- (OCNodo*) siguiente
{
	return nodoSiguiente;
}

- (OCNodo*) anterior
{
	return nodoAnterior;
}

- (OCNodo*) ponSiguiente: (OCNodo*) pSiguiente
{
	nodoSiguiente = pSiguiente;
	return self;
}

- (OCNodo*) ponAnterior: (OCNodo*) pAnterior
{
	nodoAnterior = pAnterior;
	return self;
}

@end

