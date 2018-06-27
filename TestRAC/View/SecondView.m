//
//  SecondView.m
//  TestRAC
//
//  Created by Zhang xiaosong on 2018/6/27.
//  Copyright © 2018年 Zhang xiaosong. All rights reserved.
//

#import "SecondView.h"
#import "SecondViewModel.h"

@interface SecondView()

@property (nonatomic,strong)SecondViewModel *viewModel;

@property (nonatomic,strong)UIButton *button;

@property (nonatomic,strong)UILabel *label;

@end

@implementation SecondView





#pragma mark - super methods -

- (instancetype)initWithViewModel:(id<ZXSViewModelProtocol>)viewModel
{
    self.viewModel = (SecondViewModel *)viewModel;
    return [super initWithViewModel:viewModel];
}

- (void)zxs_setupViews
{
   
    [self button];
    [self label];
}

- (void)zxs_bindViewModel
{
    [self.viewModel.numChangedSignal subscribeNext:^(id  _Nullable x) {
        int n = [x intValue];
        self.label.text = [NSString stringWithFormat:@"学生 %i",n];
    }];
}

#pragma mark - outside methods -

- (void)layoutMySubView
{
     [self setBackgroundColor:UIColor.whiteColor];
    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(20);
        make.top.equalTo(self.mas_top).offset(100);
        make.width.mas_equalTo(@(200));
        make.height.mas_equalTo(@(50));
    }];
    
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(20);
        make.top.equalTo(self.mas_top).offset(200);
        make.width.mas_equalTo(@(200));
        make.height.mas_equalTo(@(50));
    }];
    
    [self.button addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)add {
    [self.viewModel.addSignal sendNext:@(5)];
}

#pragma mark - lazy loading -

- (UIButton *)button
{
    if(!_button){
        _button = [[UIButton alloc] init];
        [_button setTitle:@"增加学生" forState:UIControlStateNormal];
        [_button setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
        [self addSubview:_button];
    }
    return _button;
}

- (UILabel *)label
{
    if(!_label) {
        _label = [[UILabel alloc] init];
        [_label setTextColor:UIColor.orangeColor];
        [_label setFont:[UIFont systemFontOfSize:20]];
        [self addSubview:_label];
    }
    return _label;
}


@end
