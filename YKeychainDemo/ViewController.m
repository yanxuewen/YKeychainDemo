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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    YTestObject *object = [YTestObject new];
    object.string = @"string";
    
    [YKeychain getBundleSeedIdentifier];
    [YKeychain setValue:object forKey:@"ajdsajndffn"];
    NSString *sss = [YKeychain valueForKey:@"ajdsajndffn"];
    NSLog(@"ssssss %@",sss);
    
    
    
    
    
    /******************************
     //keychain
     https://developer.apple.com/library/ios/documentation/Security/Reference/keychainservices/index.html#//apple_ref/c/func/SecItemCopyMatching
     
     
    try {
        //执行的代码，其中可能有异常。一旦发现异常，则立即跳到catch执行。否则不会执行catch里面的内容 }
        catch {
        //除非try里面执行代码发生了异常，否则这里的代码不会执行 }
        finally {
            //不管什么情况都会执行，包括try catch 里面用了return ,可以理解为只要执行了try或者catch，就一定会执行 finally }
    **********************************/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
