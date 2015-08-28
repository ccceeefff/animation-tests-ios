//
//  BasicItem.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/28/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "BasicItem.h"
#import "UIColor+HexColor.h"

@implementation BasicItem

+ (NSArray *)getItems
{
    NSMutableArray *array = [NSMutableArray new];
    
    BasicItem *mario = [BasicItem new];
    mario.title = @"Mario";
    mario.subtitle = @"Master Plumber";
    mario.imageURL = @"http://img2.wikia.nocookie.net/__cb20130611171456/fantendo/images/1/10/Mario_Artwork_(alt)_-_Super_Smash_Bros._Wii_U_3DS.png";
    mario.primaryColor = [UIColor colorFromHexString:@"#f40011"];
    mario.secondaryColor = [UIColor colorFromHexString:@"#0016f4"];
    mario.textColor = [UIColor colorFromHexString:@"#ff8600"];
    [array addObject:mario];
    
    BasicItem *luigi = [BasicItem new];
    luigi.title = @"Luigi";
    luigi.subtitle = @"Brother Plumber";
    luigi.imageURL = @"http://newsupermariobrosu.nintendo.com/_ui/img/luigi/characters-luigi-jump.png";
    luigi.primaryColor = [UIColor colorFromHexString:@"#029c02"];
    luigi.secondaryColor = [UIColor colorFromHexString:@"#1a0e97"];
    luigi.textColor = [UIColor colorFromHexString:@"#2111ff"];
    [array addObject:luigi];
    
    BasicItem *peach = [BasicItem new];
    peach.title = @"Princess Peach";
    peach.subtitle = @"Mushroom Royalty";
    peach.imageURL = @"https://upload.wikimedia.org/wikipedia/en/d/d5/Peach_(Super_Mario_3D_World).png";
    peach.primaryColor = [UIColor colorFromHexString:@"#ff6083"];
    peach.secondaryColor = [UIColor colorFromHexString:@"#fcff34"];
    peach.textColor = [UIColor colorFromHexString:@"#ffffff"];
    [array addObject:peach];
    
    BasicItem *toad = [BasicItem new];
    toad.title = @"Toadstool";
    toad.subtitle = @"Mushroom Chair";
    toad.imageURL = @"http://oyster.ignimgs.com/mediawiki/apis.ign.com/super-mario-wii-u/thumb/d/de/Toad_Artwork_-_Super_Mario_3D_World.png/440px-Toad_Artwork_-_Super_Mario_3D_World.png";
    toad.primaryColor = [UIColor colorFromHexString:@"#3d41f4"];
    toad.secondaryColor = [UIColor colorFromHexString:@"#f4a414"];
    toad.textColor = [UIColor colorFromHexString:@"#ffffff"];
    [array addObject:toad];
    
    BasicItem *bowser = [BasicItem new];
    bowser.title = @"Bowser";
    bowser.subtitle = @"King of Koopas";
    bowser.imageURL = @"http://img2.wikia.nocookie.net/__cb20120110144057/nintendo/en/images/9/98/Bowser_NSMBW.png";
    bowser.primaryColor = [UIColor colorFromHexString:@"#f49103"];
    bowser.secondaryColor = [UIColor colorFromHexString:@"#01b522"];
    bowser.textColor = [UIColor colorFromHexString:@"#dd1d18"];
    [array addObject:bowser];
    
    return [NSArray arrayWithArray:array];
}

@end
