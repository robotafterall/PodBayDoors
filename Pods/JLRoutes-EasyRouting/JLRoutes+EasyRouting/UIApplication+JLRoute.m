//
//  UIApplication+JLRoute.m
//  WinnipegFoodTrucks
//
//  Created by Jeffrey Friesen on 2013-05-04.
//  Copyright (c) 2013 Jeffrey Friesen. All rights reserved.
//

#import "UIApplication+JLRoute.h"
#import <JLRoutes/JLRoutes.h>
#import "JLRoutes+EasyRouting.h"

@implementation UIApplication (JLRoute)

- (void)routeToPath:(NSArray *)path andParams:(NSDictionary *)params{
    [JLRoutes routeToPath:path andParams:params];
}
@end
