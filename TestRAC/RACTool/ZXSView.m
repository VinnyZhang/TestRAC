//
//  ZXSView.m
//  Latte_Staff
//
//  Created by Zhang xiaosong on 2018/3/12.
//  Copyright © 2018年 hesunZhang. All rights reserved.
//

#import "ZXSView.h"

@implementation ZXSView


#pragma mark - construction methods -

- (instancetype)init
{
    if(self = [super init]){
        [self zxs_setupViews];
        [self zxs_bindViewModel];
    }
    return self;
}

- (instancetype)initWithViewModel:(id<ZXSViewModelProtocol>)viewModel
{
    if(self = [super init]){
        [self zxs_setupViews];
        [self zxs_bindViewModel];
    }
    return self;
}

- (void)zxs_setupViews{}

- (void)zxs_bindViewModel{}

@end
