//
//  CLTableViewCell.m
//  CLTableViewDemo
//
//  Created by More on 16/5/20.
//  Copyright © 2016年 More. All rights reserved.
//

#import "CLTableViewCell.h"
#import "CLModel.h"
#import "UIImageView+WebCache.h"

@implementation CLTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}
-(void)setModel:(CLModel *)model
{
    _model =model;
    self.namelab.text =model.name;
    self.text.text =model.text;
    self.topiclab.text =model.passtime;
    [self.imageV sd_setImageWithURL:[NSURL URLWithString:model.profile_image] placeholderImage:[UIImage imageNamed:@"defaultUserIcon"]];
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
}

@end
