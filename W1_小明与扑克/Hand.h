//
//  Hand.h
//  W1_小明与扑克
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    SPADE,//黑桃
    HEART,//红桃
    CLUB,//梅花
    DIAMOND//方片
}PokerColor;//扑克花色的枚举类型

//表示扑克的结构体
typedef struct{
    PokerColor color;//花色
    char number;//数字
}Poker;


@interface Hand : NSObject{
    Poker _poker;//手中的扑克
}

//设置扑克的值
- (void)setPoker:(Poker)newPoker;
//获取扑克的值
- (Poker)poker;

@end





