//
//  SecondViewModel.h
//  TestRAC
//
//  Created by Zhang xiaosong on 2018/6/27.
//  Copyright © 2018年 Zhang xiaosong. All rights reserved.
//

#import "ZXSViewModel.h"
#import "MyModel.h"

NS_ASSUME_NONNULL_BEGIN

//处理model层的变化，处理网络数据

@interface SecondViewModel : ZXSViewModel

@property (nonatomic,strong)MyModel *model;

@property (nonatomic,strong)RACSubject *addSignalTVM;

@property (nonatomic,strong)RACSubject *numChangedSignalTV;

@property (nonatomic,strong)RACSubject *signalTC;

@end

NS_ASSUME_NONNULL_END
