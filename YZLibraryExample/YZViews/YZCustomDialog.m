//
//  YZCustomDialog.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/8/4.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "YZCustomDialog.h"
#import "Utils.h"
#import "YZInsetsLabel.h"
#define padding 5.0
@implementation YZCustomDialog
{
    UILabel *_titleLabel;
    YZInsetsLabel *_messageLabel;
    UIButton *_cancelButton;
    UIButton *_okButton;
    
    UIView *_containerView;
    customClickHandler _cancelHandler;
    customClickHandler _okHandler;
}
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        //初始化
        _titleBgColor = getColor(240, 240, 240, 255);
        _titleColor = [UIColor blackColor];
        _messageBgColor = [UIColor whiteColor];
        _messageColor = [UIColor blackColor];
        _cancelBgColor = getColor(0, 70, 136, 255);
        _cancelTitleColor = [UIColor whiteColor];
        _okBgColor = getColor(0, 70, 136, 255);
        _okTitleColor = [UIColor whiteColor];
        
        _titleLabel = [UILabel new];
        _messageLabel = [YZInsetsLabel new];
        _cancelButton = [UIButton new];
        _okButton = [UIButton new];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _messageLabel.textAlignment = NSTextAlignmentCenter;
        
        _titleLabel.backgroundColor = _titleBgColor;
        _titleLabel.textColor = _titleColor;
        _messageLabel.backgroundColor = _messageBgColor;
        _messageLabel.textColor = _messageColor;
        _cancelButton.backgroundColor = _cancelBgColor;
        [_cancelButton setTitleColor:_cancelTitleColor forState:UIControlStateNormal];
        _okButton.backgroundColor = _okBgColor;
        [_okButton setTitleColor:_okTitleColor forState:UIControlStateNormal];
        _titleLabel.text = @"标题";
        _messageLabel.text = @"正文";
        [_cancelButton setTitle:@"取消" forState:UIControlStateNormal];
        [_okButton setTitle:@"确定" forState:UIControlStateNormal];
        
        [_cancelButton addTarget:self action:@selector(cancelClick) forControlEvents:UIControlEventTouchUpInside];
        [_okButton addTarget:self action:@selector(okClick) forControlEvents:UIControlEventTouchUpInside];
        
        //多行
        _messageLabel.numberOfLines = 0;
        //设置边距
        _messageLabel.insets = UIEdgeInsetsMake(4 * padding, 4*padding, 4*padding, 4*padding);
        
        _containerView = [UIView new];
        [self addSubview:_containerView];
        
        [_containerView addSubview:_titleLabel];
        [_containerView addSubview:_messageLabel];
        [_containerView addSubview:_cancelButton];
        [_containerView addSubview:_okButton];
        
        
        //圆角
        _containerView.layer.cornerRadius = 5;
        _containerView.layer.masksToBounds = true;
        
        self.frame = CGRectMake(0, 0, [ScreenUtil getWidth], [ScreenUtil getHeight]);
        
        //蒙板效果
        self.backgroundColor = getColor(95, 95, 95, 255);
    }
    return self;
}

-(void)layoutSubviews
{
    //屏幕正中心
    _containerView.center = CGPointMake([ScreenUtil getWidth] / 2.0f, [ScreenUtil getHeight] / 2.0f);
    //确定宽度
    float width  = [ScreenUtil getWidth] * 0.8f;
    //确定title的frame
    _titleLabel.frame = CGRectMake(0, 0, width, [TextUtil getSize:_titleLabel].height + 4.0f * padding);
    //确定message的frame
    _messageLabel.frame = CGRectMake(0, CGRectGetMaxY(_titleLabel.frame) , width, [TextUtil getSize:_messageLabel withMaxSize:CGSizeMake(width - _messageLabel.insets.left - _messageLabel.insets.right, [ScreenUtil getHeight])].height + _messageLabel.insets.top + _messageLabel.insets.bottom);
    //确定cancel button的frame
    _cancelButton.frame = CGRectMake(0, CGRectGetMaxY(_messageLabel.frame), width / 2, 40);
    //确定okButton的frame
    _okButton.frame = CGRectMake(CGRectGetMaxX(_cancelButton.frame) + 0.5f, CGRectGetMaxY(_messageLabel.frame),width/2, 40);
    _containerView.bounds = CGRectMake(0, 0, width, CGRectGetMaxY(_cancelButton.frame));
}

-(void)setTitle:(NSString *)title
{
    _titleLabel.text = title;
}

-(void)setTitleBgColor:(UIColor *)titleBgColor
{
    _titleLabel.backgroundColor = titleBgColor;
}

-(void)setTitleColor:(UIColor *)titleColor
{
    _titleLabel.textColor = titleColor;
}

-(void)setMessage:(NSString *)message
{
    _messageLabel.text = message;
}

-(void)setMessageBgColor:(UIColor *)messageBgColor
{
    _messageLabel.backgroundColor = messageBgColor;
}

-(void)setMessageColor:(UIColor *)messageColor
{
    _messageLabel.textColor = messageColor;
}

-(void)setCancelBgColor:(UIColor *)cancelBgColor
{
    _cancelButton.backgroundColor = cancelBgColor;
}

-(void)setCancelTitle:(NSString *)cancelTitle
{
    [_cancelButton setTitle:cancelTitle forState:UIControlStateNormal];
}

-(void)setCancelTitleColor:(UIColor *)cancelTitleColor
{
    [_cancelButton setTitleColor:cancelTitleColor forState:UIControlStateNormal];
}

-(void)setOkBgColor:(UIColor *)okBgColor
{
    _okButton.backgroundColor = okBgColor;
}

-(void)setOkTitle:(NSString *)okTitle
{
    [_okButton setTitle:okTitle forState:UIControlStateNormal];
}

-(void)setOkTitleColor:(UIColor *)okTitleColor
{
    [_okButton setTitleColor:okTitleColor forState:UIControlStateNormal];
}

-(void)showWithOkHanlder:(customClickHandler)okHandler cancelHandler:(customClickHandler)cancelHandler
{
    _cancelHandler = cancelHandler;
    _okHandler = okHandler;
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
        [window addSubview:self];
   
}

-(void)cancelClick
{
    [self removeFromSuperview];
    if(_cancelHandler != nil)
    {
        _cancelHandler();
    }
}

-(void)okClick
{
    [self removeFromSuperview];
    if(_okHandler != nil)
    {
        _okHandler();
    }
    
}

@end
