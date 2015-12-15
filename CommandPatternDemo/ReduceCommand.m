//
//  ReduceCommand.m
//  CommandPatternDemo
//
//  Created by 范胜利 on 15/12/15.
//  Copyright © 2015年 范胜利. All rights reserved.
//

#import "ReduceCommand.h"

@interface ReduceCommand ()

@property (nonatomic, weak) Receiver *receiver;
@property (nonatomic)       NSInteger   paramter;

@end

@implementation ReduceCommand

- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(NSInteger)paramter{
    self = [super init];
    if (self) {
        self.receiver = receiver;
        self.paramter = paramter;
    }
    return self;
}

- (void)excute{
    [self.receiver reduceCount:self.paramter];
}

@end
