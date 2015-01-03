//
//  HTTPRequestBase.m
//  Block封装网络请求
//
//  Created by  baohukeji-5 on 15/1/3.
//  Copyright (c) 2015年 ruian. All rights reserved.
//

#import "HTTPRequestBase.h"
#import "AFNetworking.h"
@implementation HTTPRequestBase


- (void)startRequest
{
    NSDictionary * parameter= [self getRequestParameter];
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];

        [manager GET:self.requestURL parameters:parameter success:^(AFHTTPRequestOperation *operation, id responseObject) {

            NSLog(@"responseObject =%@--- %@",responseObject,[responseObject class]);
            
            [self dealWithResponseJson:responseObject andError:nil];
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"error = %@",error);
            
            [self dealWithResponseJson:nil  andError:error];
        }];

}

- (void)stopRequest
{
    [[AFHTTPRequestOperationManager manager].operationQueue cancelAllOperations];
}


- (void)dealWithResponseJson:(NSString *)aJson andError:(NSError *)error
{
    
}


- (NSDictionary *)getRequestParameter
{
    return [self toDictionary];
}

@end
