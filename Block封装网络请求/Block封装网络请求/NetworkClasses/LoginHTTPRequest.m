//
//  LoginHTTPRequest.m
//  Block封装网络请求
//
//  Created by  baohukeji-5 on 15/1/3.
//  Copyright (c) 2015年 ruian. All rights reserved.
//

#import "LoginHTTPRequest.h"
#import "UserInfomation.h"
#define kLoginURL @"http://123.57.38.59:7001/baohudev/servlet/login"


@implementation LoginHTTPRequest{

    completeBlock _completion;

}


- (id)init
{
    if (self=[super init]) {
        
        self.requestURL = kLoginURL;
    }
    
    return self;
}

- (void)startRequestWithBlock:(completeBlock)block{

    _completion = block;
    [self startRequest];

}

- (void)dealWithResponseJson:(NSDictionary *)aJson andError:(NSError *)error
{
    if (error) {
        _completion(nil,error);
        return;
    }
    
    UserInfomation *info = [[UserInfomation alloc] initWithDictionary:aJson error:&error];
    
    if (error) {
        _completion(nil,error);
        return;
    }
    
    if (info.code == 1101  ) {
        error = [NSError errorWithDomain:@"登录" code:1101 userInfo:@{@"msg":@"用户名错误"}];
        _completion(info, error);
    }
    if (info.code == 1102  ) {
        error = [NSError errorWithDomain:@"登录" code:1103 userInfo:@{@"msg":@"用户名不存在"}];
        _completion(info, error);
    }
    
    _completion(info,nil);
}


@end
