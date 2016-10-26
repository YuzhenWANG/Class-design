//
//  LRCitem.h
//  歌词解析类
//
//  Created by 王宇珍 on 16/10/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LRCitem : NSObject
{
    float _lrcTime;  //歌词时间点
    NSString *_lrcString;  //歌词
}

-(id)initWithLrcTime:(float)time andLrcString:(NSString *)lrcString;

//setter
-(void)setLrcTime:(float)time;
-(void)setLrcString:(NSString *)lrcString;

//getter
-(float)lrcTime;
-(NSString *)lrcString;


//排序规则:按照歌词时间排序
-(BOOL)isSortByTime:(LRCitem *)aItem;


-(void)printLrcItem;

@end
