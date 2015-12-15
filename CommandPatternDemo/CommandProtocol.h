//
//  CommandProtocol.h
//  CommandPatternDemo
//
//  Created by 范胜利 on 15/12/15.
//  Copyright © 2015年 范胜利. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"

@protocol CommandProtocol <NSObject>

@required

/**
 *  命令的执行
 */
- (void)excute;

@end
