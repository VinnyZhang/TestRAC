//
//  ZXSViewModel.m
//  Latte_Staff
//
//  Created by Zhang xiaosong on 2018/3/12.
//  Copyright © 2018年 hesunZhang. All rights reserved.
//

#import "ZXSViewModel.h"

@implementation ZXSViewModel

#pragma mark - static methods -

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    ZXSViewModel *viewModel = [super allocWithZone:zone];
    if(viewModel){
        [viewModel zxs_initialize];
    }
    return viewModel;
}


- (instancetype)initWithModel:(id)model
{
    if(self = [super init]){
        [self zxs_initialize];
    }
    return self;
}

- (void)zxs_initialize
{}


@end
