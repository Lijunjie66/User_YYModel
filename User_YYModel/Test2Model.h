//
//  Test2Model.h
//  User_YYModel
//
//  Created by Geraint on 2018/10/31.
//  Copyright © 2018 kilolumen. All rights reserved.
//

#import "Base2Model.h"

NS_ASSUME_NONNULL_BEGIN

// 创建 TestModel （就是数据model），将TestModel的父类设置成BaseModel
@interface Test2Model : Base2Model



//在用到TestModel的地方（Controller里）直接导入@import "TestModel"就可以了：
//TestModel *model = [TestModel modelWithDictionary:dict];


@end

NS_ASSUME_NONNULL_END
