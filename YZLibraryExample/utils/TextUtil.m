//
//  TextUtil.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/29.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "TextUtil.h"
#import "ScreenUtil.h"
@implementation TextUtil
+(CGSize)getSize:(NSString *)text withFont:(UIFont *)font
{
    CGSize maxSize = [ScreenUtil getSize];
    return [self getSize:text withFont:font withMaxSize:maxSize];
}

+(CGSize)getSize:(UILabel *)label
{
    CGSize maxSize = [ScreenUtil getSize];
    return [self getSize:label withMaxSize:maxSize];
}

+(CGSize)getSize:(NSString *)text withTextSize:(CGFloat)textSize
{
    CGSize maxSize = [ScreenUtil getSize];
    return [self getSize:text withTextSize:textSize withMaxSize:maxSize];
}

+(CGSize)getSize:(NSString *)text withTextSize:(CGFloat)textSize withMaxSize:(CGSize)maxSize
{
    UIFont *font = [UIFont systemFontOfSize:textSize];
    return [self getSize:text withFont:font withMaxSize:maxSize];
}

+(CGSize)getSize:(NSString *)text withFont:(UIFont *)font withMaxSize:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName: font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

+(CGSize)getSize:(UILabel *)label withMaxSize:(CGSize)maxSize
{
    NSString *text = label.text;
    UIFont *font = label.font;
    
    return [self getSize:text withFont:font withMaxSize:maxSize];
}

@end
