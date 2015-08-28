//
//  BasicFlipViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "BasicFlipViewController.h"

@interface BasicFlipViewController ()

@end

@implementation BasicFlipViewController

- (NSString *)transitionName
{
    return @"Horizontal Flip";
}

- (NSString *)transitionDescription
{
    return @"This transition does a 3D flip transform between this and the view being presented.";
}

- (void)presentCharacter:(BasicItem *)character
{
    UIViewController *controller = [self controllerToPresent:character];
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:nil];
}

@end
