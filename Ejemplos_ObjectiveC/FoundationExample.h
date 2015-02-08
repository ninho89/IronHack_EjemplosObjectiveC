//
//  FoundationExample.h
//  EjemploObjectiveC
//
//  Created by Filippo Aresu on 4/2/15.
//  Copyright (c) 2015 Filippo Aresu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoundationExampleObject.h"

@interface FoundationExample : NSObject <FoundationExampleObject>


@property(nonatomic, strong) NSString * nameStrong;
@property(nonatomic, copy) NSString * nameCopy;


+(void) run;
+(void) run2;
-(void) runExamples;
-(void) runContainerExamples;

@end
