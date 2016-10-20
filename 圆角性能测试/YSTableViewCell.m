//
//  YSTableViewCell.m
//  圆角性能测试
//
//  Created by 张延深 on 2016/10/20.
//  Copyright © 2016年 宜信. All rights reserved.
//

#import "YSTableViewCell.h"
#import "YSImageView.h"

@interface YSTableViewCell ()

@property (weak, nonatomic) IBOutlet YSImageView *firstImageView;
@property (weak, nonatomic) IBOutlet YSImageView *secondImageView;

@end

@implementation YSTableViewCell

- (void)setShowRoundCorner:(BOOL)showRoundCorner {
    _showRoundCorner = showRoundCorner;
    // 会引起离屏渲染
    self.firstImageView.layer.masksToBounds = showRoundCorner;
    self.secondImageView.layer.masksToBounds = showRoundCorner;
}

@end
