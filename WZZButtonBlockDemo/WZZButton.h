//
//  WZZButton.h
//  WZZButtonBlockDemo
//
//  Created by 王召洲 on 16/8/20.
//  Copyright © 2016年 wyzc. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^action)(UIButton * button);

@interface WZZButton : UIButton
@property (copy,nonatomic) action myAction;
-(void)addEvent:(UIControlEvents)event forAction:(action)customAction;
@end
