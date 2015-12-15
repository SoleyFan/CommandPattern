//
//  Invoker.m
//  CommandPatternDemo
//
//  Created by 范胜利 on 15/12/15.
//  Copyright © 2015年 范胜利. All rights reserved.
//

#import "Invoker.h"

@interface Invoker ()

@property (nonatomic, strong) NSMutableArray  *queue;

@end

@implementation Invoker

+ (instancetype)shareInstance {
    
    static Invoker *shareInstanceValue = nil;
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        
        shareInstanceValue       = [[Invoker alloc] init];
        shareInstanceValue.queue = [NSMutableArray array];
    });
    
    return shareInstanceValue;
}

- (void)addAndExcute:(id <CommandProtocol>)command {
    
    NSParameterAssert(command);
    
    [self.queue addObject:command];
    [command excute];
}

@end
