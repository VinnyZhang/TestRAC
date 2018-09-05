//
//  MyModel.h
//  TestRAC
//
//  Created by Zhang xiaosong on 2018/6/27.
//  Copyright © 2018年 Zhang xiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassRoomModel : NSObject

/**
 班级名称
 */
@property (nonatomic,strong)NSString *classRoomName;

/**
 学生数组
 */
@property (nonatomic,strong)NSMutableArray<NSString *> *students;

@end

NS_ASSUME_NONNULL_END
