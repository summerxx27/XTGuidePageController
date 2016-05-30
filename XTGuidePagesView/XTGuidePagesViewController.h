//
//  XTGuidePagesViewController.h
//  XTGuidePagesView
//
//  Created by zjwang on 16/5/30.
//  Copyright © 2016年 夏天. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CALayer+Transition.h"
typedef void(^block)(UIButton *btn, BOOL isShow, TransitionAnimType aniType, TransitionSubType dirType);


@interface XTGuidePagesViewController : UIViewController

// 初始化引导页
+ (instancetype)XTGuidePagesViewControllerOfImages:(NSArray *)images
                                        setUpBlock:(block) setupBlock;

@end
