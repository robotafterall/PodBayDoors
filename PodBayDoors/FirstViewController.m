//
//  FirstViewController.m
//  PodBayDoors
//
//  Created by Jeff on 2013-05-29.
//  Copyright (c) 2013 Jeff Friesen. All rights reserved.
//

#import "FirstViewController.h"
#import <JLRoutes-EasyRouting/UIApplication+JLRoute.h>

@interface FirstViewController ()

@end

@implementation FirstViewController

- (IBAction)buttonPressed:(UIButton *)sender {
    [[UIApplication sharedApplication] routeToPath:@[@"doors",@"open"] andParams:nil];
}
@end
