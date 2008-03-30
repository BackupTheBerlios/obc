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

#ifndef __ocvector_OBJETIVO_C
#define __ocvector_OBJETIVO_C

#import <objc/Object.h>

@interface OCVector : Object
{
	float x;
	float y;
	float z;
}
- (OCVector*) init;
- (OCVector*) iniciarConX: float VX Y: float VY Z: VZ;
- (OCVector*) ponX: float VX Y: float Y Z: VZ;
- (float) x;
- (float) y;
- (float) z;
- (OCVector*) ponX: float VX;
- (OCVector*) ponY: float VY;
- (OCVector*) ponZ: float VZ;
- (float) productoEscalar: (OCVector*) vector;
- (OCVector*) productoVectorial: (OCVector*) vector;
- (OCVector*) multiplicaPorEscalar: float numero;
- (OCVector*) dividePorEscalar: float numero;
- (float) modulo;
- (OCVector*) normaliza;
- (OCVector*) suma: (OCVector*) vector;
- (OCVector*) resta: (OCVector*) vector;
@end

#endif
