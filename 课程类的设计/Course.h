//
//  Course.h
//  课程类的设计
//
//  Created by 王宇珍 on 16/10/12.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject
{
    NSString *_courseName;
    NSString *_teacherName;
    NSInteger _courseTime;

}


//构造方法

-(id)initWithCourseName:(NSString *)courseName andCourseTime:(NSInteger)courseTime;

//getter方法
-(NSString *)courseName;
-(NSString *)teacherName;
-(NSInteger)courseTime;

//setter方法
-(void)setTeacherName:(NSString *)teacherName;

//打印课程
-(void)printCourse;


@end
