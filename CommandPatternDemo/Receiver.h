//
//  Receiver.h
//  CommandPatternDemo
//
//  Created by 范胜利 on 15/12/15.
//  Copyright © 2015年 范胜利. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Receiver : NSObject
{
    NSInteger _count;
}

/**
 *  被服务的对象
 */
@property (nonatomic,weak)UITextField *clientField;

/**
 *  增加
 *
 *  @param count 操作系数
 */
- (void)increaseCount:(NSInteger)count;

/**
 *  减少
 *
 *  @param count 操作系数
 */
- (void)reduceCount:(NSInteger)count;
@end
