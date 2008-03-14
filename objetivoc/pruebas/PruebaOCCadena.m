//
//  PruebaOCCadena.m
//  Objetivo C
//
//  Created by Dracks on 12/03/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <stdio.h>
#import "PruebaOCCadena.h"


@implementation PruebaOCCadena
-(PruebaOCCadena*) init{
	[super init];
	printf("Insertando cadena");
	una=[[OCCadena alloc] iniciaConCaracteres: (char *)&"Hola noi!"];
	printf(": %s\n", [una cadena]);
	return self;
}

-(void)	Longitud{
	printf("La Cadena tiene una longitud de: %i\n", [una longitud]);
}

-(void) ComparaCadenaIgual{
	char* cadena=[una cadena];
	sub=[[OCCadena alloc] iniciaConCaracteres: cadena];
	printf("Comparando igual con char: %i\n",[una comparaCaracteres: cadena]);
	printf("Comparando igual con OCCadena: %i\n",[una comparaCadena: sub]);
	[sub free];
}

-(void) ComparaCadenaDistinta{
	char* cadena="NO NO NO no no no no...";
	sub=[[OCCadena alloc] iniciaConCaracteres: cadena];
	printf("Comparando distinta mas larga con char: %i\n",[una comparaCaracteres: cadena]);
	printf("Comparando distinta mas larga con OCCadena: %i\n",[una comparaCadena: sub]);
	[sub free];
	cadena=".";
	sub=[[OCCadena alloc] iniciaConCaracteres: cadena];
	printf("Comparando distinta mas corta con char: %i\n",[una comparaCaracteres: cadena]);
	printf("Comparando distinta mas corta con OCCadena: %i\n",[una comparaCadena: sub]);
	[sub free];
}

-(void) subcadena{
	sub=[una subCadena:0 : 3];
	printf("Los tres primeros caracteres son: %s\n",[sub cadena]);
	[sub free];
	sub=[una subCadena:0 : 15];
	printf("màs caracteres que los que tenemos: %s\n",[sub cadena]);
	[sub free];
	sub=[una subCadena:2 : 6];
	printf("a partir de una posicion: %s\n",[sub cadena]);
	[sub free];

}

-(void) anadeCadena{
	char* cadena="PUEDE SER LA REOSTIA!";
	OCCadena* resultado;
	sub=[[OCCadena alloc] iniciaConCaracteres: cadena];
	resultado=[una subCadena:0 : 5];
	//printf("%s -> %i\n %s\n", [resultado cadena], [resultado longitud], cadena);
	[resultado anadeChars: cadena];
	printf("Anyadiendo Caracteres: %s\n", [resultado cadena]);
	[resultado free];
	resultado=[[OCCadena alloc] iniciaConCaracteres: cadena];
	[sub anadeCadena: resultado];
	printf("Anyadiendo Cadena: %s\n", [sub cadena]);
	[sub free];
	[resultado free];	
}

@end
