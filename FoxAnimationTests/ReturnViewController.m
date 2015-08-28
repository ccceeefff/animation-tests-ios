//
//  ReturnViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "ReturnViewController.h"

@interface ReturnViewController ()

@end

@implementation ReturnViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Character";
    
    if(self.presentingViewController){
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Dismiss" style:UIBarButtonItemStyleDone target:self action:@selector(dismiss:)];
    }
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
