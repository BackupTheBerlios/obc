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

#ifndef __ocmaterial_OBJETIVO_C
#define __ocmaterial_OBJETIVO_C

#import <objc/Object.h>
#import "OCColor.h"

@interface OCMaterial : Object
{
	OCColor* color;
	float difuso;
	float reflexion;
	float valorEspecular;
	float tamanioEspecular;
	float transmitividad;
}
- init;
- (void) free;
-	(OCColor*) color;
-	(float) difuso;
-	(float) reflexion;
-	(float) valorEspecular;
-	(float) tamanioEspecular;
-	(float) transmitividad;
-	(OCMaterial*) ponColor: (OCColor*) col;
-	(OCMaterial*) ponDifuso: (float) dif;
-	(OCMaterial*) ponReflexion: (float) refl;
-	(OCMaterial*) ponValorEspecular: (float) valEspec;
-	(OCMaterial*) ponTamanioEspecular: (float) tamEspec;
-	(OCMaterial*) ponTransmitividad: (float) transm;
@end

#endif
