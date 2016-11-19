//
//  ButtonModel.h
//  button调用cell的tableView的controller(block和代理)
//
//  Created by 陈天佑 on 16/10/24.
//  Copyright © 2016年 陈天佑. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ButtonModel : NSObject

@property(nonatomic,strong)NSIndexPath * indexPath;
@property(nonatomic,copy)NSString * text;

+ (instancetype)ButtonModelWithDict:(NSDictionary *)dict;
@end
