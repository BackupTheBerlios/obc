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
- (OCCadena*) iniciaConCaracteres: (char*)s
{
	[[super init] ponCadena: s];
	//longitud=strlen(s);
	return self;
}

- (void) free
{
	free(caracter);
	[super free];
	longitud=0;
}

- (OCCadena*) ponCadena: (char*) s
{
	longitud=strlen(s);
	if (caracter)
		free(caracter);
	caracter = malloc(longitud+1);
	strcpy(caracter, s);
	caracter[longitud]=0;
	return self;
}

- (char *) cadena
{
	return caracter;
}

- (OCCadena*) anadeChars: (const char*) c
{
	int size   = longitud + strlen(c);
	char* old = caracter;
	caracter = malloc(size+1);
	strcpy(caracter, old);
	strcat(caracter, c);
	free(old);
	longitud=size;
	caracter[longitud]=0;
	return self;
}

- (OCCadena*) anadeCadena: (OCCadena*) s
{
	return [self anadeChars:[s cadena]];
}

-(OCCadena*) subCadena: (int) inicio : (int) final
{
	OCCadena* sub;
	int	size = final-inicio;						//Calculamos las dimensiones del trozo, en un futuro le pondremos opciones raras
	char* new= malloc((size+1)*sizeof(char));		//Nos Cogemos memoria
	strncpy(new,&(caracter[inicio]),size);			//Como siempre sudamos de si tenemos o no memoria, y le metemos el string,
			//empezando por la posicion inicio, y el numero size de caracteres
	new[size]=0;									//Ponemos un 0 a la ultima posicion del nuevo string
	// Tenemos 2 opciones, esta Ã©s la mÃ s bonita, y mÃ s controlada
	sub=[[OCCadena alloc] iniciaConCaracteres: new];				//
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

-(int) longitud{
	return longitud;
}

-(OCTokenizer*) romperPor: (char) t{
	return [[OCTokenizer alloc] iniciaConCaracteres: [self cadena] rotosPor: t];
}

@end


