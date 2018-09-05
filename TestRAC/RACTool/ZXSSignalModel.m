//
//  ZXSSignalModel.m
//  JinSeShiJi
//
//  Created by Zhang xiaosong on 2018/7/10.
//

#import "ZXSSignalModel.h"

@implementation ZXSSignalModel

+(ZXSSignalModel *)signalWithTag:(int)tag data:(id)data
{
    ZXSSignalModel *model = [[ZXSSignalModel alloc] init];
    model.signalTag = tag;
    model.signalData = data;
    return model;
}

@end
