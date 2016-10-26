//
//  Card.h
//  通讯录类
//
//  Created by 王宇珍 on 16/10/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
{
    NSString *_contactName;  //实例变量
    NSString *_phoneNumber;
}


//构造方法
-(id)initWithContactName:(NSString *)name andPhoneNumber:(NSString *)number;

//getter
-(NSString *)contactName;
-(NSString *)phoneNumber;

//setter
-(void)setContactName:(NSString *)name;
-(void)setPhoneNumber:(NSString *)number;

//sort function
-(BOOL)isSortByContactName:(Card *)aCard;
-(BOOL)isSortByPhoneNumber:(Card *)aCard;


-(void)printCard;

@end
