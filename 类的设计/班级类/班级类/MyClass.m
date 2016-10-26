//
//  MyClass.m
//  班级类
//
//  Created by 王宇珍 on 16/10/13.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

-(id)initWithClassName:(NSString *)name
{
    self=[super init];
    if (self) {
        _className=name;
        //创建可变数组
        _stuList= [NSMutableArray array];
    }
    return self;
}

-(void)setClassName:(NSString *)name
{
    _className=name;
}

-(NSString *)className
{
    return _className;
}

-(void)addStudent:(Student *)astudent
{
    if (![_stuList containsObject:astudent]) {
        [_stuList addObject:astudent];
    }
}
-(void)addStudent:(Student *)astudent atIndex:(NSInteger)index
{
    if (![_stuList containsObject:astudent]) {
        [_stuList insertObject:astudent atIndex:index];
    }
}
-(void)removeStudent:(Student *)astudent
{
    if ([_stuList containsObject:astudent]) {
        [_stuList removeObject:astudent];
    }
}
-(void)removeStudentAtIndex:(NSInteger)index
{

    [_stuList removeObjectAtIndex:index];
}
-(void)replaceStudent:(Student *)astudent atIndex:(NSInteger)index
{
    [_stuList replaceObjectAtIndex:index withObject:astudent];
}

-(void)showStuList  //遍历可变数组
{
    for(Student *stu in _stuList)
    {
        [stu printStudnent];
    }
    
}

-(void)sortedByNumber //降序排列
{
    [_stuList sortUsingSelector:@selector(isSortByNum:)];
}
-(void)sortedByScore
{
    [_stuList sortUsingSelector:@selector(isSortByScore:)];
}
-(void)sortedByName
{
    [_stuList sortUsingSelector:@selector(isSortByName:)];
}

//类方法
+(void)testMyClass
{
    MyClass *iosClass=[[MyClass alloc]initWithClassName:@"ios班级"];
    for (NSInteger i=0; i<10; i++) {
        Student *stu = [[Student alloc]initWithName:[NSString stringWithFormat:@"stu%d",arc4random()%50+1] number:arc4random()%100+1 score:arc4random()%101];
        [iosClass addStudent:stu];
    }
    NSLog(@"---排序前----");
    [iosClass showStuList];

    
    NSLog(@"---name降序排序----");
    [iosClass sortedByName];
    [iosClass showStuList];
    
    NSLog(@"---number升序排序----");
    [iosClass sortedByNumber];
    [iosClass showStuList];
    
    NSLog(@"---score升序排序----");
    [iosClass sortedByScore];
    [iosClass showStuList];
    
}

@end
