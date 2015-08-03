//
//  TextUtil.h
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/29.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TextUtil : NSObject
+(CGSize)getSize:(NSString*)text withFont:(UIFont*)font;
+(CGSize)getSize:(NSString *)text withTextSize:(CGFloat)textSize;
+(CGSize)getSize:(UILabel*)label;

+(CGSize)getSize:(NSString*)text withFont:(UIFont*)font withMaxSize:(CGSize)maxSize;
+(CGSize)getSize:(NSString *)text withTextSize:(CGFloat)textSize withMaxSize:(CGSize)maxSize;
+(CGSize)getSize:(UILabel*)label withMaxSize:(CGSize)maxSize;
@end
