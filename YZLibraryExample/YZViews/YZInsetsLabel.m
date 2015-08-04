//
//  YZInsetsLabel.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/8/4.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "YZInsetsLabel.h"

@implementation YZInsetsLabel

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        _insets = UIEdgeInsetsZero;
    }
    return self;
}


-(void)drawTextInRect:(CGRect)rect
{
    return [super drawTextInRect:UIEdgeInsetsInsetRect(rect, _insets)];
}

-(void)setInsets:(UIEdgeInsets)insets
{
    _insets = insets;
    [self setNeedsDisplay];
}



@end
