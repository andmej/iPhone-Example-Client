//
//  GowallaAPI.h
//  Gowalla-Basic
//
//  Created by Mattt Thompson on 10/06/30.
//  Copyright 2010 Mattt Thompson. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "EGOHTTPRequest.h"
#import "EGOHTTPFormRequest.h"

#define kGowallaAPIBaseURL @"http://api.gowalla.com/"

@interface GowallaAPI : NSObject

+ (EGOHTTPRequest *)requestForPath:(NSString *)path 
						parameters:(NSDictionary *)keyedParameters 
						  delegate:(id)delegate 
						  selector:(SEL)selector;

@end
