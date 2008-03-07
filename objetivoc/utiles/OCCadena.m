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

@end
