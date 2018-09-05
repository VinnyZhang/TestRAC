//
//  MyModel.m
//  TestRAC
//
//  Created by Zhang xiaosong on 2018/6/27.
//  Copyright © 2018年 Zhang xiaosong. All rights reserved.
//

#import "ClassRoomModel.h"

@implementation ClassRoomModel

- (instancetype)init
{
    if (self = [super init]){
        self.classRoomName = @"";
        self.students = [[NSMutableArray alloc] init];
    }
    
    return self;
}

@end
