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

#import "OCMaterial.h"

@implementation OCMaterial
- init
{
	[super init];
	color = [[OCColor alloc] init];
	difuso = 0;
	reflexion = 0;
	valorEspecular = 0;
	tamanioEspecular = 0;
	transmitividad = 0;
	return self;
}
- (void) free
{
	[color free];
	[super free];
}
-	(OCColor*) color
{
	return color;
}
-	(float) difuso
{
	return difuso;
}
-	(float) reflexion
{
	return reflexion;
}
-	(float) valorEspecular
{
	return valorEspecular;
}
-	(float) tamanioEspecular
{
	return tamanioEspecular;
}
-	(float) transmitividad
{
	return transmitividad;
}
-	(OCMaterial*) ponColor: (OCColor*) col
{
	color = col;
	return self;
}
-	(OCMaterial*) ponDifuso: (float) dif
{
	difuso = dif;
	return self;
}
-	(OCMaterial*) ponReflexion: (float) refl
{
	reflexion = refl;
	return self;
}
-	(OCMaterial*) ponValorEspecular: (float) valEspec
{
	valorEspecular = valEspec;
	return self;
}
-	(OCMaterial*) ponTamanioEspecular: (float) tamEspec
{
	tamanioEspecular = tamEspec;
	return self;
}
-	(OCMaterial*) ponTransmitividad: (float) transm
{
	transmitividad = transmitividad;
	return self;
}
@end

