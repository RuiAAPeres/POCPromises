//
//  ViewController2.m
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import "ViewController2.h"
#import "FutureConstructor.h"
#import "JEFuture.h"

@interface ViewController2 ()<FutureContructor>


@end

@implementation ViewController2

- (instancetype)initWithFuture:(JEFuture *)future
{
    if (self = [super init])
    {
        [future continueWithTask:^JEFuture *(JEFuture *fut) {
            
            return nil;
        }];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
