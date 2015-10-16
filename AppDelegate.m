//
//  AppDelegate.m
//  3d-touch
//
//  Created by 黄少华 on 15/10/7.
//  Copyright © 2015年 黄少华. All rights reserved.
//

#import "AppDelegate.h"
#import "TableViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    ///setup icons
    UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeCompose];
    UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLocation];
    UIApplicationShortcutIcon *icon3 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypePause];
    UIApplicationShortcutIcon *icon4 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"favicon"];
    
    ///setup items
    UIMutableApplicationShortcutItem *item1 = [[UIMutableApplicationShortcutItem alloc] initWithType:@"first" localizedTitle:@"first item title" localizedSubtitle:@"first item detail title" icon:icon1 userInfo:nil];
    UIMutableApplicationShortcutItem *item2 = [[UIMutableApplicationShortcutItem alloc] initWithType:@"second" localizedTitle:@"second item title" localizedSubtitle:@"second item detail title" icon:icon2 userInfo:nil];
    UIMutableApplicationShortcutItem *item3 = [[UIMutableApplicationShortcutItem alloc] initWithType:@"third" localizedTitle:@"third item title" localizedSubtitle:@"third item detail title" icon:icon3 userInfo:nil];
    UIMutableApplicationShortcutItem *item4 = [[UIMutableApplicationShortcutItem alloc] initWithType:@"forth" localizedTitle:@"forth item title" localizedSubtitle:@"forth item detail title" icon:icon4 userInfo:nil];
    
    NSArray *items = @[item1,item2,item3,item4];
    
    [UIApplication sharedApplication].shortcutItems = items ;
    
    
    UIApplicationShortcutItem *item = [launchOptions valueForKey:UIApplicationLaunchOptionsShortcutItemKey];
    if (item) {
        NSLog(@"3d launch item is %@",item.localizedTitle);
    }else{
        NSLog(@"normal launch");
    }
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[TableViewController alloc] init];
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    NSLog(@"selected item's title is %@",shortcutItem.description);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
