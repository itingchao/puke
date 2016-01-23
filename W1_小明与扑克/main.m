//
//  main.m
//  W1_小明与扑克
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Hand.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Hand *leftHand = [[Hand alloc] init];
        Hand *rightHand = [[Hand alloc] init];
        
        Poker leftPoker = {SPADE, 'A'};
        Poker rightPoker = {HEART, 'K'};
        
//        [leftHand setPoker:leftPoker];
        
        Person *xiaoming = [[Person alloc] initWithLeftHand:leftHand andRightHand:rightHand];
        //抓牌
        [xiaoming catchLeftPoker:leftPoker andRightPoker:rightPoker];
        //交换牌
        [xiaoming swapPoker];
        
        [xiaoming printInfo];
    }
    return 0;
}








