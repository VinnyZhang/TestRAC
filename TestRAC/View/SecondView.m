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

@property (nonatomic,strong)UIButton *nextBtn;

@end

@implementation SecondView


- (void)setBlock:(SecondViewBlock)block
{
    _block = block;
}


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
    [self.viewModel.numChangedSignalTV subscribeNext:^(id  _Nullable x) {
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
    
    [self.nextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(20);
        make.top.equalTo(self.mas_top).offset(300);
        make.width.mas_equalTo(@(200));
        make.height.mas_equalTo(@(50));
    }];
    
    [self.button addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
    
    [self.nextBtn addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];

    
}

- (void)add {
    [self.viewModel.addSignalTVM sendNext:@(5)];
}

- (void)next{
    [self.viewModel.signalTC sendNext:nil];
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

- (UIButton *)nextBtn
{
    if (!_nextBtn) {
        _nextBtn = [[UIButton alloc] init];
        [_nextBtn setTitle:@"next" forState:UIControlStateNormal];
        [_nextBtn setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
        [self addSubview:_nextBtn];
    }
    return _nextBtn;
}


@end
