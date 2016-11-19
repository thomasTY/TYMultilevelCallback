//
//  TableViewCell.h
//  button调用cell的tableView的controller(block和代理)
//
//  Created by 陈天佑 on 16/10/24.
//  Copyright © 2016年 陈天佑. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Button.h"
#import "ButtonsView.h"
#import "ButtonModel.h"

@interface TableViewCell : UITableViewCell
@property(nonatomic,strong)ButtonModel * buttonModel;

@property(nonatomic,strong)ButtonsView * buttonsView;


@end
