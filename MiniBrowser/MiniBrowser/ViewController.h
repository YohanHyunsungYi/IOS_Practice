//
//  ViewController.h
//  MiniBrowser
//
//  Created by Yohan Yi on 2017. 2. 8..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate,UIWebViewDelegate>


@property (strong, nonatomic) IBOutlet UISegmentedControl *bookmarkSegmentedControl;
@property (strong, nonatomic) IBOutlet UITextField *urlTextField;

@property (strong, nonatomic) IBOutlet UIWebView *mainWebView;

- (IBAction)bookMarkAction:(id)sender;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;
- (IBAction)backAction:(id)sender;
- (IBAction)forwardAction:(id)sender;
- (IBAction)stopAction:(id)sender;
- (IBAction)refreshAction:(id)sender;

@end

