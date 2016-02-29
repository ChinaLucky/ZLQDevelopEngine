//
//  ZLQClass.h
//  ZLQDevelopTools
//
//  Created by Luqiang on 15/12/13.
//  Copyright © 2015年 Luqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZLQMutableArray : NSObject

- (void)addObject:(id)anObject defaultObject:(id)defaultObject;

@end

@interface ZLQMutableDictionary : NSObject

- (void)setObject:(id)anObject forKey:(id<NSCopying>)aKey defaultObject:(id)defaultObject;
- (void)setValue:(id)value forKey:(NSString *)key defaultValue:(id)defaultValue;

@end

@interface ZLQUnderline : CALayer

- (instancetype)initWithFrame:(CGRect)frame color:(UIColor *)color;

@end

@interface ZLQProgressHUD : NSObject

+ (ZLQProgressHUD *)sharedInstance;
+ (void)showMessageHUD:(NSString *)msg;
- (void)showLoadHUD;
- (void)hideLoadHUD;

@end
