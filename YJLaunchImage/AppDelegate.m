//
//  AppDelegate.m
//  YJLaunchImage
//
//  Created by liuyingjie on 2017/8/14.
//  Copyright © 2017年 liuyingjie. All rights reserved.
//

#import "AppDelegate.h"
#import "YJLaunchViewManager.h"
#import "YJAdModel.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [self addMainWindow];
    [self addADLaunchController];
    return YES;
}

- (void)addMainWindow{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[ViewController alloc]init];
    [self.window makeKeyAndVisible];
}

- (void)addADLaunchController{
    
    YJAdModel * adModel=[[YJAdModel alloc]init];
    adModel.launchUrl=@"http://d.hiphotos.baidu.com/image/pic/item/f7246b600c3387444834846f580fd9f9d72aa034.jpg";
    adModel.adDetailUrl=@"http://www.sina.com";
    UIViewController *rootViewController = self.window.rootViewController;
    YJLaunchViewManager *launchController = [YJLaunchViewManager launchViewManger];
    launchController.adModel=adModel;
    [launchController showView:rootViewController.view];
}

- (void)applicationWillResignActive:(UIApplication *)application {
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
}


- (void)applicationWillTerminate:(UIApplication *)application {
}


@end
