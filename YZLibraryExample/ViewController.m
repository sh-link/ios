//
//  ViewController.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/29.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "ViewController.h"
#import "utils.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *array;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    array = [NSMutableArray new];
//    NSLog(@"this is main %@", [NSThread currentThread]);
//    for(int i = 0; i < 10; i++)
//    {
//        [ThreadUtil excute:^{
//            NSLog(@"hello world : %i", i);
//            [self addThread:[NSThread currentThread]];
//        }];
//    }
//    NSLog(@"延迟5秒后打印");
//    [ThreadUtil excuteInMainThread_after:^{
//        NSLog(@"5秒到了");
//        NSLog(@"current thread = %@", [NSThread currentThread]);
//    } seconds:5];
    
//    __block int i = 0;
//    [ThreadUtil excute_repeate:^(int index) {
//        i++;
//        NSLog(@"current thread = %@", [NSThread currentThread]);
//    } repeatCount:5];
//    NSLog(@"i = %i",i);
    
//    for(int i = 0; i < 10; i++)
//    {
//        [ThreadUtil excute_serial:^{
//            NSLog(@"i = %i",i);
//        }];
//    }
//    
//    [ThreadUtil excute_once:^{
//        NSLog(@"execute only once");
//    }];
//    
//    [ThreadUtil excute_once:^{
//        NSLog(@"execute only once");
//    }];
//    [ThreadUtil excute:^{
//        dispatch_apply(50, dispatch_get_global_queue(0, 0), ^(size_t index) {
//            NSLog(@"current thread = %@", [NSThread currentThread]);
//        });
//    }];
//   
//    NSLog(@"hello");
//    [ThreadUtil excuteInMainThread:^{
//        NSLog(@"hello this is in main thread");
//    }];
//    for(int i = 0; i < 50; i++)
//    [ThreadUtil excute:^{
//        NSLog(@"current thread = %@", [NSThread currentThread]);
//        [self addThread:[NSThread currentThread]];
//        NSLog(@"thread.count = %ld", array.count);
//    }];
    
//    [ThreadUtil excuteInMainThread_after:^{
//        [ToastUtil showLongToast:@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"];
//    } seconds:2];
//    NSString *str = @"    aaa";
//    if([StringUtil isEmpty:str])
//    {
//        NSLog(@"empty");
//    }
//    else
//    {
//        NSLog(@"not empty");
//    }
//    NSString *str = @"    hello";
//    NSLog(@"trim前:%@", str);
//    str = [StringUtil trim:str];
//    NSLog(@"trim后:%@",str);
    //[UserDefaultUtils setString:@"yangzhen" forKey:@"name"];
//    [UserDefaultUtils removeKey:@"name"];
//    NSString *name = [UserDefaultUtils getStringForKey:@"name" defaultValue:@"no name"];
   // NSLog(@"name = %@", name);
   // [UserDefaultsUtil setInt:10 forKey:@"age"];
//    [UserDefaultsUtil removeKey:@"age"];
//    NSInteger age = [UserDefaultsUtil getIntForKey:@"age"];
//    NSLog(@"age = %ld", age);
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button setTitle:@"hello" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
//    NSString *tmpPath = [FileUtil getTmpPath];
//    NSLog(@"tmpPath = %@", tmpPath);
//    
//    NSString *documentsPath = [FileUtil getDocumentPath];
//    NSLog(@"documentsPath = %@", documentsPath);
//    NSError *error;
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"ThreadUtil" ofType:@"txt"];
//    NSString *content = [[NSString alloc]initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
//    if(error)
//    {
//        DLog(@"error");
//    }
//    else
//    {
//    DLog(@"%@", content);
//}
//    DLog(@"ip address = %@", [IPUtil getDeviceIPAddress]);
//    DLog(@"mask address = %@", [IPUtil getDeviceMaskAddress]);
//    
//    NSString *str = @"12a";
//    DLog(@"%d",[StringUtil isPureInt:str]);
    
    
}

-(void)buttonClick
{
   // [DialogUtil createAndShowDialogWithTitle:@"hi" message:@"hello,veryone" buttonTitle:@"ok"];
//    [DialogUtil createAndShowDialogWithTitle:@"hi" message:@"hello, everyone" buttonTitle:@"知道了" handler:^(UIAlertAction *action) {
//        NSLog(@"dialog dimsiss");
//    }];
//    __block int i = 0;
//    [DialogUtil createAndShowDialogWithTitle:@"要升级吗" message:@"您确定要升级吗" cancelButtonTitle:@"不升级" okButtonTitle:@"升级" cancelHandler:^(UIAlertAction *action) {
//        //
//        i++;
//        NSLog(@"不升级 %i",i);
//    } okHandler:^(UIAlertAction * action) {
//        //
//        NSLog(@"升级");
//    }];
//    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//    [ThreadUtil excute:^{
//        sleep(4);
//        [ThreadUtil excuteInMainThread:^{
//            [MBProgressHUD hideHUDForView:self.view animated:YES];
//        }];
//    }];
//    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//    //hud.mode = MBProgressHUDModeAnnularDeterminate;
//    hud.mode = MBProgressHUDModeDeterminate;
//    hud.labelText = @"loading";
//    [ThreadUtil excute:^{
//        for(int i = 0; i < 100; i++)
//        {
//            [NSThread sleepForTimeInterval:0.1];
//            //sleep(0.1);
//            DLog(@"i = %i",i);
//            //[ThreadUtil excuteInMainThread:^{
//                hud.progress = i/100.0f;
//            //}];
//            
//        }
//        [ThreadUtil excuteInMainThread:^{
//            [hud hide:YES];
//       }];
//    }];
    [MBProgressHUD showMessage:@"啊啊啊"];
//    [ThreadUtil excuteInMainThread_after:^{
//        [MBProgressHUD hideHUD];
//    } seconds:3];
}

//-(void)addThread:(NSThread*)thread
//{
//    if(![array containsObject:thread])
//    {
//        [array addObject:thread];
//        NSLog(@"thread count = %ld", array.count);
//    }
//}




@end
