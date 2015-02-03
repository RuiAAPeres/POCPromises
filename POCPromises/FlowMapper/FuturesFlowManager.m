//
//  FlowManager.m
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import "FuturesFlowManager.h"
#import "JustPromises.h"
#import "FlowMapper.h"
#import "ViewController2.h"

@implementation FuturesFlowManager

+ (JEFuture *)flow1
{    
    NSString *s = @"http://kidsahead.com/system/ka_heros/12/original/Orion%20Nebula.jpg?1362148776";
    
    JEPromise *promise = [JEPromise new];
    
//    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:s]] queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
//       
//        if (connectionError) {
//            [promise setError:connectionError];
//        }
//        else
//        {
//            [promise setResult:data];
//        }
//        
//    }];

    return [promise future];
}

+ (JEFuture *)flow2
{
    return nil;
}

+ (JEFuture *)flow3
{
    return nil;
}

+ (void)bootstrap
{
    [FlowMapper setClass:[ViewController2 class] withFutureSelector:@selector(flow1)];
}

@end
