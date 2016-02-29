//
//  ZLQMacro.h
//  ZLQDevelopTools
//
//  Created by Luqiang on 15/12/23.
//  Copyright © 2015年 Luqiang. All rights reserved.
//


//弱引用
#define ZLQ_WEAKSELF __weak typeof(self) weakSelf = self;


//系统版本比较
#define ZLQ_VERSION_ABOVE(v) ([[[UIDevice currentDevice] systemVersion] floatValue] >= (v))
#define ZLQ_VERSION_EQUAL(v) ([[[UIDevice currentDevice] systemVersion] floatValue] == (v))
#define ZLQ_VERSION_BELOW(v) ([[[UIDevice currentDevice] systemVersion] floatValue] < (v))