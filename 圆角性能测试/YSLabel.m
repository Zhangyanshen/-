//
//  YSLabel.m
//  圆角性能测试
//
//  Created by 张延深 on 2016/10/18.
//  Copyright © 2016年 宜信. All rights reserved.
//

#import "YSLabel.h"

@implementation YSLabel

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    if (cornerRadius <= 0) {
        return;
    }
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

@end
