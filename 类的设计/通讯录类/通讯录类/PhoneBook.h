//
//  PhoneBook.h
//  通讯录类
//
//  Created by 王宇珍 on 16/10/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PhoneBook : NSObject
{
    NSString *_masterName;   //实例变量
    NSMutableArray *_cardList;
    
}

//构造方法
-(id)initWithMasterName:(NSString *)name;

//setter
-(void)setName:(NSString *)name;

//getter
-(NSString *)name;

//functions
-(void)addCard:(Card *)card;
-(void)removeCard:(Card  *)card;
-(void)showPhoneBook;
-(void)sortBycontactName;
-(void)sortByPhoneNumber;

//test function
+(void)testPhoneBook;
@end


