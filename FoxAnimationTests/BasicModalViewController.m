//
//  BasicModalViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "BasicModalViewController.h"

@interface BasicModalViewController ()

@end

@implementation BasicModalViewController

- (NSString *)transitionName
{
    return @"Modal";
}

- (NSString *)transitionDescription
{
    return @"This transition pushes a new view modally coming in from the bottom. Exiting that view will dismiss that in the reverse direction.";
}

- (void)present:(id)sender
{
    UIViewController *controller = [self controllerToPresent];
    [self presentViewController:controller animated:YES completion:nil];
}

@end
