//
//  ButtonsView.h
//  button调用cell的tableView的controller(block和代理)
//
//  Created by 陈天佑 on 16/10/24.
//  Copyright © 2016年 陈天佑. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ButtonModel.h"

@protocol ButtonsViewDelegate <NSObject>

- (void)buttonDidClick:(NSIndexPath *)indexPath andTag:(NSInteger)tag;

@end

@interface ButtonsView : UIControl

@property(nonatomic,strong)ButtonModel * buttonModel;

@property(nonatomic,weak)id<ButtonsViewDelegate> delegate;

@end
