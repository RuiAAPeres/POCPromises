//
//  ViewControllerFlowManager.m
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import "ViewControllerFutureFactory.h"
#import "ViewControllerFutureFactory+Mapper.h"
#import "ViewControllerFutureFactory+FutureCreator.h"

#import "ViewController2.h"

@implementation ViewControllerFutureFactory

+ (UIViewController<FutureContructor> *)viewControllerFromMapping:(ViewControllerMapping)mapping
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [ViewControllerFutureFactory bootstrap];
    });
    
    switch (mapping) {
        default:
        {
            return [ViewControllerFutureFactory instanceWithFutureFromClass:[ViewController2 class]];
        }
            break;
    }
}

@end
