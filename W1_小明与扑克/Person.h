//
//  Person.h
//  W1_小明与扑克
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hand.h"

@interface Person : NSObject{
    Hand *_leftHand;//指针变量，还没有创建对象
    Hand *_rightHand;
}

- (Person *)initWithLeftHand:(Hand*)leftHand andRightHand:(Hand*)rightHand;

//抓牌
- (void)catchLeftPoker:(Poker)leftPoker andRightPoker:(Poker)rightPoker;
//交换牌
- (void)swapPoker;

- (void)printInfo;

@end
