//
//  TransitionItem.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "TransitionItem.h"

#import <UIKit/UIKit.h>

@interface TransitionItem ()

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *controllerName;

@end

@implementation TransitionItem

+ (instancetype)itemWithName:(NSString *)name
               andController:(NSString *)controllerName
{
    TransitionItem *item = [TransitionItem new];
    item.name = name;
    item.controllerName = controllerName;
    return item;
}

- (UIViewController *)controller
{
    return [NSClassFromString(self.controllerName) new];
}

@end
