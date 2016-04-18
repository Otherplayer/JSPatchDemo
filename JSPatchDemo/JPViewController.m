//
//   /\_/\
//   \_ _/
//    / \ not
//    \_/
//
//  Created by __无邪_ on 4/18/16.
//  Copyright © 2016 fqah. All rights reserved.
//

#import "JPViewController.h"
#import "HYQAlertView.h"

@interface JPViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *datas;
@end

@implementation JPViewController

#pragma mark - LifeCircle

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 50)];
//    [btn setTitle:@"Push JPTableViewController" forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(handleBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [btn setBackgroundColor:[UIColor grayColor]];
//    [self.view addSubview:btn];
    
    self.datas = [[NSMutableArray alloc] init];
    
    [self.view addSubview:self.tableView];
    
    [self getDatas];
}

- (void)handleBtn:(id)sender
{
//    HYQAlertView *alertView = [[HYQAlertView alloc] initWithTitle:@"测试------" message:nil delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
//    [alertView handlerClickedButton:^(NSInteger btnIndex) {
//        NSLog(@"Did Click Index %@",@(btnIndex));
//    }];
//    [alertView show];
//    
}

- (void)getDatas{
    for (int i = 0; i < 10; i++) {
        [self.datas addObject:@""];
    }
    [self.tableView reloadData];
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [cell setSelected:NO];
    
    
//    [self handleBtn:nil];
}

#pragma mark - UITableViewDataSource
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 45;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datas.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifierCell = @"identifier2cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifierCell];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifierCell];
    }
    
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

#pragma mark - configure

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    [cell.textLabel setText:[NSString stringWithFormat:@"%@",@(indexPath.row)]];
}


- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [[UIView alloc] init];
    }
    return _tableView;
}


//- (void)initModel{
//    // 初始化Model
//    
//}
//- (void)initView{
//    // 初始化View
//    
//}
//- (void)initData{
//    // 初始化Data
//    
//}
//
//#pragma mark - Network Methods
//
//#pragma mark - Action
//
//#pragma mark - Delegate
//
//#pragma mark - Private
//
//#pragma mark - Configure
//
//
//
//
//
//
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//

@end
