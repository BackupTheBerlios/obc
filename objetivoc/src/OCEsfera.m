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

#import <math.h>

#import "OCEsfera.h"
#import "OCVector.h"

@implementation OCEsfera
- init
{
	[super init];
	posicion = [[OCVector alloc] init];
	radio = 1;
	return self;
}
- (OCEsfera*) ponEnPosicion: (OCVector*) pos
{
	posicion = pos;
	return self;
}
- (OCVector*) posicion
{
	return posicion;
}
- (OCEsfera*) ponRadio: (float) rad
{
	radio = rad;
	return self;
}
- (float) radio
{
	return radio;
}
- (OCVector*) normal: (OCVector*) punto
{
	return [[punto resta: [self posicion]] normaliza];
}
- (BOOL) intersecta: (OCRayo*) rayo
{
	OCVector* esfray = [posicion resta: [rayo origen]];
	float v = [esfray productoEscalar: [rayo direccion]];
	float distanciaChoque = (radio*radio) + (v*v) - ([esfray x]*[esfray x]) - ([esfray y]*[esfray y]) - ([esfray z]*[esfray z]);

	if (distanciaChoque < 0) return NO;

	distanciaChoque = v - sqrt(distanciaChoque);
	if (distanciaChoque < 0) return NO;
	return YES;
}
@end

