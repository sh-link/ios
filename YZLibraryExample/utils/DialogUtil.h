//
//  DialogUtil.h
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/30.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface DialogUtil : NSObject
/**只有一个取消按钮的dialog*/
+(void)createAndShowDialogWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSString*)buttonTitle;
/**只有一个取消按钮的dialog*/
+(void)createAndShowDialogWithTitle:(NSString*)title message:(NSString*)message buttonTitle:(NSString*)buttonTitle handler:(void (^)(UIAlertAction *action))handler;
/**有两个按钮的dialog*/
+(void)createAndShowDialogWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle okButtonTitle:(NSString*)okButtonTitle cancelHandler:(void (^)(UIAlertAction *))cancelHandler okHandler:(void(^)(UIAlertAction*))okHandler;
@end
