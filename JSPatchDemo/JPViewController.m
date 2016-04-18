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
//#import "HYQAlertView.h"

@interface JPViewController ()

@end

@implementation JPViewController

#pragma mark - LifeCircle

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 50)];
    [btn setTitle:@"Push JPTableViewController" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(handleBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:btn];
}

- (void)handleBtn:(id)sender
{
//    HYQAlertView *alertView = [[HYQAlertView alloc] initWithTitle:@"测试------" message:nil delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
//    [alertView handlerClickedButton:^(NSInteger btnIndex) {
//        NSLog(@"Did Click Index %@",@(btnIndex));
//    }];
//    [alertView show];
    
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
