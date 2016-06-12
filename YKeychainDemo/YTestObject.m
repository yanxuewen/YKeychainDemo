//
//  YTestObject.m
//  YKeychainDemo
//
//  Created by Adsmart on 16/6/12.
//  Copyright © 2016年 yxw. All rights reserved.
//

#import "YTestObject.h"

@implementation YTestObject

- (NSString *)description{
    return [NSString stringWithFormat:@"<YTestObject:string:%@>",_string];
}

+ (BOOL)supportsSecureCoding{
    return YES;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_string forKey:@"string"];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    _string = [aDecoder decodeObjectForKey:@"string"];
    return self;
}

@end
