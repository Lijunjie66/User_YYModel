//
//  Base2Model.h
//  User_YYModel
//
//  Created by Geraint on 2018/10/31.
//  Copyright © 2018 kilolumen. All rights reserved.
//

#import <Foundation/Foundation.h>

/* *
 * 第二种 基类
 *
 *  可以不用实现协议，
 *  基类可以就写个空类就行，不用实现什么方法
 *  在基类中导入YYModel的头文件
 *  不然每个用到model的地方，除了要导入要用的model还要导入YYModel
 */
#import <YYModel/YYModel.h>

NS_ASSUME_NONNULL_BEGIN

// 创建基类  Base2Model
@interface Base2Model : NSObject

@end

NS_ASSUME_NONNULL_END
