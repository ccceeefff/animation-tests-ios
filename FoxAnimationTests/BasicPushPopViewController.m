//
//  BasicPushPopViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "BasicPushPopViewController.h"

@interface BasicPushPopViewController ()

@end

@implementation BasicPushPopViewController

- (NSString *)transitionName
{
    return @"Push / Pop";
}

- (NSString *)transitionDescription
{
    return @"This transition pushes a new view coming in from the right. Exiting that view will pop that in the reverse direction.";
}

- (void)presentCharacter:(BasicItem *)character
{
    UIViewController *controller = [self controllerToPresent:character];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
