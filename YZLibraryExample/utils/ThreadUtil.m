//
//  ThreadUtil.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/29.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "ThreadUtil.h"

@implementation ThreadUtil
+(void)excute:(dispatch_block_t)runnable
{
    dispatch_async(dispatch_get_global_queue(0, 0), runnable);
}

+(void)excuteInMainThread:(dispatch_block_t)runnable
{
    dispatch_async(dispatch_get_main_queue(), runnable);
}

+(void)excute_after:(dispatch_block_t)runnable seconds:(double)seconds
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(seconds * NSEC_PER_SEC)), dispatch_get_global_queue(0, 0), runnable);
}

+(void)excuteInMainThread_after:(dispatch_block_t)runnable seconds:(double)seconds
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(seconds * NSEC_PER_SEC)), dispatch_get_main_queue(), runnable);
}

+(void)excute_repeate:(repeateBlock)block repeatCount:(int)repeateCount
{
    [ThreadUtil excute:^{
        dispatch_apply(repeateCount, dispatch_get_global_queue(0, 0), ^(size_t index) {
            block((int)index);
        });
    }];
}

+(void)excute_serial:(dispatch_block_t)runnable
{
    static dispatch_queue_t serialQueue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        serialQueue = dispatch_queue_create("serialqueue", DISPATCH_QUEUE_SERIAL);
    });
    dispatch_async(serialQueue, runnable);
}

+(void)excute_once:(dispatch_block_t)runnable
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, runnable);
}
@end
