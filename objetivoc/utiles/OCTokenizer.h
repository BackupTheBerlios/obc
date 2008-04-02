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
/*!
 *  Construye un objeto tipo OCTokenizer
 *  @param cadena es el array que romperemos
 *  @param c es el caracter que usaremos para romper el array
 *  @return Devuelve el objeto inicializado
 */
-(OCTokenizer*)	iniciaConCaracteres: (char*) cadena rotosPor: (char) c;

/*!
 *  Pon la cadena actual al primer nodo
 *  @return Devuelve a él mismo
 */
-(OCTokenizer*) reinicia;

/*!
 *  Devuelve la cadena actual
 *
 */
-(OCCadena*)	actual;

/*!
 *	Mueve la cadena actual a la siguiente
 *  @return Devuelve la siguiente cadena.
 */
-(OCCadena*)	siguiente;


/*!
 *	Esta funcion és la madre de los huevos!!!!! (vamus que sirve para liberar la memoria dinamica recogida)
 */
-(void)			free;

@end

#endif
