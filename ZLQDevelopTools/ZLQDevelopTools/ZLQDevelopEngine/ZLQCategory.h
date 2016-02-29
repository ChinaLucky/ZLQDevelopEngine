//
//  ZLQCategory.h
//  ZLQDevelopTools
//
//  Created by Luqiang on 15/12/12.
//  Copyright © 2015年 Luqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#pragma mark - NSObject
@interface NSObject (ZLQExt)

- (CGFloat)screenWidth;
- (CGFloat)screenHeight;
- (BOOL)isValid:(id)anObject;

@end

#pragma mark - NSString
@interface NSString (ZLQExt)

- (NSString *)MD5UppercaseString;
- (NSString *)MD5LowercaseString;

@end

typedef NS_ENUM(NSInteger, AnimationType) {
    AnimationTypeFade = 0,                   //淡入淡出
    AnimationTypePush,                       //推挤
    AnimationTypeReveal,                     //揭开
    AnimationTypeMoveIn,                     //覆盖
    AnimationTypeCube,                       //立方体
    AnimationTypeSuckEffect,                 //吮吸
    AnimationTypeOglFlip,                    //翻转
    AnimationTypeRippleEffect,               //波纹
    AnimationTypePageCurl,                   //翻页
    AnimationTypePageUnCurl,                 //反翻页
    AnimationTypeCameraIrisHollowOpen,       //开镜头
    AnimationTypeCameraIrisHollowClose,      //关镜头
};

typedef NS_ENUM(NSInteger, AnimationSubType) {
    AnimationSubTypeFromRight = 0,
    AnimationSubTypeFromLeft,
    AnimationSubTypeFromTop,
    AnimationSubTypeFromBottom,
};

#pragma mark - UIView
@interface UIView (ZLQExt)

//基础信息
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize size;

//动画
- (void)addAnimationWithType:(AnimationType)animationType subType:(AnimationSubType)animationSubType duration:(CGFloat)duration;
- (void)removeAnimationWithType:(AnimationType)animationType;
- (void)removeAllAnimation;

@end

#pragma mark - UILabel
@interface UILabel (ZLQExt)

- (CGSize)textSize;
- (CGSize)textSizeWithCertainWidth:(CGFloat)width;

@end

#pragma mark - UIButton
@interface UIButton (ZLQExt)

- (void)setBorderWidth:(CGFloat)width color:(UIColor *)color;
- (void)setCornerRadius:(CGFloat)radius;

@end

#pragma mark - UIViewController
@interface UIViewController (ZLQExt)
//Navigation
- (void)showNavigationBar;
- (void)hiddenNavigaitonBar;
//导航栏按钮：纯图片，纯文字，图片加文字   ---    待完成
- (void)setLeftButtonWithTitle:(NSString *)title clickBlock:(void(^)(UIButton *button))block;
- (void)setLeftButtonWithImageName:(NSString *)imageName clickBlock:(void(^)(UIButton *button))block;
- (void)setLeftButtonWithImageName:(NSString *)imageName title:(NSString *)title  clickBlock:(void(^)(UIButton *button))block;
- (void)setRightButtonWithTitle:(NSString *)title clickBlock:(void(^)(UIButton *button))block;
- (void)setRightButtonWithImageName:(NSString *)imageName clickBlock:(void(^)(UIButton *button))block;
//状态栏
- (void)setStatusBarDefault;
- (void)setStatusBarLight;

//Tabbar
- (void)showTabBar;
- (void)hiddenTabBar;

@end

#pragma mark - UITableView
@interface UITableView (ZLQExt)

- (void)setSeparatorZero;

@end

#pragma mark - UITableViewCell
@interface UITableViewCell (ZLQExt)

- (void)setSeparatorZero;

@end

#pragma mark - UIImage
@interface UIImage (ZLQExt)

/* Crop image in the rectangle*/
- (UIImage *)cropImageInRect:(CGRect)rect;
- (UIImage *)scaleImageToSize:(CGSize)size;
// make rectangle image to ellipse, usually used to show circular avatars.
- (UIImage *)ellipseImageWithDefaultSetting;

@end















