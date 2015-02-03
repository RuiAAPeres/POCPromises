//
//  FlowController.h
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "JEFuture.h"

@protocol FutureContructor <NSObject>

- (instancetype)initWithFuture:(JEFuture *)future;

@end

@interface UIViewController (Future)

@property(nonatomic,strong)JEFuture *future;

@end

@interface FlowMapper : NSObject

+ (void)setClass:(Class)class withFutureSelector:(SEL)selector;
+ (UIViewController<FutureContructor> *)instanceWithFuturesWithClass:(Class)class;

@end
