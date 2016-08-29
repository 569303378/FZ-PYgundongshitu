//
//  ViewController.m
//  PYView
//
//  Created by Apple on 16/8/15.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIScrollView *sc;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sc = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.sc.backgroundColor = [UIColor cyanColor];
    //(1)设置内容页区域的大小
    self.sc.contentSize = CGSizeMake(self.view.frame.size.width, 800);
    //(2)设置 scrollView 内容区域偏移量
//    self.sc.contentOffset = CGPointMake(400, 0);
    //(3)隐藏滑动指示器
//    self.sc.showsHorizontalScrollIndicator = NO;//水平方向
    self.sc.showsVerticalScrollIndicator = YES;//竖直方向
    //(4)控制scrollView 能否滚动
    self.sc.scrollEnabled = YES;
    //(5)方向锁, 控制滑动时只能单方向滑动
    self.sc.directionalLockEnabled = YES;
    //(6)控制当点击状态条时, scrollView 是否可以是否回到顶部
    self.sc.scrollsToTop = YES;
    //(7)控制当内容页到边界时,是否具有反弹效果
    self.sc.bounces = YES;

    
    [self.view addSubview:self.sc];
    
    //创建
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.sc.contentSize.width, self.sc.contentSize.height)];
    imageView.image = [UIImage imageNamed:@"1.jpg"];
    imageView.tag = 200;
    [self.sc addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
