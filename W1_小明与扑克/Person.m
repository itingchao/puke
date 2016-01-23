//
//  Person.m
//  W1_小明与扑克
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

- (Person *)initWithLeftHand:(Hand *)leftHand andRightHand:(Hand *)rightHand{
    if (self = [super init]) {
        _leftHand = leftHand;
        _rightHand = rightHand;
    }
    return self;
}

- (void)catchLeftPoker:(Poker)leftPoker andRightPoker:(Poker)rightPoker{
    //给左右手的成员变量赋值
    [_leftHand setPoker:leftPoker];
    [_rightHand setPoker:rightPoker];
}

- (void)swapPoker{
    Poker temp = [_leftHand poker];
    [_leftHand setPoker:[_rightHand poker]];
    [_rightHand setPoker:temp];
}

- (void)printInfo{
//    Poker leftPoker = [_leftHand poker];
//    [self printPoker:leftPoker];
//    Poker rightPoker = [_rightHand poker];
//    [self printPoker:rightPoker];
    
    [self printPoker:[_leftHand poker]];
    [self printPoker:[_rightHand poker]];
}

- (void)printPoker:(Poker)card{
    switch (card.color) {
        case SPADE:
            NSLog(@"%@ %c", @"♠️", card.number);
            break;
        case HEART:
            NSLog(@"%@ %c", @"♥️", card.number);
            break;
        case CLUB:
            NSLog(@"%@ %c", @"♣️", card.number);
            break;
        case DIAMOND:
            NSLog(@"%@ %c", @"♦️", card.number);
            break;
        default:
            break;
    }

}

@end







