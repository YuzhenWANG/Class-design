//
//  Student.h
//  班级类
//
//  Created by 王宇珍 on 16/10/13.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

{
    NSString *_name;
    NSInteger _num;
    NSInteger _score;
    
}

//构造方法
-(id)initWithName:(NSString *)name number:(NSInteger)num score:(NSInteger)score;

//setter
-(void)setName:(NSString *)name;
-(void)setNum:(NSInteger)num;
-(void)setScore:(NSInteger)score;

//getter
-(NSString *)name;
-(NSInteger)num;
-(NSInteger)score;

//功能方法
-(BOOL)isSortByScore:(Student *)aStudent;
-(bool)isSortByNum:(Student *)aStudent;
-(NSComparisonResult)isSortByName:(Student *)aStudent;

-(void)printStudnent;


@end
