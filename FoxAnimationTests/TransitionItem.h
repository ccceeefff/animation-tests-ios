//
//  TransitionItem.h
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIViewController;

@interface TransitionItem : NSObject

@property (nonatomic, copy, readonly) NSString *name;

+ (instancetype)itemWithName:(NSString *)name
               andController:(NSString *)controllerName;

- (UIViewController *)controller;

@end
