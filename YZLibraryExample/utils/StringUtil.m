//
//  StringUtil.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/30.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "StringUtil.h"

@implementation StringUtil
+(NSString*)trim:(NSString*)str
{
    return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

+(BOOL)isEmpty:(NSString *)str
{
    if(str == nil)
    {
        return true;
    }
    str = [self trim:str];
    
    if(str.length == 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

+(BOOL)isPureInt:(NSString *)str
{
    NSScanner *scan = [NSScanner scannerWithString:str];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}


@end
