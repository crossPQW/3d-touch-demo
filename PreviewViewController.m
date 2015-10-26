//
//  PreviewViewController.m
//  3d-touch
//
//  Created by 黄少华 on 15/10/7.
//  Copyright © 2015年 黄少华. All rights reserved.
//

#import "PreviewViewController.h"

@interface PreviewViewController ()

@end

@implementation PreviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (NSArray<id<UIPreviewActionItem>> *)previewActionItems
{
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"action1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"action1 click");
    }];
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"action2" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"action2 click");
    }];
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"action3" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"action3 click");
    }];
    
    
    UIPreviewActionGroup *group1 = [UIPreviewActionGroup actionGroupWithTitle:@"group1" style:UIPreviewActionStyleDefault actions:@[action1,action2]];
    UIPreviewActionGroup *group2 = [UIPreviewActionGroup actionGroupWithTitle:@"group2" style:UIPreviewActionStyleDestructive actions:@[action1,action3]];
    UIPreviewActionGroup *group3 = [UIPreviewActionGroup actionGroupWithTitle:@"group3" style:UIPreviewActionStyleSelected actions:@[action2,action3]];
    
//    NSArray *items = @[action1,action2,action3];
//    NSArray *items = @[group1,group2,group3];
    NSArray *items = @[action1,group1,action2,group2,action3,group3];
    return items;
}

@end
