//
//  FileUtil.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/30.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "FileUtil.h"

@implementation FileUtil
+(NSString*)getDocumentPath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

+(NSString*)getTmpPath
{
    return NSTemporaryDirectory();
}

@end
