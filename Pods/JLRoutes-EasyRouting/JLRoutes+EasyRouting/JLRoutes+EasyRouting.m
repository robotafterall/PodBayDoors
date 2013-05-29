//
//  JLRoutes+EasyRouting.m
//  WinnipegFoodTrucks
//
//  Created by Jeff on 2013-05-28.
//  Copyright (c) 2013 Jeffrey Friesen. All rights reserved.
//

#import "JLRoutes+EasyRouting.h"

@interface _JLRoute : NSObject

@property (weak) JLRoutes *parentRoutesController;
@property (strong) NSString *pattern;
@property (strong) BOOL (^block)(NSDictionary *parameters);
@property (assign) NSUInteger priority;
@property (strong) NSArray *patternPathComponents;
- (NSDictionary *)parametersForURL:(NSURL *)URL components:(NSArray *)URLComponents;
@end

@interface JLRoutes ()
- (NSMutableArray *)routes;
@end

@implementation JLRoutes (EasyRouting)


+ (BOOL)routeToPath:(NSArray *)path andParams:(NSDictionary *)params{
    
	BOOL didRoute = NO;
	NSArray *routes = [[self globalRoutes] routes];
	NSDictionary *queryParameters = params;
	NSDictionary *fragmentParameters = @{};
	NSArray *pathComponents = path;
		
	for (_JLRoute *route in routes) {
		NSDictionary *matchParameters = [route parametersForURL:nil components:pathComponents];
		if (matchParameters) {			
			// add the URL parameters
			NSMutableDictionary *finalParameters = [NSMutableDictionary dictionary];
            
			// in increasing order of precedence: query, fragment, route, builtin
			[finalParameters addEntriesFromDictionary:queryParameters];
			[finalParameters addEntriesFromDictionary:fragmentParameters];
			[finalParameters addEntriesFromDictionary:matchParameters];
			finalParameters[kJLRoutePatternKey] = route.pattern;
            
			didRoute = route.block(finalParameters);
			if (didRoute) {
				break;
			}
		}
	}
	
	return didRoute;
}
@end
