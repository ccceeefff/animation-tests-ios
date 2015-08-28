//
//  CharacterDetailViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/28/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "CharacterDetailViewController.h"

#import <SDWebImage/UIImageView+WebCache.h>

@interface CharacterDetailViewController ()

@property (nonatomic, strong) BasicItem *character;

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *subtitleLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnail;
@property (nonatomic, weak) IBOutlet UIView *headerContainer;

@end

@implementation CharacterDetailViewController

+ (instancetype)controllerWithCharacter:(BasicItem *)character
{
    CharacterDetailViewController *vc = [[[self class] alloc] initWithNibName:@"CharacterDetailViewController" bundle:[NSBundle mainBundle]];
    vc.character = character;
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.titleLabel.text = self.character.title;
    self.subtitleLabel.text = self.character.subtitle;
    [self.thumbnail sd_setImageWithURL:[NSURL URLWithString:self.character.imageURL]];
    self.titleLabel.textColor = self.character.textColor;
    self.subtitleLabel.textColor = self.character.textColor;
    self.view.backgroundColor = self.character.secondaryColor;
    self.headerContainer.backgroundColor = self.character.primaryColor;
}

@end
