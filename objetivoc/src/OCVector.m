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

#import "OCVector.h"
#import <math.h>

@implementation OCVector

- init
{
	[super init];
	x = 0;
	y = 0;
	z = 0;
	return self;
}

- (OCVector*) iniciarConX: float VX Y: float VY Z: VZ
{
	[super init];
	x = VX;
	y = VY;
	z = VZ;
	return self;
}

- (OCVector*) ponX: float VX Y: float Y Z: VZ
{
	x = VX;
	y = VY;
	z = VZ;
	return self;
}

- (float) x
{
	return x;
}

- (float) y
{
	return y;
}

- (float) z
{
	return z;
}

- (float) productoEscalar: (OCVector*) vector
{
	return (x * [vector x] + y * [vector y] + z * [vector z]);
}

- (OCVector*) productoVectorial: (OCVector*) vector
{
	OCVector* v = [[OCVector init] alloc];
	[v ponX: z * [vector y] - y * [vector z]];
	[v ponY: x * [vector z] - z * [vector x]];
	[v ponZ: y * [vector x] - x * [vector y]];
	return v;
}

- (OCVector*) multiplicaPorEscalar: float numero
{
	x *= numero;
	y *= numero;
	z *= numero;
	return self;
}

- (OCVector*) dividePorEscalar: float numero
{
	if (numero != 0) {
		x /= numero;
		y /= numero;
		z /= numero;
	}
	return self;
}

- (float) modulo
{
	return sqrt(x*x+y*y+z*z);
}

- (OCVector*) normaliza
{
	return [self dividePorEscalar: [self modulo]];
}

- (OCVector*) suma: (OCVector*) vector
{
	OCVector* v;

	[[v alloc] init];
	[v ponX: [vector x] + x];
	[v ponY: [vector y] + y];
	[v ponZ: [vector z] + z];
	return v;
}

- (OCVector*) resta: (OCVector*) vector
{
	OCVector* v;

	[[v alloc] init];
	[v ponX: x - [vector x]];
	[v ponY: y - [vector y]];
	[v ponZ: z - [vector z]];
	return v;
}
@end
