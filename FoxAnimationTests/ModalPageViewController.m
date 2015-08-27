//
//  ModalPageViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "ModalPageViewController.h"

@interface ModalPageViewController ()

@end

@implementation ModalPageViewController

- (NSString *)transitionName
{
    return @"Page Modal";
}

- (NSString *)transitionDescription
{
    return @"This transition pushes a new view modally coming in from the bottom. Exiting that view will dismiss that in the reverse direction. On an iPad, a page does not cover the entire screen.";
}

- (void)present:(id)sender
{
    UIViewController *controller = [self controllerToPresent];
    controller.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:controller animated:YES completion:nil];
}

@end
