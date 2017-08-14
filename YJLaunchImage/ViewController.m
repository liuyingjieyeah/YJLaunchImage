//
//  ViewController.m
//  YJLaunchImage
//
//  Created by liuyingjie on 2017/8/14.
//  Copyright © 2017年 liuyingjie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 40)];
    label.text = @"Welcome";
    label.center = self.view.center;
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
