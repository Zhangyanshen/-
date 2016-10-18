//
//  YSView.m
//  圆角性能测试
//
//  Created by 张延深 on 2016/10/18.
//  Copyright © 2016年 宜信. All rights reserved.
//

#import "YSView.h"

@implementation YSView

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    if (cornerRadius <= 0) {
        return;
    }
    self.layer.cornerRadius = cornerRadius;
}

@end
