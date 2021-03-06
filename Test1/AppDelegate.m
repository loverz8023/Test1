//
//  AppDelegate.m
//  Test1
//
//  Created by 罗晓卓 on 2018/3/13.
//  Copyright © 2018年 罗晓卓. All rights reserved.
//

#import "AppDelegate.h"

#import "view/SourceViewController.h"
#import "view/DestinationViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // 初始化导航控制器的根控制器
    
    SourceViewController * navRootVC = [[SourceViewController alloc] init];
    navRootVC.view.backgroundColor = [UIColor whiteColor];
    
    UINavigationController * navVC = [[UINavigationController alloc] initWithRootViewController:navRootVC];
//    navRootVC.title = @"设置";
    
//    UIBarButtonItem * leftBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"go" style:UIBarButtonItemStylePlain target:self action:@selector(leftBtnClick)];
//    leftBtnItem.tintColor = [UIColor whiteColor];
//    navRootVC.navigationItem.rightBarButtonItem = leftBtnItem;
//    navVC.navigationBar.barStyle = UIBarStyleBlack;
    // 初始化window window的rootview controller 设置成navVC
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = navVC;
    [self.window makeKeyAndVisible];
    return YES;
}
-(void) leftBtnClick{
    NSLog(@"left btn click");
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
