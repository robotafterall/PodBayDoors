//
//  SecondViewController.m
//  PodBayDoors
//
//  Created by Jeff on 2013-05-29.
//  Copyright (c) 2013 Jeff Friesen. All rights reserved.
//

#import "SecondViewController.h"
#import <JLRoutes-EasyRouting/UIApplication+JLRoute.h>

@interface SecondViewController ()

@end

@implementation SecondViewController

- (IBAction)buttonPressed:(UIButton *)sender {
    
    [[UIApplication sharedApplication] routeToPath:@[@"doors",@"close"] andParams:nil];
    
}
@end
