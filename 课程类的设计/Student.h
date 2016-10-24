//
//  Student.h
//  课程类的设计
//
//  Created by 王宇珍 on 16/10/12.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Course.h"

@interface Student : NSObject
{
    NSString *_name;
    NSInteger _age;
    NSInteger _score;
    
    Course *_course1;
    Course *_course2;
    Course *_course3;
    
}

//构造方法
-(id)initWithName:(NSString *)name andAge:(NSInteger)age;

//getter方法 读取实际变量的值
-(NSString *)name;
-(NSInteger)age;
-(NSInteger)score;

//setter
-(void)setName:(NSString *)name andAge:(NSInteger)age;


//功能方法
-(NSString *)getAllTeacherNames;
-(NSString *)getAllCourseNames;
-(NSInteger)getAllCourseTimes;
-(void)setCourse:(Course *)aCourse;

//通过课程的索引设置课程
-(void)setCourse:(Course *)newCourse byIndex:(NSInteger)index;


//打印学生信息
-(void)printStudentInfo;

//类方法
+ (void)testStudent;

@end
