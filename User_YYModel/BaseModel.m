//
//  BaseModel.m
//  User_YYModel
//
//  Created by Geraint on 2018/10/31.
//  Copyright © 2018 kilolumen. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

+ (NSArray *)arrayModelWithArray:(NSArray <NSDictionary *> *)aArray {
    return [NSArray yy_modelArrayWithClass:[self class] json:aArray];
}

+ (instancetype)modelWithJson:(NSString *)ajson {
    id model = [[self alloc] init];
    [model yy_modelSetWithJSON:ajson];
    return model;
}

+(instancetype)modelWithDictionary:(NSDictionary *)dictionary {
    id model = [[self alloc] init];
    [model yy_modelSetWithDictionary:dictionary];
    return model;
}

- (void)setValueAndKeysWithDictionary:(NSDictionary *)dictionary {
    [self yy_modelSetWithDictionary:dictionary];
}

- (NSDictionary *)toDictionary {
    id jsonObj = [self yy_modelToJSONObject];
    if ([jsonObj isKindOfClass:[NSDictionary class]]) {
        return jsonObj;
    }
    return nil;
}

- (NSString *)toJsonString {
    return [self yy_modelToJSONString];
}

- (NSData *)toJsonData {
    return [self yy_modelToJSONData];
}

// 不用在BaseModel.h文件声明：（下面）

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [self yy_modelEncodeWithCoder:aCoder];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    return [self yy_modelInitWithCoder:aDecoder];
}

- (id)copyWithZone:(NSZone *)zone {
    return [self yy_modelCopy];
}

- (NSUInteger)hash {
    return [self yy_modelHash];
}

- (BOOL)isEqual:(id)object {
    return [self yy_modelIsEqual:object];
}

- (NSString *)description {
    return [self yy_modelDescription];
}



- (NSString *)cleanString:(NSString *)str {
    if (str == nil) {
        return @"";
    }
    NSMutableString *cleanString = [NSMutableString stringWithString:str];
    
    //此方法在接收器字符串的指定范围内用替换字符串替换所有出现的目标字符串，并返回替换次数。 NSBackwardsSearch意味着搜索从范围的末尾完成（结果可能不同）; NSAnchoredSearch意味着只会替换锚定（但可能是多个）实例。 NSLiteralSearch和NSCaseInsensitiveSearch也适用。 NSNumericSearch被忽略。 使用NSMakeRange（0，[receiver length]）处理整个字符串。 如果指定了NSRegularExpressionSearch，则将替换视为模板，如相应的NSRegularExpression方法，除NSCaseInsensitiveSearch和NSAnchoredSearch外，不能应用其他选项。
    [cleanString replaceOccurrencesOfString:@"\n" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [cleanString length])];
    [cleanString replaceOccurrencesOfString:@"\r" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [cleanString length])];
    
    return cleanString;
}

@end
