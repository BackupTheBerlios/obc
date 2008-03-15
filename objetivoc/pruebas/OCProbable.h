/*
 * OCProbable.h
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

#ifndef __ocprobable_OBJETIVO_C
#define __ocprobable_OBJETIVO_C

#import <objc/Object.h>

@protocol OCProbable
- (BOOL)compruebaSi: (id)expresion1 esIgualA: (id)expresion2;
- (BOOL)compruebaSi: (id)expresion1 noEsIgualA: (id)expresion2;
@end

#endif
