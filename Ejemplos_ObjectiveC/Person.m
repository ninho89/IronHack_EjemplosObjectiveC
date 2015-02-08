
//
//  Person.m
//  EjemploObjectiveC
//
//  Created by Filippo Aresu on 3/2/15.
//  Copyright (c) 2015 Filippo Aresu. All rights reserved.
//

#import "Person.h"

//declaramos una extension
@interface NSString (MyExtension)
-(NSString *)allUpperCase;
@end

//implementamos la extension nueva de nsstring que queremos
@implementation NSString (MyExtension)
-(NSString *)allUpperCase{
    return [self uppercaseString];
}

@end

@interface Person ()

//propriedades privadas. desde fuera nadie tiene acceso
@property (strong, nonatomic) NSString *sueldo;

@end

@implementation Person


-(instancetype)initWithName:(NSString *)name age:(NSUInteger)age card:(NSString *)cardNumber{
    self = [super init];
    if(self){
        _name=[name copy];
        _age=age;
        _idCardNumber=[cardNumber copy];
        _old = YES;
    }
    return self;
}

//instancetype le indica al compilador que no vamos a devolver cualquier objeto, sino una instancia de la clase que recibe el mensaje
-(instancetype) init{
    //llama al constructor designado
    return [self initWithName:@"" age:0 card:@"0000"];
}

-(instancetype)initWithName:(NSString *)name{
    return [self initWithName:name age:0 card:@"0000"];
}

-(instancetype)initWithName:(NSString *)name age:(NSUInteger)age{
    return [self initWithName:name age:age card:@"0000"];
}


-(instancetype) initWithName:(NSString *)name age:(NSUInteger )age url:(NSString *)url{
    return [self initWithName:name age:age url:url];
}


- (id)copyWithZone:(NSZone *)zone{
    return [[Person alloc]initWithName:self.name age:self.age card:self.idCardNumber];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, %lu", self.name, (unsigned long)self.age];
}






@end
