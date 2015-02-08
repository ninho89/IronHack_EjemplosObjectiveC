//
//  AppDelegate.m
//  EjemploObjectiveC
//
//  Created by Filippo Aresu on 3/2/15.
//  Copyright (c) 2015 Filippo Aresu. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"
#import "Customer.h"
#import "PersonOldSchool.h"
#import "Person+Birthday.h"
#import "FoundationExample.h"
#import "PersonContainer.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    //Person
    Person *person1 = [[Person alloc]initWithName:@"xx"];
    /*person1.name = @"Paco";
    person1.age = 33;
    person1.idCardNumber = @"123A";*/
    NSLog(@"Hola soy %@, tengo %lu años y mi id es: %@", person1.name, person1.age, person1.idCardNumber);
    NSLog(@"Año: %lu", [person1 yearOfBirth]);
    
    //Customer
    Customer *cust1 = [[Customer alloc]init];
    cust1.name=@"Ana";
    cust1.visaNumber=@"1238971";
    NSLog(@"Customer: %@, Visa: %@", cust1.name, cust1.visaNumber);

    //PersonOldSchool
    PersonOldSchool *personOld = [[PersonOldSchool alloc]init];
    personOld.name=@"Laura";
    NSLog(@"%@", personOld.name);

    
    //Person
    Person *p1 = [[Person alloc] initWithName:@"Mario" age:12];
    Person *p2 = [[Person alloc] initWithName:@"Javier" age:25];
    Person *p3 = [[Person alloc] initWithName:@"Carmen" age:24];
    
    //PersonContainer array
    PersonContainer *pc = [[PersonContainer alloc] initContainer];
    [pc anadirPersonas:p1];
    [pc anadirPersonas:p2];
    [pc anadirPersonas:p3];
    NSLog(@"El numero de personas en el array es: %i", [pc numeroPersonasGuardadas]);
    [pc eliminarPersona:p2];
    NSLog(@"El numero de personas en el array es: %i", [pc numeroPersonasGuardadas]);
    
    for (NSArray *arr in [pc personasArray]) {
        NSLog(@"%@", [arr description] );
    }
    
    
    //FoundationExample ejemplos
    [FoundationExample run];
    [FoundationExample run2];
   

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
