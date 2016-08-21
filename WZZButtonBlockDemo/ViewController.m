//
//  ViewController.m
//  WZZButtonBlockDemo
//
//  Created by 王召洲 on 16/8/20.
//  Copyright © 2016年 wyzc. All rights reserved.
//

#import "ViewController.h"

#import "WZZButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WZZButton *btn = [WZZButton buttonWithType:UIButtonTypeSystem];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(0, 0, 100, 50);
    btn.center = self.view.center;
    
    __weak typeof(self) weakself = self;
    [btn addEvent:UIControlEventTouchUpInside forAction:^(UIButton *button) {
        weakself.view.backgroundColor = [UIColor colorWithRed: arc4random_uniform(256)/255.0  green:arc4random_uniform(256)/255.0 blue: arc4random_uniform(256)/255.0 alpha:1 ];
        button.transform = CGAffineTransformRotate(button.transform, M_PI_4);
    }];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
