//
//  Hand.m
//  W1_小明与扑克
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Hand.h"

@implementation Hand

- (void)setPoker:(Poker)newPoker{
    _poker = newPoker;
}

- (Poker)poker{
    return _poker;
}

@end
