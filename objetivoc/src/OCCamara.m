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

#import <objc/OCCamara.h>

@implementation OCCamara
- init
{
	[super init];
	posicion = [[OCVector alloc] init]; //Posición (0, 0, 0)
	miraA = [[OCVector alloc] init];		//Mira a (0, 0, 0)
	arriba = [[OCVector alloc] iniciarConX: 0.0 Y: 0.0 Z: 1.0];	//Arriba a (0, 0, 1)
	angulo = 60.0;
	return self;
}

- (OCVector*) posicion
{
	return posicion;
}

- (OCVector*) miraA
{
	return miraA;
}

- (OCVector*) arriba
{
	return arriba;
}

- (float) angulo
{
	return angulo;
}

- (OCCamara*) ponPosicion: (OCVector*) pos
{
	posicion = pos;
	return self;
}

- (OCCamara*) ponMiraA: (OCVector*) punto
{
	miraA = punto;
	return self;
}

- (OCCamara*) ponArriba: (OCVector*) direccion
{
	arriba = direccion;
	return self;
}

- (OCCamara*) ponAngulo: (float) grados
{
	angulo = grados;
	return self;
}
@end

#endif
