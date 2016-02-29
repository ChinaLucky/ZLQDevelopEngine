//
//  ZLQTool.h
//  ZLQDevelopTools
//
//  Created by Luqiang on 15/12/12.
//  Copyright © 2015年 Luqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CheckType) {
    CheckTypeMail,//---
    CheckTypePhone,//--- 13、14、15、17、18开头
    CheckTypePassWord,//--- 字母、数字或字母和数字组合，6-16位
    CheckType4Code,//--- 4位数字验证码
    CheckType6Code,//--- 6位数字验证码
};

@interface ZLQTool : NSObject

//View
+ (CAGradientLayer *)shadeLayerWithFrame:(CGRect)frame startColor:(UIColor *)startColor finishColor:(UIColor *)finishColor isHorizontal:(BOOL)isHorizontal;

//Device
+ (BOOL)isScreen35;
+ (BOOL)isScreen4;
+ (BOOL)isScreen47;
+ (BOOL)isScreen55;
+ (void)callPhone:(NSString *)phone inView:(UIView *)view;

//TextField文本正则校验
+ (BOOL)checkIsValidityTextField:(UITextField *)textField type:(CheckType)type;


@end
