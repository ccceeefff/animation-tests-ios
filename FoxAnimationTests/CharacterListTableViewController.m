//
//  CharacterListTableViewController.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/28/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "CharacterListTableViewController.h"

#import "BasicItem.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface CharacterListTableViewController ()

@property (nonatomic, strong) NSArray *characters;

@end

@implementation CharacterListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.characters = [BasicItem getItems];
    self.tableView.separatorColor = [UIColor clearColor];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (BasicItem *)itemAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row < self.characters.count){
        return [self.characters objectAtIndex:indexPath.row];
    }
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.characters.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"character"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"character"];
    }
    
    BasicItem *item = [self itemAtIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [item.title uppercaseString];
    cell.detailTextLabel.text = item.subtitle;
    cell.textLabel.textColor = item.textColor;
    cell.detailTextLabel.textColor = item.textColor;
    cell.textLabel.font = [UIFont boldSystemFontOfSize:24];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:21];
    cell.backgroundColor = item.primaryColor;
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:item.imageURL] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        [UIView animateWithDuration:0.1 animations:^{
            [cell setNeedsLayout];
            [cell layoutIfNeeded];
        }];
    }];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self presentCharacter:[self itemAtIndexPath:indexPath]];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120;
}

@end
