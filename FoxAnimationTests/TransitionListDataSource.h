//
//  TransitionListDataSource.h
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TransitionItem.h"

@interface TransitionListDataSource : NSObject

+ (instancetype)dataSource;

- (NSArray *)items;

@end
