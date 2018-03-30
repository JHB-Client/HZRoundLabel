//
//  HZRoundLabel.m
//  HZRoundLabelDemo
//
//  Created by 季怀斌 on 2018/3/29.
//  Copyright © 2018年 huazhuo. All rights reserved.
//

#import "HZRoundLabel.h"
#import "UIView+Extension.h"
#define kP(px) (CGFloat)(px * 0.5 * CGRectGetWidth([[UIScreen mainScreen] bounds]) / 375)
NS_ASSUME_NONNULL_BEGIN
@interface HZRoundLabel ()
@property (nonatomic, weak) UILabel *contentLabel;
@end
NS_ASSUME_NONNULL_END
@implementation HZRoundLabel
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpSubViews];
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)setUpSubViews {
    UILabel *contentLabel = [UILabel new];
    [self addSubview:contentLabel];
    self.contentLabel = contentLabel;
}


- (void)layoutSubviews {
    //
    self.contentLabel.text = self.contentStr;
    self.contentLabel.font = self.contentFont ? : [UIFont systemFontOfSize:kP(33)];
    self.contentLabel.textColor = self.contentColor ? : [UIColor whiteColor];

    //
    self.contentLabel.y = self.contentY ? : kP(10);
    self.contentLabel.x = self.contentX ? : kP(10);
    self.contentLabel.width = self.width - 2 * self.contentLabel.x;

    //
    if (self.isJustContent) {
        self.contentLabel.numberOfLines = 0;
        [self.contentLabel sizeToFit];
        // 适应宽度
        self.width = self.contentLabel.width + 2 * self.contentLabel.x;
        // 适应高度
        self.height = self.contentLabel.height + 2 * self.contentLabel.y;
    } else {
        self.contentLabel.numberOfLines = 1;
        self.contentLabel.y = self.contentY ? : kP(0);
        self.contentLabel.height = self.height - 2 * self.contentLabel.y;
    }
    
    //
    self.layer.cornerRadius = self.cornerRadius ? : kP(10);
    
    self.clipsToBounds = true;
    
}

- (void)setContentStr:(NSString *)contentStr {
    _contentStr = contentStr;
}


- (void)setContentFont:(UIFont *)contentFont {
    _contentFont = contentFont;
    [self setNeedsLayout];
}

- (void)setContentColor:(UIColor *)contentColor {
    _contentColor = contentColor;
    [self setNeedsLayout];
}

- (void)setContentX:(CGFloat)contentX {
    _contentX = contentX;
    [self setNeedsLayout];
}

-(void)setContentY:(CGFloat)contentY {
    _contentY = contentY;
    [self setNeedsLayout];
}

//
- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    [self setNeedsLayout];
}

//
- (void)setIsJustContent:(BOOL)isJustContent {
    _isJustContent = isJustContent;
    [self setNeedsLayout];
}
@end
