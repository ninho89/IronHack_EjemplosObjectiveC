//
//  FoundationExample.m
//  EjemploObjectiveC
//
//  Created by Filippo Aresu on 4/2/15.
//  Copyright (c) 2015 Filippo Aresu. All rights reserved.
//

#import "FoundationExample.h"

@implementation FoundationExample


+(void) run{
    [[[self alloc]init] runContainerExamples];
}

+(void) run2{
    [[[self alloc]init] runExamples];
}

-(void) runContainerExamples{
    NSString *s = @"Pepe";
    NSString *p = s;
    NSLog(@"s = %@", s);
    NSLog(@"p = %@", p);
    
    NSMutableString *ms = [s mutableCopy];
    NSLog(@"ms1 = %@", ms);
    [ms setString:@"Juan"];
    NSLog(@"s = %@", s);
    NSLog(@"ms2 = %@", ms);
    
    self.nameStrong = ms;
    self.nameCopy = ms;
    
    NSLog(@"Name strong: %@", self.nameStrong);
    NSLog(@"Name copy: %@", self.nameCopy);
    
    [ms setString:@"AAAAAA"];
    
    NSLog(@"Name strong: %@", self.nameStrong);
    NSLog(@"Name copy: %@", self.nameCopy);
    
    
    NSString *path = @"/Documentos/ejer.pdf";
    NSLog(@"%@", [path pathExtension]);
    
    NSString *otherFile = [@"/Documentos" stringByAppendingPathComponent:@"ejer.pdf"];
    NSLog(@"%@", otherFile);
    
    NSString *sf = [NSString stringWithFormat:@"%@ -- %@", s, ms];
    NSLog(@"%@", sf);
    
    NSArray *arr = [[NSArray alloc] initWithObjects:@"uno", @"dos", @"tres", @"cuatro", @"cinco", nil];
    
    for(NSArray *ar in arr){
        NSLog(@"Array: %@", ar);
    }
    
    for (int i=0; i<[arr count]; i++) {
        NSLog(@"Array: %@", arr[i]);
    }
    
    //NSString *pathArray = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"Array.plist"];
    //[arr writeToFile:pathArray atomically:YES];
    //NSArray *saved = [NSArray arrayWithContentsOfFile:pathArray];
    //NSLog(@"%@", saved);
    
    
    NSDictionary *dict= [NSDictionary dictionaryWithObject:@"12" forKey:@1];
   
    NSMutableDictionary *mdict = [dict mutableCopy];
    //NSLog(@"mdict: %@", dict);
    //NSLog(@"mdict: %@", mdict);
    
    mdict[@1] = @11111;
    mdict[@2] = @2222;
    mdict[@3] = @3333;
    
    NSLog(@"mdict: %@", mdict);
    
    NSLog(@"%@", [mdict allKeys]);
    
    
    for(NSDictionary *obj in mdict){
        NSLog(@"Dictionary: %@, %@", obj, mdict[obj]);
    }
}

-(void) runExamples{
    
    NSLog(@"My class is Number? %i", [self isKindOfClass:[NSNumber class]]);
    NSLog(@"My class is NSObject? %i", [self isKindOfClass:[NSObject class]]);
    NSLog(@"I'm member of NSObject? %i", [self isMemberOfClass:[NSObject class]]);
    NSLog(@"I'm member of FoundationExample? %i", [self isMemberOfClass:[FoundationExample class]]);
    
    NSLog(@"Do I respond to the method init? %i", [self respondsToSelector:@selector(init)]);
    NSLog(@"Do I respond to the method uppercaseString? %i", [self respondsToSelector:@selector(uppercaseString)]);
    
    NSLog(@"Do I conform to protocol? %i", [[self class ]conformsToProtocol:@protocol(FoundationExampleObject)]);
    NSLog(@"Do I conform to protocol? %i", [FoundationExample conformsToProtocol:@protocol(FoundationExampleObject)]);
    
    if([self respondsToSelector:@selector(readyToRun)]){
        [self readyToRun];
    }
}

-(BOOL)readyToRun{
    NSLog(@"Yes, I'm ready");
    return YES;
}


@end
