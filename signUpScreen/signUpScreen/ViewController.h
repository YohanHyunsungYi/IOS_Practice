//
//  ViewController.h
//  signUpScreen
//
//  Created by Yohan Yi on 2017. 2. 5..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *idTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *telTextField;
@property (strong, nonatomic) IBOutlet UITextField *blogTextField;

- (IBAction)signUpAction:(id)sender;

@property (strong, nonatomic) IBOutlet UITextView *resultTextView;

@end

