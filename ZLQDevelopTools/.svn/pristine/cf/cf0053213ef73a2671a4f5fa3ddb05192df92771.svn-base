//
//  ZLQJSON.m
//  ZLQDevelopTools
//
//  Created by Luqiang on 15/12/21.
//  Copyright © 2015年 Luqiang. All rights reserved.
//

#import "ZLQJSON.h"
#import "ZLQHttp.h"

#define JSON_URL @"http://139.129.36.226/home/FirstPHP/json"

@implementation ZLQJSON

+ (void)JSONWithBlock:(void(^)(NSDictionary *))block {
    [[ZLQHttp sharedInstance] requestWithGET:JSON_URL parameters:nil success:^(NSData *responseObject) {
        NSDictionary *responseDict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        block(responseDict);
    } failure:^(NSError *error) {
        block(nil);
    }];
}

@end
