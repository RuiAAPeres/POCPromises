//
//  FlowController.m
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import "FlowMapper.h"

#import <objc/runtime.h>

#import "JEFuture.h"
#import "FuturesFlowManager.h"

@implementation UIViewController (Future)

- (void)setFuture:(id)object {
    objc_setAssociatedObject(self, @selector(future), object, OBJC_ASSOCIATION_RETAIN);
}

- (JEFuture *)future {
    return objc_getAssociatedObject(self, @selector(future));
}

@end

@implementation FlowMapper

static NSMutableDictionary *mapping;

#pragma mark - Asserts

+ (void)assertMap:(NSDictionary *)mapping withKey:(NSString *)key
{
    NSParameterAssert(key);
    NSParameterAssert(mapping);
    NSAssert(mapping[key], @"It should be set");
}

+ (void)assertInstance:(id)instance
{
    NSParameterAssert([instance conformsToProtocol:@protocol(FutureContructor)]);
}

+ (void)assertFutureSelector:(SEL)futureSelector
{
    NSParameterAssert([[FuturesFlowManager class] respondsToSelector:futureSelector]);
}

#pragma mark - Public API

+ (void)setClass:(Class)class withFutureSelector:(SEL)selector
{
    [self assertInstance:[class new]];
    [self assertFutureSelector:selector];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mapping = [[NSMutableDictionary alloc] init];
    });
    
    [mapping setObject:[NSValue valueWithPointer:selector] forKey:NSStringFromClass(class)];
}

+ (id <FutureContructor>)instanceWithFutureFromClass:(Class)class
{
    [self assertInstance:[class new]];
    [self assertMap:mapping withKey:NSStringFromClass(class)];
    
    SEL futureSelector = [mapping[NSStringFromClass(class)] pointerValue];
    JEFuture *future = [[FuturesFlowManager class] performSelector:futureSelector];
    
    return [[class alloc] initWithFuture:future];
}

@end
