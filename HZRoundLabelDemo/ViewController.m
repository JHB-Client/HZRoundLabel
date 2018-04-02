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
    
//    //1.
//    [self setNormalStrDemo];
//    //2.
    [self setAttrStrDemo];
}

- (void)setNormalStrDemo {
    HZRoundLabel *roundLabel = [[HZRoundLabel alloc] initWithFrame:CGRectMake(10, 100, 300, 30)];
    roundLabel.contentStr = @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈";
    roundLabel.cornerRadius = 15;
    roundLabel.contentX = 20;
    roundLabel.isJustContent = true;
    [self.view addSubview:roundLabel];
}

- (void)setAttrStrDemo {
    //
    NSString *str1 = @"新闻标题title1";
    NSString *str2 = @"新闻内容1新闻内容1新闻内容1新闻内容1新闻内容1新闻内容1新闻内容1新闻内容1新闻内容1新闻内容1新闻内容1新闻内容1新闻内容1新";
    
    NSString *str3 = @"新闻标题title2";
    NSString *str4 = @"新闻内容2新闻内容2新闻内容2新闻内容2";
    
    
    NSString *str = [NSString stringWithFormat:@"%@%@%@%@", str1, str2, str3, str4];
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:str];
        [attrStr addAttribute:NSFontAttributeName
                        value:[UIFont systemFontOfSize:30.0f]
                        range:NSMakeRange(0, 3)];
        [attrStr addAttribute:NSForegroundColorAttributeName
                        value:[UIColor redColor]
                        range:NSMakeRange(17, 7)];
        [attrStr addAttribute:NSUnderlineStyleAttributeName
                        value:[NSNumber numberWithInteger:NSUnderlineStyleSingle]
                        range:NSMakeRange(8, 7)];
    
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    //    //行间距
    //    paragraph.lineSpacing = 10;
    //    //段落间距
    //    paragraph.paragraphSpacing = 20;
    //    //对齐方式
    paragraph.alignment = NSTextAlignmentLeft;
    //指定段落开始的缩进像素
    paragraph.firstLineHeadIndent = 30 * 2;
    //调整全部文字的缩进像素
    //    paragraph.headIndent = 10;
    //
    
    
    //
    [attrStr addAttribute:NSParagraphStyleAttributeName
                    value:paragraph
                    range:[str rangeOfString:str2]];
    [attrStr addAttribute:NSParagraphStyleAttributeName
                    value:paragraph
                    range:[str rangeOfString:str4]];
    
    //    [attrStr addAttribute:NSParagraphStyleAttributeName
    //                    value:paragraph
    //                    range:NSMakeRange(16, [str length] - 16)];
    
    
    //    NSString *urlStr = @"www.南瓜瓜.com";
    //    NSURL *url = [NSURL URLWithString:urlStr];
    //
    //    [attrStr addAttribute:NSLinkAttributeName
    //                    value:url
    //                    range:NSMakeRange(42, 7)];
    
    HZRoundLabel *label = [[HZRoundLabel alloc] initWithFrame:CGRectMake(5, 100, 300, 0)];
    //
    //设置label的富文本
    label.contentAttrStr = attrStr;
//    label.contentFont = [UIFont systemFontOfSize:20];
    [self.view addSubview:label];
    
    //
    label.contentHeightBlock = ^(CGFloat height) {
        //        NSLog(@"--d-------%lf", height);
        
        UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(5, height + 100 + 10, 300, 50)];
        bgView.backgroundColor = [UIColor greenColor];
        [self.view addSubview:bgView];
    };
    
    label.numberOfLinesBlock = ^(NSUInteger numberOfLines) {
        NSLog(@"--d-------%lu", numberOfLines);
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
