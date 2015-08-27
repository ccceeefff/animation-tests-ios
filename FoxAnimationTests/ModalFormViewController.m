//
//  ModalFormViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "ModalFormViewController.h"

@interface ModalFormViewController ()

@end

@implementation ModalFormViewController

- (NSString *)transitionName
{
    return @"Page Modal";
}

- (NSString *)transitionDescription
{
    return @"This transition pushes a new view modally coming in from the bottom. Exiting that view will dismiss that in the reverse direction. On an iPad, this presents a smaller pop-up version of a modal.";
}

- (void)present:(id)sender
{
    UIViewController *controller = [self controllerToPresent];
    controller.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:controller animated:YES completion:nil];
}

@end
