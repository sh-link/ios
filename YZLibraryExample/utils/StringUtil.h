//
//  StringUtil.h
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/30.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringUtil : NSObject
/**去除两边空格*/
+(NSString*)trim:(NSString*)str;
/**检测是否为空字符串，包括nil,空串,或者都是空字符的串*/
+(BOOL)isEmpty:(NSString*)str;
/**检测字符串是否是纯整数*/
+(BOOL)isPureInt:(NSString*)str;
@end
