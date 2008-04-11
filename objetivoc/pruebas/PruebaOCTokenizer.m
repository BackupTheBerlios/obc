//
//  PruebaOCTokenizer.m
//  Objetivo C
//
//  Created by Dracks on 07/04/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "PruebaOCTokenizer.h"
#import "../utiles/OCTokenizer.h"


@implementation PruebaOCTokenizer
-(BOOL) compruevaNumeroRoturas{
	OCTokenizer* test=[OCTokenizer alloc];
	BOOL ret=true;
	
	[test iniciaConCaracteres: "i a mi que me cuentas" rotosPor: 'o'];
	if ([test cuenta]!=1){
		printf("ERROR:En numero rotos 0 ha salido: %i\n",[test cuenta]);
		ret=false;
	}
	[test iniciaConCaracteres: "i a mi que me cuentas" rotosPor: 'a'];
	if ([test cuenta]!=3){
		ret=false;
		printf("ERROR:En numero rotos 3 ha salido: %i\n",[test cuenta]);
	}
	[test iniciaConCaracteres: "a" rotosPor: 'a'];
	if ([test cuenta]!=2){
		ret=false;
		printf("ERROR:En numero rotos 2 ha salido: %i\n",[test cuenta]);
	}
	[test free];
	//deveremos mirar como carajos tratamos cuando inicializamos con una cadena nula
	return ret;
}

-(BOOL) compruevaSiguiente{
	BOOL			ret=true;
	OCTokenizer*	test=[[OCTokenizer alloc] iniciaConCaracteres: "Anb" rotosPor: 'n'];
	OCCadena*		tc;
	tc=[test siguiente];
	if ([tc comparaCaracteres: "A"]!=0){
		ret=false;
		printf("ERROR:En primera cadena, nos ha devuelto: %c\n",[tc cadena]);
	}
	tc=[test siguiente];
	if ([tc comparaCaracteres: "b"]!=0){
		ret=false;
		printf("ERROR:En segunda cadena, nos ha devuelto: %c\n",[tc cadena]);
	}
	tc=[test siguiente];
	if (tc!=nil){
		ret=false;
		printf("ERROR: No nosdevolvio el nulo, serà cabron!\n");
	}
	[test free];
	return ret;
}

-(BOOL) compruevaRoturasCorrectas{
	OCTokenizer*	test=[[OCTokenizer alloc] iniciaConCaracteres: "Anb" rotosPor: 'n'];
	OCCadena*		tc;
	int				i=0;
	while((tc=[test siguiente])!=NULL)
		i++;
	if (i!=[test cuenta]) {
		printf("Numero de tokens incorrectos, tenemos %i y deveriamos tener %i",i,[test cuenta]);
		return false;
	}
	return true;
		
}

-(BOOL) compruevaReinicia{
}

@end
