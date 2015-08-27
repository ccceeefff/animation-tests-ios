//
//  BasicPageCurlViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "BasicPageCurlViewController.h"

@interface BasicPageCurlViewController ()

@end

@implementation BasicPageCurlViewController

- (NSString *)transitionName
{
    return @"Page Curl";
}

- (NSString *)transitionDescription
{
    return @"This transition does a 3D page curl transform between this and the view being presented.";
}

- (void)present:(id)sender
{
    UIViewController *top = self;
    while(top.parentViewController != nil){
        top = top.parentViewController;
    }
    
    UIViewController *controller = [self controllerToPresent];
    controller.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [top presentViewController:controller animated:YES completion:nil];
}

@end
