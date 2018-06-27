//
//  ZXSViewModelProtocol.h
//  Latte_Staff
//
//  Created by Zhang xiaosong on 2018/3/12.
//  Copyright © 2018年 hesunZhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZXSViewModelProtocol <NSObject>

@optional

- (instancetype)initWithModel:(id)model;

/**
 初始化
 */
- (void)zxs_initialize;

@end
