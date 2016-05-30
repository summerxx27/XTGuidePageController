//
//  XTGuidePagesViewController.m
//  XTGuidePagesView
//
//  Created by zjwang on 16/5/30.
//  Copyright © 2016年 夏天. All rights reserved.
//

#import "XTGuidePagesViewController.h"
#import "GuidePageScrollView.h"

#define VERSION_INFO_CURRENT @"currentversion"
@interface XTGuidePagesViewController ()

@end

@implementation XTGuidePagesViewController

+ (instancetype)XTGuidePagesViewControllerOfImages:(NSArray *)images setUpBlock:(block)setupBlock
{
    XTGuidePagesViewController *xtGuidePages = [[XTGuidePagesViewController alloc] init];
    if ([xtGuidePages isShow]) {
        // 创建滚动视图
        [xtGuidePages createSubviews: images];
    }
    return xtGuidePages;
}

- (void)createSubviews:(NSArray *)images
{
    GuidePageScrollView *sco = [[GuidePageScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    sco.images = images;
    [self.view addSubview:sco];
}

- (BOOL)isShow
{
    NSString *currentVersion =[[NSBundle mainBundle].infoDictionary objectForKey:@"CFBundleShortVersionString"];
    // 读取版本信息
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSString *localVersion = [user objectForKey:VERSION_INFO_CURRENT];
    
    if (localVersion == nil || currentVersion.floatValue != localVersion.floatValue) {
        [self saveCurrentVersion];
        return YES;
    }else
    {
        return NO;
    }
}
// 保存版本信息
- (void)saveCurrentVersion
{
    NSString *version =[[NSBundle mainBundle].infoDictionary objectForKey:@"CFBundleShortVersionString"];
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [user setObject:version forKey:VERSION_INFO_CURRENT];
    [user synchronize];
}
@end


