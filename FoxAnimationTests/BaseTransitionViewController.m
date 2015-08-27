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

@property (nonatomic, strong) UILabel *descriptionLabel;

@end

@implementation BaseTransitionViewController

- (void)loadView
{
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor whiteColor];
    self.view = view;
    
    UILabel *label = [UILabel new];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    label.numberOfLines = 0;
    [view addSubview:label];
    self.descriptionLabel = label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = [self transitionName];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Present"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(present:)];
    self.descriptionLabel.text = [self transitionDescription];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.descriptionLabel.frame = CGRectInset(self.view.bounds, 40, 40);
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
    
}

- (UIViewController *)controllerToPresent
{
    return [ReturnViewController new];
}

@end
