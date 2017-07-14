//
//  ViewController.m
//  FRMasterDetailDemo
//
//  Created by xiushan.fan on 2017/7/14.
//  Copyright © 2017年 FanFrank. All rights reserved.
//

#import "ViewController.h"
#import "FRPicture.h"

@interface ViewController()<NSTableViewDataSource,NSTableViewDelegate> {
    NSMutableArray<FRPicture *> *picArr;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    picArr = [NSMutableArray arrayWithCapacity:0];
    FRPicture *picture1 = [[FRPicture alloc] initWithName:@"City" andImg:@"城市风景.jpg"];
    FRPicture *picture2 = [[FRPicture alloc] initWithName:@"Geometry" andImg:@"规则几何.jpg"];
    FRPicture *picture3 = [[FRPicture alloc] initWithName:@"Forest" andImg:@"森林.jpg"];
    [picArr addObject:picture1];
    [picArr addObject:picture2];
    [picArr addObject:picture3];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}


- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return picArr.count;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    FRPicture *picture = [picArr objectAtIndex:row];
    
    if ([tableColumn.identifier isEqualToString:@"ImgNameColumn"]) {
        NSTableCellView *cellView = [tableView makeViewWithIdentifier:@"ImgNameCell" owner:self];
        if (cellView == nil) {
            cellView = [[NSTableCellView alloc] init];
            cellView.identifier = @"ImgNameCell";
        }
        cellView.textField.stringValue = picture.imgName;
        return cellView;
    }
    
    else {
        NSTableCellView *cellView = [tableView makeViewWithIdentifier:@"PicNameCell" owner:self];
        if (cellView == nil) {
            cellView = [[NSTableCellView alloc] init];
            cellView.identifier = @"PicNameCell";
        }
        cellView.textField.stringValue = picture.picName;
        return cellView;
    }
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
