//
//  IncreaseCommand.h
//  CommandPatternDemo
//
//  Created by 范胜利 on 15/12/15.
//  Copyright © 2015年 范胜利. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@interface IncreaseCommand : NSObject<CommandProtocol>

/**
 *  与接收器绑定并设置参数
 *
 *  @param receiver 接收器
 *  @param paramter 参数
 */
- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(NSInteger)paramter;

@end
