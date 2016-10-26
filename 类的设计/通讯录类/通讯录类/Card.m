//
//  Card.m
//  通讯录类
//
//  Created by 王宇珍 on 16/10/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "Card.h"

@implementation Card

-(id)initWithContactName:(NSString *)name andPhoneNumber:(NSString *)number
{
    self = [super init];
    if (self) {
        _contactName = name;
        _phoneNumber = number;
    }
    return self;
    
}
-(NSString *)contactName
{
    return _contactName;
}
-(NSString *)phoneNumber
{
    return _phoneNumber;
}
-(void)setContactName:(NSString *)name
{
    _contactName = name;
}
-(void)setPhoneNumber:(NSString *)number
{
    _phoneNumber = number;
}
-(BOOL)isSortByContactName:(Card *)aCard
{
    if ([[self contactName]compare:[aCard contactName]]==NSOrderedDescending) {
        return YES;
    }
    else
        return NO;
}

-(BOOL)isSortByPhoneNumber:(Card *)aCard
{
    if ([[self phoneNumber] compare:[aCard phoneNumber]] == NSOrderedDescending) {
        return YES;
    }
    else
        return NO;
}


-(void)printCard
{
    NSLog(@"contactName=%@, phoneNumber=%@", [self contactName], [self phoneNumber]);
}

@end
