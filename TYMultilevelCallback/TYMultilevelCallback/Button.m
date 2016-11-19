//
//  Button.m
//  button调用cell的tableView的controller(block和代理)
//
//  Created by 陈天佑 on 16/10/24.
//  Copyright © 2016年 陈天佑. All rights reserved.
//

#import "Button.h"

@implementation Button


-(instancetype)initWithCallBack:(void (^)(NSIndexPath *, NSInteger))buttonClickCallBack
{
    
    self  = [[Button alloc] init];
    self.titleLabel.font = [UIFont systemFontOfSize:10];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 5;
    self.backgroundColor = [UIColor yellowColor];
    [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    //回调
    self.callBack = buttonClickCallBack;
    return self;
}



//按钮被点击
- (void)buttonClick:(Button *)sender
{
    if (_callBack != nil)
    {
        //按钮传值给cell
        _callBack(sender.buttonModel.indexPath,sender.tag);
    }
}

- (void)setButtonModel:(ButtonModel *)buttonModel
{
    _buttonModel = buttonModel;
    [self setTitle:_buttonModel.text forState: UIControlStateNormal];
}



@end
