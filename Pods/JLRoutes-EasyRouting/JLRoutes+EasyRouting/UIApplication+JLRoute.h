//
//  UIApplication+JLRoute.h
//  WinnipegFoodTrucks
//
//  Created by Jeffrey Friesen on 2013-05-04.
//  Copyright (c) 2013 Jeffrey Friesen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (JLRoute)
- (void)routeToPath:(NSArray *)path andParams:(NSDictionary *)params;
@end
