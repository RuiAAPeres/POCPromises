//
//  ViewControllerFlowManager.h
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ViewControllerMapping)
{
    ViewControllerForSpecialEffectsMapping,
    ViewControllerForStuffThatIsAwesomeMapping
};

@interface ViewControllerFlowManager : NSObject

+ (Class)viewControllerFromMapping:(ViewControllerMapping)mapping;

@end
