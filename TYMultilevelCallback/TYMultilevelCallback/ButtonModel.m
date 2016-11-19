//
//  ButtonModel.m
//  button调用cell的tableView的controller(block和代理)
//
//  Created by 陈天佑 on 16/10/24.
//  Copyright © 2016年 陈天佑. All rights reserved.
//

#import "ButtonModel.h"

@implementation ButtonModel


+ (instancetype)ButtonModelWithDict:(NSDictionary *)dict
{
    ButtonModel * buttonModel = [ButtonModel new];
    [buttonModel setValuesForKeysWithDictionary:dict];
    return buttonModel;
}


@end
