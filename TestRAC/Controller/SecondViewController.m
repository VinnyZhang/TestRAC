//
//  SecondViewController.m
//  TestRAC
//
//  Created by Zhang xiaosong on 2018/6/27.
//  Copyright © 2018年 Zhang xiaosong. All rights reserved.
//

#import "SecondViewController.h"
#import "SecondViewModel.h"
#import "SecondView.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@property (nonatomic,strong)SecondViewModel *viewModel;

@property (nonatomic,strong)SecondView *mainView;

@end

@implementation SecondViewController

#pragma mark - life cycle -

- (void)viewDidLoad {
    [super viewDidLoad];
    [self layoutMySubViews];
}

- (void)loadView
{
    [super loadView];
    
    [self mainView];
    
}

#pragma mark - private methods -

- (void)layoutMySubViews {
    
    [self.mainView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    [self.mainView layoutMySubView];
    
    @weakify(self)
    [self.viewModel.signalTC subscribeNext:^(id  _Nullable x) {
        ThirdViewController *controller = [[ThirdViewController alloc] init];
        [self_weak_.navigationController pushViewController:controller animated:YES];
    }];
    
}

#pragma mark - lazy loading -

- (SecondViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[SecondViewModel alloc] init];
    }
    return _viewModel;
}

- (SecondView *)mainView
{
    if (!_mainView){
        _mainView = [[SecondView alloc] initWithViewModel:self.viewModel];
        [self.view addSubview:_mainView];
    }
    return _mainView;
}



@end
