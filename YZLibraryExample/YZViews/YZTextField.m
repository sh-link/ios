//
//  YZTextField.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/8/3.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "YZTextField.h"
//图片边距
#define padding 5.5
@implementation YZTextField

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        self.layer.cornerRadius = 5.0f;
        self.clearButtonMode = UITextFieldViewModeAlways;
        self.backgroundColor = [UIColor whiteColor];
        self.textColor = [UIColor colorWithRed:85.0/255.0 green:85.0/255.0 blue:85.0/255.0 alpha:1.0];
        self.font = [UIFont fontWithName:@"Helvetica" size:15.0];
    }
    return self;
}

//文本矩形
-(CGRect)textRectForBounds:(CGRect)bounds
{
    CGFloat leftViewWidth = bounds.size.height - padding * 2;
    //文本矩形，留空给左边的图片
    CGRect textRect = CGRectMake(leftViewWidth + 3 * padding, 0, bounds.size.width - leftViewWidth - 3 * padding, bounds.size.height);
    if(!self.leftImage)
    {
        return CGRectMake(padding, 0, bounds.size.width - padding, bounds.size.height);
    }
    return textRect;
}

//同上
-(CGRect)editingRectForBounds:(CGRect)bounds
{
    CGFloat leftViewWidth = bounds.size.height - padding * 2;
    //文本矩形，留空给左边的图片
    CGRect textRect = CGRectMake(leftViewWidth + 3 * padding, 0, bounds.size.width - leftViewWidth - 3 * padding, bounds.size.height);
    if(!self.leftImage)
    {
        return CGRectMake(padding, 0, bounds.size.width - padding, bounds.size.height);
    }
    return textRect;
}

//左边图片占据的矩形,正方形图片
-(CGRect)leftViewRectForBounds:(CGRect)bounds
{
    CGFloat leftViewWith = bounds.size.height - padding * 2;
    CGRect leftRect = CGRectMake(padding, padding, leftViewWith, leftViewWith);
    if(!self.leftImage)
    {
        return CGRectZero;
    }
    return leftRect;
}


//设置左边显示的图片
-(void)setLeftImage:(UIImage *)leftImage
{
    _leftImage = leftImage;
    if(self.leftImage)
    {
        UIImageView *leftImg = [[UIImageView alloc]initWithImage:leftImage];
        leftImg.contentMode = UIViewContentModeScaleAspectFit;
        self.leftView = leftImg;
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    else
    {
        self.leftView = nil;
        self.leftViewMode = UITextFieldViewModeNever;
    }
    [self setNeedsDisplay];
}

@end
