//
//  ViewController.m
//  MiniBrowser
//
//  Created by Yohan Yi on 2017. 2. 8..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize bookmarkSegmentedControl,urlTextField,mainWebView,activityIndicatorView;

- (void)viewDidLoad {
    [super viewDidLoad];
 // Do any additional setup after loading the view, typically from a nib.
   
    NSString *urlString =@"http://www.facebook.com";
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    urlTextField.text = urlString;

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSString *urlString  = urlTextField.text;
    
    if (![urlString hasPrefix:@"http://"]){
        urlString = [[NSString alloc]initWithFormat:@"http://%@",urlString];
    }
    
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    
    urlTextField.text = urlString;
    
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bookMarkAction:(id)sender {
    NSString *urlString  = [[NSString alloc]initWithFormat:@"http://www.%@.com",[bookmarkSegmentedControl titleForSegmentAtIndex:bookmarkSegmentedControl.selectedSegmentIndex]];
    
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    
    urlTextField.text = urlString;
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    [activityIndicatorView startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [activityIndicatorView stopAnimating];
    
}

- (IBAction)backAction:(id)sender {
    [mainWebView goBack];
}

- (IBAction)forwardAction:(id)sender {
    [mainWebView goForward];
}

- (IBAction)stopAction:(id)sender {
    [mainWebView stopLoading];
}

- (IBAction)refreshAction:(id)sender {
    [mainWebView reload];
}




@end
