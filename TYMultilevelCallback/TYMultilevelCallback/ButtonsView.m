//
//  ButtonsView.m
//  button调用cell的tableView的controller(block和代理)
//
//  Created by 陈天佑 on 16/10/24.
//  Copyright © 2016年 陈天佑. All rights reserved.
//

#import "ButtonsView.h"
#import "Button.h"
@interface ButtonsView()

    @property(nonatomic,strong)Button * btn;

@end
NSInteger num = 6;
@implementation ButtonsView


-(void)setButtonModel:(ButtonModel *)buttonModel
{
    _buttonModel = buttonModel;
    //添加num个按钮
    for (NSInteger i = 0; i < num; i++)
    {
        //cell回调block给控制器
        _btn = [[Button alloc]initWithCallBack:^(NSIndexPath *indexPath, NSInteger tag){
            __weak typeof (self)weakSelf = self;
            if (weakSelf.delegate != nil)
            {
                if ([weakSelf.delegate respondsToSelector:@selector(buttonDidClick:andTag:)])
                {
                    [weakSelf.delegate buttonDidClick:indexPath andTag:tag];
                }
            }
        }];
        [self addSubview:_btn];
        _btn.buttonModel = self.buttonModel;
        _btn.tag = self.subviews.count;
    }
}

-(void)layoutSubviews
{
   CGFloat btnW = [UIScreen mainScreen].bounds.size.width / num - 5;
    CGFloat btnH = 26;
    for (NSInteger i = 0; i < num; i++)
    {
        CGFloat btnX = (btnW + 5) * i;
        _btn = self.subviews[i];
        
        _btn.frame = CGRectMake(btnX, 0, btnW, btnH);
    }
}

@end
