//
//  Course.m
//  课程类的设计
//
//  Created by 王宇珍 on 16/10/12.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "Course.h"

@implementation Course
//构造方法
-(id)initWithCourseName:(NSString *)courseName andCourseTime:(NSInteger)courseTime
{
    self=[super init];
    if (self) {
        _courseName=courseName;
        _courseTime=courseTime;
    }
    return  self;
}



//getter方法
-(NSString *)courseName
{
    return _courseName;
}

-(NSString *)teacherName
{
    return _teacherName;
}

-(NSInteger)courseTime
{
    return _courseTime;
}



//setter方法
-(void)setTeacherName:(NSString *)teacherName
{
    _teacherName=teacherName;
}




//打印课程
-(void)printCourse{
    NSLog(@"courseName =%@ courseTime = %li teacherNAme=%@",[self courseName],[self courseTime],[self teacherName]);
}

@end
