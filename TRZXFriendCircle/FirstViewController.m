//
//  FirstViewController.m
//  TRZXFriendCircle
//
//  Created by 张江威 on 2017/3/2.
//  Copyright © 2017年 张江威. All rights reserved.
//

#import "FirstViewController.h"
#import "TRZXFriendLineTableViewController.h"
#import "PhotoTimeLineTableViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton * loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    loginButton.frame = CGRectMake(100, 100, 100, 50);
    loginButton.backgroundColor = [UIColor redColor];
    loginButton.tag = 1;
    [loginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    
    UIButton * login1Button = [UIButton buttonWithType:UIButtonTypeSystem];
    login1Button.frame = CGRectMake(100, 300, 100, 50);
    login1Button.backgroundColor = [UIColor redColor];
    login1Button.tag = 2;
    [login1Button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:login1Button];
    
}
-(void)btnClick:(UIButton *)sender{
    if (sender.tag == 1) {
        TRZXFriendLineTableViewController *friendViewController = [[TRZXFriendLineTableViewController alloc] init];
        friendViewController.selfIconStr = @"首页头像";
        friendViewController.selfNameStr = @"张江威";
        friendViewController.selfIDStr = @"ed48b2ecda7f485e9c3353ecfb53f3f5";
        [self.navigationController pushViewController:friendViewController animated:true];
    }else{
        PhotoTimeLineTableViewController *friendViewController = [[PhotoTimeLineTableViewController alloc] init];
//        friendViewController.selfIconStr = @"首页头像";
//        friendViewController.selfNameStr = @"张江威";
        friendViewController.otherIdStr = @"ed48b2ecda7f485e9c3353ecfb53f3f5";
        [self.navigationController pushViewController:friendViewController animated:true];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
