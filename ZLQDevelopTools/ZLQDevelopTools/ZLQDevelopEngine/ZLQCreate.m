//
//  ZLQCreate.m
//  ZLQDevelopTools
//
//  Created by Luqiang on 15/12/12.
//  Copyright © 2015年 Luqiang. All rights reserved.
//

#import "ZLQCreate.h"

@implementation ZLQCreate

#pragma mark - UIView
+ (UIView *)createUIViewWithFrame:(CGRect)frame {
    UIView *view = [[UIView alloc] initWithFrame:frame];
    return view;
}

#pragma mark - UILabel
+ (UILabel *)createUILabelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.font = font;
    label.textColor = textColor;
    label.textAlignment = textAlignment;
    return label;
}

#pragma mark - UIButton
+ (UIButton *)createUIButtonWithFrame:(CGRect)frame {
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    return button;
}

+ (UIButton *)createUIButtonWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action {
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    if (target && action) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

+ (UIButton *)createUIButtonWithFrame:(CGRect)frame title:(NSString *)title imageName:(NSString *)imageName target:(id)target action:(SEL)action {
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    if (imageName) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    if (target && action) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

#pragma mark - UIColor
+ (UIColor *)createUIColorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    unsigned rgbValue = 0;
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    
    [scanner scanHexInt:&rgbValue];
    
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:alpha];
}

#pragma mark - UIImageView
+ (UIImageView *)createUIImageViewWithFrame:(CGRect)frame imageName:(NSString *)imageName {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = [UIImage imageNamed:imageName];
    return imageView;
}

+ (UIImageView *)createUIImageViewWithFrame:(CGRect)frame imageName:(NSString *)imageName cornerRadius:(CGFloat)cornerRadius {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = [UIImage imageNamed:imageName];
    imageView.layer.masksToBounds = YES;
    imageView.layer.cornerRadius = cornerRadius;
    return imageView;
}

#pragma mark - UITextField
+ (UITextField *)createUITextFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor placeholder:(NSString *)placeholder delegate:(id<UITextFieldDelegate>)delegate {
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    textField.font = font;
    textField.textColor = textColor;
    textField.placeholder = placeholder;
    textField.delegate = delegate;
    return textField;
}

#pragma mark - UIImage
+ (UIImage *)createUIImageWithImageName:(NSString *)imageName {
    return [UIImage imageNamed:imageName];
}

+ (UIImage *)createUIImageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end












