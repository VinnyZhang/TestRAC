//
//  ZXSSignalModel.h
//  JinSeShiJi
//
//  Created by Zhang xiaosong on 2018/7/10.
//

#import <Foundation/Foundation.h>

@interface ZXSSignalModel : NSObject

@property (nonatomic,assign)int signalTag;

@property (nonatomic,strong)id signalData;

+(ZXSSignalModel *)signalWithTag:(int)tag data:(id)data;

@end
