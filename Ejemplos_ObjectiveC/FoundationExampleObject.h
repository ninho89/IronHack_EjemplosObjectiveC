//
//  FoundationExampleObject.h
//  EjemploObjectiveC
//
//  Created by Filippo Aresu on 4/2/15.
//  Copyright (c) 2015 Filippo Aresu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FoundationExampleObject <NSObject>

-(BOOL)readyToRun;

@optional
-(void)runWithTitle:(NSString *)title andSubtitle:(NSString *)subtitle;

@end
