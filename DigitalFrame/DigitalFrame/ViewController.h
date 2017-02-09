//
//  ViewController.h
//  DigitalFrame
//
//  Created by Yohan Yi on 2017. 2. 5..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView *imgView;
@property (nonatomic, strong) IBOutlet UISlider *speedSlider;
@property (nonatomic, strong) IBOutlet UILabel *speedLabel;

-(IBAction)toggleAction:(id)sender;
-(IBAction)changeSpeedAction:(id)sender;

@end

