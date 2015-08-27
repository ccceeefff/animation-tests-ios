//
//  BaseModalTransitionViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "BaseModalTransitionViewController.h"

@interface BaseModalTransitionViewController ()

@end

@implementation BaseModalTransitionViewController

- (UIViewController *)controllerToPresent
{
    return [[UINavigationController alloc] initWithRootViewController:[super controllerToPresent]];
}

@end
