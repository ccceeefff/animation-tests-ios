//
//  BaseTransitionViewController.h
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTransitionViewController : UIViewController

- (NSString *)transitionName;
- (NSString *)transitionDescription;
- (void)present:(id)sender;
- (UIViewController *)controllerToPresent;

@end
