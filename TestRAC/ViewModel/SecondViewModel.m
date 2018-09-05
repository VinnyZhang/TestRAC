//
//  SecondViewModel.m
//  TestRAC
//
//  Created by Zhang xiaosong on 2018/6/27.
//  Copyright © 2018年 Zhang xiaosong. All rights reserved.
//

#import "SecondViewModel.h"
#import "ZXSSignalModel.h"

@implementation SecondViewModel

#pragma mark - super -

- (instancetype)initWithModel:(id)model
{
    self.classRoom = (ClassRoomModel *)model;
    return [super initWithModel:model];
}

- (void)zxs_initialize
{
    @weakify(self);
    [self.signalTVM subscribeNext:^(id  _Nullable x) {//监听消息（因为是处于VM中，所以只需监听signalTVM）
        ZXSSignalModel *signalModel = (ZXSSignalModel *)x;
        [self_weak_ controllSignal:signalModel];
    }];
    
}

#pragma mark - internal methods -

/**
 处理信号
 */
- (void)controllSignal:(ZXSSignalModel *)signal
{
    
}


//网络请求


// 数据组织


//数据逻辑处理

#pragma mark - lazy loading -

- (RACSubject *)signalTVM
{
    if(!_signalTVM){
        _signalTVM = [[RACSubject alloc] init];
    }
    return _signalTVM;
}

- (RACSubject *)signalTV
{
    if (!_signalTV) {
        _signalTV = [[RACSubject alloc] init];
    }
    return _signalTV;
}

- (RACSubject *)signalTS
{
    if(!_signalTS){
        _signalTS = [[RACSubject alloc] init];
    }
    return _signalTS;
}

@end
