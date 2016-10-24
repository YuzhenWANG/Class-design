//
//  Student.m
//  课程类的设计
//
//  Created by 王宇珍 on 16/10/12.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "Student.h"

@implementation Student

//构造方法
-(id)initWithName:(NSString *)name andAge:(NSInteger)age
{
    self=[super init];
    if(self){
        _name =name;
        _age =age;
    }
    return self;
    
}


//功能方法
-(NSString *)getAllCourseNames{
    NSString *str=@"";
    if (_course1) {
        str=[str stringByAppendingString:[_course1 courseName]];
    }
    if (_course2) {
        str=[str stringByAppendingString:[_course2 courseName]];
    }
    if(_course3){
        str=[str stringByAppendingString:[_course3 courseName]];
    }
    return str;
}


-(NSString *)getAllTeacherNames
{
    NSString *str=@"";
    if (_course1) {
        str=[str stringByAppendingString:[_course1 teacherName]];
    }
    if (_course2) {
        str=[str stringByAppendingString:[_course2 teacherName]];
    }
    if (_course3) {
        str=[str stringByAppendingString:[_course3 teacherName]];
        }
    return str;
}



-(NSInteger)getAllCourseTimes
{
    NSInteger time=0;
    if (_course1) {
        time+=[_course1 courseTime];
    }
    if (_course2) {
        time+=[_course2 courseTime];
    }
    if (_course3) {
        time+=[_course3 courseTime];
    }
    return time;
}


-(void)setCourse:(Course *)newCourse byIndex:(NSInteger)index
{
    if (index==1) {
        _course1=newCourse;
    }
    else if (index==2) {
        _course2=newCourse;
    }
    
    else if (index==3) {
        _course3=newCourse;
    }
}


//打印学生信息
-(void)printStudentInfo
{
    NSLog(@"name=%@ age=%li score=%li",[self name],[self age],[self score]);
    [_course1 printCourse];
    [_course2 printCourse];
    [_course3 printCourse];
}



//类方法
+(void)testStudent
{
    Student *stu = [[Student alloc]initWithName:@"zhang" andAge:20];
    Course *course1=[[Course alloc]initWithCourseName:@"chinese" andCourseTime:20];
    [course1 setTeacherName:@"张老师"];
    Course *course2=[[Course alloc]initWithCourseName:@"math" andCourseTime:30];
    [course2 setTeacherName:@"杨老师"];
    Course *course3=[[Course alloc]initWithCourseName:@"english" andCourseTime:40];
    [course3 setTeacherName:@"王老师"];
    
    
    stu->_course1=course1;
    stu->_course2=course2;
    [stu setCourse:course3 byIndex:2];
    
    NSLog(@"%@",[stu getAllCourseNames]);
    
    NSLog(@"%@",[stu getAllTeacherNames]);
    
    NSLog(@"time = %li",[stu getAllCourseTimes]);
}




@end
