//
//  ViewControllerFlowManager.h
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol FutureContructor;

typedef NS_ENUM(NSUInteger, ViewControllerMapping)
{
    ViewControllerForSpecialEffectsMapping,
    ViewControllerForStuffThatIsAwesomeMapping
};

@interface ViewControllerFutureFactory : NSObject

+ (UIViewController<FutureContructor> *)viewControllerFromMapping:(ViewControllerMapping)mapping;

@end
