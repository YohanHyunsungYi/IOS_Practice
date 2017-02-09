//
//  ViewController.m
//  FlightBooking
//
//  Created by Yohan Yi on 2017. 2. 8..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize depatureDateButton, returnDateButto, returnDateLabel, selectDatePicker;

- (void)viewDidLoad {
    [super viewDidLoad];
    buttonTag = 0;
    returnDateLabel.hidden = YES;
    returnDateButto.hidden = YES;
    selectDatePicker.hidden = YES;

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showReturnDate:(id)sender {
//    if ([sender isOn]) {
//        returnDateLabel.hidden = NO;
//        returnDateButto.hidden = NO;
//
//    }else{
//        returnDateLabel.hidden = YES;
//        returnDateButto.hidden = YES;
//    }

    returnDateButto.hidden = ![sender isOn];
    returnDateLabel.hidden = ![sender isOn];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    selectDatePicker.hidden = YES;
}

- (IBAction)showDatePickerAction:(id)sender {
    selectDatePicker.hidden = NO;
    buttonTag = [sender tag];
}

- (IBAction)selectDateAction:(id)sender {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"YY-MM-d hh:mma";
    
    NSString *dateString = [formatter stringFromDate:[sender date]];
    
    if (buttonTag == 1) {
        [depatureDateButton setTitle:dateString forState:UIControlStateNormal];
    }else{
        [returnDateButto setTitle:dateString forState:UIControlStateNormal];
    }
    
    
}


@end
