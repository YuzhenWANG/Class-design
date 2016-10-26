//
//  PhoneBook.m
//  通讯录类
//
//  Created by 王宇珍 on 16/10/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "PhoneBook.h"

@implementation PhoneBook

//构造方法
-(id)initWithMasterName:(NSString *)name
{
    
    self = [super init];
    if (self) {
        _masterName = name;
        _cardList = [NSMutableArray array]; //需要创建一个空的可变数组
    }
    return self;
}

//setter
-(void)setName:(NSString *)name
{
    _masterName=name;
}

//getter
-(NSString *)name
{
    return _masterName;
}

//functions
-(void)addCard:(Card *)card
{
    if([_cardList containsObject:card])
    {
        
    }
    else{
    [_cardList addObject:card];
    }
}

-(void)removeCard:(Card  *)card
{
    if([_cardList containsObject:card])
    {
        [_cardList removeObject:card];
    }
}

-(void)showPhoneBook
{
    for(Card *item in _cardList)
    {
        [item printCard];
    }
}

-(void)sortBycontactName
{
    [_cardList sortUsingSelector:@selector(isSortByContactName:)];
}

-(void)sortByPhoneNumber
{
    [_cardList sortUsingSelector:@selector(isSortByPhoneNumber:)];
}

//test function
+(void)testPhoneBook
{
    PhoneBook *phoneBook = [[PhoneBook alloc]initWithMasterName:@"Mary"];
    for (NSInteger i=0; i<10; i++) {
        Card *item = [[Card alloc] init];
        [item setContactName:[NSString stringWithFormat:@"contacter%02i",arc4random()%100]];
        [item setPhoneNumber:[NSString stringWithFormat:@"1362018%04i",arc4random()%10000]];
        
        [phoneBook addCard:item];
    }
    
    
    NSLog(@"----------------排序前---------------");
    [phoneBook showPhoneBook];
    
    
    NSLog(@"----------------姓名排序---------------");
    [phoneBook sortBycontactName];
    [phoneBook showPhoneBook];
    
    NSLog(@"----------------号码排序---------------");
    [phoneBook sortByPhoneNumber];
    [phoneBook showPhoneBook];
}

@end
