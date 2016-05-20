//
//  CLTableViewCell.h
//  CLTableViewDemo
//
//  Created by More on 16/5/20.
//  Copyright © 2016年 More. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  CLModel;
@interface CLTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageV;
@property (weak, nonatomic) IBOutlet UILabel *namelab;
@property (weak, nonatomic) IBOutlet UILabel *topiclab;
@property (weak, nonatomic) IBOutlet UILabel *text;


/** model*/
@property(nonatomic,strong)CLModel *model;

@end
