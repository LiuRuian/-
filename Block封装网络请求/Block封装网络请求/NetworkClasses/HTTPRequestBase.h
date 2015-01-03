//
//  HTTPRequestBase.h
//  Block封装网络请求
//
//  Created by  baohukeji-5 on 15/1/3.
//  Copyright (c) 2015年 ruian. All rights reserved.
//

#import "JSONModel.h"

@interface HTTPRequestBase : JSONModel 
@property (nonatomic, copy) NSString<Ignore> *requestURL;


- (void)startRequest;
- (void)stopRequest;

- (void)dealWithResponseJson:(NSDictionary *)aJson andError:(NSError *)error;
@end
