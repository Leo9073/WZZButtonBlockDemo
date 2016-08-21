//
//  WZZButton.m
//  WZZButtonBlockDemo
//
//  Created by 王召洲 on 16/8/20.
//  Copyright © 2016年 wyzc. All rights reserved.
//

#import "WZZButton.h"

@implementation WZZButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)addEvent:(UIControlEvents)event forAction:(action)customAction {
    _myAction = customAction;
    [self addTarget:self action:@selector(eventHandler:) forControlEvents:event];
}
-(void)eventHandler:(UIButton *)sender {
    if (_myAction) {
        _myAction(sender);
    }
}
@end
