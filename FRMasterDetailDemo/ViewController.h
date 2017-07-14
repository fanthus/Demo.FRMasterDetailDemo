//
//  ViewController.h
//  FRMasterDetailDemo
//
//  Created by xiushan.fan on 2017/7/14.
//  Copyright © 2017年 FanFrank. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FRPicture.h"

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTableView *tableView;

@property (nonatomic, strong) NSMutableArray<FRPicture *> *picArr;
@property (weak) IBOutlet NSTextField *detailText;
@property (weak) IBOutlet NSImageView *detailImg;

@end

