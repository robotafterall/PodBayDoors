//
//  AppDelegate.m
//  PodBayDoors
//
//  Created by Jeff on 2013-05-28.
//  Copyright (c) 2013 Jeff Friesen. All rights reserved.
//

#import "AppDelegate.h"
#import <JLRoutes/JLRoutes.h>
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.navController = [[UINavigationController alloc] init];
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
    
    
    [JLRoutes addRoute:@"" handler:^BOOL(NSDictionary *parameters) {
        
    }];
    
    
    
    return YES;
}



@end
