//
//  ViewController.m
//  JLPieProgressView
//
//  Created by 张天龙 on 17/3/28.
//  Copyright © 2017年 张天龙. All rights reserved.
//

#import "ViewController.h"
#import "JLPieProgressView.h"

@interface ViewController ()

/**
 饼状进度条
 */
@property (strong, nonatomic) IBOutlet JLPieProgressView *pieProgressView;
/**
 滑块
 */
@property (weak, nonatomic) IBOutlet UISlider *slider;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pieProgressView.progressValue = self.slider.value;
    
}

- (IBAction)sliderValueChange:(UISlider *)sender {
    
    self.pieProgressView.progressValue = self.slider.value;
    
}




@end
