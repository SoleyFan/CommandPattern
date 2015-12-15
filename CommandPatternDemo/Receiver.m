//
//  Receiver.m
//  CommandPatternDemo
//
//  Created by 范胜利 on 15/12/15.
//  Copyright © 2015年 范胜利. All rights reserved.
//

#import "Receiver.h"

@implementation Receiver

- (void)setClientField:(UITextField *)clientField{
    
    _clientField = clientField;
    _clientField.text = [NSString stringWithFormat:@"%ld",_count];
    
}

- (void)increaseCount:(NSInteger)count{
    _count+=count;
    _count = MAX(0, _count);
    _clientField.text = [NSString stringWithFormat:@"%ld",_count];
}

- (void)reduceCount:(NSInteger)count{
    
    if (_count>0) {
        _count-=count;
        _count = MIN(100, _count);
    }else{
        _count = 0;
    }
    _clientField.text = [NSString stringWithFormat:@"%ld",_count];
}

@end
