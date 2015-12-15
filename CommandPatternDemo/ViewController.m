//
//  ViewController.m
//  CommandPatternDemo
//
//  Created by 范胜利 on 15/12/15.
//  Copyright © 2015年 范胜利. All rights reserved.
//

#import "ViewController.h"
#import "Receiver.h"
#import "IncreaseCommand.h"
#import "ReduceCommand.h"
#import "Invoker.h"

typedef enum : NSUInteger {
    
    kAddButtonTag = 10, // 增加按钮枚举值
    kDelButtonTag,      // 减少按钮枚举值
    
} ViewControllerEnumValue;

@interface ViewController ()

@property (nonatomic,strong)UITextField *numberField;
@property (nonatomic, strong) UIButton *addButton;
@property (nonatomic, strong) UIButton *delButton;

@property (nonatomic, strong) Receiver *receiver;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"添加数量";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.receiver            = [[Receiver alloc] init];
    
    // 初始化按钮
    [self initView];
}

- (void)initView{
    
    self.delButton     = [[UIButton alloc] initWithFrame:CGRectMake(170, 200, 30, 30)];
    
    self.delButton.tag               = kDelButtonTag;
    self.delButton.layer.borderWidth = 1.f;
    
    [self.delButton setTitle:@"-"
                    forState:UIControlStateNormal];
    
    [self.delButton setTitleColor:[UIColor redColor]
                         forState:UIControlStateNormal];
    
    [self.delButton addTarget:self
                       action:@selector(buttonsEvent:)
             forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.delButton];
    
    self.numberField = [[UITextField alloc]initWithFrame:CGRectMake(200, 200, 50, 30)];
    self.numberField.textAlignment = NSTextAlignmentCenter;
    self.numberField.borderStyle = UITextBorderStyleRoundedRect;
    self.numberField.text = @"0";
    [self.view addSubview:self.numberField];
    
    self.receiver.clientField = self.numberField;
    
    // addButton
    self.addButton     = [[UIButton alloc] initWithFrame:CGRectMake(200+50, 200, 30, 30)];
    
    self.addButton.tag               = kAddButtonTag;
    self.addButton.layer.borderWidth = 1.f;
    
    [self.addButton setTitle:@"+"
                    forState:UIControlStateNormal];
    
    [self.addButton setTitleColor:[UIColor redColor]
                         forState:UIControlStateNormal];
    
    [self.addButton addTarget:self
                       action:@selector(buttonsEvent:)
             forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.addButton];
    
}

- (void)buttonsEvent:(UIButton *)button {
    
    if (button.tag == kAddButtonTag) {
        
        NSLog(@"增加操作");
        IncreaseCommand *comand = [[IncreaseCommand alloc]initWithReceiver:self.receiver paramter:1];
        [[Invoker shareInstance]addAndExcute:comand];
        
    } else{
        
        NSLog(@"减少操作");
        ReduceCommand *command = [[ReduceCommand alloc]initWithReceiver:self.receiver paramter:1];
        [[Invoker shareInstance]addAndExcute:command];
        
    }
}

@end
