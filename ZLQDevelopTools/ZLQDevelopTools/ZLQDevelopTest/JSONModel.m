//
//  JSONModel.m
//  ZLQDevelopTools
//
//  Created by Luqiang on 15/12/28.
//  Copyright © 2015年 Luqiang. All rights reserved.
//

#import "JSONModel.h"

@implementation JSONModel


- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    NSLog(@"key:%@ --- value:%@", key, value);
}

- (void)setValuesForKeysWithDictionary:(NSDictionary<NSString *,id> *)keyedValues {
    [super setValuesForKeysWithDictionary:keyedValues];
    //调用属性的Set方法
}

@end
