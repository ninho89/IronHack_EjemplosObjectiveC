//
//  PersonOldSchool.h
//  EjemploObjectiveC
//
//  Created by Filippo Aresu on 3/2/15.
//  Copyright (c) 2015 Filippo Aresu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonOldSchool : NSObject{
    NSString *_name;
    NSUInteger _age;
    NSString *_idCardNumber;
}

@property (copy, nonatomic) NSString *name;
@property (assign, nonatomic) NSUInteger age;
@property (copy, nonatomic) NSString *idCardNumber;

@end
