//
//  OCTokenizer.m
//  Objetivo C
//
//  Created by Dracks on 22/03/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "OCTokenizer.h"
#import <string.h>
//#import


@implementation OCTokenizer
-(OCTokenizer*)	iniciaConCaracteres: (char*) cadena rotosPor: (char) c{
	int			i,old,tam;
	char*		tmp;
	[super init];
	
	tam=strlen(cadena)+1;
	tmp = malloc(tam*sizeof(char));
	old=0;
	lista=[[OCLista alloc] init];
	for (i=0;i<tam;i++){
		if (cadena[i]==c){
			strncpy(tmp,&(cadena[old]), (i-old));
			old=i+1;
			[lista ponerEnCola: (id) [[OCCadena alloc] iniciaConCaracteres: tmp]];
		}
	}
	strncpy(tmp,&(cadena[old]), (tam-old));
	[lista ponerEnCola: (id) [[OCCadena alloc] iniciaConCaracteres: tmp]];
	
	
	free(tmp);
	
	actual=NULL;
	return self;
}

-(OCCadena*) reinicia{
	actual=[lista inicio];
	return (OCCadena*) [actual dato];
}

-(OCCadena*)	actual{
	return (OCCadena*) [actual dato];
}

-(OCCadena*)	siguiente{
	if (actual==NULL)
		return [self reinicia];
	actual=[actual siguiente];
	return (OCCadena*) [actual dato];
}

-(int)			cuenta{
	return [lista tamanio];
}

-(void)			free{
	[lista free];
	[super free];
}


@end
