//
//  Student.m
//  班级类
//
//  Created by 王宇珍 on 16/10/13.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "Student.h"

@implementation Student
//构造方法
-(id)initWithName:(NSString *)name number:(NSInteger)num score:(NSInteger)score
{
    self = [super init];
    if (self) {
        _name=name;
        _num=num;
        _score=score;
    }
    return self;
}

//setter
-(void)setName:(NSString *)name
{
    _name=name;
}
-(void)setNum:(NSInteger)num
{
    _num=num;
}
-(void)setScore:(NSInteger)score
{
    _score=score;
}

//getter
-(NSString *)name
{
    return _name;
}
-(NSInteger)num
{
    return  _num;
}
-(NSInteger)score
{
    return _score;
}

//功能方法
-(BOOL)isSortByScore:(Student *)aStudent
{
    if ([self score]>[aStudent score]) {    //调用者分数>参数分数
        return YES;
    }
    else
        return NO;
}
-(bool)isSortByNum:(Student *)aStudent
{
    if ([self num]>[aStudent num]) {
        return YES;
    }
    else
        return NO;
}
-(NSComparisonResult)isSortByName:(Student *)aStudent
{
    NSComparisonResult ret = [[self name] compare:[aStudent name]];
    if (ret == NSOrderedDescending) {
        return NSOrderedAscending;
    }
    else if (ret == NSOrderedAscending)
    {
        return NSOrderedDescending;
    }
    else
        return NSOrderedSame;
}


-(void)printStudnent
{

    NSLog(@"name=%@, num=%li, score=%li",[self name],[self num],[self score]);
}
@end
