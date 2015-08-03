//
//  UserDefaultUtil.h
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/30.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaultsUtil : NSObject
+(void)setString:(NSString*)value forKey:(NSString*)key;
+(NSString*)getStringForKey:(NSString*)key defaultValue:(NSString*)defaultValue;

+(void)setInt:(NSInteger)value forKey:(NSString*)key;
+(NSInteger)getIntForKey:(NSString*)key;

+(void)removeKey:(NSString*)key;
@end
