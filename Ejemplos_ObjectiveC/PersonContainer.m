//
//  PersonContainer.m
//  EjemploObjectiveC
//
//  Created by Filippo Aresu on 4/2/15.
//  Copyright (c) 2015 Filippo Aresu. All rights reserved.
//

#import "PersonContainer.h"

@implementation PersonContainer



-(instancetype) initContainer{
    _array= [[NSMutableArray alloc]init];
    return self;
}

-(void)anadirPersonas:(Person *) person{
    [self.array addObject:person];
}
-(void)eliminarPersona:(Person *)person{
    [self.array removeObject:person];
}

-(int)numeroPersonasGuardadas{
    int numero = (int)self.array.count;
    return numero;
}

-(NSArray *)personasArray{
    NSArray *personas= [self.array copy];
    return personas;
}

@end
