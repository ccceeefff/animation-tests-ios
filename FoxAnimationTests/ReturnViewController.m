//
//  ReturnViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "ReturnViewController.h"

@interface ReturnViewController ()

@property (nonatomic, strong) UILabel *descriptionLabel;

@end

@implementation ReturnViewController

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
    
    self.title = @"Presented";
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss:)];
    [self.view addGestureRecognizer:tap];
    
    self.descriptionLabel.text = @"Tap anywhere to exit.";
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.descriptionLabel.frame = CGRectInset(self.view.bounds, 40, 40);
}

- (void)dismiss:(id)sender
{
    if(self.presentingViewController){
        [self dismissViewControllerAnimated:YES completion:nil];
    } else if(self.navigationController.topViewController == self) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
