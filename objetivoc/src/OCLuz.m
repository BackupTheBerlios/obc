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

#import "OCLuz.h"

@implementation OCLuz

- init
{
	[super init];
	posicion = [[OCVector alloc] init];		//posicion (0,0,0)
	color = [[OCColor alloc] init];
	color = [color ponR: 1.0 G: 1.0 B: 1.0]; //color blanco
	return self;
}

- (OCLuz*) ponPosicion: (OCVector*) pos
{
	posicion = pos;
	return self;
}

- (OCLuz*) ponColor: (OCColor*) col
{
	color = col;
	return self;
}

- (OCVector*) posicion
{
	return posicion;
}

- (OCColor*) color
{
	return color;
}

@end
