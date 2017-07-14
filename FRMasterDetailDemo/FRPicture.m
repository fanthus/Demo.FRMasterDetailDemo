//
//  FRPicture.m
//  FRMasterDetailDemo
//
//  Created by xiushan.fan on 2017/7/14.
//  Copyright © 2017年 FanFrank. All rights reserved.
//

#import "FRPicture.h"

@implementation FRPicture

- (id)initWithName:(NSString *)tPicName andImg:(NSString *)tImgName {
    self = [super init];
    if (self) {
        self.picName = tPicName;
        self.imgName = tImgName;
    }
    return self;
}

@end
