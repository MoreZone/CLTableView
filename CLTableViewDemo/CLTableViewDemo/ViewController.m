//
//  ViewController.m
//  CLTableViewDemo
//
//  Created by More on 16/5/20.
//  Copyright © 2016年 More. All rights reserved.
//

#import "ViewController.h"
#import "CLTableViewCell.h"
#import "CLModel.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
/** tab*/
@property(nonatomic,strong)IBOutlet UITableView *tab;

/** 数据*/
@property(nonatomic,strong)NSMutableArray  *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.array =[NSMutableArray array];
    NSString *str =[[NSBundle mainBundle]pathForResource:@"duanzi" ofType:@"plist"];
    NSDictionary *dict =[[NSDictionary alloc]initWithContentsOfFile:str];
    for (NSDictionary*dicts in dict[@"list"]) {
        CLModel *model =[[CLModel alloc]init];
        [model setValuesForKeysWithDictionary:dicts];
        [self.array addObject:model];
    }
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   static NSString *ID =@"ID";
    CLTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:ID];
    if (cell==nil) {
        cell =[[[NSBundle mainBundle]loadNibNamed:@"CLTableViewCell" owner:self options:nil]lastObject];
    }
    cell.model = self.array[indexPath.row];
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CLModel*model =self.array[indexPath.row];
    
    return model.cellheight;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
