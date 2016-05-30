//
//  GuidePageScrollView.m
//  XTGuidePagesView
//
//  Created by zjwang on 16/5/30.
//  Copyright © 2016年 夏天. All rights reserved.
//

#import "GuidePageScrollView.h"

@interface GuidePageScrollView ()

@end

@implementation GuidePageScrollView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if(self){
        self.backgroundColor = [UIColor cyanColor];
        [self createSubviews];
    }
    return self;
}
- (void)createSubviews
{
    self.pagingEnabled = YES;
    // 隐藏滑动条
    self.showsHorizontalScrollIndicator = NO;
    self.showsVerticalScrollIndicator = NO;
    // 取消反弹
    self.bounces = NO;
}
- (void)layoutSubviews
{    
    [super layoutSubviews];
    for (NSInteger i; i < self.images.count; i ++) {
        [self addSubview:({
            //
            UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(0 + [UIScreen mainScreen].bounds.size.width * i, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
            image.image = [UIImage imageNamed:self.images[i]];
            image;
        })];
    }
    self.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width * self.images.count, 0);
}
@end
