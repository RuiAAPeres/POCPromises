//
//  FlowManager.h
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JEFuture;

@interface FuturesFlowManager : NSObject

+ (JEFuture *)flow1;
+ (JEFuture *)flow2;
+ (JEFuture *)flow3;

+ (void)bootstrap;

@end
