//
//  FutureConstructor.h
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JEFuture;

@protocol FutureContructor <NSObject>

- (instancetype)initWithFuture:(JEFuture *)future;

@end