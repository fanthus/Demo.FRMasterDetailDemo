//
//  FRPicture.h
//  FRMasterDetailDemo
//
//  Created by xiushan.fan on 2017/7/14.
//  Copyright © 2017年 FanFrank. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FRPicture : NSObject

@property (nonatomic, strong) NSString *picName;
@property (nonatomic, strong) NSString *imgName;

- (id)initWithName:(NSString *)tPicName andImg:(NSString *)tImgName;

@end
