//
//  FlowController.h
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerFutureFactory.h"
#import "JEFuture.h"

@interface UIViewController (Future)

@property(nonatomic,strong)JEFuture *future;

@end

@interface ViewControllerFutureFactory (Mapper)

+ (void)setClass:(Class)class withFutureSelector:(SEL)selector;
+ (UIViewController<FutureContructor> *)instanceWithFutureFromClass:(Class)class;

@end
