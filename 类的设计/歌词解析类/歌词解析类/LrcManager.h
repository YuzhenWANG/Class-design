//
//  LrcManager.h
//  歌词解析类
//
//  Created by 王宇珍 on 16/10/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LRCitem.h"

@interface LrcManager : NSObject
{
    NSString *_title; //歌曲名
    NSString *_auther; //歌手
    NSMutableArray *_lrcList; //保存词条对象的数组
    
}

//构造方法，传入文件路径，初始化歌词管理器对象
-(id)initWithLrcFile:(NSString *)path;

-(void)showLrcItems; //遍历整个歌词文件


//给用户公开一个接口。输入时间，得到对应内容
+(void)userInterface;


@end
