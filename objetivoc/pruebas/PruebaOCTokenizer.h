//
//  PruebaOCTokenizer.h
//  Objetivo C
//
//  Created by Dracks on 07/04/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <objc/Object.h>


@interface PruebaOCTokenizer : Object {
}
/*!
 *  Comprovara que se generen tantas roturas como veces+1 aparezca el caracter
 *  @return si o no, dependiendo de si funciona o no, en caso de no funcionar sacara por la stdio los errores;
 */
-(BOOL) compruevaNumeroRoturas;
/*!
 * Comprueva la funcion siguiente nos devuelve el nodo siguiente
 * @return si o no, dependiendo de si funciona o no, en caso de no funcionar sacara por la stdio los errores;
 */
-(BOOL) compruevaSiguiente;
/*!
 * Comprueva que el numero de roturas, y las roturas coinciden
 * @return si o no, dependiendo de si funciona o no, en caso de no funcionar sacara por la stdio los errores;
 */
-(BOOL) compruevaRoturasCorrectas;
/*!
 * Comprueva si Reinicia a la primera rotura correctamente
 * @return si o no, dependiendo de si funciona o no, en caso de no funcionar sacara por la stdio los errores;
 */
-(BOOL) compruevaReinicia;

@end
