//
//  ToastUtil.h
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/29.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToastUtil : NSObject
/**显示一个toast,持续seconds秒*/
+(void)showToast:(NSString*)toast duration:(double)seconds;
/**显示一个短toast*/
+(void)showShortToast:(NSString*)toast;
/**显示一个长toast*/
+(void)showLongToast:(NSString*)toast;
@end
