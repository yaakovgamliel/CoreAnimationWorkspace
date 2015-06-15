//
//  ViewController.m
//  CoreAnimation
//
//  Created by Yaakov Gamliel on 6/15/15.
//  Copyright © 2015 G2Think. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.view.bounds;
    [self.view.layer addSublayer:gradientLayer];
    
    // A Colombian flag gradient
    
    gradientLayer.colors = @[(__bridge id) [UIColor yellowColor].CGColor, (__bridge id) [UIColor blueColor].CGColor,(__bridge id) [UIColor redColor].CGColor];
    
    gradientLayer.locations = @[@0.5, @0.75, @0.95];
    
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(0, 1);

}


@end
