//
//  ZLQTool.m
//  ZLQDevelopTools
//
//  Created by Luqiang on 15/12/12.
//  Copyright © 2015年 Luqiang. All rights reserved.
//

#import "ZLQTool.h"

@implementation ZLQTool

#pragma mark - View
+ (CAGradientLayer *)shadeLayerWithFrame:(CGRect)frame startColor:(UIColor *)startColor finishColor:(UIColor *)finishColor isHorizontal:(BOOL)isHorizontal; {
    CAGradientLayer *layer = [CAGradientLayer new];
    layer.colors = @[(__bridge id)startColor.CGColor, (__bridge id)finishColor.CGColor];
    layer.startPoint = CGPointMake(0, 0);
    if (isHorizontal) {
        layer.endPoint = CGPointMake(1, 0);
    } else {
        layer.endPoint = CGPointMake(0, 1);
    }
    layer.frame = frame;
    return layer;
}

#pragma mark - Device
+ (BOOL)isScreen35 {
    CGRect rect_screen = [[UIScreen mainScreen] bounds];
    CGSize size_screen = rect_screen.size;
    if ((320 == size_screen.width) && (480 == size_screen.height)) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isScreen4 {
    CGRect rect_screen = [[UIScreen mainScreen] bounds];
    CGSize size_screen = rect_screen.size;
    if ((320 == size_screen.width) && (568 == size_screen.height)) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isScreen47 {
    CGRect rect_screen = [[UIScreen mainScreen] bounds];
    CGSize size_screen = rect_screen.size;
    if ((375 == size_screen.width) && (667 == size_screen.height)) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isScreen55 {
    CGRect rect_screen = [[UIScreen mainScreen] bounds];
    CGSize size_screen = rect_screen.size;
    if ((414 == size_screen.width) && (736 == size_screen.height)) {
        return YES;
    } else {
        return NO;
    }
}

+ (void)callPhone:(NSString *)phone inView:(UIView *)view {
    NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"tel:%@", phone];
    UIWebView * callWebView = [[UIWebView alloc] init];
    [callWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:str]]];
    [view addSubview:callWebView];
}

#pragma mark - TextField正则校验
+ (BOOL)checkIsValidityTextField:(UITextField *)textField type:(CheckType)type {
    NSString *str = textField.text;
    if ([str length] == 0) {
        
        return NO;
    }
    NSString *regexStr = nil;
    
    switch (type) {
        case CheckTypeMail:
            regexStr = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
            break;
        case CheckTypePhone:
            regexStr = @"^((13[0-9])|(14[0-9])|(15[0-9])|(17[0-9])|(18[0-9]))\\d{8}$";
            break;
        case CheckTypePassWord:
            regexStr = @"^[a-zA-Z0-9]{6,16}$";
            break;
        case CheckType4Code:
            regexStr = @"^[0-9]{4}";
            break;
        case CheckType6Code:
            regexStr = @"^[0-9]{6}";
            break;
        default:
            break;
    }
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regexStr];
    
    BOOL isMatch = [pred evaluateWithObject:str];
    
    if (!isMatch) {
        
        return NO;
    }
    return YES;
}

@end











