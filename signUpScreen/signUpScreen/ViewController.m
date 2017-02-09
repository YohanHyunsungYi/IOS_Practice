//
//  ViewController.m
//  signUpScreen
//
//  Created by Yohan Yi on 2017. 2. 5..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize nameTextField,idTextField,passwordTextField,telTextField,blogTextField,resultTextView;



- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signUpAction:(id)sender {
    resultTextView.text = [NSString stringWithFormat:@"%@ 님 가입을 축하드립니다",nameTextField.text];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
