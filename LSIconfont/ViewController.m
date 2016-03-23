//
//  ViewController.m
//  LSIconfont
//
//  Created by Dylan on 16/3/22.
//  Copyright © 2016年 dylan. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+LSIconFont.h"
#import "LSIconFont.h"
#import "UIImage+LSIconFont.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UILabel* lbl = [LSIconFont iconFontLabelWithFrame:CGRectMake(100, 50, 100, 50) fontSize:48 text:@"ic_tabbar_mine"];
    [lbl setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:lbl];
    
    UIButton* btn = [LSIconFont iconFontButtonWithType:UIButtonTypeCustom fontSize:48 text:@"ic_tabbar_categray"];
    [btn setFrame:CGRectMake(100, 120, 100, 50)];
    [btn setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:btn];
    
    
    UIImageView* img = [[UIImageView alloc]initWithFrame:CGRectMake(100, 200, 50, 50)];
    [img imageViewWithIcon:@"ic_tabbar_home" withFontSize:50 withColor:[UIColor redColor]];
    [img setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:img];
    
    
    UIImageView* img1 = [[UIImageView alloc]initWithFrame:CGRectMake(100, 280, 50, 50)];
    img1.image = [UIImage imageWithIcon:@"ic_tabbar_home" withFontSize:50 withColor:[UIColor redColor]];
    [img1 setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:img1];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
