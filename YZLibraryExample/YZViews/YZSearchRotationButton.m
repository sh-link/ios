//
//  YZSearchRotationButton.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/8/4.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "YZSearchRotationButton.h"
#import "YZSearchRotationLayer.h"
#import "Utils.h"
#define radius 3.0
#define padding 3.0


@implementation YZSearchRotationButton
{
    UIView *_searchView;
    UILabel *_titleLabel;
    YZSearchRotationLayer *_searchLayer;
    UIColor *_normalColor;
    UIColor *_highlightedColor;
}


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        _searchView = [UIView new];
        _titleLabel = [UILabel new];
        _titleLabel.textColor = [UIColor whiteColor];
        _searchView.userInteractionEnabled = false;
        _titleLabel.userInteractionEnabled = false;
        
        [self addSubview:_searchView];
        [self addSubview:_titleLabel];
        
        _inSearching = false;
        
        _searchLayer = [YZSearchRotationLayer new];
        [_searchView.layer addSublayer:_searchLayer];
        
        //圆角
        self.layer.cornerRadius = radius;
    }
    return self;
}

-(void)layoutSubviews
{
    float width = self.bounds.size.width;
    float height = self.bounds.size.height;
    //文本宽高
    float textWidth = [TextUtil getSize:_titleLabel].width;
    float textHeight = [TextUtil getSize:_titleLabel].height;
    if(_inSearching)
    {
        _searchView.hidden = false;
        //searchView宽高
        float searchViewWH = height - 2 * padding;
        //计算内容总宽度,_searchView加上文本加上间隔
        float contentWidth = searchViewWH + padding + textWidth;
        //确定searchView的frame
        _searchView.frame = CGRectMake(width / 2 - contentWidth / 2, height/2 - searchViewWH / 2, searchViewWH, searchViewWH);
        _searchLayer.frame = _searchView.bounds;
        
        //计算文本label的frame
        _titleLabel.frame = CGRectMake(CGRectGetMaxX(_searchView.frame) + padding, height/2 - textHeight / 2, textWidth, textHeight);
    }
    else
    {
        //没有圆圈情况
        _searchView.frame = CGRectZero;
        _searchView.hidden = true;
        _titleLabel.frame = CGRectMake(width / 2 - textWidth /2 , height /2 - textHeight /2, textWidth, textHeight);
    }
}


-(void)setInSearching:(BOOL)inSearching
{
    _inSearching = inSearching;
    [self setNeedsLayout];
}

-(void)setTitle:(NSString *)title forState:(UIControlState)state
{
    _titleLabel.text = title;
    [self setNeedsLayout];
}

-(void)setTitleColor:(UIColor *)color forState:(UIControlState)state
{
    //_titleLabel.textColor = color;
    if(state == UIControlStateNormal)
    {
        _normalColor = color;
    }
    else
    {
        _highlightedColor = color;
    }
    
    if(_normalColor != nil)
    {
        _titleLabel.textColor = _normalColor;
    }
    else
    {
        _titleLabel.textColor = _highlightedColor;
    }
}

-(void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    if(_highlightedColor == nil || _normalColor == nil)
    {
        return;
    }
    
    if(highlighted)
    {
        _titleLabel.textColor = _highlightedColor;
    }
    else
    {
        _titleLabel.textColor = _normalColor;
    }
}

@end
