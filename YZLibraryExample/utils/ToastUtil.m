//
//  ToastUtil.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/29.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "ToastUtil.h"
#import <UIKit/UIKit.h>
#import "Macro.h"
#import "TextUtil.h"
#import "ScreenUtil.h"
#import "ThreadUtil.h"

#define toastFont 15
#define padding 10
@implementation ToastUtil

+(void)showLongToast:(NSString *)toast
{
    [self showToast:toast duration:2];
}

+(void)showShortToast:(NSString *)toast
{
    [self showToast:toast duration:1];
}

+(void)showToast:(NSString *)toast duration:(double)seconds
{
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    //容器,放置label
    UIView *container = [UIView new];
    //设置label
    UILabel *toastLabel = [UILabel new];
    [container addSubview:toastLabel];
    
    toastLabel.text = toast;
    toastLabel.numberOfLines = 0;
    toastLabel.font = [UIFont systemFontOfSize:toastFont];
    toastLabel.textColor = [UIColor whiteColor];
    toastLabel.textAlignment = NSTextAlignmentCenter;
    
    //设置圆角效果
    container.layer.cornerRadius = 5;
    container.layer.masksToBounds = true;
    container.backgroundColor = getColor(0, 0, 0, 255);
    
    
    //测量文本,最大宽度为屏幕宽度减去40
    CGSize maxSize = CGSizeMake([ScreenUtil getWidth] - 80, [ScreenUtil getHeight]);
    //计算文本size
    CGSize textSize = [TextUtil getSize:toastLabel withMaxSize:maxSize];
    //将toast显示在水平居中距离底部100的位置
    //100是toast中心到屏幕底部的距离
    toastLabel.frame = CGRectMake(padding, padding, textSize.width , textSize.height);
    container.center = CGPointMake([ScreenUtil getWidth]/2, [ScreenUtil getHeight] - 150);
    container.bounds = CGRectMake(0, 0, toastLabel.frame.size.width + 2 * padding, toastLabel.frame.size.height + 2 * padding);
   
    //显示toast
    [window addSubview:container];
    
    [ThreadUtil excuteInMainThread_after:^{
        [container removeFromSuperview];
    } seconds:seconds];
}
@end
