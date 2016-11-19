//
//  TableViewController.m
//  button调用cell的tableView的controller(block和代理)
//
//  Created by 陈天佑 on 16/10/24.
//  Copyright © 2016年 陈天佑. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "ButtonsView.h"

static NSString * identifier = @"Cell";

@interface TableViewController () <ButtonsViewDelegate>

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:identifier];
}

//实现ButtonsView代理方法，弹出提示框
- (void)buttonDidClick:(NSIndexPath *)indexPath andTag:(NSInteger)tag
{
    NSString * message = [NSString stringWithFormat:@"%zd组，%zd行,第%zd个",indexPath.section,indexPath.row,tag];
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:@"按钮" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"知道了" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"%zd组，%zd行,第%zd个",indexPath.section,indexPath.row,tag);
    }];
    [alertVc addAction:action];
    [self presentViewController:alertVc animated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 10;
}
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell  * cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    NSString * text = [NSString stringWithFormat:@"点我%zd%zd",indexPath.section,indexPath.row];
    NSIndexPath * indexP = indexPath;
    NSDictionary * dict = [NSDictionary dictionaryWithObjectsAndKeys:text,@"text",indexP,@"indexPath",nil];
    
    cell.buttonModel = [ButtonModel ButtonModelWithDict:dict];
    cell.buttonsView.delegate = self;
    return cell;
}

#pragma mark - Table view delegate
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"第%zd组",section];
}

@end
