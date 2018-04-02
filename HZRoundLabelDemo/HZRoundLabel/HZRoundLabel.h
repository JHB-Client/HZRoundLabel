//
//  HZRoundLabel.h
//  HZRoundLabelDemo
//
//  Created by 季怀斌 on 2018/3/29.
//  Copyright © 2018年 huazhuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HZRoundLabel : UIView
@property (nonatomic, copy) NSString *contentStr;
@property (nonatomic, copy) NSMutableAttributedString *contentAttrStr;
@property (nonatomic, assign) CGFloat contentX;
@property (nonatomic, assign) CGFloat contentY;
@property (nonatomic, strong) UIFont *contentFont;
@property (nonatomic, strong) UIColor *contentColor;
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign) BOOL isJustContent;
@property (nonatomic, assign) CGFloat contentHieght;
//
@property (nonatomic, copy) void(^contentHeightBlock)(CGFloat height);
@property (nonatomic, copy) void(^numberOfLinesBlock)(NSUInteger numberOfLines);
@end
