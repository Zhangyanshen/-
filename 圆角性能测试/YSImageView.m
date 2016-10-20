//
//  YSImageView.m
//  圆角性能测试
//
//  Created by 张延深 on 2016/10/18.
//  Copyright © 2016年 宜信. All rights reserved.
//

#import "YSImageView.h"

@implementation YSImageView

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    self.layer.borderColor = borderColor.CGColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    if (borderWidth <= 0) {
        return;
    }
    self.layer.borderWidth = borderWidth;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    if (cornerRadius <= 0) {
        return;
    }
    self.layer.cornerRadius = cornerRadius;
    // 会引起离屏渲染
    self.layer.masksToBounds = YES;
}

@end
