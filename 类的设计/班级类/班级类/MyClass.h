//
//  MyClass.h
//  班级类
//
//  Created by 王宇珍 on 16/10/13.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface MyClass : NSObject
{
    NSString *_className;
    NSMutableArray *_stuList;
}

-(id)initWithClassName:(NSString *)name;

-(void)setClassName:(NSString *)name;
-(NSString *)className;

-(void)addStudent:(Student *)astudent;
-(void)addStudent:(Student *)astudent atIndex:(NSInteger)index;
-(void)removeStudent:(Student *)astudent;
-(void)removeStudentAtIndex:(NSInteger)index;
-(void)replaceStudent:(Student *)astudent atIndex:(NSInteger)index;

-(void)showStuList;

-(void)sortedByNumber;
-(void)sortedByScore;
-(void)sortedByName;

+(void)testMyClass;

@end
