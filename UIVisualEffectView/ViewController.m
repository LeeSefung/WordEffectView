//
//  ViewController.m
//  UIVisualEffectView
//
//  Created by rimi on 15/7/8.
//  Copyright (c) 2015年 LeeSefung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    //初始化scrollView
//    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
//    [self.view addSubview:self.scrollView];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image.jpg"]];
    imageView.frame = self.view.bounds;
    [self.view addSubview:imageView];
//    self.scrollView.contentSize = imageView.image.size;
    //初始化effectView
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
    effectView.frame = CGRectMake(0, 220, 375, 200);
    [self.view addSubview:effectView];
    
    //在effectView添加文字
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 75, 375, 60)];
    label.text = @"LeeSefung";
    label.font = [UIFont systemFontOfSize:50];
    label.textAlignment = NSTextAlignmentCenter;
    [effectView addSubview:label];
    
    //添加effectView的子subEffectView;
    UIVisualEffectView *subEffectView = [[UIVisualEffectView alloc]
                                         initWithEffect:[UIVibrancyEffect effectForBlurEffect:(UIBlurEffect *)effectView.effect]];
    subEffectView.frame = effectView.bounds;
    //将subEffectView添加到effectView
    [effectView addSubview:subEffectView];
    //添加显示的view来达到特殊的字体效果
    [subEffectView.contentView addSubview:label];
}


@end
