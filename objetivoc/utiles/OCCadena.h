//
//  String.h
//  Objetivo C
//
//  Created by Dracks on 01/03/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#ifndef __occadena_OBJETIVO_C
#define __occadena_OBJETIVO_C

@class OCCadena;

#import <objc/Object.h>
#import "OCTokenizer.h"

/*! \interface OCCadena
 *	\brief La clase OCCadena nos sirve para el trabajo con cadenas de caracteres.
 *	\author Jaume Singla Valls
 *
 * El trabajo con cadenas de caracteres en c se hace pesado y tedioso. Esta
 * clase pretende facilitar el manejo de este tipo de variables.
 */
@interface OCCadena : Object{
	char*	caracter;	//!< Puntero a char que guarda la cadena.
	int		longitud;	//!< Entero que marca la longitud de la cadena.
}

/*!
 *	Construye una OCCadena desde un puntero a char.
 *	@param s es el array de caracteres con el que se inicia el objeto.
 *	@return Devuelve un self una vez iniciado el objeto.
 */
-(OCCadena*) iniciaConCaracteres: (char*) s;

/*!
 *	Guarda la cadena como valor de la OCCadena.
 *	@param s es el array de caracteres con el que se incia el objeto.
 *	@return Devuelve un self con la cadena modificada.
 */
-(OCCadena*) ponCadena: (char*) s;

/*!
 *	@return Devuelve un puntero a char con el valor de la cadena que contiene.
 */
-(char*) cadena;

/*!
 *	Añade caracteres al final de la cadena.
 *	@param c es un puntero a char con los caracteres que se añadirán.
 *	@return Devuelve un self con la cadena ya modificada.
 *	@see anadeCadena
 */
-(OCCadena*) anadeChars: (char*) c;

/*!
 *	Añade una OCCadena al final de la cadena.
 *	@param s es un puntero a una OCCadena.
 *	@return Devuelve un self con la cadena ya modificada.
 *	@see anadeChars
 */
-(OCCadena*) anadeCadena: (OCCadena*) s;

/*!
 *	Devuelve un puntero a un objeto OCCadena que contiene los caracteres que
 *	marcan inicio y final.
 *	@param inicio es un entero que actúa como índice del primer caracter que
 *	tendrá la subcadena devuelta.
 *	@param final es un entero que actúa como índice del último caracter que
 *	tendrá la subcadena devuelta.
 *	@return Devuelve un objeto de tipo OCCadena con la subcadena
 */
-(OCCadena*) subCadena: (int) inicio : (int) final;

/*!
 *	Compara el contenido de la OCCadena con el array de caracteres que se le pasa
 *	por parámetro.
 *	@param c es un array de caracteres con el que comparar la cadena.
 *	@return un valor numérico tal que será mayor que cero si la cadena interna
 *	es mayor que c, devolverá cero si son iguales y un número negativo si es c
 *	la cadena menor.
 */
-(char) comparaCaracteres: (char*) c;

/*!
 *	Compara el contenido de la OCCadena con el objeto OCCadena que se le pasa
 *	por parámetro.
 *	@param otra es un array de caracteres con el que comparar la cadena.
 *	@return un valor numérico tal que será mayor que cero si la cadena interna
 *	es mayor que otra, devolverá cero si son iguales y un número negativo si es c
 *	la cadena menor.
 */
-(char) comparaCadena:(OCCadena*) otra;

/*!
 *	Devuelve la longitud de la cadena.
 *	@return un entero que representa la longitud en caracteres de la cadena.
 */
-(int)	longitud;

/*!
 *  Devuelve un objeto OCTokenizer que contiene esta cadena rota por el caracter passado.
 *  @param t es el caracter que usaremos para romper la cadena
 *  @return un objeto del tipo OCTokenizer
 */
-(OCTokenizer*) romperPor: (char) t;
@end

#endif
