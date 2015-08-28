//
//  BaseTransitionViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "BaseTransitionViewController.h"
#import "ReturnViewController.h"

@interface BaseTransitionViewController ()

@end

@implementation BaseTransitionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = [self transitionName];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Details"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(present:)];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
}

# pragma mark - Abstract Methods

- (NSString *)transitionName
{
    NSAssert(false, @"Sub-classes must override this");
    return nil;
}

- (NSString *)transitionDescription
{
    NSAssert(false, @"Sub-classes must override this");
    return nil;
}

- (void)present:(id)sender
{
    [[[UIAlertView alloc] initWithTitle:@"Animation Details" message:[self transitionDescription] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
}

- (UIViewController *)controllerToPresent:(BasicItem *)character
{
    return [ReturnViewController controllerWithCharacter:character];
}

@end
