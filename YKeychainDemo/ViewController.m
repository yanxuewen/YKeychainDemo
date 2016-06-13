//
//  ViewController.m
//  YKeychainDemo
//
//  Created by Adsmart on 16/6/12.
//  Copyright © 2016年 yxw. All rights reserved.
//

#import "ViewController.h"
#import "YKeychain.h"
#import "YTestObject.h"

static NSString * const accessGroup = @"com.yxw.sharedTest";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [YKeychain setValue:@(123456) forKey:@"userID"];
    [YKeychain setValue:@"123456" forKey:@"account"];
    
    NSInteger userID = [[YKeychain valueForKey:@"userID"] integerValue];
    NSString *account = [YKeychain valueForKey:@"account"];
    NSLog(@"userID:%zi  account:%@",userID,account);
    
    [YKeychain setValue:@"com.yxw.sharedTest" forKey:@"AccessGroup" forAccessGroup:accessGroup];
    NSString *group = [YKeychain valueForKey:@"AccessGroup" forAccessGroup:accessGroup];
    NSLog(@"group:%@",group);
    
    NSString *uuid = [self getUUID];
    NSLog(@"uuid %@",uuid);
    
    YTestObject *object = [YTestObject new];
    object.string = @"123456";
    
    [YKeychain setValue:object forKey:@"customObject"];
    YTestObject *obj = [YKeychain valueForKey:@"customObject"];
    NSLog(@"obj %@",obj);
    
}

- (NSString *)getUUID{
    NSString *uuid = [YKeychain valueForKey:@"YDeviceUUID"];
    if (uuid == nil) {
        uuid = [NSUUID UUID].UUIDString;
        [YKeychain setValue:uuid forKey:@"YDeviceUUID"];
    }
    return uuid;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
