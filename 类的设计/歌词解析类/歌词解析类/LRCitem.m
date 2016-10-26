//
//  LRCitem.m
//  歌词解析类
//
//  Created by 王宇珍 on 16/10/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "LRCitem.h"

@implementation LRCitem

-(id)initWithLrcTime:(float)time andLrcString:(NSString *)lrcString
{
    self = [super init];
    if (self) {
        _lrcString=lrcString;
        _lrcTime=time;
    }
    return self;
}

//setter
-(void)setLrcTime:(float)time
{
    _lrcTime = time;
}
-(void)setLrcString:(NSString *)lrcString
{
    _lrcString = lrcString;
}

//getter
-(float)lrcTime
{
    return  _lrcTime;
}
-(NSString *)lrcString
{
    return _lrcString;
}


//排序规则
-(BOOL)isSortByTime:(LRCitem *)aItem
{
    if ([self lrcTime] > [aItem lrcTime]) {
        return  YES;
    }
    else
        return NO;
}


-(void)printLrcItem
{
    NSLog(@"time is %.2f, lrc is %@", [self lrcTime], [self lrcString]);
}
@end
