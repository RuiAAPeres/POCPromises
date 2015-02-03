//
//  ViewControllerFlowManager.m
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import "ViewControllerFlowManager.h"
#import "ViewController2.h"

@implementation ViewControllerFlowManager

+ (Class)viewControllerFromMapping:(ViewControllerMapping)mapping
{
    switch (mapping) {
        default:
        {
            return [ViewController2 class];
        }
            break;
    }
}

@end
