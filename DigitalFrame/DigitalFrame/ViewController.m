//
//  ViewController.m
//  DigitalFrame
//
//  Created by Yohan Yi on 2017. 2. 5..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imgView, speedSlider, speedLabel;


- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *wedImages = [[NSArray alloc]initWithObjects:
                            [UIImage imageNamed:@"1.jpg"],
                            [UIImage imageNamed:@"2.jpg"],
                            [UIImage imageNamed:@"3.jpg"],
                            [UIImage imageNamed:@"4.jpg"],
                            [UIImage imageNamed:@"5.jpg"],
                            [UIImage imageNamed:@"6.jpg"],
                            [UIImage imageNamed:@"7.jpg"],
                            [UIImage imageNamed:@"8.jpg"],
                            [UIImage imageNamed:@"9.jpg"],
                            [UIImage imageNamed:@"10.jpg"],
                            [UIImage imageNamed:@"11.jpg"],
                            [UIImage imageNamed:@"12.jpg"],
                            [UIImage imageNamed:@"13.jpg"],
                            [UIImage imageNamed:@"14.jpg"],
                            [UIImage imageNamed:@"15.jpg"],
                            [UIImage imageNamed:@"16.jpg"],
                            [UIImage imageNamed:@"17.jpg"],
                            [UIImage imageNamed:@"18.jpg"],
                            [UIImage imageNamed:@"19.jpg"],
                            [UIImage imageNamed:@"20.jpg"],
                            [UIImage imageNamed:@"21.jpg"],
                            [UIImage imageNamed:@"22.jpg"],
                            nil];
    
    imgView.animationImages = wedImages;
    imgView.animationDuration = 22.0;

    
}

-(IBAction)changeSpeedAction:(id)sender{
    imgView.animationDuration = 22-speedSlider.value;
    [imgView startAnimating];
    NSString *str = [[NSString alloc]initWithFormat:@"%.1f", speedSlider.value];    
    speedLabel.text = str;
}


-(IBAction)toggleAction:(id)sender{
    
    if ([imgView isAnimating]) {
        [imgView stopAnimating];
    }else{
        [imgView startAnimating];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
