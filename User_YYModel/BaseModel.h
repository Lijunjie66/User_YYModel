//
//  BaseModel.h
//  User_YYModel
//
//  Created by Geraint on 2018/10/31.
//  Copyright © 2018 kilolumen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYModel.h" //  -->（需要遵守YYModel协议时）需要导入协议的头文件

NS_ASSUME_NONNULL_BEGIN
/*
 *   简版：
#import "YYModel.h"  //  -->需要导入协议的头文件
@interface BaseModel : NSObject<YYMdoel>
@end

@interface TestModel : BaseModel
@property (nonatomic, copy) NSString *string;
@end
*/


/* *
 * 第一种 基类
 *
 */


// 写一个基类，然后实现YYModel协议
@interface BaseModel : NSObject<YYModel>

+ (NSArray *)arrayModelWithArray:(NSArray <NSDictionary *> *)aArray;

+ (instancetype)modelWithJson:(NSString *)ajson;

+(instancetype)modelWithDictionary:(NSDictionary *)dictionary;

- (void)setValueAndKeysWithDictionary:(NSDictionary *)dictionary;

- (NSDictionary *)toDictionary;

- (NSString *)toJsonString;

- (NSData *)toJsonData;

@end

NS_ASSUME_NONNULL_END
