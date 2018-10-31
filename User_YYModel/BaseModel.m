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

//

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

@end
