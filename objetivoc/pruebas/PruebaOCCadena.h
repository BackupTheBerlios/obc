//
//  PruebaOCCadena.h
//  Objetivo C
//
//  Created by Dracks on 12/03/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <objc/Object.h>
#import "../utiles/OCCadena.h"


@interface PruebaOCCadena : Object {
	OCCadena* una;
	OCCadena* sub;
}

-(PruebaOCCadena*) init;
-(void)	Longitud;
-(void) ComparaCadenaIgual;
-(void) ComparaCadenaDistinta;
-(void) subcadena;
-(void) anadeCadena;

@end
