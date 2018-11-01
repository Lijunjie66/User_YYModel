//
//  TestModel.m
//  User_YYModel
//
//  Created by Geraint on 2018/10/31.
//  Copyright © 2018 kilolumen. All rights reserved.
//

#import "TestModel.h"

static NSDate *DateFromString(NSString *string) {
    static NSDateFormatter *formatter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        formatter = [[NSDateFormatter alloc] init];
        formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        formatter.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
        formatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss.SSSZ";
    });
    return [formatter dateFromString:string];
}


@implementation TestModel

/*
// 【没有 id 等特殊关键字时】通过Key来设值
- (void)setValue:(id)value forKey:(NSString *)key {
    if ([key isEqualToString:@"id"]) {
        [self setValue:value forKey:@"eventId"];
    }
}
*/

// [详情]一个个赋值给属性：先找key（name），找到后再赋值value（_name）
// 功能:使用一个字符串标示符给一个对象的属性赋值.它支持普通对象和集合对象
- (void)setValue:(id)value forKey:(NSString *)key {
if ([value isKindOfClass:[NSNull class]]) {
    value = nil;
} else if ([key isEqualToString:@"publishDate"]) {
    value = DateFromString(value);
    
}
    
    [super setValue:value forKey:key];
}

// 不用在上面写时间格式，直接使用YYModel ****************
- (NSData *)toJsonData {
    return [self yy_modelToJSONData];
}


// 如果Key不存在，且没有KVC无法搜索到任何和Key有关的字段或者属性，则会调用这个方法，默认是抛出异常(也是通过Key来设值)
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if ([key isEqualToString:@"id"]) {
        [self setValue:value forKey:@"eventId"];
    }else {
        [super setValue:value forUndefinedKey:key];
    }
    
}
// 在(调用这个 TestModel 的 controller 控制器里的)网络请求里写：
//TestModel *model = [TestModel modelWithDictionary:dic];


@end
