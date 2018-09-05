//
//  SecondViewModel.h
//  TestRAC
//
//  Created by Zhang xiaosong on 2018/6/27.
//  Copyright © 2018年 Zhang xiaosong. All rights reserved.
//

#import "ZXSViewModel.h"
#import "ClassRoomModel.h"

NS_ASSUME_NONNULL_BEGIN

//处理model层的变化，处理网络数据

@interface SecondViewModel : ZXSViewModel

/**
 班级信息
 */
@property (nonatomic,strong)ClassRoomModel *classRoom;

/**
 发送到VM层的信号
 */
@property (nonatomic,strong)RACSubject *signalTVM;

/**
 发送到所对应视图的信号
 */
@property (nonatomic,strong)RACSubject *signalTV;

/**
 发送到父视图的信号
 */
@property (nonatomic,strong)RACSubject *signalTS;

@end

NS_ASSUME_NONNULL_END
