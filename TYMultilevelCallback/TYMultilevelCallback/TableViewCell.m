//
//  TableViewCell.m
//  button调用cell的tableView的controller(block和代理)
//
//  Created by 陈天佑 on 16/10/24.
//  Copyright © 2016年 陈天佑. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
-(void)setButtonModel:(ButtonModel *)buttonModel
{
    _buttonModel = buttonModel;
    
    _buttonsView = [[ButtonsView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 26)];
    _buttonsView.buttonModel = buttonModel;
    [self addSubview:_buttonsView];
}
@end
