//
//  CharacterDetailViewController.h
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/28/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BasicItem.h"

@interface CharacterDetailViewController : UIViewController

+ (instancetype)controllerWithCharacter:(BasicItem *)character;

@end
