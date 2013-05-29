//
//  JLRoutes+EasyRouting.h
//  WinnipegFoodTrucks
//
//  Created by Jeff on 2013-05-28.
//  Copyright (c) 2013 Jeffrey Friesen. All rights reserved.
//

#import <JLRoutes/JLRoutes.h>

@interface JLRoutes (EasyRouting)
+ (BOOL)routeToPath:(NSArray *)path andParams:(NSDictionary *)params;
@end
