//
//  Invoker.h
//  CommandPatternDemo
//
//  Created by 范胜利 on 15/12/15.
//  Copyright © 2015年 范胜利. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@interface Invoker : NSObject

+ (instancetype)shareInstance;

/**
 *  添加指令操作
 *
 *  @param command 指令
 */
- (void)addAndExcute:(id <CommandProtocol>)command;

@end
