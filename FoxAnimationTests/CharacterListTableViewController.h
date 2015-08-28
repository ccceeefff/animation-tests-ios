//
//  CharacterListTableViewController.h
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/28/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BasicItem;

@interface CharacterListTableViewController : UITableViewController

- (void)presentCharacter:(BasicItem *)character;

@end
