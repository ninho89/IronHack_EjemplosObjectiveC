//
//  Person.h
//  EjemploObjectiveC
//
//  Created by Filippo Aresu on 3/2/15.
//  Copyright (c) 2015 Filippo Aresu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>


@property (copy, nonatomic) NSString *name;
@property (assign, nonatomic) NSUInteger age;
@property (copy, nonatomic) NSString *idCardNumber;
@property (readonly, nonatomic) BOOL old;

@property (copy, nonatomic) NSString *url;




-(instancetype) initWithName:(NSString *)name;
-(instancetype) initWithName:(NSString *)name age:(NSUInteger )age;
-(instancetype) initWithName:(NSString *)name age:(NSUInteger )age card:(NSString *)cardNumber NS_DESIGNATED_INITIALIZER;
//no se pueden crear 2 metodos iguales con los mismos nombre y que tienen distintos tipos de paramtros



@end
