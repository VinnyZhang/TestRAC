//
//  SecondView.h
//  TestRAC
//
//  Created by Zhang xiaosong on 2018/6/27.
//  Copyright © 2018年 Zhang xiaosong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^SecondViewBlock)(void);

@interface SecondView : ZXSView

@property (nonatomic,copy)SecondViewBlock block;

- (void)layoutMySubView;

@end

NS_ASSUME_NONNULL_END
