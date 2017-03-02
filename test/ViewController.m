//
//  ViewController.m
//  test
//
//  Created by 刘哲 on 2017/3/1.
//  Copyright © 2017年 刘哲. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CAGradientLayer *gradientLayer= [CAGradientLayer layer];
    gradientLayer.frame = self.view.bounds;
    [self.view.layer addSublayer:gradientLayer];
    
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,(__bridge id)[UIColor yellowColor].CGColor,(__bridge id)[UIColor blueColor].CGColor];
    
    gradientLayer.startPoint = CGPointMake(0,0);
    gradientLayer.endPoint = CGPointMake(1, 1);
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"startPoint"];
    animation.duration = 2;
    animation.fromValue = [NSValue valueWithCGPoint:CGPointMake(0, 0)];
    animation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 0)];
    animation.autoreverses = YES;
    animation.repeatCount = INT64_MAX;
    [gradientLayer addAnimation:animation forKey:@"startPoint"];
    
    [gradientLayer removeAnimationForKey:@"startPoint"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
