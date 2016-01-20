//
//  ViewController.m
//  文本高度
//
//  Created by apple on 16/1/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+StringHeight.h"
#import "NSString+Height.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"日落时分，沏上一杯山茶，听一曲意境空远的《禅》，心神随此天籁，沉溺于玄妙的幻境里。仿佛我就是那穿梭于葳蕤山林中的一只飞鸟，时而盘旋穿梭，时而引吭高歌；仿佛我就是那潺潺流泻于山涧的一汪清泉，涟漪轻盈，浩淼长流；仿佛我就是那竦峙在天地间的一座山峦，伟岸高耸，从容绵延。我不相信佛，只是喜欢玄冥空灵的梵音经贝，与慈悲淡然的佛境禅心，在清欢中，从容幽静，自在安然。一直向往走进青的山，碧的水，体悟山水的绚丽多姿，领略草木的兴衰荣枯，倾听黄天厚土之声，探寻宇宙自然的妙趣。走进了山水，也就走出了喧嚣，给身心以清凉，给精神以沉淀，给灵魂以升华.";
    
    NSLog(@"---height:%.2f", [str StringWidthBySize:CGSizeMake(320, 0) andfont:[UIFont fontWithName:@"YuWeiLiShuFT" size:18.0f]]);
   
    
    UILabel *label          = [UILabel new];
    label.backgroundColor   = [UIColor whiteColor];
    [self.view addSubview:label];


    label.numberOfLines       = 0;
    label.text                = str;
    label.font                = [UIFont fontWithName:@"YuWeiLiShuFT" size:18.0];
    label.layer.borderWidth   = 1.0f;
    label.layer.borderColor   = [UIColor grayColor].CGColor;
    label.layer.masksToBounds = YES;
    label.layer.cornerRadius  = 5.f;
    
    

    CGFloat height          = [label StringHeight:CGSizeMake(320, 0)];
    
    NSLog(@"--label:%.2f", height);

    label.frame             = CGRectMake(10, 100, 320, height);
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
