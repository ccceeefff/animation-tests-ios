//
//  TransitionListDataSource.m
//  FoxAnimationTests
//
//  Created by Cef Ramirez on 8/26/15.
//  Copyright (c) 2015 Phunware. All rights reserved.
//

#import "TransitionListDataSource.h"

@interface TransitionListDataSource ()
{
    NSArray *_items;
}

@end

@implementation TransitionListDataSource

+ (instancetype)dataSource
{
    static TransitionListDataSource *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [TransitionListDataSource new];
    });
    return _instance;
}

- (instancetype)init
{
    self = [super init];
    if(self != nil){
        
        _items = @[
                   [TransitionItem itemWithName:@"Basic Push / Pop" andController:@"BasicPushPopViewController"],
                   [TransitionItem itemWithName:@"Basic Modal" andController:@"BasicModalViewController"],
                   [TransitionItem itemWithName:@"Basic Cross Dissolve" andController:@"BasicCrossDissolveViewController"],
                   [TransitionItem itemWithName:@"Basic Flip" andController:@"BasicFlipViewController"],
                   [TransitionItem itemWithName:@"Basic Curl" andController:@"BasicPageCurlViewController"],
                   [TransitionItem itemWithName:@"Modal Page" andController:@"ModalPageViewController"],
                   [TransitionItem itemWithName:@"Modal Form" andController:@"ModalFormViewController"]
                   ];
        
    }
    return self;
}

- (NSArray *)items
{
    return _items;
}

@end
