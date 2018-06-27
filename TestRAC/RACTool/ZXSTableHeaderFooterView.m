//
//  ZXSTableHeaderFooterView.m
//  Latte_Staff
//
//  Created by Zhang xiaosong on 2018/3/12.
//  Copyright © 2018年 hesunZhang. All rights reserved.
//

#import "ZXSTableHeaderFooterView.h"

@implementation ZXSTableHeaderFooterView

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithReuseIdentifier:reuseIdentifier]){
        [self zxs_setupViews];
        [self zxs_bindViewModel];
    }
    return self;
}

- (void)zxs_setupViews{}

- (void)zxs_bindViewModel{}

@end
