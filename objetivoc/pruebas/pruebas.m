/*
 * pruebas.m
 *
 * Creado por Notxor en 02/03/08 20:24:55
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

#import "OCPruebaEnteros.h"
#import "PruebaOCCadena.h"
#import "PruebaOCTokenizer.h"
#import <stdio.h>

int main(int argc, char* argv[])
{
	OCPruebaEnteros*	pruebas = [[OCPruebaEnteros alloc] init];
	PruebaOCCadena*		pruebaCadena = [[PruebaOCCadena alloc] init];
	PruebaOCTokenizer*	pruebasTokens= [[PruebaOCTokenizer alloc] init];
	
	printf("Pruebas Tokens:");
	[pruebasTokens compruevaNumeroRoturas];printf(".");
	[pruebasTokens compruevaSiguiente];printf(".");
	[pruebasTokens compruevaRoturasCorrectas];printf(".");
	printf("OK\n");

	[pruebaCadena Longitud];
	[pruebaCadena ComparaCadenaIgual];
	[pruebaCadena ComparaCadenaDistinta];
	[pruebaCadena subcadena];
	[pruebaCadena anadeCadena];

	printf("Pruebas para la clase %s: ", [pruebas nombre]);

	[pruebas laOperacion: 4+5 esIgualA: 9];
	[pruebas laOperacion: 4+5 noEsIgualA: 11];

	printf("\n");
	[pruebas free];
	[pruebaCadena free];

	return 0;
}
