//
//  PersonOldSchool.m
//  EjemploObjectiveC
//
//  Created by Filippo Aresu on 3/2/15.
//  Copyright (c) 2015 Filippo Aresu. All rights reserved.
//

#import "PersonOldSchool.h"


@implementation PersonOldSchool

//synthesize genera getter y setter automaticamente
@synthesize name=_name;
@synthesize age=_age;
@synthesize idCardNumber=_idCardNumber;


-(void)setName:(NSString *)name{
    _name= [NSString stringWithFormat:@"My name is %@", name];
}

@end
