//
//  XLPhotoCell.m
//  XLCollectionLayout
//
//  Created by yuanxiaolong on 16/3/30.
//  Copyright © 2016年 yuanxiaolong. All rights reserved.
//

#import "XLPhotoCell.h"

@implementation XLPhotoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.imageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.imageView.layer.borderWidth = 5;
    
}

@end
