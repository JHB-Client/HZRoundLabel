//
//  ViewController.m
//  HZRoundLabelDemo
//
//  Created by 季怀斌 on 2018/3/29.
//  Copyright © 2018年 huazhuo. All rights reserved.
//

#import "ViewController.h"
#import "HZRoundLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HZRoundLabel *roundLabel = [[HZRoundLabel alloc] initWithFrame:CGRectMake(10, 100, 300, 30)];
    roundLabel.contentStr = @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈";
    roundLabel.cornerRadius = 15;
    roundLabel.contentX = 20;
    roundLabel.isJustContent = true;
    [self.view addSubview:roundLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
