//
//  FlowController.m
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import "FlowController.h"
#import "JEFuture.h"
#import <objc/runtime.h>

@implementation UIViewController (Future)

@dynamic future;

- (void)setFuture:(id)object {
    objc_setAssociatedObject(self, @selector(future), object, OBJC_ASSOCIATION_RETAIN);
}

- (JEFuture *)future {
    return objc_getAssociatedObject(self, @selector(future));
}

@end

@implementation FlowController

static NSMutableDictionary *mapping;

#pragma mark - Asserts

+ (void)assertInstance:(id)instance
{
    NSParameterAssert([instance conformsToProtocol:@protocol(FutureContructor)]);
}

+ (void)assertFuture:(JEFuture *)future
{
    NSParameterAssert([future isKindOfClass:[JEFuture class]]);
}

#pragma mark - Public API

+ (void)setClass:(Class)class withFuture:(JEFuture *)future
{
    [self assertInstance:[class new]];
    [self assertFuture:future];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mapping = [[NSMutableDictionary alloc] init];
    });
    
    [mapping setObject:future forKey:NSStringFromClass(class)];
}

+ (void)instanceWithFuturesWithClass:(Class)class
{
    return [[class alloc] initWithFuture:mapping[[NSStringFromClass(class)]];
}

@end
