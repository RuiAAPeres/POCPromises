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

@interface UIViewController (Future) <FutureContructor>

@property(nonatomic,strong)JEFuture *future;

@end

@interface FlowController : NSObject

+ (void)setClass:(Class)class withFuture:(JEFuture *)future;

@end
