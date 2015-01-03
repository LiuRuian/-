//
//  LoginHTTPRequest.h
//  Block封装网络请求
//
//  Created by  baohukeji-5 on 15/1/3.
//  Copyright (c) 2015年 ruian. All rights reserved.
//

#import "HTTPRequestBase.h"

@class UserInfomation;

typedef  void(^completeBlock)(UserInfomation *userInfo,NSError *error);

@interface LoginHTTPRequest : HTTPRequestBase



@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *password;

- (void)startRequestWithBlock:(completeBlock)block;

@end
