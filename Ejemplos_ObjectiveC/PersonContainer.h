//
//  PersonContainer.h
//  EjemploObjectiveC
//
//  Created by Filippo Aresu on 4/2/15.
//  Copyright (c) 2015 Filippo Aresu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonContainer : NSObject

@property(nonatomic, copy) NSMutableArray *array;
@property(nonatomic, strong) Person *person;

-(instancetype) initContainer;
-(void)anadirPersonas:(Person *) person;
-(void)eliminarPersona:(Person *)person;

-(int)numeroPersonasGuardadas;
-(NSArray *)personasArray;

@end
