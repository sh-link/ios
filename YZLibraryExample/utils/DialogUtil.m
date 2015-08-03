//
//  DialogUtil.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/30.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "DialogUtil.h"
#import "StringUtil.h"
@implementation DialogUtil
+(void)createAndShowDialogWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSString *)buttonTitle
{
    
    [self createAndShowDialogWithTitle:title message:message buttonTitle:buttonTitle handler:nil];
}

+(void)createAndShowDialogWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSString *)buttonTitle handler:(void (^)(UIAlertAction *))handler
{
    if([StringUtil isEmpty:title])
    {
        title = nil;
    }
    if([StringUtil isEmpty:buttonTitle])
    {
        buttonTitle = @"知道了";
    }
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:buttonTitle style:UIAlertActionStyleCancel handler:handler];
    [alertController addAction:cancelAction];
    
    //显示dialog
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:true completion:nil];
}

+(void)createAndShowDialogWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle okButtonTitle:(NSString *)okButtonTitle cancelHandler:(void (^)(UIAlertAction *))cancelHandler okHandler:(void (^)(UIAlertAction *))okHandler
{
    if([StringUtil isEmpty:title])
    {
        title = nil;
    }
    if([StringUtil isEmpty:cancelButtonTitle])
    {
        cancelButtonTitle = @"取消";
    }
    if([StringUtil isEmpty:okButtonTitle])
    {
        okButtonTitle = @"确定";
    }
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    //取消按钮
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:cancelHandler];
    //确定按钮
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:okButtonTitle style:UIAlertActionStyleDefault handler:okHandler];
    //添加
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    
    //显示dialog
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:true completion:nil];
}
@end
