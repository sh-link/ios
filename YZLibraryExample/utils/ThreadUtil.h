//
//  ThreadUtil.h
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/29.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^repeateBlock)(int index);
@interface ThreadUtil : NSObject
/**在线程池中运行*/
+(void)excute:(dispatch_block_t)runnable;
/**在主线程中运行*/
+(void)excuteInMainThread:(dispatch_block_t)runnable;
/**延迟seconds秒后在线程池中运行*/
+(void)excute_after:(dispatch_block_t)runnable seconds:(double)seconds;
/**延迟seconds秒后在主线程中运行*/
+(void)excuteInMainThread_after:(dispatch_block_t)runnable seconds:(double)seconds;
/**串行执行*/
+(void)excute_serial:(dispatch_block_t)runnable;
/**多次在线程池中执行代码,相当于将代码块多次扔进队列,好像还是会在主线程执行,这个有些奇怪*/
+(void)excute_repeate:(repeateBlock)block repeatCount:(int)repeateCount;

/**在应用的生命周期内仅会执行一次*/
+(void)excute_once:(dispatch_block_t)runnable;
@end
