//
//  YZCustomDialog.h
//  YZLibraryExample
//
//  Created by zhen yang on 15/8/4.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^customClickHandler)();

@interface YZCustomDialog : UIView
@property (nonatomic, copy)UIColor *titleBgColor;
@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)UIColor *titleColor;
@property (nonatomic, copy)UIColor *messageBgColor;
@property (nonatomic, copy)NSString *message;
@property (nonatomic, copy)UIColor *messageColor;
@property (nonatomic, copy)UIColor *cancelBgColor;
@property (nonatomic, copy)NSString *cancelTitle;
@property (nonatomic, copy)UIColor *cancelTitleColor;
@property (nonatomic, copy)UIColor *okBgColor;
@property (nonatomic, copy)NSString *okTitle;
@property (nonatomic, copy)UIColor *okTitleColor;

-(void)showWithOkHanlder:(customClickHandler)okHandler cancelHandler:(customClickHandler)cancelHandler;
@end
