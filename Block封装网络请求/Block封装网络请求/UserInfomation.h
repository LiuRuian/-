//
//  UserInfomation.h
//  Block封装网络请求
//
//  Created by  baohukeji-5 on 15/1/3.
//  Copyright (c) 2015年 ruian. All rights reserved.
//

#import "JSONModel.h"

@protocol UserInfomation_babyInfo
@end
@interface UserInfomation_babyInfo : JSONModel

@property (nonatomic, copy) NSString<Optional> *babyId;
@property (nonatomic, copy) NSString<Optional> *babyName;
@property (nonatomic, copy) NSString<Optional> *birthday;
@property (nonatomic, copy) NSString<Optional> *sex;
@property (nonatomic, copy) NSString<Optional> *photo;

@end



@interface UserInfomation : JSONModel

@property (nonatomic, assign) int code;
@property (nonatomic, copy) NSString<Optional> *msg;
@property (nonatomic, copy) NSString<Optional> *token;
@property (nonatomic, strong) NSArray<Optional,UserInfomation_babyInfo> *babyInfo;


@end
