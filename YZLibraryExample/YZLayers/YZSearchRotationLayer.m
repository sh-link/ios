//
//  YZSearchRotationLayer.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/8/3.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "YZSearchRotationLayer.h"

@implementation YZSearchRotationLayer

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        _circleRadius = 0.0f;
        _lineWidth = 0;
        _lineColor = nil;
        CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
        rotationAnimation.toValue = [NSNumber numberWithFloat:M_PI * 2.0];
        rotationAnimation.duration = 1.0f;
        rotationAnimation.repeatCount = HUGE_VALF;
        [self addAnimation:rotationAnimation forKey:@"YZSearchRotationLayer_rotation"];
        [self setNeedsDisplay];
        
    }
    return self;
}
//圆圈，半圆
-(void)drawInContext:(CGContextRef)ctx
{
    NSLog(@"draw");
    CGPoint center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
    //获取layer宽高
    float width = self.bounds.size.width;
    float height = self.bounds.size.height;
    //确定最大半径
    float maxRadius = MIN(width/2, height/2);
    if(_circleRadius == 0.0f)
    {
        _circleRadius =  maxRadius/2.0f;
    }
    if(_circleRadius > maxRadius)
    {
        _circleRadius = maxRadius - 10;
    }
    if(_lineColor == nil)
    {
        _lineColor = [UIColor colorWithRed:200.0/255 green:200.0/255 blue:200.0/255 alpha:1.0f];
    }
    if(_lineWidth == 0)
    {
        _lineWidth = 3;
    }
    //设置圆圈颜色
    CGContextSetStrokeColorWithColor(ctx, _lineColor.CGColor);
    CGContextSetLineWidth(ctx, _lineWidth);
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithArcCenter:center radius:_circleRadius startAngle:0 endAngle:M_PI*2/6.0*5.0 clockwise:YES];
    CGContextBeginPath(ctx);
    CGContextAddPath(ctx, circlePath.CGPath);
    CGContextStrokePath(ctx);
}

-(void)setLineColor:(UIColor *)lineColor
{
    _lineColor = lineColor;
    [self setNeedsDisplay];
}

-(void)setCircleRadius:(float)circleRadius
{
    _circleRadius = circleRadius;
    [self setNeedsDisplay];
}

-(void)setLineWidth:(int)lineWidth
{
    _lineWidth = lineWidth;
    [self setNeedsDisplay];
}
@end
