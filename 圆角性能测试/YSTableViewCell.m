//
//  YSTableViewCell.m
//  圆角性能测试
//
//  Created by 张延深 on 2016/10/20.
//  Copyright © 2016年 宜信. All rights reserved.
//

#import "YSTableViewCell.h"
#import "YSImageView.h"
#import "YSLabel.h"

@interface YSTableViewCell ()

@property (weak, nonatomic) IBOutlet YSImageView *firstImageView;
@property (weak, nonatomic) IBOutlet YSImageView *secondImageView;
@property (weak, nonatomic) IBOutlet YSImageView *thirdImageView;
@property (weak, nonatomic) IBOutlet YSLabel *label1;
@property (weak, nonatomic) IBOutlet YSLabel *label2;

@end

@implementation YSTableViewCell

- (void)setShowRoundCorner:(BOOL)showRoundCorner {
    _showRoundCorner = showRoundCorner;
    // 会引起离屏渲染
    self.firstImageView.layer.masksToBounds = showRoundCorner;
    self.secondImageView.layer.masksToBounds = showRoundCorner;
    self.thirdImageView.layer.masksToBounds = showRoundCorner;
    self.label1.layer.masksToBounds = showRoundCorner;
    self.label2.layer.masksToBounds = showRoundCorner;
}

- (void)setShowBorder:(BOOL)showBorder {
    _showBorder = showBorder;
    self.firstImageView.layer.borderWidth = showBorder ? 1.0 : 0;
    self.secondImageView.layer.borderWidth = showBorder ? 1.0 : 0;
    self.thirdImageView.layer.borderWidth = showBorder ? 1.0 : 0;
    self.label1.layer.borderWidth = showBorder ? 1.0 : 0;
    self.label2.layer.borderWidth = showBorder ? 1.0 : 0;
}

@end
