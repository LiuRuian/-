//
//  ViewController.m
//  Block封装网络请求
//
//  Created by  baohukeji-5 on 15/1/3.
//  Copyright (c) 2015年 ruian. All rights reserved.
//

#import "ViewController.h"
#import "LoginHTTPRequest.h"
@interface ViewController ()
- (IBAction)loginAction:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginAction:(UIButton *)sender {
    
    LoginHTTPRequest *login = [[LoginHTTPRequest alloc] init];
    login.username = @"003";
    login.password = @"003";
    [login startRequestWithBlock:^(UserInfomation *userInfo, NSError *error) {
        
        if (error) {
            [self displayAlert:[error.userInfo objectForKey:@"msg"]];
        }
        
        NSLog(@"%@",userInfo);
        
    }];
}

- (void)displayAlert:(NSString *)str
{
    NSLog(@"str = %@",str);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:str delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil,nil ];
    [alert show];
}


@end
