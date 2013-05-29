//
//  AppDelegate.m
//  PodBayDoors
//
//  Created by Jeff on 2013-05-28.
//  Copyright (c) 2013 Jeff Friesen. All rights reserved.
//

#import "AppDelegate.h"
#import <JLRoutes/JLRoutes.h>
#import "FirstViewController.h"
#import "SecondViewController.h"
#import <JLRoutes-EasyRouting/UIApplication+JLRoute.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.navController = [[UINavigationController alloc] init];
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
    
    [self initializeRoutes];
    
    [application routeToPath:@[@"doors",@"close"] andParams:nil];
    
    return YES;
}

- (void)initializeRoutes{
    
    [JLRoutes addRoute:@"doors/open" handler:^BOOL(NSDictionary *parameters) {
        
        SecondViewController *vc = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:[NSBundle mainBundle]];
        if (self.navController.viewControllers.count > 1) {
            [self.navController popViewControllerAnimated:YES];
        }else{
            [self.navController pushViewController:vc animated:YES];
        }
        return YES;
        
    }];
    
    [JLRoutes addRoute:@"doors/close" handler:^BOOL(NSDictionary *parameters) {
        
        FirstViewController *vc = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:[NSBundle mainBundle]];
        if (self.navController.viewControllers.count > 1) {
            [self.navController popViewControllerAnimated:YES];
        }else{
            [self.navController pushViewController:vc animated:YES];
        }
        return YES;
        
    }];
    
}

@end
