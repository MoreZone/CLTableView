//
//  CLModel.h
//  CLTableViewDemo
//
//  Created by More on 16/5/20.
//  Copyright © 2016年 More. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CLModel : NSObject

/**  名字*/
@property(nonatomic,copy)NSString *name;
/**  时间*/
@property(nonatomic,copy)NSString *passtime;
/**  图片*/
@property(nonatomic,copy)NSString *profile_image;
/**  话语*/
@property(nonatomic,copy)NSString *text;

@property(nonatomic,assign)CGFloat cellheight;


@end
