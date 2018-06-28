//
//  SecondViewModel.m
//  TestRAC
//
//  Created by Zhang xiaosong on 2018/6/27.
//  Copyright © 2018年 Zhang xiaosong. All rights reserved.
//

#import "SecondViewModel.h"
#import "MyModel.h"

@implementation SecondViewModel

#pragma mark - i -

- (void)zxs_initialize
{
    self.model = [[MyModel alloc] init];
    
    @weakify(self);
    [self.addSignalTVM subscribeNext:^(id  _Nullable x) {
        self_weak_.model.stuNumber += 1;
        [self_weak_.numChangedSignalTV sendNext:@(self_weak_.model.stuNumber)];
    }];
    
}

#pragma mark - lazy loading -

- (RACSubject *)addSignalTVM
{
    if(!_addSignalTVM){
        _addSignalTVM = [[RACSubject alloc] init];
    }
    return _addSignalTVM;
}

- (RACSubject *)numChangedSignalTV
{
    if (!_numChangedSignalTV) {
        _numChangedSignalTV = [[RACSubject alloc] init];
    }
    return _numChangedSignalTV;
}

- (RACSubject *)signalTC
{
    if(!_signalTC){
        _signalTC = [[RACSubject alloc] init];
    }
    return _signalTC;
}

@end
