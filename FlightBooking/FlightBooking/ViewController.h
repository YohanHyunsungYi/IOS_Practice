//
//  ViewController.h
//  FlightBooking
//
//  Created by Yohan Yi on 2017. 2. 8..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>{
    NSInteger buttonTag ;
}

@property (strong, nonatomic) IBOutlet UIButton *depatureDateButton;
@property (strong, nonatomic) IBOutlet UILabel *returnDateLabel;
@property (strong, nonatomic) IBOutlet UIButton *returnDateButto;
@property (strong, nonatomic) IBOutlet UIDatePicker *selectDatePicker;

- (IBAction)showReturnDate:(id)sender;
- (IBAction)showDatePickerAction:(id)sender;
- (IBAction)selectDateAction:(id)sender;

@end

