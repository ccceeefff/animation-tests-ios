//
//  BasicCrossDissolveViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "BasicCrossDissolveViewController.h"

@interface BasicCrossDissolveViewController ()

@end

@implementation BasicCrossDissolveViewController

- (NSString *)transitionName
{
    return @"Cross Dissolve";
}

- (NSString *)transitionDescription
{
    return @"This transition cross dissolves to and from a presented view.";
}

- (void)present:(id)sender
{
    UIViewController *controller = [self controllerToPresent];
    controller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:controller animated:YES completion:nil];
}

@end
