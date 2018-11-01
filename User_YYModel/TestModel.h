//
//  TestModel.h
//  User_YYModel
//
//  Created by Geraint on 2018/10/31.
//  Copyright © 2018 kilolumen. All rights reserved.
//

#import "BaseModel.h"

NS_ASSUME_NONNULL_BEGIN
/*
 *  接口数据如下：
 *
data:
    {
        core_date:......
        core_id:........,
        core_name:......,
        core_field:.......,
        
    other_ArrayModel:   {   other_name:...,
                            other_field:...
                        },
                        {},
                        {},
                        {},
    },
    {...},
    {...},
*/

@interface TestModel : BaseModel

// 属性
@property (nonatomic,copy) NSDate *core_date;   // 时间
@property (nonatomic, copy) NSString *core_id;
@property (nonatomic, copy) NSString *core_name;
@property (nonatomic, copy) NSString *core_field;

@property (nonatomic, copy) NSArray *other_ArrayModel; // 字典里面有数组

@end

@interface other_ArrayModel : TestModel

@property (nonatomic, copy) NSString *other_name;
@property (nonatomic, copy) NSString *other_field;

@end

NS_ASSUME_NONNULL_END
