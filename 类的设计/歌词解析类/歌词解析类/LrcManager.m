//
//  LrcManager.m
//  歌词解析类
//
//  Created by 王宇珍 on 16/10/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "LrcManager.h"

#define LrcPath @"/Users/bear/Desktop/传奇歌词.txt"


//类扩展。可以给类扩展实例变量或者方法，可以实现实力变量和方法的私有化（不公开）
@interface LrcManager()   //括号中不允许添加任何东西

-(BOOL)parseLrcFile:(NSString *)path;
-(void)parseLrcTitle:(NSString *)lineString;
-(void)parseLrcAuther:(NSString *)lineString;
-(void)parseLrcItem:(NSString *)lineString;
-(float)parseLrcTime:(NSString *)timeString;

@end

@implementation LrcManager


//构造方法，传入文件路径，初始化歌词管理器对象
-(id)initWithLrcFile:(NSString *)path
{
    self = [super init];
    if (self) {
        _lrcList = [NSMutableArray array];
        [self parseLrcFile:path];  //解析歌词文件
    }
    return self;
}

-(BOOL)parseLrcFile:(NSString *)path
{
    NSString *fileContent = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    if (!fileContent) {  //判断歌词文件是否读取成功
        return NO;
    }
    //每行歌词都用换行进行了分割
    NSArray *lineArray = [fileContent componentsSeparatedByString:@"\n"];
    NSInteger lineCount = [lineArray count];
    for (NSInteger i=0; i<lineCount; i++) {   //可能行为空
        NSString *lineString = [lineArray objectAtIndex:i]; //把每行分割出来
        if([lineString isEqualToString:@""])
        {
            continue;  //空行跳过
        }
        else if ([lineString hasPrefix:@"[ti:"]) //包含这个字符
        {
            //解析歌曲名
            [self parseLrcTitle:lineString];
        }
        else if ([lineString hasPrefix:@"[ar:"]) {
            //解析歌曲演唱者
            [self parseLrcAuther:lineString];
        }
        else
        {
            //解析词条
            [self parseLrcItem:lineString];
        }
    }
    //对歌词的词条对象进行排序
    [_lrcList sortUsingSelector:@selector(isSortByTime:)];
    
    return YES;
}


//解析歌词标题的实现
-(void)parseLrcTitle:(NSString *)lineString
{
    NSInteger len=[lineString length];
    _title = [lineString substringWithRange:NSMakeRange(4, len-4-1)];
}


//解析歌曲作者
-(void)parseLrcAuther:(NSString *)lineString
{
    NSInteger len=[lineString length];
    _auther = [lineString substringWithRange:NSMakeRange(4, len-4-1)];
}

//解析歌词词条
-(void)parseLrcItem:(NSString *)lineString
{
    NSArray *lrcArray = [lineString componentsSeparatedByString:@"]"];
    NSInteger count = [lrcArray count];
    for (NSInteger i=0; i<count-1; i++) {
        LRCitem *item = [[LRCitem alloc] init];
        //解析歌词时间
        [item setLrcTime:[self parseLrcTime:[lrcArray objectAtIndex:i]]];
        
        //设置歌词内容
        [item setLrcString:[lrcArray lastObject]];
        
        //把解析出来的歌词条添加到可变数组中
        [_lrcList addObject:item];
    }
}

//解析歌词时间的方法实现  [01:14.81
-(float)parseLrcTime:(NSString *)timeString
{
    NSString *minString = [timeString substringWithRange:NSMakeRange(1, 2)];
    NSString *secString = [timeString substringWithRange:NSMakeRange(4, 5)];
    return ([minString intValue]*60+[secString floatValue]);
}


-(void)showLrcItems
{
    for (LRCitem *item in _lrcList) {
        [item printLrcItem];
    }
}


//给用户公开一个接口。输入时间，得到对应内容
+(void)userInterface
{
    LrcManager *manager = [[LrcManager alloc] initWithLrcFile:LrcPath];
    [manager showLrcItems];
    
}

@end
