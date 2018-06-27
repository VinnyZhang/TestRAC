//
//  ZXSViewProtocol.h
//  Latte_Staff
//
//  Created by Zhang xiaosong on 2018/3/12.
//  Copyright © 2018年 hesunZhang. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ZXSViewModelProtocol;

@protocol ZXSViewProtocol <NSObject>

@optional

- (instancetype)initWithViewModel:(id<ZXSViewModelProtocol>)viewModel;

- (void)zxs_bindViewModel;

- (void)zxs_setupViews;

@end
