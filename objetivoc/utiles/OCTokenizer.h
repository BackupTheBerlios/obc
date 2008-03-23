//
//  OCTokenizer.h
//  Objetivo C
//
//  Created by Dracks on 22/03/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#ifndef __octokenizer_OBJETIVO_C
#define __octokenizer_OBJETIVO_C

@class OCTokenizer;

#import <objc/Object.h>
#import "OCLista.h"
#import "OCCadena.h"


@interface OCTokenizer : Object{
	OCLista* lista;
	OCNodo*	actual;
}
-(OCTokenizer*)	iniciaConCaracteres: (char*) cadena rotosPor: (char) c;
-(OCTokenizer*) reinicia;
-(OCCadena*)	actual;
-(OCCadena*)	siguiente;
-(void)			free;

@end

#endif
