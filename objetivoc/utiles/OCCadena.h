//
//  String.h
//  Objetivo C
//
//  Created by Dracks on 01/03/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#ifndef __occadena_OBJETIVO_C
#define __occadena_OBJETIVO_C

#import <objc/Object.h>

@interface OCCadena : Object{
    char*	caracter;
	int		longitud;
}
-(OCCadena*) iniciaConCaracteres: (char*) s;
-(void) ponCadena: (char*) s;
-(char*) cadena;
-(void) anadeChars: (char*) c;
-(void) anadeCadena: (OCCadena*) s;
-(OCCadena*) subcadenaInicio: (int) inicio fin: (int) final;
-(char) comparaCaracteres: (char*) c;
-(char) comparaCadena:(OCCadena*) otra;
-(int)	longitud;
@end

#endif
