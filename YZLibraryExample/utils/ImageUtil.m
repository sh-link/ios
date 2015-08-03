//
//  ImageUtil.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/30.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "ImageUtil.h"

@implementation ImageUtil
+(UIImage*)createImageWithColor:(UIColor *)color andSize:(CGSize)size
{
    
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    //设置填充色
    CGContextSetFillColorWithColor(context, color.CGColor);
    //填充矩形
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
