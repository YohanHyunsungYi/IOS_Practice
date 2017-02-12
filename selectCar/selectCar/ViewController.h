//
//  ViewController.h
//  selectCar
//
//  Created by Yohan Yi on 2017. 2. 11..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>{
    NSArray *companyName;
    NSArray *tesla;
    NSArray *teslaImageNames;
    NSArray *lamborghini;
    NSArray *lamborghiniImageNames;
    NSArray *porsche;
    NSArray *porscheImageNames;
    NSArray *carModel;
    NSArray *carModelImage;
}

@property (strong, nonatomic) IBOutlet UIImageView *imgView;

@end

