//
//  ScreenUtil.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/29.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "ScreenUtil.h"

@implementation ScreenUtil
+(CGFloat)getWidth
{
    return [UIScreen mainScreen].bounds.size.width;
}
+(CGFloat)getHeight
{
    return [UIScreen mainScreen].bounds.size.height;
}
+(CGSize)getSize
{
    return [UIScreen mainScreen].bounds.size;
}
@end
