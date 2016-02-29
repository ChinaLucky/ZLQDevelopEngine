//
//  ZLQClass.m
//  ZLQDevelopTools
//
//  Created by Luqiang on 15/12/13.
//  Copyright © 2015年 Luqiang. All rights reserved.
//

#import "ZLQClass.h"
#import "ZLQCategory.h"
#import "MBProgressHUD.h"

@interface ZLQMutableArray ()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation ZLQMutableArray

- (void)addObject:(id)anObject defaultObject:(id)defaultObject {
    if ([self isValid:anObject]) {
        [self.array addObject:anObject];
    } else {
        [self.array addObject:defaultObject];
    }
}

//- (id)objectAtIndex:(NSUInteger)index {
//    return nil;
//}


@end

@interface ZLQMutableDictionary ()

@property (nonatomic, strong) NSMutableDictionary *dictionary;

@end

@implementation ZLQMutableDictionary

- (void)setObject:(id)anObject forKey:(id<NSCopying>)aKey defaultObject:(id)defaultObject {
    if ([self isValid:anObject]) {
        [self.dictionary setObject:anObject forKey:aKey];
    } else {
        [self.dictionary setObject:defaultObject forKey:aKey];
    }
}

- (void)setValue:(id)value forKey:(NSString *)key defaultValue:(id)defaultValue {
    [self setObject:value forKey:key defaultObject:defaultValue];
}


@end

@implementation ZLQUnderline

- (instancetype)initWithFrame:(CGRect)frame color:(UIColor *)color {
    self = [super init];
    if (self) {
        self.frame = frame;
        self.backgroundColor = color.CGColor;
    }
    return self;
}

@end

@interface ZLQProgressHUD ()

@property (nonatomic, strong) MBProgressHUD *loadHUD;

@end

@implementation ZLQProgressHUD

+ (ZLQProgressHUD *)sharedInstance {
    static ZLQProgressHUD *instance;
    static dispatch_once_t done;
    dispatch_once(&done,^{
        instance = [[ZLQProgressHUD alloc] init];
    });
    return instance;
}

+ (void)showMessageHUD:(NSString *)msg {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].windows.lastObject animated:YES];
    hud.removeFromSuperViewOnHide = YES;
    hud.labelText = msg;
    hud.mode = MBProgressHUDModeText;
    [hud hide:YES afterDelay:1.5];
}

- (void)showLoadHUD {
    if (self.loadHUD) {
        self.loadHUD = nil;
    }
    self.loadHUD = [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].windows.lastObject animated:YES];
    self.loadHUD.removeFromSuperViewOnHide = YES;
    self.loadHUD.mode = MBProgressHUDModeIndeterminate;
}

- (void)hideLoadHUD {
    if (self.loadHUD) {
        [self.loadHUD hide:YES];
    }
}

@end





