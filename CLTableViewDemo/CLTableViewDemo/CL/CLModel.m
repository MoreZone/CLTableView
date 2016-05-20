//
//  CLModel.m
//  CLTableViewDemo
//
//  Created by More on 16/5/20.
//  Copyright © 2016年 More. All rights reserved.
//

#import "CLModel.h"

@implementation CLModel

-(CGFloat)cellheight
{
    if (!_cellheight) {
        CGSize maxSize =CGSizeMake([UIScreen mainScreen].bounds.size.width-30, MAXFLOAT);
        CGFloat  texH =[self.text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size.height;
        _cellheight =texH+70;//xib 的高度
    }
    return _cellheight;
}

@end
