//
//  main.m
//  歌词解析类
//
//  Created by 王宇珍 on 16/10/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//



//1. 读取歌词文件
//2. 解析歌词文件
//3. 输入时间输出该时间所对应的歌词
#import <Foundation/Foundation.h>
#import "LrcManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [LrcManager userInterface];
    }
    return 0;
}
