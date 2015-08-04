//
//  ViewController.m
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/29.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import "ViewController.h"
#import "utils.h"
#include "YZViews.h"
#import "YZLayers.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *array;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    array = [NSMutableArray new];

//    SHRectangleButton *button = [SHRectangleButton new];
//    button.frame = CGRectMake(100, 100, 150, 30);
//    [self.view addSubview:button];
//    [button setTitle:@"hello" forState:UIControlStateNormal];
//    button.inSearching = true;
    YZSearchRotationButton *button = [YZSearchRotationButton new];
    button.frame = CGRectMake(50, 100, 100, 40);
    [self.view addSubview:button];
    [button setTitle:@"hello" forState:UIControlStateNormal] ;
    button.inSearching = true;
    [button setBackgroundColor:[UIColor blueColor]];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    //[button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
}

-(void)buttonClick:(YZSearchRotationButton*)button
{
    button.inSearching = !button.inSearching;
   
}






@end
