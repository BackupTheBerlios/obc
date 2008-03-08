//
//  OCCadena.m
//  Objetivo C
//
//  Created by Dracks on 01/03/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "OCCadena.h"
#import <string.h>
#import <stdlib.h>


@implementation OCCadena
- (OCCadena*) initWithChars: (char*)s
{
	[[super init] setCadena: s];
	return self;
}

- (void) free
{
	free(caracter);
	[super free];
}

- (void) setCadena: (char*) s
{
	int size=strlen(s);
	caracter = malloc(size);
	strcpy(caracter, s);
}

- (char *) cadena
{
	return caracter;
}

- (void) anadeChars: (const char*) c
{
	int size   = strlen(c) + strlen(caracter);
	char* old = caracter;
	caracter = malloc(size);
	strcpy(caracter, old);
	strcat(caracter, c);
	free(old);
}

- (void) anadeCadena: (OCCadena*) s
{
	[self anadeChars:[s cadena]];
}

-(OCCadena*) subCadenaStart: (int) inicio end: (int) final
{
	OCCadena* sub;
	int	size = final-inicio;						//Calculamos las dimensiones del trozo, en un futuro le pondremos opciones raras
	char* new= malloc((size+1)*sizeof(char));		//Nos Cogemos memoria
	strncpy(new,&(caracter[inicio]),size);			//Como siempre sudamos de si tenemos o no memoria, y le metemos el string, 
			//empezando por la posicion inicio, y el numero size de caracteres
	new[size]=0;									//Ponemos un 0 a la ultima posicion del nuevo string
	// Tenemos 2 opciones, esta Ã©s la mÃ s bonita, y mÃ s controlada
	sub=[[OCCadena alloc] initWithChars: new];				//
	free(new);
	// Pero tambien tenemos esta opcion, mÃ s fea, perÃ² evitamos estar haciendo mallocs i free continuamente, mejoramos rendimiento
	// [[sub alloc] caracter=new]  //seguramente deveriamos hacer un metodo interno que nos hiciera esto, en java lo huviera hecho, perÃ² claro... no Ã©s java
	return sub;
}

-(char) comparaCaracteres: (char*) c{
	return strcmp(caracter,c);
}

-(char) comparaCadena:(OCCadena*) otra{
	return [self comparaCaracteres: [otra cadena]];
}
@end

